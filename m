Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343649E39D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOp4nHWbBh3tOdO4/RgylE9VkD8q482h+n8BcIY62VU=; b=ORXj5s9D4fTXth
	7+YncgwwcbO2u/nJvmqgBlnXcFbubLjVkECsy5/cf6qmPZomCpeLmtumhYeJsBjod8FXYdF0YtBmo
	GEIq1Aa14ADAZpVKvRRQALmPbSWOJoyRUWugwKsMfTlSSAr8VBoiFpv6BnB3Zha656DVmBlvKbwfM
	Cu3ZljTVZ199kTY2Jg8XPYL7REPjEacxfU6yrG3FEfkil/8c0gY3aa2NSwimygPxyyMjF209sTxRX
	507k8ebn1DmfZztUlC9OeYDEMCoLCnBJhSIdThIlybjJPHpuQ6JspEHSec11OwPVLi9PgqtEE/zpu
	vu213TqNEvg9pB7fNvSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XPM-0000ii-6V; Tue, 27 Aug 2019 09:04:56 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XOm-0000iH-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:04:22 +0000
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x7R93pt6014818
 for <linux-arm-kernel@lists.infradead.org>; Tue, 27 Aug 2019 18:03:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x7R93pt6014818
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566896632;
 bh=9QFLgDLrDq6oYc9M2pjMIY7wPViunYCOH8ybzE+CYKY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FEJO9C78f6r58lBL+oGJOTJPxQoEb2F5p+8zzLKT0aTGj9HnOH4wJZVO7i4XZ0lrD
 JRaPKKWvcXsmkwHjPM/DC2pmwp6QBq7gDAmbILjLCjSDfTAmzpxI18l4qqL/9MM1QI
 OiW+casOVnjgaTJgg1MrMs/Zcc2ogoWZAiwnNaodtf06YkWFxWxTc4qTTqDJa1Xvat
 Rj4ih6nduKisiJwSs13yNxmV7fiRExk2+Nmcqx0BGve6cl7RqKiflQILfKi43Q6Cyn
 nCnpIRLy2Jlp05lHYh8OR+eckJYKfIMmJbAHTZeExVX6xDHePofUOhPK2vaX5e22WV
 IvohYpkXZw8zw==
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id c7so12924443vse.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:03:52 -0700 (PDT)
X-Gm-Message-State: APjAAAXsszut+OiwUDLVM7TWGFS+ax4HH3Or0KaK/HF9YXZysyVFpZrZ
 170gJaMKOsGB0jfPN8/xe4B5i0zR3bac6pz/BNM=
X-Google-Smtp-Source: APXvYqwricK86V/H4mlXnBje+CLjj05rUISZsABUzE/wYSQ2E+9R0KKypcnkK7mnt6KPt7U5OLwH2hsMH6JJJTu7VOI=
X-Received: by 2002:a67:fe12:: with SMTP id l18mr12998082vsr.54.1566896631370; 
 Tue, 27 Aug 2019 02:03:51 -0700 (PDT)
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
In-Reply-To: <20190827075021.GA953@lst.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 27 Aug 2019 18:03:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQZ+bueZZzSoMADmgLjWNvijHRV=wLQzN_kvLG3b5Uu+w@mail.gmail.com>
Message-ID: <CAK7LNAQZ+bueZZzSoMADmgLjWNvijHRV=wLQzN_kvLG3b5Uu+w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_020420_913641_225194C4 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Aug 27, 2019 at 4:50 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Aug 27, 2019 at 04:45:20PM +0900, Masahiro Yamada wrote:
> > On Mon, Aug 26, 2019 at 4:33 PM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > On Mon, Aug 26, 2019 at 11:05:00AM +0900, Masahiro Yamada wrote:
> > > > This is included in v5.3-rc6
> > > > so I tested it.
> > >
> > > So there is no allocation failure, but you get I/O errors later?
> >
> > Right.
> >
> > >
> > > Does the device use a device-private CMA area?
> >
> > Not sure.
> > My driver is drivers/mmc/host/sdhci-cadence.c
> > It reuses routines in drivers/mmc/host/sdhci.c
> >
> >
> >
> > >  Does it work with Linux
> > > 5.2 if CONFIG_DMA_CMA is disabled?
> >
> > No.
> > 5.2 + disable CONFIG_DMA_CMA
> > failed in the same way.
>
> So it seems like the device wants CMA memory.   I guess the patch
> below will fix it, but that isn't the solution.  Can you try it
> to confirm?  In the end it probably assumes a dma mask it doesn't
> set that the CMA memory satisfies or something similar.


Thanks for the pointer.


> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 69cfb4345388..bd2f24aa7f19 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -236,7 +236,7 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
>
>         if (dev && dev->cma_area)
>                 cma = dev->cma_area;
> -       else if (count > 1)
> +       else
>                 cma = dma_contiguous_default_area;
>
>         /* CMA can be used only in the context which permits sleeping */

Yes, this makes my driver working again
when CONFIG_DMA_CMA=y.


If I apply the following, my driver gets back working
irrespective of CONFIG_DMA_CMA.


diff --git a/drivers/mmc/host/sdhci-cadence.c b/drivers/mmc/host/sdhci-cadence.c
index 163d1cf4367e..504459395c39 100644
--- a/drivers/mmc/host/sdhci-cadence.c
+++ b/drivers/mmc/host/sdhci-cadence.c
@@ -237,6 +237,7 @@ static const struct sdhci_ops sdhci_cdns_ops = {

 static const struct sdhci_pltfm_data sdhci_cdns_pltfm_data = {
        .ops = &sdhci_cdns_ops,
+       .quirks2 = SDHCI_QUIRK2_BROKEN_64_BIT_DMA,
 };

 static int sdhci_cdns_set_tune_val(struct sdhci_host *host, unsigned int val)







-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
