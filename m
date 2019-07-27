Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DE4776C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 07:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7XGOsNq9Ba/HKWlvNurBI6fRu5HIWs75XuQXl+OSAk=; b=mM/12mTFb4I7tJ
	AYWLIjgwtGKWD/aDd2P892LBgM7RFm1a/IB338PJ6sEFei2n8At+bHPIRGd3RauZjkd8RqjDS77M5
	51VrWMahFaSOuJigfztZF7pvDCniswX4pc4MSSFihgTz+evzPGkjNFqnMbhTf1RHTEJzCCrWFgNbC
	WS1Mh/NLCOFIG5daHitzB5IVoUf+za8B5PEsyWvKw1TAoxgnrkbV9kB9uchMx8IhuQsYazc9gdxeM
	YGC9R+zdlcbcOoNvu86XGBWCnFudKsMVi48hdMPgRYq7Zo815fRJAiXcBE7rYS2JlWibbtDfDVIij
	lhfo2uonpkCYhMRAELsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrFUZ-0000Gw-9z; Sat, 27 Jul 2019 05:43:39 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrFUB-0000GZ-6W
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 05:43:17 +0000
Received: by mail-ed1-f65.google.com with SMTP id s49so20113693edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 22:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ed8fnJyzBWdRG4IKPxbtAaVhyhTooFZ4WkeYA1oWkFk=;
 b=Q8TbY6sactdOw3kkrq/53/7n8Cun9S817Us/qEK6yFo5CUAumvsS7vxbW7+Dij4/tX
 x/uPnwstqbTF3x6sFXEM42IrrkTy8fEALGibhl4FhQtz88CHHrBrrH6PgOOmBrImP6i5
 MXFZzHvhoxsuFmgPToy9PBTPGwU8XmscFPvJCg+yUh9k3GsLlUzzDP6bjEkrgxdCQVnB
 FxFxQw9ROSzQJ/8Q1Krj9kSM1lMAMYN4Oi5TO2MBJCT9P6T6BT69YJY805/mIcUM9ocR
 cx+bKqjSUVPSLZL1UW8GN3391K2tWd2BCGOB/Sv6Ir3KvK2sn1k8DUK4kMzNizMYcqqw
 6NNQ==
X-Gm-Message-State: APjAAAXKfZtCAuG5GtBud9OSLeGSAaAfnS6QILw50sR62tYOB5Bg9Z7Z
 dhTF8FLCCuVhqDq8o4rxjbQnjhp318k=
X-Google-Smtp-Source: APXvYqy/VXpVw/0V0ZE79k+mAgAqwOdeQczBvgG+eHZUgwCJiQzkgGqE5WQy4TOjJSygUGrwq86twg==
X-Received: by 2002:a17:906:474a:: with SMTP id
 j10mr77154189ejs.104.1564206191402; 
 Fri, 26 Jul 2019 22:43:11 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id u8sm13935511edo.78.2019.07.26.22.43.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 22:43:10 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id n4so56487402wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 22:43:10 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr18484576wrn.279.1564206189877; 
 Fri, 26 Jul 2019 22:43:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190727020252.17126-1-sunil@medhas.org>
In-Reply-To: <20190727020252.17126-1-sunil@medhas.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 27 Jul 2019 13:42:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>
Message-ID: <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Enable eMMC on A64-OLinuXino
To: Sunil Mohan Adapa <sunil@medhas.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_224315_445492_E737C6A0 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 10:03 AM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> A64-OLinuXino board has three variants that have eMMC support. Add support for
> eMMC on boards that have it.
>
> This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
> Basic benchmarks using Flexible IO Tester show reasonable performance from the
> eMMC.
>
> eMMC - Random Write: 23.1MiB/s
> eMMC - Sequential Write: 74.5MiB/s
> SD Card - Random Write: 1690KiB/s
> SD Card - Sequential Write: 11.0MiB/s
>
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
>
> From: Martin Ayotte <martinayotte@gmail.com>
> Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> ---
>  .../boot/dts/allwinner/sun50i-a64-olinuxino.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> index 01a9a52edae4..751273f514fb 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> @@ -81,6 +81,13 @@
>                 status = "okay";
>         };
>
> +       reg_vcc3v3: vcc3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +       };
> +
>         wifi_pwrseq: wifi_pwrseq {
>                 compatible = "mmc-pwrseq-simple";
>                 reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
> @@ -155,6 +162,16 @@
>         };
>  };
>
> +&mmc2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&mmc2_pins>;
> +       vmmc-supply = <&reg_vcc3v3>;

Both VCC (vmmc-supply) and VCCQ (vqmmc-supply) are wired to DCDC1.
There is no fixed regulator. Please accurately describe the hardware.

Also if Olimex never released any A64-OlinuXinos with NAND flash,
then we could merge this. Otherwise we'd have to have separate
versions, or do overlays.

ChenYu

> +       bus-width = <8>;
> +       non-removable;
> +       cap-mmc-hw-reset;
> +       status = "okay";
> +};
> +
>  &ohci0 {
>         status = "okay";
>  };
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
