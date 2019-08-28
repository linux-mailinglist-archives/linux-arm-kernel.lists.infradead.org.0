Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98EDA004B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVNbhOWltR/030HTRv4YNvDPwNM90grkxVPjOMFA24c=; b=ELglyeIYOEP8vV
	uJdWIeGYe8lTtmI1nvLPX/01bkMtEGxMFuFvlUU4m/7PeLYpBa7GqbxfpX0KgLJA4nbB9xbSDeohE
	zzTDQr7C2XYecy8+vyVSjqUbq0bZCJ8ucrYkvp/IhAAoT32MmDQs/eeHJwKqPaOSKQmr6Xun7zErm
	vjS/tDgJMI9bJ299ihadOs7Mv2QxN3ZnsVBNzmCy8TMU7uTwCIKXXHuGjBIYzI2/c4BEEe29zgTGI
	UcF81N4pn2QqDaoGzHSCXGekhxx9YXAHBAF+LPObnVbN0OujgH97LeR/rI7QBpY6s+hRCSCKKl7Xd
	NF3jjpOujfzapDeZkArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vbj-0006bf-RV; Wed, 28 Aug 2019 10:55:19 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vb8-0006ad-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:54:43 +0000
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x7SAsGAr020684
 for <linux-arm-kernel@lists.infradead.org>; Wed, 28 Aug 2019 19:54:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x7SAsGAr020684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566989657;
 bh=0aEfdaeY7mGkEAyGyJedaS36AmSkDHSHLjJWK6eJ8jU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bK8fRPnWch65cU6pgIoRy9PQBFZXFjZyaECj8O/kkx24MPqoedK98ZKATllbYFpCx
 nEN73VKu9eY89bVTdzDU6v4j6xAD+ZPhYcHLtZI6J986KSm9T4v1ZXa30nNgd9iOa/
 iVw5CoXOPXoV094mtj5rUSD9l+L2GUG738uJ6VpcqCkpDHUAcP3LkIVQIws/5MjHln
 27ZJtFOqGh9EQlFwGFso/6v6/xwkQB1BIZU4X8d6Pn6jEASzJyVsxrQ2Y6pr9vLyvd
 uLiEGSm67Nu/LHo2aqPZixxJR3pcME8nfDSwsPSDZMUPb5R6wnwVYSj8cjFpsa3ikc
 GNot1GcyfydYA==
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id c7so1517889vse.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 03:54:17 -0700 (PDT)
X-Gm-Message-State: APjAAAVd73VDbDnJF2HdpSxm/u+uVzkZ527cIjrvhL2Zvk6habUQuOaJ
 9THA3LY4hFGLKjBXORr5yFOGvdjo4n0JigCbqaU=
X-Google-Smtp-Source: APXvYqyTOMfJYEouCiB1bEN4976TgQu4HqralgHD2818HsBCGBXAYnYZsbiCyyA54/vVKIRU/ogvfy3faarlq+XW0VM=
X-Received: by 2002:a67:8a83:: with SMTP id m125mr1914365vsd.181.1566989656023; 
 Wed, 28 Aug 2019 03:54:16 -0700 (PDT)
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
In-Reply-To: <20190827115541.GB5921@lst.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 28 Aug 2019 19:53:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ_nQcBt=xH1-h+=co85mTxFgbe+_46Gu4LaNsDSm+kYA@mail.gmail.com>
Message-ID: <CAK7LNAQ_nQcBt=xH1-h+=co85mTxFgbe+_46Gu4LaNsDSm+kYA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_035442_487477_EB152FC1 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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

Hi Christoph,

On Tue, Aug 27, 2019 at 8:55 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Aug 27, 2019 at 06:03:14PM +0900, Masahiro Yamada wrote:
> > Yes, this makes my driver working again
> > when CONFIG_DMA_CMA=y.
> >
> >
> > If I apply the following, my driver gets back working
> > irrespective of CONFIG_DMA_CMA.
>
> That sounds a lot like the device simply isn't 64-bit DMA capable, and
> previously always got CMA allocations under the limit it actually
> supported.  I suggest that you submit this quirk to the mmc maintainers.


I tested v5.2 and my MMC host controller works with
dma_address that exceeds 32-bit physical address.

So, I believe my MMC device is 64-bit DMA capable.

I am still looking into the code
to find out what was changed.




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
