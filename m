Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177E5FC8B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn7XQ/A6e/tEYwtgW7XjtqGls/AjG3tjAwBiDLIk0Ak=; b=UWFYsBUDjraFBE
	RSiMENzZ76hz008eSKG52CGsFNxiZ6M1UE0xwxgj7tcKm5d/MYad8snfEie8MArlXysjfGDno7gsR
	4TBF4iIQdU7IwrUO5q9irNKj/rAfiCCGTDU+bdiHbGV2knw0oY64gHd3rPd/iGe0JkApGPyb3pfGr
	Qli53g1pDU+ED1A3d0hMg+sOaZPXhw8Z/miAOxYkXzOEp0/aP1jLoXIXSgsGGQtBc2Gu/mGG8yOCC
	dBhjyr50szvWEUfKPb6WZ2253ZExh2v8KNS+Wjs60X3inEOYj1yjRBpHJaeumM+O+YE6/zpS9u1Un
	MFfCg+EwiMdypjd6j8Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFxy-0005z6-2o; Thu, 14 Nov 2019 14:19:22 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFxi-0005yK-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:19:08 +0000
Received: by mail-vs1-xe42.google.com with SMTP id n9so3929255vsa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mF9QJkIN8Qk+EGkxO+jVoBbFR7FMIpRA3CjmA8m3d7Y=;
 b=Ml/cOiBysl9RO47an1PTBHLBV9w/7hUJ5RTzC9SA1Mtzt+/DhPojZxalupt6UqYxdQ
 Z6JVbt31LezzDArBbJjiKL2Y5fmaM9zvJ7unZ4BgDdfgF9mW0AXrx+BoEeZrvPk8v4Na
 vFp/6s+uvZ+tazuT9dOHmkygy3CCIjNpWHbDS4RdoO1Ax+9gtplcOkQGyvu+xkTNpwvf
 BQOZDKA6W1skAgd0wkcQQjy4KYmerLP5JSisRTka6/XXrK6yecbJSVLJ+KeRGxhACdKH
 8qTLgfs22vZ7hOJ8kyH9jH6x5yGzqyYsrJoASTpX+UbbwnAEwMt16yGMLqfSMGWl0VET
 jivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mF9QJkIN8Qk+EGkxO+jVoBbFR7FMIpRA3CjmA8m3d7Y=;
 b=Y3XDDPIwjW/QTmAOitssQo7EczaFxhfBWNVB+Di4qtPzM6sprGDJOZmc8wBzvJoKfQ
 AdEDCCSBK2giH2dfOY8TxyCYSIkTOG7DVBaROfh2wc8F3/LD0XQ1B5umCJYo42g2inXU
 t8vhH9bnGcjEXszOD2Ik/V4igXIXK0cbdURH225QIzCaSABqQedL+aC5MuuLWNpx3DCu
 x3g3F2x1T8bTY4KCKfh1CRAQ2bF/L0iXfWPSJ324HO1tktXAmQ/obNSu6RqhlNHRDuja
 UTtm6Q2eMPm+dIGU69hwI0gWcT2ttfj3tiHh6uhDxy1uNCpGUpZGrmygPADAQCWXGo+3
 RDPA==
X-Gm-Message-State: APjAAAUNm3XLyq4I1M0dr3neK5R2k0QSp3hNIsvbaI8cKtihf8ok1Fnr
 IbRSvvdJImVppHjmxz7ksv1PwPLD+BwSSQ5rg8jzmg==
X-Google-Smtp-Source: APXvYqwgCmwHYSDSJ68Em4upupN+YGH3wrjpaM8fSyc24xbueo9viz0GrcVPQXBkKEvWLAXn8LtIFd6tV6myvBaAjVM=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr6019578vsa.34.1573741145328; 
 Thu, 14 Nov 2019 06:19:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573122644.git.hns@goldelico.com>
