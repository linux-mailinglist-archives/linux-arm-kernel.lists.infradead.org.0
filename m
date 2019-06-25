Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F3528CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1P2+MMhKAn5p0aubDcoBkT1JoIV2VoUu+c1EFy8Bo9s=; b=o0+4VxVL5hvs16j9HDVz1XQti
	mGHe8r7QxjFexyl4/OpjdOkH0IotwlwdZBty8vYGnXGdYjZEs0Q0VG6o0MbCMVD5c5z7igIW/hHgW
	P17ASEq27cbOEZoZ+oxm6uMgQAyb8E4Yq1gyVH+tuC3vc+bC8D1uwlYDnRh4Tfig36oYXmrT3d8jy
	/2CLR1tIcBQPekSjORKHc5bypzrWFH+oFnyTzrIT5mElJDbbVOgrEB9d05eQLh0/4rDtrrKY5DPcz
	/bs8LWVb17+xobM9vL3OZ4xLHn4SfMnbGIZj8h0VpMNml5oVnvXPL+Ez4V2or1SGCQ6RRt4vW/bh4
	nEqm55eEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiDc-0008G5-Om; Tue, 25 Jun 2019 09:58:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiDP-0008Fo-1R
 for linux-arm-kernel@bombadil.infradead.org; Tue, 25 Jun 2019 09:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CDZWS+KwaVuPQyngIgVw7gVBb0DptIKdiySdcqzifKg=; b=TFp25h2rEGrUoutLB26NqyyAR
 QzGDGbZGRxOsEm+0E+FcGYcGe6V5Gi0OEA2S3hdCrTgMlVjLJbK7s/JEH0MBYaLIa5JSguZUnncZ1
 RX0QMIps8c+1QtT1/Ynt/YUgJLVG2CH5+9LcehmPF8tvoD87Pv83B0vFqJSx3Ulv9c+S5hDmGTcbV
 YhNvSjRRZUi9tLq+Aprj28il2zGgF7rcH+FuIIWAv328TpPtFm/sgyuvtFinAno/+8tJWc3JCZGB+
 gy4n8KZxIBVjSUQtOFkqCQ/bl4hL22eIszcIiwax/ZZ2cN7cFrpkg7AO8FDDRsaiZSEIQInpxkMTx
 6KMxHXV/A==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiDL-00066Q-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:58:13 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E9AF82000B;
 Tue, 25 Jun 2019 09:57:28 +0000 (UTC)
Date: Tue, 25 Jun 2019 11:57:28 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Message-ID: <20190625095728.owvyfkrai4jmitue@flea>
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
 <20190611090309.7930-2-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190611090309.7930-2-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8561109563100814622=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8561109563100814622==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g6tayui22w2buk2d"
Content-Disposition: inline


--g6tayui22w2buk2d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 11, 2019 at 11:03:09AM +0200, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Any comments on that patch (and the previous one)?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--g6tayui22w2buk2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRHwCAAKCRDj7w1vZxhR
xcMGAP9Yh+98/UwJd6K4O3L8NmxKzovMwuUbtUgAmhFkPjRItAD9F2+3vrDlGPzw
OfQRGO7ebLU8QLfQRN7SdjUcrVr/WQ4=
=I+6O
-----END PGP SIGNATURE-----

--g6tayui22w2buk2d--


--===============8561109563100814622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8561109563100814622==--

