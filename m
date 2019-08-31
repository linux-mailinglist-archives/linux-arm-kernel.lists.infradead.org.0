Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF83A41C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 04:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMWHm0WQxkZVZ+oebwXYqz2/0UTp7UT4AEU83FSQ3Ks=; b=LMorm/Kg2gcuth
	U4zyLUxdsntyR284cYGmaapm2BiUhUO1bk1nVLkXIXQmkJjVoc2OjnNsEbimNWBEEjXj407TOd9yz
	7kgU0f6ssTzTq16QRDGkMaIWs1bU7nW3jS5yl96tV+LVsZHjBmiqwVO4y6sJrcD24U5vLk87m6ZAc
	kwscbE0IreUhY+suBPH6VHfa/OWCJNWWFYo3DlCZMMZIvVE2DSmUKNOooHYIIlDbSRttKTKE9fUS0
	Cckc/5OM+oRbbBnzIYVXuUMjzc5+F6eWorp9mLmTzvYoNSCJuhVEUYtHCtnEovxq0sxPkIn+y7wm0
	S52eTK2AEx9q7VHZ7U/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3tK2-0006hQ-1A; Sat, 31 Aug 2019 02:41:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3tJr-0006gg-OV
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 02:40:53 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0870A2342E;
 Sat, 31 Aug 2019 02:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567219250;
 bh=JMKsqnwwgnBGpJ8VeH9x8cWpA1gtiIBeSZVZl27H2DQ=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=gvmwFq3pY5ccH5CCkB4Ugbg/tMcPSx94oSmxQjeR09qKdawAweVRy+ftYilt0NgBa
 usG1q3SgGfitAHlFFq20MSlmtok8sJZq49uKbGwenqoZdqTJJdUl/hesQArj/MGDX0
 DKmKFaMvUjziQw1oQYuf5m++yBZbQ7qW8Hm8+CYQ=
Date: Fri, 30 Aug 2019 19:40:42 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
In-Reply-To: <20190830085807.GA15771@infradead.org>
Message-ID: <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
 <20190830085807.GA15771@infradead.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_194051_822444_D9CB7C91 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jgross@suse.com, Peng Fan <peng.fan@nxp.com>,
 "sstabellini@kernel.org" <sstabellini@kernel.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Julien Grall <Julien.Grall@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 boris.ostrovsky@oracle.com, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Juergen, Boris

On Fri, 30 Aug 2019, Christoph Hellwig wrote:
> Can we take a step back and figure out what we want to do here?
> 
> AFAICS this function allocates memory for the swiotlb-xen buffer,
> and that means it must be <= 32-bit addressable to satisfy the DMA API
> guarantees.  That means we generally want to use GFP_DMA32 everywhere
> that exists, but on systems with odd zones we might want to dip into
> GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
> thing on x86 at the moment.  So shouldn't we just have one common
> routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32
> set, then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set
> and then try that, else default to GFP_KERNEL?

Yes, for ARM/ARM64 it makes a lot of sense given that dom0 is 1:1 mapped
(pseudo-physical == physical).  I'll let Juergen and Boris comment on
the x86 side of things, but on x86 PV Dom0 is not 1:1 mapped so
GFP_DMA32 is probably not meaningful.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
