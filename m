Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08333A1953
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6wb/UO3XC+p9El6MxwiXQOEgWa+2UxqsytQNfNfgXY=; b=aMrqThE0boenWb
	w8WBEQicNkGEl8wYwfNg2GKV+tw2MbUnL0ZWfMN1pXPcmxM18vfcRTF8jD93TDa+TwooMQsa892ST
	KvH4v0y9b2/KE0hVdI9TU/E5FDlhJ/VEJSi6SKrqGEfURr8Q6vENO2TSNboMGPYBjgGvRP/C1BTa6
	eL2cWkSQMeGZA1wVzFCwYIdcVH2s8114Zftc5NlWKaUqJwlhWLaIhgH40F1Zh0lp0dL0rF7pMC3nv
	gW66XASCVfRh1iWTP1Q6mnftsg549ewVT+/l5YDwfx5tpbhxoB+1juP9ScYFTe+NGTUXJxyKeZxVQ
	vKdswe9LLcgoGcLoGKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IvZ-0003WN-4X; Thu, 29 Aug 2019 11:49:21 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ism-0000ru-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:46:30 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x7TBk4v1010353
 for <linux-arm-kernel@lists.infradead.org>; Thu, 29 Aug 2019 20:46:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x7TBk4v1010353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567079165;
 bh=jJHAKRHFRUzF/5jWYYKHoeNpyJFG8X4zd/Hk645vV1s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FR2lZSyoTN0KEKnwc4pXOJULo6oFfgZ4oMDCJPqQws/UAF4tOiv/G9gNRRlylUM70
 /HDF76gpmnV29LClsim6CYan+gHWKmIA8zouhAArtdeWnHkYTEMTO3z57gkZ3RE3Op
 H7XCYN867bK/c/Y5yxEzevUmbQQZl/KsaJVUX5btY2kuTwUsSnkq8pe8glDLnzmBUX
 wGy7fvvpxBxmpu+H8gSnB/sVHwtepY0c/dM7R9TYoiuVHjMI+oPn1gmhIYcNEolY/O
 2SgUdaZ+jrxcE/PuE8ualfGbOt9kOfSxoKrDoWDRaPTeFu7b+bN7zstzTpQLPM8W5w
 5j6MuK6hAKafQ==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id 62so2182886vsl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:46:05 -0700 (PDT)
X-Gm-Message-State: APjAAAVGY9vRWmd17NZ8ESxHmR7RQxUfeVANqZheVSN3nJuUYsMIgZ8L
 o9VP9111nhPY8FtuaWWaNGibhwbYyT8HVZXk24E=
X-Google-Smtp-Source: APXvYqySzvmeE9kiWjvNGM1iaAxnZ+QgH8m0ESiSIlhk3/0sUZoqbPgAj7pYaewNuKSsBX5H2zvSqil85IeqcrkN9II=
X-Received: by 2002:a67:fe12:: with SMTP id l18mr5139562vsr.54.1567079164044; 
 Thu, 29 Aug 2019 04:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
 <CAK7LNAQfYBCoChMV=MOwcUyVoqRkrPWs7DaWdzDqjBe18gGiAQ@mail.gmail.com>
 <20190825011025.GA23410@lst.de>
 <CAK7LNAQb1ZHr=DiHLNeNRaQExMuXdDOV4sFghoGbco_Q=Qzb8g@mail.gmail.com>
 <20190826073320.GA11712@lst.de>
 <CAK7LNATYOLEboUTO4qPx2z7cqwDrHBO1HFHG8VzZEJ15STv+nw@mail.gmail.com>
 <20190827075021.GA953@lst.de>
 <CAK7LNAQZ+bueZZzSoMADmgLjWNvijHRV=wLQzN_kvLG3b5Uu+w@mail.gmail.com>
 <20190827115541.GB5921@lst.de>
 <CAK7LNAQ_nQcBt=xH1-h+=co85mTxFgbe+_46Gu4LaNsDSm+kYA@mail.gmail.com>
 <CAK7LNATvz=TTe+3OyLrtUqDuTUTn1dg9Sk-t3BD_OFZfViCPMw@mail.gmail.com>
In-Reply-To: <CAK7LNATvz=TTe+3OyLrtUqDuTUTn1dg9Sk-t3BD_OFZfViCPMw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 29 Aug 2019 20:45:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNASs2qkpGY_BkL--hvmKm3FJ9sEK4+v5VVYc1_CrowAB4w@mail.gmail.com>
Message-ID: <CAK7LNASs2qkpGY_BkL--hvmKm3FJ9sEK4+v5VVYc1_CrowAB4w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_044628_516164_D2BDD177 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <joro@8bytes.org>,
 Russell King <linux@armlinux.org.uk>, Thierry Reding <treding@nvidia.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Nicolin Chen <nicoleotsuka@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 9:23 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> On Wed, Aug 28, 2019 at 7:53 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Hi Christoph,
> >
> > On Tue, Aug 27, 2019 at 8:55 PM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > On Tue, Aug 27, 2019 at 06:03:14PM +0900, Masahiro Yamada wrote:
> > > > Yes, this makes my driver working again
> > > > when CONFIG_DMA_CMA=y.
> > > >
> > > >
> > > > If I apply the following, my driver gets back working
> > > > irrespective of CONFIG_DMA_CMA.
> > >
> > > That sounds a lot like the device simply isn't 64-bit DMA capable, and
> > > previously always got CMA allocations under the limit it actually
> > > supported.  I suggest that you submit this quirk to the mmc maintainers.
> >
> >
> > I tested v5.2 and my MMC host controller works with
> > dma_address that exceeds 32-bit physical address.
> >
> > So, I believe my MMC device is 64-bit DMA capable.
> >
> > I am still looking into the code
> > to find out what was changed.
>
>
> I retract this comment.
>
> Prior to bd2e75633c8012fc8a7431c82fda66237133bf7e,
> the descriptor table for ADMA is placed within the
> 32-bit phys address range, not exceeds the 32-bit limit.
>
> Probably, my device is not 64-bit capable.
>
> I will talk to the hardware engineer,
> and check the hardware spec just in case.
>


After looking more into my hardware,
I found out how to fix my driver:
https://lore.kernel.org/patchwork/patch/1121600/



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
