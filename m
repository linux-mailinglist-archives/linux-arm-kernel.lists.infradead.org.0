Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B73D1840AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 06:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gCnogPEU8UE+H1YB1IfxHfUjG+msFHeD3We6czX2Tro=; b=XxU
	eeF5wVVWza/kN6JMk3qp8I7oGRim5830hAY8RtANB+rMggLBk5QAQIp9KnR5l1eKVwKKoH0rObj7R
	ZKENsw9fC1j8xbbXElgG06L6CQ/mQOpLWb/ukb4y67kvkCEqIuD2SbSu0mM6tDDbhdYPUNBPSoTiA
	m7RnsDe7S1++9D7QemuXR4b4GtmQA19wnsA+QmwvL6TFXK9ALH+803lP8KszaUtc5wT9eK1WAkNYu
	KRiFmUR/Msp9fS2uBkUEtjgc/iDHaXqkz9KZznCDN7OzCNNHdGfhXWuoBoKGHx5crSKHQAye9r+ku
	99CPFRrrwRp9e7KJWS16TXKYYW2TL4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdFU-00062s-2A; Fri, 13 Mar 2020 05:52:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdFL-00061k-Pn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 05:52:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E942073E;
 Fri, 13 Mar 2020 05:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584078754;
 bh=gGBrT/vnl00ziDMw3pIt8mmlNcqYPp/4J1erqTRSp4w=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=MKR9t57/3nG4ErWde2geMcoPenU0zhS6dq2zhgyHy+T4TSieREzAjTw9UewEaCOg7
 ttNfLqwADeh35at29w5Vv2IyDunwBfUtIRY9y5tw7CG+fuoS3ZCe1Z5nuksXxL13qP
 o4tLJlt9XKl0OcoK/C7/iLjLhLEth8nN7H3E/Ahs=
Received: by wens.tw (Postfix, from userid 1000)
 id 30C1F5FCA3; Fri, 13 Mar 2020 13:52:33 +0800 (CST)
Date: Fri, 13 Mar 2020 13:52:33 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/3] Allwinner fixes for 5.6
Message-ID: <20200313055233.GA19649@wens.csie.org>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225235_883161_F66808C0 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0852072864186235862=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0852072864186235862==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-fixes-for-5.6

for you to fetch changes up to d9b553b02e691185f8145637c46f9564395936e2:

  ARM: dts: sun8i: r40: Move SPI device nodes based on address order (2020-03-11 22:49:40 +0800)

----------------------------------------------------------------
Allwinner Fixes for v5.6

A pretty normal set of fixes for v5.6:

  - Fix reversed macros used for A83T EMAC clock and reset
  - Fix camera regulator voltage and USB OTG for TBS-A711
  - 16-bit / 8-bit mixed read fix for our RSB driver
  - Fix SPI controller base address for R40
  - Reorder device nodes based on base address for R40

----------------------------------------------------------------
Chen-Yu Tsai (4):
      ARM: dts: sun8i: a83t: Fix incorrect clk and reset macros for EMAC device
      ARM: dts: sun8i: r40: Move AHCI device node based on address order
      ARM: dts: sun8i: r40: Fix register base address for SPI2 and SPI3
      ARM: dts: sun8i: r40: Move SPI device nodes based on address order

Ondrej Jirman (3):
      ARM: dts: sun8i-a83t-tbs-a711: HM5065 doesn't like such a high voltage
      ARM: dts: sun8i-a83t-tbs-a711: Fix USB OTG mode detection
      bus: sunxi-rsb: Return correct data when mixing 16-bit and 8-bit reads

 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts |   7 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi         |   6 +-
 arch/arm/boot/dts/sun8i-r40.dtsi          | 125 +++++++++++++++---------------
 drivers/bus/sunxi-rsb.c                   |   2 +-
 4 files changed, 70 insertions(+), 70 deletions(-)

--opJtzjQTFsWo+cga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE2nN1m/hhnkhOWjtHOJpUIZwPJDAFAl5rH50ACgkQOJpUIZwP
JDCDAQ//TUtPbAb0whYWM4/NgJ8D87mO7WMM00u/kJK6N3gUa0x8yHn2HUIEqpUa
p3WDmcN1vYf6UGr89lTh82NdgXrdSN7b2NBccrd8QzXPywoXsXZ+6s0/jiSg7sjm
92Kj7EUs+BJxaV+jFCq6357GVPSycTxC87vwDy4+NeHRDmOxckuB+upCb16V0eK9
2KUqnep7xBIvXVoyCknwcG5XgtHQaAfFY9+DBbEvU6RKz9nlhuLP6PJMjPxi9Y70
5eciWbF0nw/Gh3CxchX3ST1lKmL7zTV4Hi+fe9QwLEOo1/xWdK61S30bvQLzG3Ri
fuMyUANp0woa7VmzYMHKnICboKfaXiL4fWMKhDOo2rZf40l9WMPTSuJDP1bwENN/
W1Cgx//3izF7QulyMjQXOxuayd4nHbHXUCt6ETmtAa2hN6GiX/239AJ7dNv4QkO3
o21LVMYtxc/LqJkAih1INOd9axUxOqdARCSv0jzBqVA38daLQVZ/wndraoRhOC9t
BKcFmTuGkeof0Fi8i6o052JmlEN526iQje5pbXGyIcUuSg1B4oCalssfXpWAl+tS
UbUDZLPMIDX/cggkO+QjndHrPGWU/sO8xKaaoItVL2wlg2FrgYp0IE3+UIxIdPhY
sw9sFeYluO2TDmJMu/kJGa/DfH0mlyayWyPLvmdO9EdcUtEfiqY=
=7Mnu
-----END PGP SIGNATURE-----

--opJtzjQTFsWo+cga--


--===============0852072864186235862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0852072864186235862==--

