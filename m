Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79427F3396
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLrnzunpfF1XgqYr2X5/cI0xmLFJVJR/v+iFq17ckaw=; b=sfK6h0MxNhSx+2
	0UbuIjtORTIzsNQd7qtqi5YBJQe9o0GIHaTeTDPN87eNl7ziZZ1pJ5f5a/WleUaEcrIQatBrCaFVO
	mBr3ZTAvxEH9Tg9k3wpe/0WLrtUhH79OhFgey/cCA1PZ+52DYkzYvHTvB7r/V7XBHa5IenJgoq6T8
	x0kb26uu99WzypPF+HXaZNJTQG3OnCE9x2sssPjkS8GTSeGHpKmwYoL2OSGqjqkl7SDknofIxBu9n
	CmjLU9nrRWCFMrXzb7JztzvSGBS4v+0R/YaZLjGvQ0Lozh6lSOukFRoMyVp/DEqWPJj7KHj7DrDxg
	s/E7LxXdMgPZ1gBDFDNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjuG-0006U5-A7; Thu, 07 Nov 2019 15:41:08 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjtl-0006Da-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:40:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id z12so1933638lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 07:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3wfpECuF12H+DE1PZtlOEqiGcYmjEL0HWEfgaBT4lbM=;
 b=bJbjU2MfoF4N8Ri1rVIdHg4m03cNn8SW9jOhXXeQO0kuaNF5bTOtxzBq2S8NFzKBqP
 IcO351Le3xMLgl1iFeBBatrsr5reYoa+jHbcwtbD58rr0qAIr8fEtMilenNIwJnyrQV8
 sd+ikiYu0r4wz/yBI65aSBNf3EmWzm1wL7ybh3ynGl88ftf3CmwDglI+jO2IJTJmxIO9
 gOfvPtpEDb9BwNg7Ws3/69WrgaKiPX9ti0q3PTbSK/Lw5sTu+iXWHJdE9yUEOLnWU3Wd
 iigsas+K15fxkvfyafGu1jxtNiEDVX2mnkDNwrVSPLhxRYu2FRpbLtJwKiZxC9HcRmmX
 hx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3wfpECuF12H+DE1PZtlOEqiGcYmjEL0HWEfgaBT4lbM=;
 b=C6tPs9VXbjn9hzEeZ07ga67DjKFHFmhqquvc4cdG+LcvMqKslVnpRSpLGuEWLuuv10
 HkQ1OhnnTv3BgkQxOnJvrHJY4sI/yReV+F/STkoftWDEZi5lCD4Mh+zsYdy99F6tMoyK
 /vxnj1HB82St83pawIr1OSHHMql+vTOEeBV4jpAM9Pf7riAYQShz1+9KIL9UBtKR6bEI
 kB1nfpGgS17k9MCoySGQzPVJMgBk6vq/VWG/NDEmG5E1uw+n2aLXLWnBrkzDOZRhpcBI
 2FfcHtPqDWh1cXii0cg6HZ67v+fv1IFP4Qp2QBbOMdbTJaxNX4FgfakP3e6bV5g+Mfih
 0fdQ==
X-Gm-Message-State: APjAAAVVzySm47eLT8s9gvtaf6LlfOicn94Xx6Oi3awbDizOaUR3zhai
 kG7pwmOt0KjJhM/MAfFa6MfCXY9r3QV/uytq3sw=
X-Google-Smtp-Source: APXvYqy28CEsAIgaxf8ySUF97vlGB/pLswajdJxXB007SZ9AZuUinPdeAUK7kjTrQQ6CfPiZrS5vS5B4dWjHsnv6E7A=
X-Received: by 2002:ac2:4a8a:: with SMTP id l10mr2816632lfp.185.1573141233381; 
 Thu, 07 Nov 2019 07:40:33 -0800 (PST)
MIME-Version: 1.0
References: <1573092393-26885-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1573092393-26885-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 7 Nov 2019 12:40:24 -0300
Message-ID: <CAOMZO5CiR7-YmAUggdt9rdZpNYKzQTFY5zGGGQ2k06Qc7pkg_Q@mail.gmail.com>
Subject: Re: [PATCH V2 1/4] ARM: dts: imx6sll: Update usdhc fallback
 compatible to support HS400 mode
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_074037_320894_93CF34A9 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Wed, Nov 6, 2019 at 11:08 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> The latest i.MX6SLL EVK board supports HS400 mode, update usdhc's

Since this is a dtsi patch, it is better not to mention a specific
board here in the commit log.

It would be better to say that unlike i.MX6SL, the i.MX6SLL SoC can
support HS400 mode, hence fsl,imx7d-usdhc should be used as compatible
string.

Regards,

Fabio Estevam
> fallback compatible to support HS400 mode by default.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  arch/arm/boot/dts/imx6sll.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index 85aa8bb..1c8101f 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -698,7 +698,7 @@
>                         };
>
>                         usdhc1: mmc@2190000 {
> -                               compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +                               compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
>                                 reg = <0x02190000 0x4000>;
>                                 interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
>                                 clocks = <&clks IMX6SLL_CLK_USDHC1>,
> @@ -712,7 +712,7 @@
>                         };
>
>                         usdhc2: mmc@2194000 {
> -                               compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +                               compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
>                                 reg = <0x02194000 0x4000>;
>                                 interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
>                                 clocks = <&clks IMX6SLL_CLK_USDHC2>,
> @@ -726,7 +726,7 @@
>                         };
>
>                         usdhc3: mmc@2198000 {
> -                               compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +                               compatible = "fsl,imx6sll-usdhc", "fsl,imx7d-usdhc";
>                                 reg = <0x02198000 0x4000>;
>                                 interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>                                 clocks = <&clks IMX6SLL_CLK_USDHC3>,
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
