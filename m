Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9961BAACDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 22:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHzkf62eH8HiBpyIYNXOf4j/h+o2Y33F9ViuAEWcBAE=; b=ENrFeQGIN1bRjU
	99cKI60g5oP8q3HuvtcAi9/NwaFLRkYVTlHk0EJoN1EtP+UFdWOucl4ftl1/CEJuIh15l1KPQPTYx
	rWFG0D6pwVB4vTc28bnJyoe949EfjcT2/rOOMHzEt9XEcj2RYT2zBw1GFYSmRoQ1uiuICZl6K9zqn
	ilDP3rzJ8rndIvnDEGKCmtxgNsI3rK4jdat4vetlPdNlaFOmBCdzAB18e6KpIFKFH6TL/nxZjAIMm
	De84QEQKFlYZKrpvLqWyuo+bvFqJudHjgYuFg5nm3fRoofT/axaaHkWJiyIIAMjpFmJ7DceJY4pTn
	wuPWivSeNkpOhuxtEM2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yAe-0006uR-GF; Thu, 05 Sep 2019 20:15:56 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yAU-0006sQ-Tw; Thu, 05 Sep 2019 20:15:48 +0000
Received: by mail-oi1-x241.google.com with SMTP id w6so3010826oie.11;
 Thu, 05 Sep 2019 13:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f4Km6SD866R0K00m5TcRPMaTtKdzrbq/4ljlsuFwyq4=;
 b=t3et7p6L0/whLJE/CMRrP2K3uNDjk8pWYu6Z+iHJ/66Y1V1Y6L0cwifYXlDTXXLZU3
 3MBi7QwdaNrwDJDSiIIvPoke8D4qYmR5KifsoiZvryw5rCskksgTXJIgtTdbkyJgh8qV
 MJtYVr3BW9cjCbQ41WAa98hOnuGLeq4iDZN56LFw/ekt4nC8vTPzq264Qt5ezYI9sCTJ
 +c4RKH3NC5pp7zQoE+JvgkdxisarX3FPxmxyzSpxbX7RfbIIJzrBHCmsifjnzFTn+wL+
 HLYJB/guTPodagOyMZiPuYILX1K2IHMxDbuYFdTogyBfGFbE2z+fgHbQK52gQmjRpO/4
 8WXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4Km6SD866R0K00m5TcRPMaTtKdzrbq/4ljlsuFwyq4=;
 b=pZQPDQYuL+xVR9vIo8ZSAwCEvkZEX1Cz1w9NsijDxtJOJVLxNEQxgvLfL2YWe8DEwz
 OAPKGDxe7hH4fpuolKnkW0ov8ofL4gbFPaCguFMg7Tb7jHS653AdHMyKS4EUgdn5CjJc
 ehEMjMCZzw0ps27LnNrfYSrqdzuGB8JSQLzJMxoulqW6EXIOduo850DQW8BNzbJ3szF+
 eBI+vSQ2IBj0q9iu+fdUnPIl6gLc6FU5OEu20ZUt8ZK6An8m3r+PoQAMEOoSU2vc0hML
 rHVrewRRGZlIjaUFoiHzmikwICRixWu4y7jrXFkF43p0sRtn0r4haqmRwZYsZ0GDP6aH
 q+GA==
X-Gm-Message-State: APjAAAUpp2AiRJ5r7Ug62ZxSCMToR1+A10KcM7tnsp8tFvowng1rmm5k
 o89Ldd8YXavfdCF6Et7o3iOFViel10ceaLxvjlA=
X-Google-Smtp-Source: APXvYqz10+RYiYCkiOZQNb4X6pwZA8FC8OaEWNeVGyU1oIcgk9EjqHMgE+OjmcTpYIwU9qrIKMWD+qXHhX6pFCO82+I=
X-Received: by 2002:a05:6808:b14:: with SMTP id
 s20mr4202379oij.15.1567714545391; 
 Thu, 05 Sep 2019 13:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
In-Reply-To: <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 5 Sep 2019 22:15:34 +0200
Message-ID: <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jianxin Pan <jianxin.pan@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_131546_968765_411684AE 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Tao Zeng <tao.zeng@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

(it's great to see that you and your team are upstreaming this early)

On Thu, Sep 5, 2019 at 9:08 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
[...]
> +       memory@0 {
> +               device_type = "memory";
> +               reg = <0x0 0x0 0x0 0x8000000>;
> +               /*linux,usable-memory = <0x0 0x0 0x0 0x8000000>;*/
why do we need that comment here (I don't understand it - why doesn't
the "reg" property cover this)?

> +       };
> +};
> +
> +&uart_AO_B {
> +       status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> new file mode 100644
> index 00000000..4d476ac
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -0,0 +1,122 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +       compatible = "amlogic,a1";
> +
> +       interrupt-parent = <&gic>;
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       cpus {
> +               #address-cells = <0x2>;
> +               #size-cells = <0x0>;
only now I notice that all our other .dtsi also use hex values
(instead of decimal as just a few lines above) here
do you know if there is a particular reason for this?

[...]
> +               uart_AO_B: serial@fe002000 {
> +                       compatible = "amlogic,meson-gx-uart",
> +                                    "amlogic,meson-ao-uart";
> +                                    reg = <0x0 0xfe002000 0x0 0x18>;
the indentation of the "reg" property is off here

also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
aren't there any busses defined in the A1 SoC implementation or are
were you planning to add them later?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
