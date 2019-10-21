Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56234DE968
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:Message-ID:To:Subject:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C8QXjTdFc1pL7Gh1NUamfqIyOE+mZEiy+JgsDLyfYYY=; b=EJ5
	hNIF1NV/e3o07WIuDfjsHgBv/qq0VykIJC4L82+HH9SnnHLe6h3EKB4mODQK2Cp666r/cswis451p
	UAnlYg0ff8bnQOcSD2l3kwpjCcnYuc8bOAJGtUUCrduvZmyQXyntyPVFJOBg3fOtwPm+N1w8dfNhb
	WCWmpCkhwMYyBhMVqiYWdIAN5EwHi/VaohP2m8Ot2Enmlf5Y6LY9ttJwOicWd40PIAwXLUMq50W3O
	JiiobbUYksljnkR/Ahhm5zBahJIOvclNW5Z+kHsW23dqpad7FVCL7TPMkw3ZgE0IgxX8XxsJZlmzn
	ad1/H6mzZrghD1hZqNpS+gNMqA8NQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUsD-0001Nf-KA; Mon, 21 Oct 2019 10:25:13 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUrt-0001Jf-HL; Mon, 21 Oct 2019 10:24:55 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iMUre-00016G-4C; Mon, 21 Oct 2019 12:24:38 +0200
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 x9LAOa9m003414
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 21 Oct 2019 12:24:37 +0200
From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
Date: Mon, 21 Oct 2019 12:24:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1571653493;
 995b82d9; 
X-HE-SMSGID: 1iMUre-00016G-4C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_032453_719229_9986F363 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============2363363550564018600=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2363363550564018600==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW
Content-Type: multipart/mixed; boundary="yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j";
 protected-headers="v1"
From: Markus Reichl <m.reichl@fivetechno.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-ID: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc

--yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

rk3399-roc-pc has three gpio LEDs, enable them.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/=
boot/dts/rockchip/rk3399-roc-pc.dts
index faf60b2a7673..ba52e1053a2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -28,6 +28,33 @@
 		#clock-cells =3D <0>;
 	};
=20
+	leds {
+		compatible =3D "gpio-leds";
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>;
+
+		work-led {
+			label =3D "green:work";
+			gpios =3D <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+			default-state =3D "on";
+			linux,default-trigger =3D "heartbeat";
+		};
+
+		diy-led {
+			label =3D "red:diy";
+			gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			default-state =3D "off";
+			linux,default-trigger =3D "mmc1";
+		};
+
+		yellow-led {
+			label =3D "yellow:yellow-led";
+			gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			default-state =3D "off";
+			linux,default-trigger =3D "mmc0";
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible =3D "mmc-pwrseq-simple";
 		clocks =3D <&rk808 1>;
@@ -494,6 +521,20 @@
 		};
 	};
=20
+	leds {
+		work_led_gpio: work_led-gpio {
+			rockchip,pins =3D <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		diy_led_gpio: diy_led-gpio {
+			rockchip,pins =3D <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		yellow_led_gpio: yellow_led-gpio {
+			rockchip,pins =3D <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		vsel1_gpio: vsel1-gpio {
 			rockchip,pins =3D <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
--=20
2.20.1





--yJZwcp1Ymsuklh7aGS9WMHUNJ1nnL5i5j--

--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVKeIeBh0ZWJOldzLOiXeDmsa/bIFAl2th2QACgkQOiXeDmsa
/bKXBwv7BhRzi03I9j+Me1Zp9yG27lXAQ6FOPpHmt5GJdmFZkpuurRQQ6lBOJmfd
61KOr6gNYLLVObMeRcZ30gonXE5TK0lLP6mOajtI4YBB0+/4dy3Kwf5qzmtAIaM3
47NZ9WiTlxR7Oh1ESVFLxGk7exnMq1R0zF2TLafDZxP1vZXcow7aCpgcx8HMgivf
DN+uAQ8+mMCd3i7heyBrqDUx4oBQamdPF20SpRSfX6oNMmNbO9Vno2ly8JfXBv9O
1+ThOXF+wVnO5V3Q2OQdHsyZGt3vZDugnbq9RQXjdpJkJfA3rmuGgCgnOcad0+11
g0kxyU+0il07SuUVfXVZXGraWYZ4WyOpKkOOD5YhWP8cYSK4tOFQlCpeNo/UykHc
F6bXAwcc8x5naL2J6L4N4hFmGI4I0woqZsTKNX4gHPi30XHf91mJ5n2TatPCquZ0
Li6fangI5vix3UEMbiFF09g9rKYg2k8v/UiTjYgkj5qMdklM3qgMTToYYq1rm2ay
yWfVA1OG
=KTOi
-----END PGP SIGNATURE-----

--ma6Nskd4tpvP5vsRVUnUWsgiIS2DwbBnW--


--===============2363363550564018600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2363363550564018600==--

