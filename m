Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617F1409CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULbxgkMtjBwzPZdYb/Yl9mIs2a2FW/6eQMILA+Fw7ng=; b=LLc3kN3qufrhj3
	ines2KLFUqf9DUrggbxztKDPFrgK6Zwx0uEznsBIdYxhiXXOWrJcknE8CN37LeCOQ0C81cJ8xQ4ST
	Ww5MDa2vJI/Kp5osT2w6XAyQ0yRlY0EF0QyIHmRBmIE+DjYSU9HiUWhcYv1W1eISNEtMJpXe0zr+N
	VTmPz2fbFf0uTRq62953d+E0ezmhr1OlGMsKb2t58G5wJpUwUP5NVExvYMge9BMtBFXmYeXianao5
	Ueazp9BlipbJvDVQwcVAcFeFu5xSq36Thd+M8O9b7QNVDEutyKSTuwKrD3ve52wBjbj/8hGzSAYe4
	IwisL0rqQH3bxf3bKn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQnw-0002Hv-4o; Fri, 17 Jan 2020 12:32:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQnj-0002Gy-KX
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:32:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2F1411D4;
 Fri, 17 Jan 2020 04:32:32 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E1BB3F6C4;
 Fri, 17 Jan 2020 04:32:31 -0800 (PST)
Date: Fri, 17 Jan 2020 12:32:26 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
Message-ID: <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117121448.GA8199@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_043235_762049_E22C7208 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Garry <john.garry@huawei.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-acpi@vger.kernel.org,
 Tyler Baicar <baicar@os.amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > The IORT specification [0] (Section 3, table 4, page 9) defines the
> > 'Number of IDs' as 'The number of IDs in the range minus one'.
> > 
> > However, the IORT ID mapping function iort_id_map() treats the 'Number
> > of IDs' field as if it were the full IDs mapping count, with the
> > following check in place to detect out of boundary input IDs:
> > 
> > InputID >= Input base + Number of IDs
> > 
> > This check is flawed in that it considers the 'Number of IDs' field as
> > the full number of IDs mapping and disregards the 'minus one' from
> > the IDs count.
> > 
> > The correct check in iort_id_map() should be implemented as:
> > 
> > InputID > Input base + Number of IDs
> > 
> > this implements the specification correctly but unfortunately it breaks
> > existing firmwares that erroneously set the 'Number of IDs' as the full
> > IDs mapping count rather than IDs mapping count minus one.
> > 
> > e.g.
> > 
> > PCI hostbridge mapping entry 1:
> > Input base:  0x1000
> > ID Count:    0x100
> > Output base: 0x1000
> > Output reference: 0xC4  //ITS reference
> > 
> > PCI hostbridge mapping entry 2:
> > Input base:  0x1100
> > ID Count:    0x100
> > Output base: 0x2000
> > Output reference: 0xD4  //ITS reference
> > 
> > Two mapping entries which the second entry's Input base = the first
> > entry's Input base + ID count, so for InputID 0x1100 and with the
> > correct InputID check in place in iort_id_map() the kernel would map
> > the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> > 
> > Therefore, to keep supporting existing flawed firmwares, introduce a
> > workaround that instructs the kernel to use the old InputID range check
> > logic in iort_id_map(), so that we can support both firmwares written
> > with the flawed 'Number of IDs' logic and the correct one as defined in
> > the specifications.
> > 
> > [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> > 
> > Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > ---
> 
> I'm a bit confused about the SoB chain here and which tree this is
> targetting.
> 
> Lorenzo?

Hi Will,

sorry about that. It targets arm64 - previously wasn't addressed
to you and Catalin:

https://lore.kernel.org/linux-arm-kernel/1577708824-4873-1-git-send-email-guohanjun@huawei.com/

I rewrote the commit log and asked Hanjun to repost it to target an arm64
merge.

Having said that, this patch makes me nervous, it can break on platforms
that have non-compliant firmware, I wonder whether it is best to leave
it in -next for a whole cycle (I can send it to -next) to catch any
fall-out rather than targeting v5.6 given that technically is _not_ a
fix (we may even have to revert it - it requires coverage on all ARM64
ACPI systems).

What do you think ?

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
