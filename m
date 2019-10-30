Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A97CEA200
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQDTNEquh9Mz10uqoiZZsCoTZiKZuTV4MUueMeZG6bQ=; b=QkUsGWzaW/ag2E
	ltiMs82LLc7Go/ljVKCUZpvkKYVg7ciCoEyH81qecnNOkQHTJHcTSlUTZvrY6moU7MdzJZ3DL3fvq
	UAyOomoxNpLRNtfuCzy1L38jG8NKrPRLYrBR9fWBQLGduBEwYciVG7CbULBahIfejNURM3auTK+JU
	9qmhMAdx3FsNPsXgBdsXlP90fJJSTF2RqBFTdlAnjJYiE3wSkz/HF3a1PzfrjX2UY0byBHYFfNbJ4
	fH/adjIGxoasokW0nv2w+WXmJbukIq50PL4kr52xKBc38cFrfBuPO6Pt+PDNaGLPbucOM+EutAM2C
	6pmSlslKpZfaExDPMs0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr63-0000vR-U9; Wed, 30 Oct 2019 16:45:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr5f-0000l7-ES
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:45:00 +0000
Received: by mail-ua1-x943.google.com with SMTP id u99so916293uau.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 09:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p3/pbvedwS4IhZb4B6nbOhbMOZh2AXw7ndulwhv3TfM=;
 b=uKbzD6z3ZGjc1fWALJKpEEB/bbWW4HPabd5njl25crREYFACWhI8l1Kir807xOxFpf
 uaLa/jYOBB4myt492ky0Bm4YMaUYwzK/94ra2AKsk/hjtGfxyIUNsYZMw3k03FhB7aa+
 D2OMDUrVDFG4lh3JnM9JNhFiNrQATzIWHgWWrsFo/gfWlZcp7D/KPuimOVmXF9dmZDOE
 kqpQKHr+JjnMM9ArF0cPmyy5HSVupmLBQmTJ2rUO9BmpLiphAUI7CTD1n8sVbxM3f7P+
 y4tJ9cXCf+NQfuudxvOK6UYmowPV5Kf2WNvQcUvzZdfMJCJXPEp22cQ//ywxY1dvTRRP
 vp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p3/pbvedwS4IhZb4B6nbOhbMOZh2AXw7ndulwhv3TfM=;
 b=kLEprl+8cIf6x6eghsQaBRBPYE2UkrJpANDsIYn3sfah+1va6lRe7xqzxWkZ+szqwE
 ZIVD5xemoSEv19WZp9kmOIe+NZwUWwDGka2GJyTrKvI3fns+Iw+I0Wp/0xt3OBIB2Si6
 WnRP2NOIrSteyBCt+t3U45vTT3i9fTz9XwE60a4L7rA6UhWDvJNXtgFZPHNewCUru4Bj
 ZKTa0lb4GCp3oC5e1saDBT2hbVupQW2d3aZKV1Wlk2EQMm28nMmbuSKzbLB6oIhr0V6H
 VjrlpCcHuMq1rzKudMDxKLtxJP2bkaD4o6fXOW0VCVhKM5Lxf89lJXZVtNm9elFjtJih
 2yHQ==
X-Gm-Message-State: APjAAAW7OcOqdQHutbxATZlucmiMj2XxXJaVsnUuAynR1/ZDqfkMNCFm
 qux/0nO28F/2CUVGeMRtcKs5hNKy2bgmSVJGFRtabA==
X-Google-Smtp-Source: APXvYqxJtN6SyNTtxvr9eHmowjOiNggxSentSJ3MZnyqcgsnfmMgt0WjJPDMGJJ+lnTYhFM/TEriRkTW1hDBpWXDXFc=
X-Received: by 2002:ab0:2258:: with SMTP id z24mr367974uan.100.1572453897721; 
 Wed, 30 Oct 2019 09:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com>
 <bec9d76e6da03d734649b9bdf76e9d575c57631a.1571510481.git.hns@goldelico.com>
In-Reply-To: <bec9d76e6da03d734649b9bdf76e9d575c57631a.1571510481.git.hns@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 30 Oct 2019 17:44:21 +0100
Message-ID: <CAPDyKFrMQ3fBaeeAYVJfUdL8m=PDRU9Xt_9oGw6D1XOY68qDuQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] DTS: ARM: pandora-common: define wl1251 as child
 node of mmc3
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_094459_485570_79C0F5EB 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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

On Sat, 19 Oct 2019 at 20:42, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Since v4.7 the dma initialization requires that there is a
> device tree property for "rx" and "tx" channels which is
> not provided by the pdata-quirks initialization.
>
> By conversion of the mmc3 setup to device tree this will
> finally allows to remove the OpenPandora wlan specific omap3
> data-quirks.
>
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Cc: <stable@vger.kernel.org> # 4.7.0
> ---
>  arch/arm/boot/dts/omap3-pandora-common.dtsi | 37 +++++++++++++++++++--
>  1 file changed, 35 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/omap3-pandora-common.dtsi b/arch/arm/boot/dts/omap3-pandora-common.dtsi
> index ec5891718ae6..c595b3eb314d 100644
> --- a/arch/arm/boot/dts/omap3-pandora-common.dtsi
> +++ b/arch/arm/boot/dts/omap3-pandora-common.dtsi
> @@ -226,6 +226,18 @@
>                 gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;     /* GPIO_164 */
>         };
>
> +       /* wl1251 wifi+bt module */
> +       wlan_en: fixed-regulator-wg7210_en {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vwlan";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;

I doubt these are correct.

I guess this should be in the range of 2.7V-3.6V.

> +               startup-delay-us = <50000>;
> +               regulator-always-on;

Always on?

> +               enable-active-high;
> +               gpio = <&gpio1 23 GPIO_ACTIVE_HIGH>;
> +       };
> +
>         /* wg7210 (wifi+bt module) 32k clock buffer */
>         wg7210_32k: fixed-regulator-wg7210_32k {
>                 compatible = "regulator-fixed";
> @@ -522,9 +534,30 @@
>         /*wp-gpios = <&gpio4 31 GPIO_ACTIVE_HIGH>;*/    /* GPIO_127 */
>  };
>
> -/* mmc3 is probed using pdata-quirks to pass wl1251 card data */
>  &mmc3 {
> -       status = "disabled";
> +       vmmc-supply = <&wlan_en>;
> +
> +       bus-width = <4>;
> +       non-removable;
> +       ti,non-removable;
> +       cap-power-off-card;
> +
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&mmc3_pins>;
> +
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +
> +       wlan: wl1251@1 {
> +               compatible = "ti,wl1251";
> +
> +               reg = <1>;
> +
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;  /* GPIO_21 */
> +
> +               ti,wl1251-has-eeprom;
> +       };
>  };
>
>  /* bluetooth*/
> --
> 2.19.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
