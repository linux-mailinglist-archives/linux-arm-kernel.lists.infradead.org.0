Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE09DEFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xp6Ge7i89Tw7Ka5CWCylbSHCoNCIn16M+UHvP+DVSTM=; b=dO6weVW8G0ySRx
	Lc7BowQ1i8TOnku4UttNtsSuJoQcf13MTqWoTcHWeSTW+jeQPmwmwGmrBA/v715Pl9p2z9fUmDSFZ
	ySt3ehAkBRXK2TciNl/EKkpdPHlQ6giJQqeZZ4CDchJ4F9uwhgoxOcAyO20HC986wlGw4zWTziPOD
	VT+fuGTzWqc9PxRVHL9YQntR0NlNanpB0T6qOctXVk0EvygPWS+asG+0QiwyR0/aB77yGokeU+4kq
	lgGPmC1cv1+mSyiMLp+xPf/xbOgFPlM4rcBkwNQMt5oRemhJkysRGIE0YZ2bNmrHiG4UCqbXiBM3y
	i55PlQpt0GiPx7VSZzsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WBg-00073Y-BC; Tue, 27 Aug 2019 07:46:44 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WBO-000735-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:46:27 +0000
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x7R7jukW024848
 for <linux-arm-kernel@lists.infradead.org>; Tue, 27 Aug 2019 16:45:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x7R7jukW024848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566891957;
 bh=CCtCL19DmuvrV2VqAgkqWIfPFYfgDfnJCKU/CL8uRio=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=B4CHip1JP3uIn3+++ULwsuJ2uOqnGULQVL3hM/BRafp9nqobnzzIyBKunrsvygn8D
 a247ywbY3uF03eT4OwDgrLwC7BTZXyGhLOlM/qGvJBsnMTxKI3/Qc8MuUB56hs+WtR
 rzCU1oTxcbXijyWHC5/v/QL4C0a0IuM/gpxNhJmbc9NjtpaK4z9VHYw3bKuG7kLtru
 /AYcsWLuxD34/uMMZYPulTlnNTvhWX3n6KPwBfFjjjotXcSIGng0eZWWYO4SV3Zz00
 nqs1HM7Gcsysky1nipVLwEzdMxDrfT6bV+D5qtslbXSy1HPK2t+LindprwHN2kJSuV
 0qhGuaKokTqug==
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id x20so12580935vsx.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 00:45:57 -0700 (PDT)
X-Gm-Message-State: APjAAAW2YCFW5cyL3C9imuvELjDx0AKMT2F0mHuANU9dyY0pmbRgWa5P
 BphevdMhymec9y6riyZ4XJSyE1l53iMW9dn9yY4=
X-Google-Smtp-Source: APXvYqw3kFkP7AW1Myq4vwC0HTeWHl7qNE1Xu8mQsAgOMCEnoA+VGlGvJAQBc5iBngpOl9rP3s1Rs35DhGciNkmYfkU=
X-Received: by 2002:a67:fe12:: with SMTP id l18mr12861854vsr.54.1566891956209; 
 Tue, 27 Aug 2019 00:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
 <CAK7LNAQfYBCoChMV=MOwcUyVoqRkrPWs7DaWdzDqjBe18gGiAQ@mail.gmail.com>
 <20190825011025.GA23410@lst.de>
 <CAK7LNAQb1ZHr=DiHLNeNRaQExMuXdDOV4sFghoGbco_Q=Qzb8g@mail.gmail.com>
 <20190826073320.GA11712@lst.de>
In-Reply-To: <20190826073320.GA11712@lst.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 27 Aug 2019 16:45:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNATYOLEboUTO4qPx2z7cqwDrHBO1HFHG8VzZEJ15STv+nw@mail.gmail.com>
Message-ID: <CAK7LNATYOLEboUTO4qPx2z7cqwDrHBO1HFHG8VzZEJ15STv+nw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_004626_359867_E75AC726 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Aug 26, 2019 at 4:33 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Aug 26, 2019 at 11:05:00AM +0900, Masahiro Yamada wrote:
> > This is included in v5.3-rc6
> > so I tested it.
>
> So there is no allocation failure, but you get I/O errors later?

Right.

>
> Does the device use a device-private CMA area?

Not sure.
My driver is drivers/mmc/host/sdhci-cadence.c
It reuses routines in drivers/mmc/host/sdhci.c



>  Does it work with Linux
> 5.2 if CONFIG_DMA_CMA is disabled?

No.
5.2 + disable CONFIG_DMA_CMA
failed in the same way.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
