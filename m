Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FBEEB6B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unyCrVWO5xXNzWdjdkv8V7xw034EjvWWyUARSL4rrLQ=; b=ozt14DEUVB5Qkr
	q/N+aYRPWQS6tcDu9Dq/5Fa6kPBsE2Rp/4tdmizrwvomUVW80WpeYyTGaz29YqDfqEQxvPShSPy7e
	ICnQI1KnOQeF4V/cLFEkBSHFve1sK03MXLwx3qzNdTMxu7tk2OSqklYpwKG4FWyaoBz9OAjsBovix
	EN4IByl6718gC+598+WY6TvAaolrXoyKWd63UKYTsXrIGmWjQaKbykiWlSPrD7AIFscHFb4YDdFqm
	is+H+Y/6Y1uZMNpHjzYAgEYWiyEk3CbwYbOX/ByHV7f7/+OBXxU4tjYMTe4X1GYs7CFdls621s/gh
	++/4FhMlfzNYKhYr92pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQExV-0006bA-PC; Thu, 31 Oct 2019 18:14:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQExH-0006ag-G3; Thu, 31 Oct 2019 18:13:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B35BE46A;
 Thu, 31 Oct 2019 11:13:54 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AC9F83F6C4; Thu, 31 Oct 2019 11:13:52 -0700 (PDT)
Date: Thu, 31 Oct 2019 18:13:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20191031181350.GJ39590@arrakis.emea.arm.com>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
 <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
 <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
 <AA6D37F1-A1B3-4EC4-8620-007095168BC7@lca.pw>
 <1956a2c8f4911b2a7e2ba3c53506c0f06efb93f8.camel@suse.de>
 <20191031155145.GF39590@arrakis.emea.arm.com>
 <6fd539b82cbbb2ae307a67a76eb4c2ead0bd5d4a.camel@suse.de>
 <20191031180240.GH39590@arrakis.emea.arm.com>
 <f2323af749395a49918bf842115318820b6f2052.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2323af749395a49918bf842115318820b6f2052.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_111355_623333_793606F8 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 Robin Murphy <Robin.Murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 Rob Herring <robh+dt@kernel.org>, Qian Cai <cai@lca.pw>, wahrenst@gmx.net,
 m.szyprowski@samsung.com, phill@raspberrypi.org, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 07:11:27PM +0100, Nicolas Saenz Julienne wrote:
> On Thu, 2019-10-31 at 18:02 +0000, Catalin Marinas wrote:
> > On Thu, Oct 31, 2019 at 05:04:34PM +0100, Nicolas Saenz Julienne wrote:
> > > On Thu, 2019-10-31 at 15:51 +0000, Catalin Marinas wrote:
> > > > (sorry, I've been away last week and only now caught up with emails)
> > > > 
> > > > On Tue, Oct 22, 2019 at 01:23:32PM +0200, Nicolas Saenz Julienne wrote:
> > > > > On Mon, 2019-10-21 at 16:36 -0400, Qian Cai wrote:
> > > > > > I managed to get more information here,
> > > > > > 
> > > > > > [    0.000000] cma: dma_contiguous_reserve(limit c0000000)
> > > > > > [    0.000000] cma: dma_contiguous_reserve: reserving 64 MiB for
> > > > > > global
> > > > > > area
> > > > > > [    0.000000] cma: cma_declare_contiguous(size 0x0000000004000000,
> > > > > > base
> > > > > > 0x0000000000000000, limit 0x00000000c0000000 alignment
> > > > > > 0x0000000000000000)
> > > > > > [    0.000000] cma: Failed to reserve 512 MiB
> > > > > > 
> > > > > > Full dmesg:
> > > > > > 
> > > > > > https://cailca.github.io/files/dmesg.txt
> > > > > 
> > > > > OK I got it, reproduced it too.
> > > > > 
> > > > > Here are the relevant logs:
> > > > > 
> > > > > 	[    0.000000]   DMA      [mem 0x00000000802f0000-
> > > > > 0x00000000bfffffff]
> > > > > 	[    0.000000]   DMA32    [mem 0x00000000c0000000-
> > > > > 0x00000000ffffffff]
> > > > > 	[    0.000000]   Normal   [mem 0x0000000100000000-
> > > > > 0x00000097fcffffff]
> > > > > 
> > > > > As you can see ZONE_DMA spans from 0x00000000802f0000-0x00000000bfffffff
> > > > > which
> > > > > is slightly smaller than 1GB.
> > > > > 
> > > > > 	[    0.000000] crashkernel reserved: 0x000000009fe00000 -
> > > > > 0x00000000bfe00000 (512 MB)
> > > > > 
> > > > > Here crashkernel reserved 512M in ZONE_DMA.
> > > > > 
> > > > > 	[    0.000000] cma: Failed to reserve 512 MiB
> > > > > 
> > > > > CMA tried to allocate 512M in ZONE_DMA which fails as there is no enough
> > > > > space.
> > > > > Makes sense.
> > > > > 
> > > > > A fix could be moving crashkernel reservations after CMA and then if
> > > > > unable
> > > > > to
> > > > > fit in ZONE_DMA try ZONE_DMA32 before bailing out. Maybe it's a little
> > > > > over
> > > > > the
> > > > > top, yet although most devices will be fine with ZONE_DMA32, the RPi4
> > > > > needs
> > > > > crashkernel to be reserved in ZONE_DMA.
> > > > 
> > > > Does RPi4 need CMA in ZONE_DMA? If not, I'd rather reserve the CMA from
> > > > ZONE_DMA32.
> > > 
> > > Yes, CMA is imperatively to be reserved in ZONE_DMA.
> > > 
> > > > Even if you moved the crash kernel, someone else might complain that
> > > > they had 2GB of CMA and it no longer works.
> > > 
> > > I have yet to look into it, but I've been told that on x86/x64 they have a
> > > 'high' flag to be set alongside with crashkernel that forces the allocation
> > > into ZONE_DMA32. We could mimic this behavior for big servers that don't
> > > depend
> > > on ZONE_DMA but need to reserve big chunks of memory.
> > 
> > The 'high' flag actually talks about crashkernel reserved above 4G which
> > is not really the case here. Since RPi4 is the odd one out, I'd rather
> > have the default crashkernel and CMA in the ZONE_DMA32 (current mainline
> > behaviour) and have the RPi4 use explicit size@offset parameters for
> > crashkernel and cma.
> 
> Fair enough, I'll send a fix for this on Monday if it's OK with you.

That's fine. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
