Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C37417A107
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:16:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PHlUoCct0RNGHfzYgSh2E9vaXiFoK5B3M5ykTsnc9Cg=; b=BpyA1fWk8De1wZPWqVHq2/Nm9K
	gqKFgqx7R+5ptzN9oajYmL2GcOYw+0nNNr0HtMqx26QR4lSBNVUmrvMoC5A3GaNChtZd9BphDHIwg
	N1DnQCv9+9n81uzDMGj2D40x42i/QQ//w43Zev4tAzty7U+6LxkgrleWOskxjHvdDBu+mOYEw7C39
	vlwqbrvHBGwCvf3j2fIipXL+3CQF/W2DeumhtUvtAEt3HS7cAMBAR+UhJZaeilYM0H5xJIpGu9dP6
	wGDXrIU3H08UWROl0jEeK1vtF1hueLuEX7r6eT/y63XryKi1rC517gc2hRnXcyqUOcNldEmmNCQ0X
	xPUn/k9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9lfx-00032i-FB; Thu, 05 Mar 2020 08:16:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9lfk-000316-KI
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:16:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so475934wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 00:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=59ResbYkgYYtyGS3yqL1pe7i5n25xfvpTn1SJGZoQcc=;
 b=uvMsy2gFIQJuGwPQY4jTQZfM443hyAsMpQsWvt61TsBrrNb5+brqKR7fyXH16dpcUG
 NKHn+FHej/vn1kTGDZAOiT3te05ZccNq2vpP9gefTXD4I8jUaaSMpDCA+puh6P7ugPyN
 Mq7CTRQp8ON7UQ8wyQBrxWkNHSBgn0GUrhEMx1wbzjnVma9BXBHRHMUXZ0u2P0xEa8lJ
 DaG2SUbfh2TZLAYPQNjz3QPd8SSGcSHivVrvmeFzY2wnQcFZQVrX8n1b+M7K41fDnb2V
 eqa2HBw0fdA4F/n4kWCqTVQAxYnxfMrF2BbKv5TCUD4Ge+NID+Dhpu/0B5cPIlHVEg20
 VWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=59ResbYkgYYtyGS3yqL1pe7i5n25xfvpTn1SJGZoQcc=;
 b=c6q0PE/anjwJtNbVWpJSavb7fz/wUU2Q7gV8mMLI+Jn1G3PqdH6c3IWzuU5ysAKpoO
 +KOZo49nxwk0Jho0/eQlcOfZHyBDVpw8kmFQTlEfe5GdjRBY5o2iAKKbEoBbjR/lbgCD
 4M01zTS/MzlXGuJMhdNYC1+p5MRcui82X1LUqVCJAWz/+6htYGttjW7TOOURM/IxgMPe
 fM+QQBjmzKYOmOrzPY1odL3AJSv6RYSHsS+1QeISuh8wPFk8HIDb0QXoSkrzDXlSqKeD
 PRZjJeDgx6+p9yOwTRVr8us9VDVve4tuOtJWJDCV1Yt33mJb2PcbQTeq7mj+1Ch/DNcc
 kAnw==
X-Gm-Message-State: ANhLgQ2WyxC6MnUDq0/9prfZ0KF2eaiGGQ5TzCL3iljxtISn6g2VjPBa
 XgmnoQEXZaxzobSUpVTZQYtNYg==
X-Google-Smtp-Source: ADFU+vuuoKy23fJWsGIKanNj5vBpIUf8a+/Rb9mL+rPcSl7wR8cgvC2houSQAoG3kJh7HFjBsXemgw==
X-Received: by 2002:adf:f70f:: with SMTP id r15mr8903620wrp.269.1583396158372; 
 Thu, 05 Mar 2020 00:15:58 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c2sm8220616wma.39.2020.03.05.00.15.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 00:15:57 -0800 (PST)
References: <1582991214-85209-1-git-send-email-christianshewitt@gmail.com>
 <1582991214-85209-3-git-send-email-christianshewitt@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: meson-g12a-tanix-tx5max: add initial
 device tree
In-reply-to: <1582991214-85209-3-git-send-email-christianshewitt@gmail.com>
Date: Thu, 05 Mar 2020 09:15:56 +0100
Message-ID: <1jh7z3cj43.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_001600_807320_80D08548 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 29 Feb 2020 at 16:46, Christian Hewitt <christianshewitt@gmail.com> wrote:

> The Oranth Tanix TX5 Max is based on the Amlogic U200 reference design
> using the S905X2 chipset. Hardware specification:
>
> - 4GB LPDDR4 RAM
> - 32GB eMMC storage
> - 10/100/1000 Base-T Ethernet using External RGMII PHY
> - 802.11 a/b/g/b/ac + BT 4.1 sdio wireless
> - HDMI 2.0 (4k@60p) video
> - Composite video + 2-channel audio output on 3.5mm jack
> - S/PDIF audio output
> - 1x USB 3.0
> - 1x USB 2.0
> - 1x micro SD card slot
>
> The device tree is based on the higher-spec X96 Max box device.

Would you mind pointing out the differences ?
Maybe I missed something, but do we really this dts ?
Can't this device directly use the x96 dt, or the u200 ?

All these boards, for which we don't have any documentation, add up 

>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile               |   1 +
>  .../boot/dts/amlogic/meson-g12a-tanix-tx5max.dts   | 481 +++++++++++++++++++++
>  2 files changed, 482 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-tanix-tx5max.dts
>
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index eef0045..a1db803 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-tanix-tx5max.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-tanix-tx5max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-tanix-tx5max.dts
> new file mode 100644
> index 0000000..c3ef0ee
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-tanix-tx5max.dts
> @@ -0,0 +1,481 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2018 BayLibre SAS. All rights reserved.
> + */
> +
> +/dts-v1/;

[...]

> +&spdifout_b {
> +	status = "okay";
> +};

Why do you need this ?
This producer is dedicated to HDMI controller which does not support it
ATM. Also it is not even used in your sound card

Same goes for the x96 BTW.

> +
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&tohdmitx {
> +	status = "okay";
> +};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
