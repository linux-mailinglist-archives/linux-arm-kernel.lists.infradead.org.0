Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5A0873FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVD5UtW56B3Xd3r1Euk2q+znvpBg83zn40GeV4eG9E8=; b=QWdcgSxX2cC5VG
	7bMyiGQepzJj0rtnD+A6gS3jJ3FTObKzuaYn5M16c9iESDs7uq5KQcRu+xL+i1w6yV3Hc+AoNveRS
	YU1LtTv2/NwhjKmz/iQmbECdbTSWIdVY8PGTpEx05YV91CgSlUEewOS2wNuD8HCYDeEpEpvYvhsND
	q8dTzyFVp4AkQReSKGSdRwrKROM4Uw/+icY7RNrYRSJmkr/ao+u6Y2jlzT86gfKlWhnDBkX3s5YLb
	TpAcre18TYD4NczfMZNYhAd0s2pYVYVzKtYfQUjFcGkJg87sNtcUTbAA6pokT4+pEGTfkdD7+36Ya
	52bIql+Gt0ag+Me1f9MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0Dn-0003Di-1d; Fri, 09 Aug 2019 08:25:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0Da-0003DB-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:25:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so12074595ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 01:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/A/7y3FwUsdRyRWbpHY31PGn5klTkFuPU5InmeFB5Vk=;
 b=Qfqne4S2i01albbmzKziFOjlp1SXKoDMxp9rmWkJewHFL7gA+G4afjkR78ZqhWYDIQ
 cqd1c0nbWqKdgIsechuMRgIdVV9cQiusELCw/NgSM1kwEVdg4C2SXjO4a/6t7VgZHZM1
 ztT2Ube+FUfbXXynvTQIbRFeSKxOj5+x2InTwF4SSXQJgiwSKeb5hF3R3HQLTubh83d7
 Usj/aimxcOKIVIBM2bAhpz/0P/CY/ABl5DxO3XPh0QqhrUw8PgYY0RN4X4UP3JuIi6ry
 G9FXKdgUw3XgqdPYkXvUGYPk0yEIuKg+aoyOT8ZrU/bQlQBbh9ChDnIbuzM83+w5iUSA
 VaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/A/7y3FwUsdRyRWbpHY31PGn5klTkFuPU5InmeFB5Vk=;
 b=Yw+Rv6kEb2z1kiy5W8dmgjlf3LYa29SJ6TUJjm/BQJR5axWWX000gOgJHNygYOUwRR
 NQoJDOO2TEKt9/nn7svdK0KC5om78poD2nyjXtbSmswXrexVb1XPcm16MtYNwT5YCE9v
 ETzIN7LLxjuFr8RSQBoQLZB+BDq8Hm9HRjzm0xsyF8EtC1yQ2NBfIgLsP22MnuIAlgAg
 Oqh+XxdcOzFeYdKNNVOG86jrC4fx8+uOFBepscX87S1iVsYRgp2jPUTJgIUjFcuDOkhU
 l7GNTckNEJWQC4CpZisrHJxGwW6zI4cb7BzZnqHziKI3HRVHV4q2URYsWyOsVw98zg4p
 rXTg==
X-Gm-Message-State: APjAAAWeUZMlI5dvGZcyYMLxPXo/GipAyk30x9m89QIrwshcHO/Pz/tN
 EXDUgzFBPlWzb11ziq7judd04tv7EYEeuzi4ZgM=
X-Google-Smtp-Source: APXvYqzRX9Y6GM2LBGO/GzFpFOiYrL7yUSPZ4SglXcKIzN9V37dUNVzUdXfm4el8/ZqkKAylzB4JXgRo2vU6koy4FEA=
X-Received: by 2002:a2e:85d7:: with SMTP id h23mr10916932ljj.53.1565339144082; 
 Fri, 09 Aug 2019 01:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190806155744.10263-1-megous@megous.com>
 <20190806155744.10263-5-megous@megous.com>
In-Reply-To: <20190806155744.10263-5-megous@megous.com>
From: Code Kipper <codekipper@gmail.com>
Date: Fri, 9 Aug 2019 10:25:32 +0200
Message-ID: <CAEKpxBn1nF0t-M34iRSy1yYEuUxgNMUXFBhtjXBY8Qk+43zbDQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v8 4/4] arm64: dts: allwinner: orange-pi-3:
 Enable HDMI output
To: megous@megous.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_012546_353998_9E1D972D 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019 at 17:57, <megous@megous.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> Orange Pi 3 has a DDC_CEC_EN signal connected to PH2, that enables the DDC
> I2C bus voltage shifter. Before EDID can be read, we need to pull PH2 high.
> This is realized by the ddc-en-gpios property.
Great work. Is there any chance you can move this to the
arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi?, as all the H6
based orange-pi's have this feature.
BR,
CK
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index 2c6807b74ff6..01bb1bafe284 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -22,6 +22,18 @@
>                 stdout-path = "serial0:115200n8";
>         };
>
> +       connector {
> +               compatible = "hdmi-connector";
> +               ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
> +               type = "a";
> +
> +               port {
> +                       hdmi_con_in: endpoint {
> +                               remote-endpoint = <&hdmi_out_con>;
> +                       };
> +               };
> +       };
> +
>         leds {
>                 compatible = "gpio-leds";
>
> @@ -72,6 +84,10 @@
>         cpu-supply = <&reg_dcdca>;
>  };
>
> +&de {
> +       status = "okay";
> +};
> +
>  &ehci0 {
>         status = "okay";
>  };
> @@ -91,6 +107,16 @@
>         status = "okay";
>  };
>
> +&hdmi {
> +       status = "okay";
> +};
> +
> +&hdmi_out {
> +       hdmi_out_con: endpoint {
> +               remote-endpoint = <&hdmi_con_in>;
> +       };
> +};
> +
>  &mdio {
>         ext_rgmii_phy: ethernet-phy@1 {
>                 compatible = "ethernet-phy-ieee802.3-c22";
> --
> 2.22.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190806155744.10263-5-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
