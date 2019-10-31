Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8582CEB5A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/0N3NOgCZGQOLf60Bpgi60DiEkzYY9DPYDnVZddNp4=; b=awpTnNOVruzJY0
	kz6U4d9Rm8BDBoqB6sXStbC3B3uKDk5mo+78cJFRHd/sfMqmC3ulqP+Nsdzc5fdnIoeL2lUNeXJ4O
	ZZsCjInglNlpIp1oPkj3JKgBG6dO1vTjEJcpU22PcsO54MBDcHo2Hl+IHAnFCGTAaOYZowkckG6Yg
	R6kFEoy0oyDqUKZr3rrmZz8xOtRERPtqJBxk7M2uouyQD2Vpy15vpBQXvrpIO3QEhySr2CYs2mdr3
	ePFszLAgCsjMsXvOBE+KK3L6iZDvm26Z3oH2p2+7B8iodtr2N7GW4lIpcs/P0YtoY5K1FkK0OWBIr
	WQMNCWoUNQmtkQo3Ksug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDnd-000060-TP; Thu, 31 Oct 2019 16:59:53 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDnT-00005W-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:59:45 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 127so1631353vsn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rBXjy64QhAJngU1bLCgW8NmRIabhTqAJ4rYpSUJH/vA=;
 b=MFPuR6yrPRTAmL9shB7f7ccQmfeaxlzOoX57mPiTDTNTInAdnhDq1qiWaZtEhzbSLI
 aLEv7aV9AfTmYN2RGLov44yiuhk/5h8r4Z03gT3ZXWcaMGCrA2GoczDlv5IVrmoOhv4t
 WcfOOehtYLlEpYEn0voLWT83cdteFabhYfsqZC54x6OQXZwgDcqZkFmA5SMMHwjWTNSG
 sYg9VpHJwIznNow79XZhVdyqPv493SMXP9sXVX7fApFQoibaYXQZ08TdkHafK52H7w9Y
 fikkLMrmkfpckOrp6DlZiXfmWE8rD0t0Bw6Jbyw+t93JF2MRH6PaH9+QYnvO5UucNtMy
 ON5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rBXjy64QhAJngU1bLCgW8NmRIabhTqAJ4rYpSUJH/vA=;
 b=hAqpt75eeTip/AzgKDp9OKz61KMiQtf/a/YDLmilFCJtOgjO7EYtYiYMh2ORSCsNUm
 My4aMuIHeU3NzXh1RQxvQ0O1DyplC/oHmuVRvyyb0mqNRJOUfsz55gv09rVLvyt4vmWY
 QXsuRy4y6ko+4dVbnV+QNRO9TMMCzWOH2GpRgcLVqyNJxXYzcCGjGjWOonSZcnrKhaq/
 sOp1MkfbW0omgnGJxLXOC9JepS3LDToN7npHOgg8uPOXLZd7k3+VqSQ//LMlPrPU43zi
 i/lTDs6wX0FRAkucOPB02sRZnLh+UGL/yEsYkD6GRwcn0LFw8QRIr5PynLA/Y8Z8OJLH
 tvWQ==
X-Gm-Message-State: APjAAAVFqSb9r0XORowi8Ipyx2wtWaQmdy/KKuwzed5YLkVcuDgOZaiX
 ykeqI3zi0xTNSsGR8xF/m9V4cuZCOhMuWaewbLmcSw==
X-Google-Smtp-Source: APXvYqxUDYzIwZUL5FbFN+ofBpA8OFEwiksm7t/nLo1J8VkpA/QJoge6ynXgiOcDbF0m20N6ahz2Rokt9mlDmh48qB4=
X-Received: by 2002:a67:fb5a:: with SMTP id e26mr3354691vsr.200.1572541182099; 
 Thu, 31 Oct 2019 09:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com>
 <bec9d76e6da03d734649b9bdf76e9d575c57631a.1571510481.git.hns@goldelico.com>
 <CAPDyKFrMQ3fBaeeAYVJfUdL8m=PDRU9Xt_9oGw6D1XOY68qDuQ@mail.gmail.com>
 <D9A82904-35BE-41F2-A308-9A49606428B1@goldelico.com>
