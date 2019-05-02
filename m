Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E275C11466
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KlbBjFJ3JGiDBkfgJY/U5BM8uYg4jmXVCx2hUf96ufw=; b=R/Dc242xXSqKdWm3IVT1vQZl/
	qis5MASTJH7wjleStcadnc849+JYGKgPFyxFOttOSV7ABlvL438ieL4zSC8FwVUE5wnZ4ZGXhShMN
	cK7x6ThfGgDyUY2VAIp2BDs5sAMlqBp8jeHMNZ23lN+BWDF7JuZtI2Wr0HdGGzV2FMDjYm1pK1mVa
	qWDbH3Xq2LGk/1zzTXJhOCFP1Avh3R4waRMvOa2L+wLp+EarfJYsJJ/vXyI4K95191AvlRrK+fxYp
	KMBwsFmkxKbAEIIWsZ+ie++jhoRlQB+hDzAXQ+v8/j9SCMIuqsCxSsIz5RM0K1LQZw8ztP4z6gzwq
	C0pIVc13A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6N9-0005hE-VX; Thu, 02 May 2019 07:43:15 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6N2-0005gS-LY
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:43:10 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B41D020011;
 Thu,  2 May 2019 07:43:04 +0000 (UTC)
Date: Thu, 2 May 2019 09:43:03 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: add PIO VCC bank supplies for
 Pine H64
Message-ID: <20190502074303.g3px63n4v4o7xade@flea>
References: <20190424062543.61852-1-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190424062543.61852-1-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_004308_852223_18180CAA 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8812664339474519029=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8812664339474519029==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f3jn7gc357berrvh"
Content-Disposition: inline


--f3jn7gc357berrvh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Apr 24, 2019 at 02:25:43PM +0800, Icenowy Zheng wrote:
> The Allwinner H6 SoC features tweakable VCC for PC, PD, PG, PL and PM
> banks.
>
> This patch adds supplies for PC and PD banks on Pine H64 board. PG and
> PM banks are used for Wi-Fi and should be added when Wi-Fi is added

Not really. The regulator is still there, whether we use it or not. If
it's not used, then it will be left disabled so it doesn't really
change anything.

> PL bank is where PMIC is attached, and currently if a PMIC regulator
> is added for it a dependency loop will happen.

I guess we should fix that somehow

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f3jn7gc357berrvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqfhwAKCRDj7w1vZxhR
xWucAQClyRc5w0vqs/DJtid7PAu+23gMPpEUsQQSF8S+8ic9HAEAgLsd09rNNQMB
pW4cdag9Xgoxi+5JqmFgud0nZzfNMgA=
=5qv5
-----END PGP SIGNATURE-----

--f3jn7gc357berrvh--


--===============8812664339474519029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8812664339474519029==--

