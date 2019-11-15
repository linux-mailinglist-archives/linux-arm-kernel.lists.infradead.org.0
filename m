Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83121FD92F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuwKgk9nZuyzOWtOf0q9yGAgxcS4srtaeARfuaCI/NY=; b=PXz+1lU5qVZHwA
	R0RSWUpzv1CR81cWJaDXo2foQk8H+vLnuH2K+xZN15PoZWKTaDoq4qPEZbQGqTkT1oFWf+zKLodqB
	CIbuXfG+mB9tZXLedVVBvNG3LuYC8rNe+wmjGo9g6nTLqbSQ/7ErYZNwl+QFkg0w2dEbncr/L4PPC
	aMTtghTtJaxrRurMN0HKY9A149RC5L/kLWaAe+/qGfLX3XUsgRHZT7oeudVj6SqMgUExg6PQ3zBIQ
	XOKirkLlsxtiux27rk5Bbb7QZtVzA+CQMMUmwXi1r5SDy21iZn/CVz6GeN+CiCc5CXGUWZ8d8gB8W
	GUB5gvwor3hCjdUGU2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXwN-0004uF-Am; Fri, 15 Nov 2019 09:30:55 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXvt-0004Xa-0P
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:30:33 +0000
Received: by mail-ua1-x944.google.com with SMTP id r22so2800267uam.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 01:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U0K8GRiXqSgIpN48tBNHcV+jI/oiDgvDhl7ShZIVOhE=;
 b=dms2AT6yjYIujdBp5vLXzT3QSWBUJdp+Ja/bHoPGCKS84bKo37q9DYAWmQ+OhvnX47
 wQESQqhFjyBsKxLBW14sJM6Kkxy/Yvicy1Vttr/bmnfFi1qkmbGWwvZC6/I2T2hc0dc4
 E6e4jsZ8R7HPGQj7VhbAeZXMKd4W+mV9z0NBs1wYV93Cw7drye59WzshJHguKEkNXCPt
 fHF0ouNrAUlgmAVwGBwpW7V1N92+w5PRrvnambZTbfMnbWUBMJIPHZCBuMz5iDZ3km48
 QxwxVl+99j/KVNaPgNldx2y1f+snHTdbPP0IYzr0FUgyc31xgzkXkCrLt9Puderh1g1W
 O9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U0K8GRiXqSgIpN48tBNHcV+jI/oiDgvDhl7ShZIVOhE=;
 b=erLS4uGHyj1XomCT7zn3Hw0qo3DkB+ymWcyn3d2e2DlRmlVPKgqrruUT6gZZFQRdVv
 QN4sUG/MIi/QLOm+YmhJPhVBTyHvWHq5J7KN1XzZjwlKClBvT1FUoKFspVjRsTDhJW9j
 LruwUOvPuvGDYvb/hqobjQ5p11GbHVLhMR0N8EixSeGBtg3ZB5ZSYbqtxUGl4v5WDmPc
 DCzsbaYt8s2OSShwaf9eUp20d3kebCaDtR5fFUznE8rU1cB8O4qNMfFSzBhTnm5CfL1d
 W8/vv1ho9UaVb8kBDEFcRbuf6CLYhXTZqMnkkUcACwuVoFnlE71Nfj2aBgXpe7fjkEva
 bdQQ==
X-Gm-Message-State: APjAAAWqbLL+7Ur0qT/RegjwvY36ZCDpKCAWszlVN6qrk87HbPzxdjHh
 cGmrbCS1rSz7wR7fpFxzpzG5VBQZi8zr7dKVlZyqMw==
X-Google-Smtp-Source: APXvYqzU6WJnGjb2iLphku/+v8QsaQ8unugsql39hfm0KRqoySp6l08BYKltD9R0v8e99ePYA9xvGwkzshWggfN0FEM=
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr8348393uaq.104.1573810223324; 
 Fri, 15 Nov 2019 01:30:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573122644.git.hns@goldelico.com>
 <CAPDyKFrntf2Kd9Zf7uxRCUk_OrKD8B3xOKmvPaf04X21L5HwWA@mail.gmail.com>
 <5F5A5FC0-8F91-4D5B-9EF6-AF36FE38B588@goldelico.com>
In-Reply-To: <5F5A5FC0-8F91-4D5B-9EF6-AF36FE38B588@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 15 Nov 2019 10:29:46 +0100
Message-ID: <CAPDyKFr=Uk1i0c=3WvuOYCQ__Skpr-9mjVM2Yqst-hd8zY6OeQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/12] OpenPandora: make wl1251 connected to mmc3 sdio
 port of OpenPandora work again
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_013025_124235_8856057B 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kefeng Wang <wangkefeng.wang@huawei.com>, Petr Mladek <pmladek@suse.com>,
 Tony Lindgren <tony@atomide.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, netdev <netdev@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 DTML <devicetree@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap <linux-omap@vger.kernel.org>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 16:16, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Hi Ulf,
