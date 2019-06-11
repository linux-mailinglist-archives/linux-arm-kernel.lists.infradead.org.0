Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F9F417DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50OGG5TRbsWbUiVIpmGGP7DhnVVOhiu+v6yAbdzLbf8=; b=Pi+yRxtLEpn5M0
	iWb+m3djjUKVHmRQP0d2i/VA2B1dCwWOfpOH4XBd0zPubexwUdRTQWeVOGvhGxBnN0M1H1dkPgArr
	PDQJ3uyHLToiIMJ3NwkwJhN6D5ITGJgajxSthXP9M5U8itD7vHn6RxRTW1KShtl8lGqSIIwhHE6N6
	wpWwRr2FWC2d+C+ylIPapkJpuBEMo1XWU99i5fbHJhGf+qddKH0vEUpjxQUUWgSwbR54/H3qMKsZO
	4nedlhUMKOUP15Wxu/cnipRCbDEBidI6hT82roiu6giCZZIlXogGMoOoXx+V4GLmQ9SQJAFIVoE2N
	00VBPnVecfCYfs1SqJRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haorB-00066t-FZ; Tue, 11 Jun 2019 22:03:05 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haor2-00065x-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:02:57 +0000
Received: by mail-qt1-x842.google.com with SMTP id x47so16455571qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R9swLzsJtifGzX/KGk8yeNVFbi1iTRDL+GJQQbSCuHo=;
 b=pzewXKZ6WLt/gjWkMo/+YcX2d1aUC7pklyoJxUu8q3zKqxx1flMzy8jeb/7oZw//7e
 n4tY5sJXhu7TuLgALjdbbafHpSOA+A2sioMhaWtNvsh4EllR9PPctlua829MgJu9hRG+
 alLFj8zcOmCiLtrOZkf7HOrUmXYe99B8EN4AoGBwkI7swdcDtQmv3Hw6yPI2GlEZ5DXv
 W8M6/qoZDCVWs/U+iZHan2LOUDYydc/m2Okkbn2NUW4J5DktIG7knHhnnED+j7UDZ9Os
 buQJJZE5zjwDnO98adcxLv7JHOfwUgkcyajfv6gvSwEvnBHwx/UWYt6EKRhhTkyPdozS
 qcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R9swLzsJtifGzX/KGk8yeNVFbi1iTRDL+GJQQbSCuHo=;
 b=Qey6NaZhsCw2dctWyG1EdrMMmGmi4akmU81ELt5kIXJoqPTcEqYpPJnlOb9Ba733DZ
 3+G5FD1FjVtzc03ful2uDt2ObD52Ia4KoDLZL7qOwFbZCYW+0x5WPBrYZgmCY9+mwqKl
 7buSVToXG+PiBxpnfcxb/fKwR1pmCFjUKjs7EeuGqb5wCPnEjCacdS446FC3Jw7MPp6B
 uunDR4FQfcS/M5jeNP6q3wYWblqqS7o9TiMw10hQKEs5Ny4Z47KBND53skAzmGVImYX9
 sLTtdb/P2P66SXH+Hq3xGc5l10uDmZiqx+3TT8v9dkYboKOumZTfQRExB5I+/4xhPRsv
 adWA==
X-Gm-Message-State: APjAAAUbgPnSSvas3Z7RM6vRaeYlzrp9mtlFQuTB94WkcGSr2UW9Ph/z
 qQEZdgz2p3LrEgE+QKWnDA==
X-Google-Smtp-Source: APXvYqwOQtjfyFgAZmlFDKa9/7lOxef59kekI0Pll+EBAT2I25+2U68GqYPKoe6lJWSSeIJgeExygQ==
X-Received: by 2002:ac8:1829:: with SMTP id q38mr48707241qtj.252.1560290574364; 
 Tue, 11 Jun 2019 15:02:54 -0700 (PDT)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id x10sm6172576qtc.34.2019.06.11.15.02.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 15:02:53 -0700 (PDT)
Date: Tue, 11 Jun 2019 18:02:47 -0400
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/2] arm64/mm: check cpu cache line size with
 non-coherent device
Message-ID: <20190611220246.lyhcqahsxyxuhqjk@gabell>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-2-msys.mizuma@gmail.com>
 <20190611180007.him7md7gdcjs5cg6@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611180007.him7md7gdcjs5cg6@mbp>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_150256_370770_FF9AD009 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:00:07PM +0100, Catalin Marinas wrote:
> On Tue, Jun 11, 2019 at 11:17:30AM -0400, Masayoshi Mizuma wrote:
> > --- a/arch/arm64/mm/dma-mapping.c
> > +++ b/arch/arm64/mm/dma-mapping.c
> > @@ -91,10 +91,6 @@ static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
> >  
> >  static int __init arm64_dma_init(void)
> >  {
> > -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
> > -		   TAINT_CPU_OUT_OF_SPEC,
> > -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> > -		   ARCH_DMA_MINALIGN, cache_line_size());
> >  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
> >  }
> >  arch_initcall(arm64_dma_init);
> > @@ -473,6 +469,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
> >  			const struct iommu_ops *iommu, bool coherent)
> >  {
> >  	dev->dma_coherent = coherent;
> > +
> > +	if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
> > +		dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> > +				ARCH_DMA_MINALIGN, cache_line_size());
> 
> I'm ok in principle with this patch, with the minor issue that since
> commit 7b8c87b297a7 ("arm64: cacheinfo: Update cache_line_size detected
> from DT or PPTT") queued for 5.3 cache_line_size() gets the information
> from DT or ACPI. The reason for this change is that the information is
> used for performance tuning rather than DMA coherency.
> 
> You can go for a direct cache_type_cwg() check in here, unless Robin
> (cc'ed) has a better idea.

Got it, thanks.
I believe coherency_max_size is zero in case of coherent is false,
so I'll modify the patch as following. Does it make sense?

@@ -57,6 +53,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
                        const struct iommu_ops *iommu, bool coherent)
 {
        dev->dma_coherent = coherent;
+
+       if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
+               dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
+                               ARCH_DMA_MINALIGN, (4 << cache_type_cwg()));
+
        if (iommu)
                iommu_setup_dma_ops(dev, dma_base, size);

Thanks,
Masa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
