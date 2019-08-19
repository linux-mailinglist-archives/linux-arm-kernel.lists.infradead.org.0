Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D276926A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wB2eW5rqpjF0kTn8z+Sylkh2dIiMq++SODVnbN/YFpY=; b=JQPFGQ778XvqWq
	bxMqrbg6eq74uYPFjE8p86YeB0So1KW6eJLpsV8B7fnxI5SpakmgNYAgf1WCipowxCPu6MdGPAjaF
	gYb0m2977GSeQ/xdQlFzYrDKtb/fahjlyUWdaas5AlUPUJlD6BJ/4q3Wow9tXzxz+2/KN+ZPrcmD4
	Pivgf1bavXxCzMU7dS4z6GtB3G82trzinqJkBRlMoXGenhlnt07LAQETZpK0TcS788hVmva2eIel4
	0Nxaf7qrRk7JQybNI7eaQZ9k0Jid9os4YgiMBzvEtuRgyYMGbJa+MU1XjmTyVqoZUFXxHDBukgLse
	r1cNCQ1YPWxN4CFObGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzibD-0000Aw-Uy; Mon, 19 Aug 2019 14:25:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzib4-0000AG-OG
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:25:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B1550227A81; Mon, 19 Aug 2019 16:25:16 +0200 (CEST)
Date: Mon, 19 Aug 2019 16:25:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [PATCH 7/8] parisc: don't set ARCH_NO_COHERENT_DMA_MMAP
Message-ID: <20190819142516.GA6366@lst.de>
References: <20190808160005.10325-1-hch@lst.de>
 <20190808160005.10325-8-hch@lst.de>
 <1565861152.2963.7.camel@HansenPartnership.com>
 <20190815105002.GA30805@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815105002.GA30805@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_072522_942987_9D7A1511 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>, x86@kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Does my explanation from Thursday make sense or is it completely
off?  Does the patch description need some update to be less
confusing to those used to different terminology?

On Thu, Aug 15, 2019 at 12:50:02PM +0200, Christoph Hellwig wrote:
> Except for the different naming scheme vs the code this matches my
> assumptions.
> 
> In the code we have three cases (and a fourth EISA case mention in
> comments, but not actually implemented as far as I can tell):
> 
> arch/parisc/kernel/pci-dma.c says in the top of file comments:
> 
> ** AFAIK, all PA7100LC and PA7300LC platforms can use this code.
> 
> and the handles two different case.  for cpu_type == pcxl or pcxl2
> it maps the memory as uncached for dma_alloc_coherent, and for all
> other cpu types it fails the coherent allocations.
> 
> In addition to that there are the ccio and sba iommu drivers, of which
> according to your above comment one is always present for pa8xxx.
> 
> Which brings us back to this patch, which ensures that no cacheable
> memory is exported to userspace by removing ->mmap from ccio and sba.
> It then enabled dma_mmap_coherent for the pcxl or pcxl2 case that
> allocates uncached memory, which dma_mmap_coherent does not work
> because dma_alloc_coherent already failed for the !pcxl && !pcxl2
> and thus there is no memory to mmap.
> 
> So if the description is too confusing please suggest a better
> one, I'm a little lost between all these code names and product
> names (arch/parisc/include/asm/dma-mapping.h uses yet another set).
---end quoted text---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