>
> > Am 14.11.2019 um 15:18 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> >
> > On Thu, 7 Nov 2019 at 11:31, H. Nikolaus Schaller <hns@goldelico.com> wrote:
> >>
> >>
> >> * add a revisit note for special wl1251 handling code because it should
> >>  be solved more generic in mmc core - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> >> * remove init_card callback from platform_data/hsmmc-omap.h - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> >> * remove obstructive always-on for vwlan regulator - suggested by Ulf Hansson <ulf.hansson@linaro.org>
> >> * rename DT node - suggested by Rob Herring <robh@kernel.org>
> >> * fix ARM: dts: subject prefix - suggested by Tony Lindgren <tony@atomide.com>
> >> * also remove omap2_hsmmc_info and obc-y line in Makefile - suggested by Tony Lindgren <tony@atomide.com>
> >
> > No further comments from my side. Let's just agree on how to deal with
> > the ti,power-gpio, then I can apply this.
>
> I'd say it can be a separate patch since it does not fix the Pandora
> issues, but is a new and independent optimization.
>
> And in case someone complains and uses it for some out-of tree purpose
> it can be discussed or even be reverted easier if it is a separate patch.
>
> I can do it in the next days.

Okay, that sounds reasonable.

In the meantime, I have queued up the series on my next branch (for v5.5).

I fixed up a couple of complaints from checkpatch, and also added
stable tags for the first two patches in the series, as that what
missing.

Kind regards
Uffe


>
> > Thanks a lot for fixing all this mess!
>
> I hope the users also appreciate our work.
>
> Best regards,
> Nikolaus
>
> >
> > Kind regards
> > Uffe
> >
> >>
> >> PATCH V2 2019-10-19 20:41:47:
> >> * added acked-by for wl1251 patches - Kalle Valo <kvalo@codeaurora.org>
> >> * really removed old pdata-quirks code (not through #if 0)
> >> * splited out a partial revert of
> >>        efdfeb079cc3b ("regulator: fixed: Convert to use GPIO descriptor only")
> >>  because that was introduced after v4.19 and stops the removal of
> >>  the pdata-quirks patch from cleanly applying to v4.9, v4.14, v4.19
> >>  - reported by Sasha Levin <sashal@kernel.org>
> >> * added a new patch to remove old omap hsmmc since pdata quirks
> >>  were last user - suggested by Tony Lindgren <tony@atomide.com>
> >>
> >> PATCH V1 2019-10-18 22:25:39:
> >> Here we have a set of scattered patches to make the OpenPandora WiFi work again.
> >>
> >> v4.7 did break the pdata-quirks which made the mmc3 interface
> >> fail completely, because some code now assumes device tree
> >> based instantiation.
> >>
> >> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
> >>
> >> v4.11 did break the sdio qirks for wl1251 which made the driver no longer
> >> load, although the device was found as an sdio client.
> >>
> >> Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")
> >>
> >> To solve these issues:
> >> * we convert mmc3 and wl1251 initialization from pdata-quirks
> >>  to device tree
> >> * we make the wl1251 driver read properties from device tree
> >> * we fix the mmc core vendor ids and quirks
> >> * we fix the wl1251 (and wl1271) driver to use only vendor ids
> >>  from header file instead of (potentially conflicting) local
> >>  definitions
> >>
> >>
> >> H. Nikolaus Schaller (12):
> >>  Documentation: dt: wireless: update wl1251 for sdio
> >>  net: wireless: ti: wl1251 add device tree support
> >>  ARM: dts: pandora-common: define wl1251 as child node of mmc3
> >>  mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
> >>    of pandora_wl1251_init_card
> >>  omap: pdata-quirks: revert pandora specific gpiod additions
> >>  omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
> >>  omap: remove omap2_hsmmc_info in old hsmmc.[ch] and update Makefile
> >>  mmc: host: omap-hsmmc: remove init_card pdata callback from pdata
> >>  mmc: sdio: fix wl1251 vendor id
> >>  mmc: core: fix wl1251 sdio quirks
> >>  net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
> >>  net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions
> >>
> >> .../bindings/net/wireless/ti,wl1251.txt       |  26 +++
> >> arch/arm/boot/dts/omap3-pandora-common.dtsi   |  36 +++-
> >> arch/arm/mach-omap2/Makefile                  |   3 -
> >> arch/arm/mach-omap2/common.h                  |   1 -
> >> arch/arm/mach-omap2/hsmmc.c                   | 171 ------------------
> >> arch/arm/mach-omap2/hsmmc.h                   |  32 ----
> >> arch/arm/mach-omap2/pdata-quirks.c            | 105 -----------
> >> drivers/mmc/core/quirks.h                     |   7 +
> >> drivers/mmc/host/omap_hsmmc.c                 |  30 ++-
> >> drivers/net/wireless/ti/wl1251/sdio.c         |  23 ++-
> >> drivers/net/wireless/ti/wlcore/sdio.c         |   8 -
> >> include/linux/mmc/sdio_ids.h                  |   2 +
> >> include/linux/platform_data/hsmmc-omap.h      |   3 -
> >> 13 files changed, 111 insertions(+), 336 deletions(-)
> >> delete mode 100644 arch/arm/mach-omap2/hsmmc.c
> >> delete mode 100644 arch/arm/mach-omap2/hsmmc.h
> >>
> >> --
> >> 2.23.0
> >>
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
