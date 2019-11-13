Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A7FB69C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A2JzAAeKFfM9MaD0pZrotUGQKlPupDCWtDAEZBYBRXE=; b=jwwKsfEcV2if9KC6pINpJAVQh
	5pqBPz2YF9g/UWnA1DYf1/xCZjGFrwHHEYXvpxSnsn0OyC1aXvEqKNvnwT/A0MUI/UZsTZeMcxiZ/
	KE6nugqifM09zX6aZqdXQ89py/ZdpfAt0yIKBhT7lwVq9Cj1nwN6CCrbwK3pdqc2zOYH0qbGBfLGa
	0CpDy5G7Nb7C0KCdrUHllOtpxwmXv3itXisTUbq25Duh5UotQrVhM3pxfESZlAes+AxiXQb+7UmAa
	7lKaK+HsRnH9PPcf/6y2trvZHYXO5C4Df8v4PgTR6Doz2CglYEpUDLFVTFKVb3eFuSTeW7fkTYHsQ
	dqCi2v2Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwnV-0001y5-Mi; Wed, 13 Nov 2019 17:51:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwnH-0001w9-A5; Wed, 13 Nov 2019 17:51:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id a17so5503223wmb.0;
 Wed, 13 Nov 2019 09:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=qzzDBOvLkhrbh494Qc4Z0VlfmRg1EJQ03rXnO9Mftjk=;
 b=Ckz+TG9tYlw0m9OttsGTs9nJCH7TOKM4uTw+Sa1nNydaUzRdKKXD1V4Buf42LHGqAe
 iE2FkSfzKvj6vYGAsui4uPedXV0/g94qdd492aWhhMIzPyzugnvALXv1DN8sIbGJGBC0
 NE51Ne1wBWIhu/FNZzS1s/P0BEwbdzrbtplWTY5NWzVYN/edYprM9kjqpWWTXpbXY9EV
 8LVPC6CrfzSPdoHCDXkSdds9fr8i5ZaBAG6Bjmcpp7s9sNDUVW5+ZrR6lquD8xI8KXjm
 5z6P9t72BlMdlR1dqIZChQbDAqLKh3ZSGLHTEO9eGCi6DtcaQ+TPM7kzHPgabJj7Qhlk
 eYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=qzzDBOvLkhrbh494Qc4Z0VlfmRg1EJQ03rXnO9Mftjk=;
 b=DlGXoq1XBxwyc7nSXIdoweOPi+S/VS8CsZdocHOFa2hw5T6FpCQzF59oIGatPjBZj/
 Y6lSeI9YtzrtKHSvgFwigP+hsv6Y/Vhznm2TFr8ac2FO+uMj8LLYEoEuSdlup1zCvd7G
 zMBtp+aKsvkLrhdwWLbPHp6FJP30hjw+DjuyXei1VZeCrMKkvvQXRhXirjHQsnMK0Eo8
 jGo/G5VH4WxGp/bGz02eHmvSO/hlxbo0yc9elHH2nyXUXHXIYUlZMPsdq34/XDNIUygI
 EkKG9i+5ILTUiYTUMqkvbKoW9jKfdq0BxnzrmxGhLWP4Mkjmyuv8Whyf6nTAQKpBw1pB
 HO0A==
X-Gm-Message-State: APjAAAW7OFVSpjp3Nh19ZhnqRUa/2ItPu0ah0pbDLgmyGhs/i19V3nJv
 gQ8ib4DLVbx/elr+oEnpI38=
X-Google-Smtp-Source: APXvYqxY92gjSsnH0FK0MObe+RVUZHrJMUlsHR/YtNeM6aP9bJMWxET2pTpHVRrEZmpw+lSUgwKswg==
X-Received: by 2002:a7b:ce11:: with SMTP id m17mr3554877wmc.123.1573667461198; 
 Wed, 13 Nov 2019 09:51:01 -0800 (PST)
Received: from localhost ([94.73.41.211])
 by smtp.gmail.com with ESMTPSA id m187sm391448wmf.35.2019.11.13.09.50.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 09:51:00 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for
 =?iso-8859-1?Q?vdd=5Flog?=
Date: Wed, 13 Nov 2019 18:50:57 +0100
MIME-Version: 1.0
Message-ID: <977a15a9-8469-4821-ba13-8c2c59a145e7@gmail.com>
In-Reply-To: <20191111005158.25070-3-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_095103_377905_7AA19AE9 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 Soeren Moch <smoch@web.de>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Andy Yan <andyshrk@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-rockchip@lists.infradead.org, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?QW5kcml1cyDFoHRpa29uYXM=?= <andrius@stikonas.eu>, heiko@sntech.de,
 linux-kernel@vger.kernel.org, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, November 11, 2019 1:51:58 AM CET, Kever Yang wrote:
> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
> will be 'enable' with the dts node at a default PWM state with high or low
> output. Both too high or too low for vdd_log is not good for the board,
> add init voltage for driver to make the regulator get into a know output.
>
> Note that this will be used by U-Boot for init voltage output, and this
> is very important for it may get system hang somewhere during system
> boot up with regulator enable and without this init value.

Hi, just for reference: doing the math based on the Sapphire board
schematic, the values for vdd_log are:
|------|-------|
| PWM  | Volts |
|------|-------|
| Hi-Z | 1.136 |
|   0% | 1.356 |
| 100% | .9167 |
|------|-------|
The datasheet states that the acceptable range for vdd_log is 0.8 .. 1.0
So, an option could be to configure GPIO1_C3 as output high and vdd_log
would be at the range's center.

Aside from math on paper, it has been tested. Setting GPIO1_C3 as output
high gives a vdd_log of 0.922 measured volts and the board, so far, works
fine.

Regards,
  Vicente.

> CC: Elaine Zhang <zhangqing@rock-chips.com>
> CC: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-evb.dts          | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts       | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 +
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 +
>  9 files changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> index 77008dca45bc..fa241aeb11b0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> @@ -65,6 +65,7 @@
>  		regulator-name = "vdd_center";
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		regulator-always-on;
>  		regulator-boot-on;
>  		status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index 92de83dd4dbc..4e45269fcdff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -208,6 +208,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <430000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> index c133e8d64b2a..692f3154edc3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> @@ -100,6 +100,7 @@
>  		regulator-name = "vdd_log";
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> diff --git 
> a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi 
> b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> index 4944d78a0a1c..c2ac80d99301 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -79,6 +79,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vsys_3v3>;
>  	};
>  
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> index 73be38a53796..c32abcc4ddc1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> @@ -101,6 +101,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 0541dfce924d..9d674c51f025 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -164,6 +164,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 19f7732d728c..7d856ce1d156 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -129,6 +129,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc3v3_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts 
> b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index e544deb61d28..8fbccbc8bf47 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -174,6 +174,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1700000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi 
> b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 1bc1579674e5..f8e2cb8c0624 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -133,6 +133,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;
>  		vin-supply = <&vcc_sys>;
>  	};
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
