Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F147750C53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5C7dCQzVnG42RsrphFMZEQw7VYNtwQZptYniwGrLvFA=; b=CnEEOpnyY4dqtsuawEJWE0E1w
	3RNWk1Mu9Iei/4yhA689YHtqs0BwLwtmuA1tiGOKcd/3Jb5FDqvooPIk4k0/O1sjAVPVRq5tC4nS5
	atwdEz897T4cskDk8IvU7fhm4ldeyr8z0Dm3mciKONWvsWPkg7bA8cPE2efwF7ROW50YfvkOUSV4F
	RJzS4HO2KuQtCmndiz3Yjc39Vrp9RVzkCQVWgAPYaIOFX6vS1r4wi+shoVpKLqTOxu8LW/w62UV+8
	j1CjgPv0YAuAK7ku7uhkHN0QM4jCCkiE9lCPFmHa43ds/VejSuzwuyiaIfhMm1HEV9wpb24b81l5B
	VJDhp0PtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPLX-00015n-9Q; Mon, 24 Jun 2019 13:49:23 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPLK-00015H-00
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:49:11 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7056A20015;
 Mon, 24 Jun 2019 13:48:57 +0000 (UTC)
Date: Mon, 24 Jun 2019 15:48:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 9/9] ARM: dts: sun8i: s3: add devicetree for Lichee
 zero plus w/ S3
Message-ID: <20190624134856.4cez7m3uc3tzkpuc@flea>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-10-icenowy@aosc.io>
 <20190624124301.chwhfalk5o53fm5x@flea>
 <1E6AB747-5A4C-4515-A0EB-F0E89F520CF7@aosc.io>
MIME-Version: 1.0
In-Reply-To: <1E6AB747-5A4C-4515-A0EB-F0E89F520CF7@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_064910_190706_D85E357B 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6715227511461047819=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6715227511461047819==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zxvkkmn55l32dkjm"
Content-Disposition: inline


--zxvkkmn55l32dkjm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 24, 2019 at 09:43:23PM +0800, Icenowy Zheng wrote:
> >> +&usb_otg {
> >> +	dr_mode = "otg";
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usbphy {
> >> +	usb0_id_det-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>;
> >> +	status = "okay";
> >> +};
> >
> >How can it do OTG if there's no controllable VBUS regulator?
>
> All 5V's are connected together, like Orange Pi Zero.

So it's a "it can't"?

And the orange pi zero says that it can only do peripheral.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zxvkkmn55l32dkjm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRDUyAAKCRDj7w1vZxhR
xf0zAQCi5yMphtVy7Fni1inyxiANdxNrQlQW3OVimG6brkVyVwEAo7h8m+NLImGt
4bQgRfzj3aMgbAemt9y56Z7FeLYepwg=
=+IOZ
-----END PGP SIGNATURE-----

--zxvkkmn55l32dkjm--


--===============6715227511461047819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6715227511461047819==--

