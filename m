Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7DEFC87E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAVvGt21IpHgCGrw37uBttsNcHr3JdcIQzQ5GI5EC6E=; b=sP3WcHZdxvISaE
	04vsdYjYV4at41CmB9YTmS6p1yT58wKoP0wC+U1MHqycSdpgNi7U4gvgUWX86V/OUrpEqEpewR7vg
	ysOjC30ZoARfpKVy5stOfStpbDp+9Bfju7LdSp4KZDSCjid7RXlx4ioh4i3lmdtrkc4InS62Drvqd
	X0XN2JWDTJORgRLYiqh+MtHh3CVK1O2/lEwP5UD8ZqgncY/SYglEZZdkxflZyM7fz9prTVNQ7ODGu
	kFScGysytok7P+KFueI1ALCQrT3beHa2IVL+eBCRfpFFlDLe6YG7g4y+OPRnuB/NfO++LTUxbZCxy
	jO3tYR0IkJBjJCeLMyUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFqo-0003S8-Sz; Thu, 14 Nov 2019 14:11:58 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFqg-0003R4-JR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:11:51 +0000
Received: by mail-vk1-xa42.google.com with SMTP id e205so1495097vke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XSmwLWNo5Rh6fe+p8Uu7DFNnAFhXmFiTvhxWz1V+B8w=;
 b=Zxy9Va/g5HeujT0G/Yr81ssNa+Mrn59GATo64imHO5v4yPYwyPPGs095S9yLGHZZct
 1hxeTUWiuBZWvi+O1vf0npeqW5PjS6EDcNVV/BuKq+FHtrEOxZldeFAkfves+9/Zc/nA
 Jfl+7lufr0kMeZAOu4jE2erwkVZzPMxG8lpE6MQdIaqDuXXS5sdJm3+y9FiWm52EK2l3
 WwyGBsnQjzhGRAggZDE4omJqyKpHbyv37Af0YKrpFhQbUSYZTgpsAw3qsoRhd/fdwACE
 5iSUjaPDvT/GCI+c4fijdDcGkjUJFX9Fldn0zizjgcTiajuBoo8z8CbjC/JqAxv7Pnw6
 eStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XSmwLWNo5Rh6fe+p8Uu7DFNnAFhXmFiTvhxWz1V+B8w=;
 b=GPBUe/kHVCzkw1cd6oKRbybxa12c1rAO8W/BcXPWItIm/Zg3z2aGp9iMLgfeqOXTna
 g94jrxffxLQqZsHF17w9JHdoPy11OypLVBOtOw7PH356q4O+B+Nrgw0RJBc9xhtTulje
 E0wxgKKc4+amYWzhz4L2oW+eLbz5j23zxqvqhsIYw0Y9S/3Y9rnaOEaNtuVb1YPEXhEC
 M/Y7jnSDx87QWgTEfM8IVyK8uI5HnWrCE8e/z9tm7kg7ggPOtUIy+Gnc6QLgJPMsMceA
 keq5FxdSoEeyKaND4CGqHiEiUtiR85z0ejowlrfegJC1bk7fqAOPNL32MhCG5zcHwVGm
 vXWQ==
X-Gm-Message-State: APjAAAW2lgHTNB763p+7jU5JBCd9h0aNg7hqjVbxIj4AUPoiYK0HE7bS
 Ao5WdzUB9yHNKPrvaJAFS9WqUXiJH4aKrHc5DorOov34xL8=
X-Google-Smtp-Source: APXvYqxNH6tQ6y7J3OfkNA5oBwmBY5VTe296JKBsrF2xLv130hd/N0da6UeuSUpnmtRg4fw9qbywtQvMfesNLW0c7dc=
X-Received: by 2002:a1f:2f51:: with SMTP id v78mr5258686vkv.101.1573740707355; 
 Thu, 14 Nov 2019 06:11:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573122644.git.hns@goldelico.com>
 <17b12e91c878dcb74160e3df5f88bc8a9e3f7fce.1573122644.git.hns@goldelico.com>
In-Reply-To: <17b12e91c878dcb74160e3df5f88bc8a9e3f7fce.1573122644.git.hns@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 15:11:11 +0100
Message-ID: <CAPDyKFpGU+tXC8thz52BQfKHNerzYSUroSihh6GpZELFm-1gRQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/12] Documentation: dt: wireless: update wl1251 for
 sdio
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_061150_669670_1B2BCF6D 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
 Bjorn Helgaas <bhelgaas@google.com>, netdev <netdev@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 at 11:32, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> The standard method for sdio devices connected to
> an sdio interface is to define them as a child node
> like we can see with wlcore.
>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  .../bindings/net/wireless/ti,wl1251.txt       | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> index bb2fcde6f7ff..f38950560982 100644
> --- a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> +++ b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
> @@ -35,3 +35,29 @@ Examples:
>                 ti,power-gpio = <&gpio3 23 GPIO_ACTIVE_HIGH>; /* 87 */
>         };
>  };
> +
> +&mmc3 {
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
> +       wlan: wifi@1 {
> +               compatible = "ti,wl1251";
> +
> +               reg = <1>;
> +
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;  /* GPIO_21 */
> +
> +               ti,wl1251-has-eeprom;
> +       };
> +};

One minor thing, the "ti,power-gpio" is not required anymore, as it's
not needed for the SDIO case for pandora.

Please move it to an option section.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
