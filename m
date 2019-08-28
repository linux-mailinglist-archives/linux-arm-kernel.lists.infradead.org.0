Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A151AA0194
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DiYvkfs9foF9oXGZfj/9JmnweuWi75HelZocBRieEs=; b=ZTIGWwuU10m6Ku
	y9wZMpEXBVyi/YzRScOXGidSN8/ntGMMZYk2+vCxue0oyp9s2cE2VCXJW8wQVUdONz/OLLkukqhA7
	z01u3BZU1CblB+HVsL22zktSAHHpFuvo7a5IwHCIu1F8LaDbXsgWfQxfC1DWTVrj+b7l+/gbULB8m
	WooIqThXiTdZRfHCj2zrfT2gZdJmB7JK4F2wu6mohcgRmZFiehpBjlQ1WfYFnnsgfuV6uRRxh6gUP
	HvTxGaF5S6+PmjAvuEgiFOVUArymv4cEvn9hhMj9QskCCoIMY883shMF68J/j5SqxhzlK1nekH1Ri
	P8sj2BnYpx0lbjguTDnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2x0K-0000ln-Lx; Wed, 28 Aug 2019 12:24:48 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2x09-0000lP-Dj
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:24:39 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x7SCOKsN031422
 for <linux-arm-kernel@lists.infradead.org>; Wed, 28 Aug 2019 21:24:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x7SCOKsN031422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566995061;
 bh=QGwpmYKpkBfkJkR52bVEAkpX4zw0mwzUiEGIdCDkwxA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uqNGtZWnszkj+EI17b6cYBIkgLT1pNqqjZ5vvXHhv3nOtkGhMLE3vL239iHJx8xOz
 TSdYOHpkebqzZFAStQTcerRGirstT0XYJoVthR/5RvSg8EwIXbfT0K4YHHjnM2D9df
 JXXCqO9Sr2ZFEdHKD7gxA7eX9ABdy7xMFqUuoAjc4LZbh1oHbeSw+NQJ4Ce2UY37OL
 1txXvkAUycDvn0IT3BeWg+7kqZstKdDcVVmHGUVKjLtz+pcmN6rubDhCpA5S2OJHzV
 Tbrl68C67rXttDBFRWfYe+B8o+XbJ2QlQQ11l4eNvd1Y5ZXbdFZLM/YI9cfIW6ibm1
 bz9Dqz+XAfrPw==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id x2so748501uar.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:24:21 -0700 (PDT)
X-Gm-Message-State: APjAAAVaRbYmIyzCDx/75J3mb9vv4Fh8Tqo3R9EnuuecKF5r0RMoDhVJ
 L8TwDYeMXORP36Tp09Jf+2IxyLST9405WHN0AFw=
X-Google-Smtp-Source: APXvYqzOQYU2Q+Xq/DN7mTcKzBb0P1kiiE+ggL4N1BaGeuzN90KCZ6nzT8nGJkbkDhur/ilmD52mrtpqBPxR1Kulykg=
X-Received: by 2002:ab0:442:: with SMTP id 60mr1554937uav.109.1566995060173;
 Wed, 28 Aug 2019 05:24:20 -0700 (PDT)
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
In-Reply-To: <CAK7LNAQ_nQcBt=xH1-h+=co85mTxFgbe+_46Gu4LaNsDSm+kYA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 28 Aug 2019 21:23:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNATvz=TTe+3OyLrtUqDuTUTn1dg9Sk-t3BD_OFZfViCPMw@mail.gmail.com>
Message-ID: <CAK7LNATvz=TTe+3OyLrtUqDuTUTn1dg9Sk-t3BD_OFZfViCPMw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_052437_797438_B02B213D 
X-CRM114-Status: GOOD (  18.49  )
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

On Wed, Aug 28, 2019 at 7:53 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Hi Christoph,
>
> On Tue, Aug 27, 2019 at 8:55 PM Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Tue, Aug 27, 2019 at 06:03:14PM +0900, Masahiro Yamada wrote:
> > > Yes, this makes my driver working again
> > > when CONFIG_DMA_CMA=y.
> > >
> > >
> > > If I apply the following, my driver gets back working
> > > irrespective of CONFIG_DMA_CMA.
> >
> > That sounds a lot like the device simply isn't 64-bit DMA capable, and
> > previously always got CMA allocations under the limit it actually
> > supported.  I suggest that you submit this quirk to the mmc maintainers.
>
>
> I tested v5.2 and my MMC host controller works with
> dma_address that exceeds 32-bit physical address.
>
> So, I believe my MMC device is 64-bit DMA capable.
>
> I am still looking into the code
> to find out what was changed.


I retract this comment.

Prior to bd2e75633c8012fc8a7431c82fda66237133bf7e,
the descriptor table for ADMA is placed within the
32-bit phys address range, not exceeds the 32-bit limit.

Probably, my device is not 64-bit capable.

I will talk to the hardware engineer,
and check the hardware spec just in case.

Thanks.

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
