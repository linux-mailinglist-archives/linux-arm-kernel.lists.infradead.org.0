Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA32C12E97F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sh8qke4KwuvMVtM6xcfb/Cn9mY9biFt5IDipTKYG+bQ=; b=QT5UngeMgNbzEl
	xffs6w498gwbpHXQoqMUl8A2kqDbW22CAJrMYa9JaJWRe7VaFuHEkAFdLeQGmpJ8Vr9roifJpB/sl
	WDH7u1H7e6Duhc3PE3EVlXoz/9iNTU9Y3sG1myhzE7RUTeuw7XzCCJ3T7H5AWW3xdj7uQuDqY3lwn
	utEM/0Y84cq+kul9lawmx7rUsiGWL/SlG4vcda6Zh2RCrU3XO6BNyeGVB/NJEIlgK+0ff89WhtMpQ
	etg5ih3G6U4eeaGOwUKkPtGghA7hNP3yM26dlxpM3wiBESolqyxjIxRdHbeyyyRBMoHNu8G7+YfW5
	ArjB9Vz8UMSmvs/k8yGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4UE-0007kD-FJ; Thu, 02 Jan 2020 17:42:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4U8-0007jg-CH
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA361328;
 Thu,  2 Jan 2020 09:42:09 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E56573F68F; Thu,  2 Jan 2020 09:42:08 -0800 (PST)
Date: Thu, 2 Jan 2020 17:42:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Saeed Karimabadi (skarimab)" <skarimab@cisco.com>
Subject: Re: Arm64 Crashkernel doesn't work with FLATMEM anymore
Message-ID: <20200102174206.GD27940@arrakis.emea.arm.com>
References: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
 <c4d7ea82-7736-4cbd-4568-83473a7c2d11@arm.com>
 <BYAPR11MB2582B5FE87A72352E6A8C2F6CC2E0@BYAPR11MB2582.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR11MB2582B5FE87A72352E6A8C2F6CC2E0@BYAPR11MB2582.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_094212_457159_62495730 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 James Morse <james.morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 10:24:57PM +0000, Saeed Karimabadi (skarimab) wrote:
> On 20/12/2019 11:52 AM  James Morse <james.morse> wrote:
> > On 17/12/2019 00:02, Saeed Karimabadi (skarimab) wrote:
> > > Crash dump  Kernel doesn't work with FLATMEM memory model since version 4.11.0-rc3 and it
[...]
> > Because of these nomap memblocks, I don't think kdump is isolated enough from the systems
> > memory map for the flatmem illusion to hold just because its kdump. You still need to
> > access firmware table that describe the system, as well as any memory that was reserved
> > with mechanisms like this. This exposes you to the platform's not-really-flatmem memory
> > layout.
> > 
> > I think the real fix here is to remove FLATMEM.
[...]
> For example is it possible to reduce the amount of memory SPARMEM is
> using for its internal data structures or to keep track of different
> memory zones? Or any other suggestion of reducing the total memory
> size for crash kernel ?

Can you change SECTION_SIZE_BITS to 29 or 28 in
arch/arm64/include/asm/sparsemem.h and see whether it makes a
difference?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
