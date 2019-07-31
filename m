Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8661D7D1C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 01:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNEqyToxu9iHqK2f/1yABcyRLZkXsgbYCISg5kg4x3w=; b=AEAHn+S5sA4fSS
	OWVhZlH4GpAMQIFQiHTNv/T2UT34WlTDrY44cL7v2dvEnJFQdnzaw4IAF0n1Them4El70BLOe2uqk
	0wYZ+IVZGaSkBT13sHctHLr0grt75iJ/jQ5sSIRDZ8kDaUzLqO7zt4IUMtb3lYKXoBSI10wKxeaU2
	K+tNNsBnMJZ2NZEcbRX7aAdX2L4ZjZAYsX/vOkWi9wPJtyg4HcMaoyLxhhsXEJtopHf/yLw/4AAfh
	wqjKVwJ3IFVimd00GAdY9p84K5AzG08l55EVKp5UD+yb6J3sne/QH4DpiR1gm3vpcC92O1Pz7FbGB
	RqSs+gSPITShak7VDjMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxqd-0000Kx-4g; Wed, 31 Jul 2019 23:17:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxqW-0000K3-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 23:17:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id n5so72100895otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSejrbwgUdMQ99bQrxJUA8zIPWxPSd8aucGAjk9aCgY=;
 b=bnw7Rd8mm+NzI6VBrPOF+IsMpczXmG+GYbVu0NLlVLl3d+oeeVwGqUX3XQzkB0Da39
 nR0jUizvRntUtC71ITurOMm1RSJA82CcMCmtMDmTTgExqXHMORlz2Jc//JASOvY/XmBG
 TKfi5DS5W8i4OKdFVrif87IxkyvO4IR2F6eNajKNX2szijbT/ttM00rf+mUwXF2GD5M2
 3KqXZyX9Ujfox04do+MckmU/Ea6WAhYUqfJuz6HpW7T9N4zreFwq1hoZqGuYAeowjLXH
 HmreXEsfYOhY38xiTqVnD8qsNeLqcREHVwxpjUVwBXd8es7wKtWaPsu19EHxHL3CblLQ
 Wmig==
X-Gm-Message-State: APjAAAXxRiTGBl08PDAh0L57UtkjSlAoU0nGU2PwFZOnc++KuT6v8ra6
 VbFTQRLwKhlsjFTwSsSJYUm489Pc/lw=
X-Google-Smtp-Source: APXvYqxJ/X2QkpGHCY95gmffJhrMsoy+EVxiG9n6znOecjDoPiEZlPTLUrKir2z80tGolcWeCjTDNA==
X-Received: by 2002:a9d:4d81:: with SMTP id u1mr10640636otk.221.1564615041566; 
 Wed, 31 Jul 2019 16:17:21 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id b21sm24305952otp.80.2019.07.31.16.17.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 16:17:21 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id b7so21857458otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:17:20 -0700 (PDT)
X-Received: by 2002:a9d:6d0e:: with SMTP id o14mr55638119otp.205.1564615040807; 
 Wed, 31 Jul 2019 16:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190718094902.15562-1-hui.song_1@nxp.com>
In-Reply-To: <20190718094902.15562-1-hui.song_1@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 31 Jul 2019 18:17:09 -0500
X-Gmail-Original-Message-ID: <CADRPPNT3A_1apr3FNjRbQhCHWLqvAQC0Oz8cGbOjNetAF8zghw@mail.gmail.com>
Message-ID: <CADRPPNT3A_1apr3FNjRbQhCHWLqvAQC0Oz8cGbOjNetAF8zghw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: ls1028a: Fix GPIO work fail.
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_161724_331495_C2F48CE1 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 4:59 AM Hui Song <hui.song_1@nxp.com> wrote:
>

Change the title to be something like:
arm64: dts: ls1028a: fix gpio nodes

> From: Song Hui <hui.song_1@nxp.com>
>
> Add ls1028a device specify compatible.

Please submit a separate patch to update the device tree binding too.

> Make gpio as little-endian deal.

"Update the nodes to include little-endian property to be consistent
with the hardware."

>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 7975519..488602b 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -277,33 +277,36 @@
>                 };
>
>                 gpio1: gpio@2300000 {
> -                       compatible = "fsl,qoriq-gpio";
> +                       compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>                         reg = <0x0 0x2300000 0x0 0x10000>;
>                         interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
>                         #interrupt-cells = <2>;
> +                       little-endian;
>                 };
>
>                 gpio2: gpio@2310000 {
> -                       compatible = "fsl,qoriq-gpio";
> +                       compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>                         reg = <0x0 0x2310000 0x0 0x10000>;
>                         interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
>                         #interrupt-cells = <2>;
> +                       little-endian;
>                 };
>
>                 gpio3: gpio@2320000 {
> -                       compatible = "fsl,qoriq-gpio";
> +                       compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>                         reg = <0x0 0x2320000 0x0 0x10000>;
>                         interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                         interrupt-controller;
>                         #interrupt-cells = <2>;
> +                       little-endian;
>                 };
>
>                 usb0: usb@3100000 {
> --
> 2.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
