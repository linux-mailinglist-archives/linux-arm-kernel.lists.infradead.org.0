Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4677C25D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHpTWLNZ4KNuc0bT/dBP0iQb22edP+OG76s79R1whUY=; b=uC0S3hURKarNk3
	Fqxfx7gWaFqHB3Goxu4+igjnVb4rfH3PPeYq1VVfB6gSYWrOiBks1Qusn4qo8/vrXs844gwNT1oMc
	Vaq7PTSYsgZiEyNlSZ58xp8LcQWFzVvGeXUtkhyvSXTM7ohdob0RoqC6liZXJjjFrXmHTO6cAJbXg
	7UfZFstD4aBogDQZl2iTDqJTTwGRfPFGfTlZWqbeBWoMv9Vcp/9VnAlVlnYDMdf0oIWK2IlS66aIu
	Que7bCsiBvRbnYJ6lH66nab4MKYtX+X+oH3zrdICOz4aUV1poFbk+/xSdhg5bWmVHLwl/MHPo9u+M
	0+hXdDOvcNu6S08ZLcfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hso9H-0005xX-30; Wed, 31 Jul 2019 12:56:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hso9A-0005x8-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:56:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so65483731lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ibb9l9pCzIPRO+qO4A9wjd4O5BSt2O3HIIkOx8g91QE=;
 b=dmWnxkSGqzJLdXtRSEMnp2346Q5fNymYmV9Q0cYScy4XLd+85hWOnQNs75lW0PNdwi
 s+cUZbR31z+McMivRqz/ET13p8j7d13H8ixyBqYdGa01zT7PikehyrI8kfDVPwYS9GZ/
 zFYiAbkT8SEDQlepklQsZJlRWxVOuLPB7aeZRY6sJxRIzVWQ7zcOtuyLdPKG3zUh5RlI
 0oHbwEACO5U76xqu+E+N3nQGmLmWb6O01Gt+vggt6F6esPtXtzRZImt6fDQjjfjF62J1
 6jJc7IZ/vQE8pseqlqw2VdpZc531GTaaqylI1C2FXgwhnUbssJN4Uo7PRIKmetfxruYE
 /qsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ibb9l9pCzIPRO+qO4A9wjd4O5BSt2O3HIIkOx8g91QE=;
 b=P7fYrloMeRbrIeSGGexgevCJZrv/Nb/ON02Ud70nH714zkHS/35jyb1OxzgIgKWHou
 dWsiLvjoa4Z2VbKKo+chaooYeBLElZHA5fzbCQU5kptqWusMB3HhR5A3IfPksD09BW1C
 jr/uUK1ooKW++jfB4GK8tKT3w/MKS7dDwu2Am0hffmRKRI2OZNDmJy1emRbKN1LbP2f0
 FECNxNNLgqGBlEMY0PuF8tjFWROJLpPpJHa9V06KxNqkSu2QanSOAK3FUwyMzzcihb9P
 C7oJskC0xfsGM/sX+/OTpEgZXNr+q0qGM3hctQq83eO2whwPbwUGrgo8St6bsoyGjabc
 IX8g==
X-Gm-Message-State: APjAAAVQJLd+tmVaXPZPB/CfE5HFjS/PKYSSGcelZiwFHw6bK23fUpxV
 8jU2unUfzmG42TLUW5SKvZoxAm/95YYUp2ozSb8=
X-Google-Smtp-Source: APXvYqwHLa09vrCGuEjsqB9Bo/QP8nZztRJ5LvWsIK2qv5mAo9aSVSVVIUILsK+mjb1tTQ98idf29i7lGxgDBiL/LM8=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr14146346ljb.211.1564577759040; 
 Wed, 31 Jul 2019 05:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-8-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-8-philippe.schenker@toradex.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 09:56:05 -0300
Message-ID: <CAOMZO5B5HnqpLrDjyGtqSQpVXmcoZuGLvCzKVUhwLb-_ZO_Xog@mail.gmail.com>
Subject: Re: [PATCH v2 07/20] ARM: dts: imx7-colibri: fix 1.8V/UHS support
To: Philippe Schenker <philippe.schenker@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_055600_652134_74813788 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> Add pinmuxing and do not specify voltage restrictions in the
> module level device tree.

It would be nice to explain the reason for doing this.

> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
>
> Changes in v2: None
>
>  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 16d1a1ed1aff..67f5e0c87fdc 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -326,7 +326,6 @@
>  &usdhc1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> -       no-1-8-v;
>         cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>         disable-wp;
>         vqmmc-supply = <&reg_LDO2>;
> @@ -671,6 +670,28 @@
>                 >;
>         };
>
> +       pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> +               fsl,pins = <
> +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5a
> +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1a
> +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5a
> +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5a
> +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5a
> +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5a
> +               >;
> +       };
> +
> +       pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> +               fsl,pins = <
> +                       MX7D_PAD_SD1_CMD__SD1_CMD       0x5b
> +                       MX7D_PAD_SD1_CLK__SD1_CLK       0x1b
> +                       MX7D_PAD_SD1_DATA0__SD1_DATA0   0x5b
> +                       MX7D_PAD_SD1_DATA1__SD1_DATA1   0x5b
> +                       MX7D_PAD_SD1_DATA2__SD1_DATA2   0x5b
> +                       MX7D_PAD_SD1_DATA3__SD1_DATA3   0x5b
> +               >;
> +       };

You add the entries for 100MHz and 200MHz, but I don't see them being
referenced anywhere.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
