Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965A036FF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwZ07T7N5plRic1Gsd21AUI9UmzYopYt3HG1pS7ftQc=; b=oamPXDjGUoK08c
	AIcPgp9L+nOaBOKw6aD15OTHyeks6VcEHZBO4VQRtYKseq0Fgn6KDynoL0NbT2qn2rRT2gX+NroeN
	z+/iz2zIskpK32yFhISUh1VY+gkhsw4hYWCiJVRjKS32HMdnb1HVrTuHqmZ/FSO9+MPjJ+yoZCYMd
	FZFT/9dAoyqVsg5ZcOxUswJL+EL1hT6hWsfAAY2tfGdmdMRpgv5g1UoYuMruBM559Yyi4MQXj9KqG
	AdegdwybW39WndQD9EUFtuE8igz/SD0HET7GMRc+msiwDCeN7lS/qXcDk4emoiKy4gbnPJ2yt1+8t
	K3veW+g9pmAlnQHnLhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYon7-0000JX-I1; Thu, 06 Jun 2019 09:34:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYon0-0000J9-Vi
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C527341;
 Thu,  6 Jun 2019 02:34:29 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 927123F690;
 Thu,  6 Jun 2019 02:34:27 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:34:25 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH 0/8] arm64: ARMv8.5-A: Branch Target Identification support
Message-ID: <20190606093422.GY28398@e103592.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <935adf9b-0609-8dc6-5439-719422f4cd40@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <935adf9b-0609-8dc6-5439-719422f4cd40@linaro.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023431_021607_28A43D51 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Sudakshina Das <sudi.das@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 04:12:03PM -0500, Richard Henderson wrote:
> On 5/24/19 5:25 AM, Dave Martin wrote:
> > Various things need nailing down before this can be upstreamable:
> > 
> >  * Not tested with hugepages yet.  (If anyone has any suggestions about
> >    how best to do that, please shout!)
> 
> The qemu code_gen_buffer is generally between 32MB and 2GB, contiguous.  It
> usually gets AnonHugePage'd.  I assume there's no difference in where the
> hugepages come from on your side?

There are some internal differences between hugetlbfs and anonymous huge
pages, but I'm not very familiar with the details.

> It won't be too difficult to modify qemu to make it's own code generation
> BTI-safe, and is on the schedule to do eventually anyway.

For userspace, it really shouldn't make a difference where the pages
come from.  With hugetlbfs, probably mprotect() only works at huge page
granularity; for anonymous huge pages, mprotect() should work at page
granularity, with the kernel shattering huge pages as required.

I guess I can come up with a handcrafted test or two.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
