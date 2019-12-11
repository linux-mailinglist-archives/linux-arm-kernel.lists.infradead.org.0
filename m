Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F08611A7BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TDgcXMKK/uA9CyJg8Ao2BC75UWRYMSWjzcxFRkqMXK0=; b=NhrjyRKxaCiYcwWH3xtGcm98ag
	qpCykwuTego+mArYHvXwHqGX1S7r5162GXDMnO8K3h9oxwGBl91255tzHZvM2FGmd/neE6hpUcmf8
	KD8IWff7wUgmlLSHj9Cttl/eUevAvsWZ8lrQBf4+eWJOyjMkevoa2dgzXsLdLCv+VsHkj7hNQ4A35
	tZMy7hLTlhb7mfxxqbXYbOzxAyeoxV6xS1Hubo4pyQfD/SlM3w5iT8bpIGin1mqfEdGORedaCvTi0
	3NEkK7I621vN0p+iIZ4e8B/1FlZAyVSPV9C6wUoyD1fz9t8KObWt7nCthfPShjxtG02Toc5c3rZMR
	84GL5TTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyX0-0001W2-IU; Wed, 11 Dec 2019 09:43:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyWn-0001UZ-Cw
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:43:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so23227786wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 01:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=z0QzLt7cguGjhYkQBQHVG6HhXU8NuMmHzTVdwtHS9ig=;
 b=BEiRXRNtnIBFjpCSBExLUGZx1Pa6SKsAtXeeJLD6W0NIrioRnhtiOEgMsi4ugdJ3zp
 QSz4GgMNADAajE9pqGigE9t7kXg8yQJn8TM4iG5K2aCTnKRPwWn7UTEzF3a77XnBSxgT
 9JE2grqONb42g6IFklDtyXxlEtrbdRdAQZkRTkXN+VULb9YNs4MsFIzC1v9S1at2bASB
 w6qdaGWc8SDPWo1Uk4S+4IxaK3s0DW4T8dtMxPlBlLziHdeozq+skjRn3dptiBgKm96t
 ffDDrYpcOA+HKEZEcdgbMK2sJwZJ0KEZk3T/SHXU7aCp3kncTv3eIfsNdJZUNiGiuJXO
 +QoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=z0QzLt7cguGjhYkQBQHVG6HhXU8NuMmHzTVdwtHS9ig=;
 b=M0alYKF2ztWOGvJeq8AHgnAOaI3CyxoGzFcqD3Vrg+Ibe5vEuW7lMaAu3ZlqK3mRx9
 OfUDvTP7SAzOqIzOgVIHjLWE/NlDYvYKnU75+HoBjIGPdjXEpTctFVsxSE2Rb+1kFz7x
 VXbwLzFGtx1BzVijyPgbOc91FVHycDlte/FDOZMCPrFFd1I/fJ54r+Mr4JUZW4slzm4a
 VKOl8+kC1ToAPDu+QCFJ+Vx9DRzGH25YuyehULS9D7w2WhNcM++aZix4EhGeOKA2+rzt
 y8O4406gxoK1WCZnFaoBXOFvFPwMxWMA/qksMqt9YNyNg2yYfhcGrn4rM7FkzxSMIoxP
 V7ig==
X-Gm-Message-State: APjAAAXPqCZalT1EHaFISG5nQZQ9CIgth0Rt6+xpLosSbjDybELkJHu7
 nDEj6D8Rd7Dj9utlagL5QHWPMg==
X-Google-Smtp-Source: APXvYqyRpPjVZqQ6wK30FYYM+9G40xoHiGPwj/gyIyeDl0yqTe5vb7IVvt4aDak5sZieLFEduj9Sog==
X-Received: by 2002:adf:f3d0:: with SMTP id g16mr2843035wrp.2.1576057407844;
 Wed, 11 Dec 2019 01:43:27 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s25sm1586444wmh.4.2019.12.11.01.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 01:43:27 -0800 (PST)
References: <20191211070835.83489-1-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson: add A1 periphs and PLL clock nodes
In-reply-to: <20191211070835.83489-1-jian.hu@amlogic.com>
Date: Wed, 11 Dec 2019 10:43:26 +0100
Message-ID: <1jimmnkxj5.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_014329_438105_101A6C9E 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 11 Dec 2019 at 08:08, Jian Hu <jian.hu@amlogic.com> wrote:

> Add A1 periphs and PLL clock controller nodes, Some clocks
> in periphs controller are the parents of PLL clocks, Meanwhile
> some clocks in PLL controller are those of periphs clocks.
> They rely on each other.

> Compared with the previous series,
> the register region is only for the clock. So syscon is not
> used in A1.

Again, while this is valuable information for the maintainer to keep up,
it is not something that should appear in the commit description.

The evolution of your commit should be described after the '---'

Also, this obviously depends on another series. It should be mentioned
accordingly

>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 26 +++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 7210ad049d1d..de43a010fa6e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -5,6 +5,8 @@
>  
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/a1-pll-clkc.h>
> +#include <dt-bindings/clock/a1-clkc.h>

When possible, please order the includes alpha-numerically

>  
>  / {
>  	compatible = "amlogic,a1";
> @@ -74,6 +76,30 @@
>  			#size-cells = <2>;
>  			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x1000000>;
>  
> +			clkc_periphs: periphs-clock-controller@800 {
                                             ^
From DT spec: "The name of a node should be somewhat generic, reflecting
the function of the device and not its precise programming model."

Here, an appropriate node name would be "clock-controller", not
"periphs-clock-controller"

> +				compatible = "amlogic,a1-periphs-clkc";
> +				#clock-cells = <1>;
> +				reg = <0 0x800 0 0x104>;
> +				clocks = <&clkc_pll CLKID_FCLK_DIV2>,
> +					<&clkc_pll CLKID_FCLK_DIV3>,
> +					<&clkc_pll CLKID_FCLK_DIV5>,
> +					<&clkc_pll CLKID_FCLK_DIV7>,
> +					<&clkc_pll CLKID_HIFI_PLL>,
> +					<&xtal>;
> +				clock-names = "fclk_div2", "fclk_div3",
> +					"fclk_div5", "fclk_div7",
> +					"hifi_pll", "xtal";
> +			};
> +
> +			clkc_pll: pll-clock-controller@7c80 {

Please order nodes by address when they have one.
This clock controller should appear after the uarts

> +				compatible = "amlogic,a1-pll-clkc";
> +				#clock-cells = <1>;
> +				reg = <0 0x7c80 0 0x21c>;
> +				clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
> +					<&clkc_periphs CLKID_XTAL_HIFIPLL>;
> +				clock-names = "xtal_fixpll", "xtal_hifipll";
> +			};
> +
>  			uart_AO: serial@1c00 {
>  				compatible = "amlogic,meson-gx-uart",
>  					     "amlogic,meson-ao-uart";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
