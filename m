Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652ED10FB7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGWOAorw7CJwebupbkPakMPcNGtP/3Cb+5Q0TwxBfLY=; b=ORsnUtPbhKD+cN
	Bit+ca6Ao4HXldSUJ1ulhvS5nG2K8GZS82/Peb/eIkwG1mh1fAF35dRFBjB5gWxL4voFlaz057SmD
	5fZvNX4pACwZ30sLlM7QPn4DJ6FDn08vc0+yJngR4Nj3I5CpPsq35JZ8ckbdzTtEPSSnFXGhzzc0/
	LNsltDT1udkEpKYmt43Q+V3xl4ht70ZUVpsbFEjbkyRbnMncenxHbKQnJk+soyRemp3ZmqBouy75C
	iiF8V3cV4jBV+tfGsar+rKxKA5aJk0spWCXQJh24gV1Za6Flb6CWXJsRyK2N/oAetGpwunFBaRnL8
	WjCR4hVKfyCgWGVubjeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5B9-0007HN-Ng; Tue, 03 Dec 2019 10:13:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5Az-0007GT-Kk; Tue, 03 Dec 2019 10:13:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22E5C206DF;
 Tue,  3 Dec 2019 10:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575367981;
 bh=wI49/3MX3A5K4KXoKvz8MjUjQ7lmXO+cIlGX8yR3wXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sc86W9/tccQOqQmYT3saFdznHpCbiKhhZ0lfmhYEUbg7DqCajtQ8cwkT4HGMqsFQg
 bWcuPJo8EhusJxRV2NfJEIpb5L7QcVt2PMZ3cow5j4BzFTQNSoTVMCEM7NkLJ/834F
 JUbhMmgAFoB883XHKUkBCUhzsbpQZstw1bHbNfuM=
Date: Tue, 3 Dec 2019 10:12:50 +0000
From: Will Deacon <will@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20191203101249.GC6815@willie-the-truck>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
 <CALAqxLUkPNf9JYyt+_VOrxq=Zq03veb1y-7aDx+_Vw+fF9i82A@mail.gmail.com>
 <CALAqxLW7RTif_NPxFXnxfTm2_ST+6aNmE6X=3v4XsuojKH2mtg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLW7RTif_NPxFXnxfTm2_ST+6aNmE6X=3v4XsuojKH2mtg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_021301_722415_B1ADD551 
X-CRM114-Status: GOOD (  18.50  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Amit Pundir <amit.pundir@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 mbrugger@suse.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-mm <linux-mm@kvack.org>,
 Rob Herring <robh+dt@kernel.org>, wahrenst@gmx.net,
 Nicolas Dechense <nicolas.dechesne@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On Mon, Dec 02, 2019 at 10:03:17PM -0800, John Stultz wrote:
> Ok, narrowing it down further, it seems its the following bit from the
> patch:
> 
> > @@ -201,13 +212,18 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> >         struct memblock_region *reg;
> >         unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
> >         unsigned long max_dma32 = min;
> > +       unsigned long max_dma = min;
> >
> >         memset(zone_size, 0, sizeof(zone_size));
> >
> > -       /* 4GB maximum for 32-bit only capable devices */
> > +#ifdef CONFIG_ZONE_DMA
> > +       max_dma = PFN_DOWN(arm64_dma_phys_limit);
> > +       zone_size[ZONE_DMA] = max_dma - min;
> > +       max_dma32 = max_dma;
> > +#endif
> >  #ifdef CONFIG_ZONE_DMA32
> >         max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
> > -       zone_size[ZONE_DMA32] = max_dma32 - min;
> > +       zone_size[ZONE_DMA32] = max_dma32 - max_dma;
> >  #endif
> >         zone_size[ZONE_NORMAL] = max - max_dma32;
> >
> > @@ -219,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> >
> >                 if (start >= max)
> >                         continue;
> > -
> > +#ifdef CONFIG_ZONE_DMA
> > +               if (start < max_dma) {
> > +                       unsigned long dma_end = min_not_zero(end, max_dma);
> > +                       zhole_size[ZONE_DMA] -= dma_end - start;
> > +               }
> > +#endif
> >  #ifdef CONFIG_ZONE_DMA32
> >                 if (start < max_dma32) {
> > -                       unsigned long dma_end = min(end, max_dma32);
> > -                       zhole_size[ZONE_DMA32] -= dma_end - start;
> > +                       unsigned long dma32_end = min(end, max_dma32);
> > +                       unsigned long dma32_start = max(start, max_dma);
> > +                       zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
> >                 }
> >  #endif
> >                 if (end > max_dma32) {
> 
> The zhole_sizes end up being:
> zhole_size: DMA: 67671, DMA32: 1145664 NORMAL: 0
> 
> This seems to be due to dma32_start being calculated as 786432 each
> time - I'm guessing that's the max_dma value.
> Where dma32_end is around 548800, but changes each iteration (so we
> end up subtracting a negative value each pass, growing the size).

Yeah, this logic looks utterly buggered to me so I'm surprised that nobody
else has seen the problem. In particlar, kernelci is reporting success
on the same SoC :/

https://kernelci.org/boot/sdm845-db845c/

The logs also don't seem to match up with the trees either. For example,
looking at the boot logs for:

https://kernelci.org/boot/id/5de5fc60b1ed6e2d46960f08/

It claims that the kernel is "next-2019-12-30" but the dmesg says:

[    0.000000] Linux version 5.4.0 (KernelCI@b19b74fe311d) (gcc version
8.3.0 (Debian 8.3.0-2)) #1 SMP PREEMPT Tue Dec 3 03:14:07 UTC 2019

Which isn't great.

Anyway, I've had a go at fixing it below but it's 100% untested. I think
the issue is that your SoC has memblocks contained entirely within the
ZONE_DMA region and we don't cater for that at all when processing the
ZONE_DMA32 region.

Will

--->8

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index be9481cdf3b9..af365ce59ed6 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -242,19 +242,19 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 		if (start < max_dma) {
 			unsigned long dma_end = min_not_zero(end, max_dma);
 			zhole_size[ZONE_DMA] -= dma_end - start;
+			start = dma_end;
 		}
 #endif
 #ifdef CONFIG_ZONE_DMA32
-		if (start < max_dma32) {
+		if (start >= max_dma && start < max_dma32) {
 			unsigned long dma32_end = min(end, max_dma32);
-			unsigned long dma32_start = max(start, max_dma);
-			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
+			zhole_size[ZONE_DMA32] -= dma32_end - start;
+			start = dma32_end;
 		}
 #endif
-		if (end > max_dma32) {
+		if (start >= max_dma32) {
 			unsigned long normal_end = min(end, max);
-			unsigned long normal_start = max(start, max_dma32);
-			zhole_size[ZONE_NORMAL] -= normal_end - normal_start;
+			zhole_size[ZONE_NORMAL] -= normal_end - start;
 		}
 	}
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