In-Reply-To: <cover.1573122644.git.hns@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 15:18:29 +0100
Message-ID: <CAPDyKFrntf2Kd9Zf7uxRCUk_OrKD8B3xOKmvPaf04X21L5HwWA@mail.gmail.com>
Subject: Re: [PATCH v3 00/12] OpenPandora: make wl1251 connected to mmc3 sdio
 port of OpenPandora work again
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_061906_732729_51B0AA8C 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 at 11:31, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
>
> * add a revisit note for special wl1251 handling code because it should
>   be solved more generic in mmc core - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> * remove init_card callback from platform_data/hsmmc-omap.h - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> * remove obstructive always-on for vwlan regulator - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> * rename DT node - suggested by Rob Herring <robh@kernel.org>
> * fix ARM: dts: subject prefix - suggested by Tony Lindgren <tony@atomide.com>
> * also remove omap2_hsmmc_info and obc-y line in Makefile - suggested by Tony Lindgren <tony@atomide.com>

No further comments from my side. Let's just agree on how to deal with
the ti,power-gpio, then I can apply this.

Thanks a lot for fixing all this mess!

Kind regards
Uffe

>
> PATCH V2 2019-10-19 20:41:47:
> * added acked-by for wl1251 patches - Kalle Valo <kvalo@codeaurora.org>
> * really removed old pdata-quirks code (not through #if 0)
> * splited out a partial revert of
>         efdfeb079cc3b ("regulator: fixed: Convert to use GPIO descriptor only")
>   because that was introduced after v4.19 and stops the removal of
>   the pdata-quirks patch from cleanly applying to v4.9, v4.14, v4.19
>   - reported by Sasha Levin <sashal@kernel.org>
> * added a new patch to remove old omap hsmmc since pdata quirks
>   were last user - suggested by Tony Lindgren <tony@atomide.com>
>
> PATCH V1 2019-10-18 22:25:39:
> Here we have a set of scattered patches to make the OpenPandora WiFi work again.
>
> v4.7 did break the pdata-quirks which made the mmc3 interface
> fail completely, because some code now assumes device tree
> based instantiation.
>
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>
> v4.11 did break the sdio qirks for wl1251 which made the driver no longer
> load, although the device was found as an sdio client.
>
> Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")
>
> To solve these issues:
> * we convert mmc3 and wl1251 initialization from pdata-quirks
>   to device tree
> * we make the wl1251 driver read properties from device tree
> * we fix the mmc core vendor ids and quirks
> * we fix the wl1251 (and wl1271) driver to use only vendor ids
>   from header file instead of (potentially conflicting) local
>   definitions
>
>
> H. Nikolaus Schaller (12):
>   Documentation: dt: wireless: update wl1251 for sdio
>   net: wireless: ti: wl1251 add device tree support
>   ARM: dts: pandora-common: define wl1251 as child node of mmc3
>   mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
>     of pandora_wl1251_init_card
>   omap: pdata-quirks: revert pandora specific gpiod additions
>   omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
>   omap: remove omap2_hsmmc_info in old hsmmc.[ch] and update Makefile
>   mmc: host: omap-hsmmc: remove init_card pdata callback from pdata
>   mmc: sdio: fix wl1251 vendor id
>   mmc: core: fix wl1251 sdio quirks
>   net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
>   net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions
>
>  .../bindings/net/wireless/ti,wl1251.txt       |  26 +++
>  arch/arm/boot/dts/omap3-pandora-common.dtsi   |  36 +++-
>  arch/arm/mach-omap2/Makefile                  |   3 -
>  arch/arm/mach-omap2/common.h                  |   1 -
>  arch/arm/mach-omap2/hsmmc.c                   | 171 ------------------
>  arch/arm/mach-omap2/hsmmc.h                   |  32 ----
>  arch/arm/mach-omap2/pdata-quirks.c            | 105 -----------
>  drivers/mmc/core/quirks.h                     |   7 +
>  drivers/mmc/host/omap_hsmmc.c                 |  30 ++-
>  drivers/net/wireless/ti/wl1251/sdio.c         |  23 ++-
>  drivers/net/wireless/ti/wlcore/sdio.c         |   8 -
>  include/linux/mmc/sdio_ids.h                  |   2 +
>  include/linux/platform_data/hsmmc-omap.h      |   3 -
>  13 files changed, 111 insertions(+), 336 deletions(-)
>  delete mode 100644 arch/arm/mach-omap2/hsmmc.c
>  delete mode 100644 arch/arm/mach-omap2/hsmmc.h
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
