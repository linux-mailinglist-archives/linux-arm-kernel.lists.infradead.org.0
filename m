Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D16CF15F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 13:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X9WXtIobmaylffSt8pfb2wZkb4uRaz9LUfb+5qEiw+4=; b=S00
	3z0LF9v2pdfMo+N/iN2b5PGSxJwXmPvEVp5MeeleesIuJBDEzQRDt5gqpNJdArhoAiSPtfZRioDyk
	WY7aqQnyS+R9nIh//Xi2r9zpsboPfIHgXy22rVd1sVJk7I1JPAV4bb48wiWIUy/EfSZS8B5pl/cPc
	soF3R1GhSrsskt76pN2r812qliRvlZI7q9UVNTXpOh2FQ+ySnAmagF/me3GbX0hTljzECLOfx6f1i
	qv66iOm3wzAff+xdNCEYxe8ibtHX8tbfFYH0DYXjm4Zgp0jcTthiEi3pCZjFBER1Gy4k14ba8W5tY
	9zl4a7fMgJZ5Pnh2CQ3NiCo+q7pVwTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSKGS-0001pC-9V; Wed, 06 Nov 2019 12:18:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSKGF-0001or-FA
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 12:18:08 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C94E217F4;
 Wed,  6 Nov 2019 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573042687;
 bh=vRB5dAhCTNg+KhP298iabfCeg8uaEpgjlEGcRAETktQ=;
 h=Date:From:To:Cc:Subject:From;
 b=UcoocykU9OFEYDMDOT9c14myV5E5LFcEGFso209z7tOIVO4XlP5z5DFHG7MlqcCHn
 4Q4MN54J9DW7fSki7NUYd2F6DS3hDKwu84mmGf5Wg7Bzu1u9ka2tPACvYmvE3HFL6J
 1mHxpSQs1iDgQrYwxMStq3RLA5W38VcGHj38gwXo=
Date: Wed, 6 Nov 2019 13:18:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Allwinner Device Tree Changes for 5.5, take 2
Message-ID: <58ad00a8-9579-4811-969a-a74e331ee9a2.lettre@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_041807_531202_F2A738A4 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="===============3460930497182404717=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3460930497182404717==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Please pull the following changes for the next release. They are a few
late patches that enable new features that got merged through separate
trees, so it shouldn't be very controversial.

Thanks!
Maxime

The following changes since commit d79ccef07b36cf9e0bf57b24a7c580d1e5f4fc39:

  dt-bindings: arm: sunxi: add FriendlyARM NanoPi Duo2 (2019-11-02 16:42:35 +0100)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.5-2

for you to fetch changes up to 74ab6d9d7dce554a2b1265b06f2ceb4087406b6c:

  arm64: dts: allwinner: h6: Remove useless reset name (2019-11-05 13:12:12 +0100)

----------------------------------------------------------------
A few more DT patches for 5.5, mostly:
  - USB3 support for the H6
  - Deinterlacer support for the H3
  - eDP Bridge support on the Teres-I
  - More DT cleanups thanks to the validation
----------------------------------------------------------------
Icenowy Zheng (1):
      arm64: dts: allwinner: h6: add USB3 device nodes

Jernej Skrabec (3):
      dt-bindings: bus: sunxi: Add H3 MBUS compatible
      ARM: dts: sunxi: h3/h5: Add MBUS controller node
      dts: arm: sun8i: h3: Enable deinterlace unit

Maxime Ripard (2):
      ARM: dts: sun6i: Remove useless reset-names
      arm64: dts: allwinner: h6: Remove useless reset name

Ondrej Jirman (1):
      arm64: dts: allwinner: orange-pi-3: Enable USB 3.0 host support

Torsten Duwe (2):
      arm64: dts: allwinner: a64: enable ANX6345 bridge on Teres-I
      dt-bindings: Add ANX6345 DP/eDP transmitter binding


 Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt    |   1 +-
 Documentation/devicetree/bindings/display/bridge/anx6345.yaml | 102 +++++++++++-
 arch/arm/boot/dts/sun6i-a31.dtsi                              |   1 +-
 arch/arm/boot/dts/sun8i-h3.dtsi                               |  13 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                            |   9 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts          |  45 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts        |   8 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi                  |  33 +++-
 8 files changed, 206 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcK5+wAKCRDj7w1vZxhR
xU7SAPoDLxD2TNGAIe7MAQf2qDEBsD5bmwZwov7q47hTwbxrxgEA12lb8axSVwCw
S05aGAn/wuynZ4B64maNi9hiETf0Zww=
=M0lt
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--


--===============3460930497182404717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3460930497182404717==--