In-Reply-To: <D9A82904-35BE-41F2-A308-9A49606428B1@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 31 Oct 2019 17:59:05 +0100
Message-ID: <CAPDyKFrbOH=ROv_JefSQsEnmGqN6oFVfbhpqscOK=KUqJgzarw@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] DTS: ARM: pandora-common: define wl1251 as child
 node of mmc3
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095944_044819_7703B2B7 
X-CRM114-Status: GOOD (  28.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "# 4.0+" <stable@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 at 18:25, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
>
> > Am 30.10.2019 um 17:44 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> >
> > On Sat, 19 Oct 2019 at 20:42, H. Nikolaus Schaller <hns@goldelico.com> wrote:
> >>
> >> Since v4.7 the dma initialization requires that there is a
> >> device tree property for "rx" and "tx" channels which is
> >> not provided by the pdata-quirks initialization.
> >>
> >> By conversion of the mmc3 setup to device tree this will
> >> finally allows to remove the OpenPandora wlan specific omap3
> >> data-quirks.
> >>
> >> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
> >>
> >> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> >> Cc: <stable@vger.kernel.org> # 4.7.0
> >> ---
> >> arch/arm/boot/dts/omap3-pandora-common.dtsi | 37 +++++++++++++++++++--
> >> 1 file changed, 35 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/arm/boot/dts/omap3-pandora-common.dtsi b/arch/arm/boot/dts/omap3-pandora-common.dtsi
> >> index ec5891718ae6..c595b3eb314d 100644
> >> --- a/arch/arm/boot/dts/omap3-pandora-common.dtsi
> >> +++ b/arch/arm/boot/dts/omap3-pandora-common.dtsi
> >> @@ -226,6 +226,18 @@
> >>                gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;     /* GPIO_164 */
> >>        };
> >>
> >> +       /* wl1251 wifi+bt module */
> >> +       wlan_en: fixed-regulator-wg7210_en {
> >> +               compatible = "regulator-fixed";
> >> +               regulator-name = "vwlan";
> >> +               regulator-min-microvolt = <1800000>;
> >> +               regulator-max-microvolt = <1800000>;
> >
> > I doubt these are correct.
> >
> > I guess this should be in the range of 2.7V-3.6V.
>
> Well, it is a gpio which enables some LDO inside the
> wifi chip. We do not really know the voltage it produces
> and it does not matter. The gpio voltage is 1.8V.
>
> Basically we use a fixed-regulator to "translate" a
> regulator into a control gpio because the mmc interface
> wants to see a vmmc-supply.

The vmmc supply represent the core power to the SDIO card (or
SD/(e)MMC). Depending on what voltage range the vmmc supply supports,
the so called OCR mask is created by the mmc core. The mask is then
used to let the core negotiate the voltage level with the SDIO card,
during the card initialization. This is not to confuse with the I/O
voltage level, which is a different regulator.

Anyway, according to the TI WiLink series specifications, it looks
like vmmc should be a regulator supporting 3-3.3V (in many schematics
it's called VBAT).

Furthermore I decided to dig into various DTS files that specifies the
vmmc regulator, of course for mmc nodes having a subnode specifying an
SDIO card for a TI WiLink. In most cases a 1.8V fixed GPIO regulator
is used. This looks wrong to me. The fixed GPIO regulator isn't really
the one that should model vmmc.

The proper solution, would rather be to use separate regulator for
vmmc and instead use a so called mmc-pwrseq node to manage the GPIO.

To conclude from my side, as we have lots of DTS that are wrong, I
don't really care if we add another one in the way you suggest above.
But feel free to look into the mmc-pwrseq option.

>
> >
> >> +               startup-delay-us = <50000>;
> >> +               regulator-always-on;
> >
> > Always on?
>
> Oops. Yes, that is something to check!

As it's a GPIO regulator, for sure it's not always on.

>
> >
> >> +               enable-active-high;
> >> +               gpio = <&gpio1 23 GPIO_ACTIVE_HIGH>;
> >> +       };
> >> +
> >>        /* wg7210 (wifi+bt module) 32k clock buffer */
> >>        wg7210_32k: fixed-regulator-wg7210_32k {
> >>                compatible = "regulator-fixed";
> >> @@ -522,9 +534,30 @@
> >>        /*wp-gpios = <&gpio4 31 GPIO_ACTIVE_HIGH>;*/    /* GPIO_127 */
> >> };
> >>
> >> -/* mmc3 is probed using pdata-quirks to pass wl1251 card data */
> >> &mmc3 {
> >> -       status = "disabled";
> >> +       vmmc-supply = <&wlan_en>;
> >> +
> >> +       bus-width = <4>;
> >> +       non-removable;
> >> +       ti,non-removable;
> >> +       cap-power-off-card;
> >> +
> >> +       pinctrl-names = "default";
> >> +       pinctrl-0 = <&mmc3_pins>;
> >> +
> >> +       #address-cells = <1>;
> >> +       #size-cells = <0>;
> >> +
> >> +       wlan: wl1251@1 {
> >> +               compatible = "ti,wl1251";
> >> +
> >> +               reg = <1>;
> >> +
> >> +               interrupt-parent = <&gpio1>;
> >> +               interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;  /* GPIO_21 */
> >> +
> >> +               ti,wl1251-has-eeprom;
> >> +       };
> >> };
> >>
> >> /* bluetooth*/
> >> --
> >> 2.19.1
> >>
>
> BR and thanks,
> Nikolaus
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
