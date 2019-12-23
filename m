Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AF5129B60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 23:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eaNQMCcwEKPLZ2CSysa6/Yuc6oxmCE6JF8/c7+a4rvw=; b=gk9v+VkOoMrRGJ
	UGo+KfAHQoLKDWL7IGjCLHynG5xDAmghdcFpWwycU+EwPN6g75lmzMG4+YieZtVVrY8TECBdedMXv
	c+8xKbSOzXkXqu16iQk/JDOyIvEjMK4J2bqoIAlH/dBwFgRA66TG+4MV8sp/17qVT0A1+Q2LtL01h
	HBSktfTSqLcKxocCi9ETJjGNzbdTmXhJUe9Od44Z8PLAEjexfTV8VFQJSVx4LhOmNi9vfHYnzl7mE
	IvEr9onPaeLIwwJN4FD3szqhv2V5sB03Jz1zc2hITkSwlraUQX5faLRT8C9gBdj5MgVqrnMG3R+tv
	95yUBVMjS6Ijl53dfTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijVqG-0000So-3D; Mon, 23 Dec 2019 22:06:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijVq7-0000SO-ML
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 22:06:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id m26so16659799ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 14:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZoDTN0tAP4UxL3pRwsJo0kDQkgx7F0cKeDJGsDtJLqY=;
 b=bywnbBQNSXt35oFe163CE9RBzx1F3a5jgaRdbSalfAskaEaW6W/JkuGrUhHjcxQ+UE
 LQcshd1zb/ztbz8y6tzyN5HBCNeBQ2JptlRgk589Fnf1Nag+1AY6znwdB3xDoLCj7ZCD
 4AZVydbHYqEG5oRa7zzabl1UDTeD87lFqCdBsocPg918+9LvMN7PZSmOBx8hBEMDa2ln
 /+Uq9hcvwf+uD9huqFDpy3No7JoYuoObm6pNn98ehzz0NyhI53L3KImxnSR8kfNp64h9
 APFm+/US132gAv9gzG7RFeQ+4q03mUvv2pfV7CCCXsWknU6tuliTHaG7xv9Zj8jajiL6
 Em/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZoDTN0tAP4UxL3pRwsJo0kDQkgx7F0cKeDJGsDtJLqY=;
 b=F1E0yXBjU9CnoxA9q1gKsXRELunneb4JXAs61pfwf2JZjnO/RzO0b5ICXeGc3YVDdB
 2aN0XgUcRDlkW8WLhaPk7jaMCZ+LCqTtv1vr7VuY1kGLLMIWJJN6wSYWTy6hjMO0qa2Z
 2T797mHHQaZKd+MuFTpPdgKiEo2Cac0K0Sq7z310gIqUA7ONg4EuSqII1IzWtsRb7pXa
 jUjiYbSQxm+manNp5aFjE8nrIbb65n0/LgfWOhZVzrN096qsIpUCiXKTQhoVhSwSgbc9
 SZ/CQTp0PCce2GAM2pM6jB/NJ1PwUJCJObUp5O3Hq0KUgC3eaUXVOv4KQmV1FlqZNLtH
 4sWQ==
X-Gm-Message-State: APjAAAUu7ADqg8ZFAHjbl0ApQxqMU4n7QIZnCTIUaYtOoca0IMo1pQLU
 KMz1xPFWz6CsOHjN8+5df40Xzv2mkKTDdD4wyg0=
X-Google-Smtp-Source: APXvYqwfG8lTEmVUklHua2nUo1PoQYbrA0O9crTZ1Q3KU3RzKuvPKZx2lfnBqjIdHMf5yhXOuidmIW8CzEyATzbg+Oo=
X-Received: by 2002:a2e:943:: with SMTP id 64mr7392159ljj.17.1577138769532;
 Mon, 23 Dec 2019 14:06:09 -0800 (PST)
MIME-Version: 1.0
References: <20191223214412.12259-1-rjones@gateworks.com>
 <20191223214412.12259-2-rjones@gateworks.com>
In-Reply-To: <20191223214412.12259-2-rjones@gateworks.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Dec 2019 19:05:56 -0300
Message-ID: <CAOMZO5CLfyZjuz3c+Xr9v0D5h+r83PGgi8BrMnQZOOZSM-iGGw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: imx: Add GW5907 board support
To: Robert Jones <rjones@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_140611_731128_1149AC97 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Mon, Dec 23, 2019 at 6:44 PM Robert Jones <rjones@gateworks.com> wrote:
>
> The Gateworks GW5907 is an IMX6 SoC based single board computer with:
>  - IMX6Q or IMX6DL
>  - 32bit DDR3 DRAM
>  - FEC GbE Phy
>  - bi-color front-panel LED
>  - 256MB NAND boot device
>  - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
>  - Digital IO expander (pca9555)
>  - Joystick 12bit adc (ads1015)
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Signed-off-by: Robert Jones <rjones@gateworks.com>

Not clear on the authorship on this patch.

If the original author is Tim, then his name should appear in the From field.

> ---
>  arch/arm/boot/dts/Makefile            |   2 +
>  arch/arm/boot/dts/imx6dl-gw5907.dts   |  14 ++
>  arch/arm/boot/dts/imx6q-gw5907.dts    |  14 ++
>  arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 399 ++++++++++++++++++++++++++++++++++
>  4 files changed, 429 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
>  create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
>  create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 1e9e1af..9ee80e2 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -422,6 +422,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>         imx6dl-gw560x.dtb \
>         imx6dl-gw5903.dtb \
>         imx6dl-gw5904.dtb \
> +       imx6dl-gw5907.dtb \

You should add an additional patch that add these new boards in
Documentation/devicetree/bindings/arm/fsl.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
