Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDEB11446
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alGx51Gvb+Hb5gkGhnrosxKeev5WazPoYBc/Gx7AoVE=; b=bXnv2ARHPvVbpDLE1Cl1FL9Sa
	lRmOmvq8kf/N0ajEbCGYgexhgwnJ8pvUSNZXVFCQ2h+17K/JPZYc1KvP4cmtWnktRHfJ4eNnvMJku
	mVVgifUGEZWXAqsQA4c1Hy7dkM+M9bpgmgEIEPbS8w5ChyijBfcWIz1viF1btnvJGIXoiYt7ZexD5
	+AHMiU+JeqST8Oqum9sS1MyFkWMImC74FHoAkP/GULbh9J12SOfVKe4upnaniLH0u28a18X4Ipx3C
	aUm0AVAYHQObtV9KeeNWPk0PnabntGfl+05b+jYYUrcB5Ux7co69obJhblJl019kt5KrpCDCNjwFG
	sKbrfZeVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6He-0003Fe-8f; Thu, 02 May 2019 07:37:34 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6HW-0003Et-Cs
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:37:28 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9EFB46000B;
 Thu,  2 May 2019 07:37:12 +0000 (UTC)
Date: Thu, 2 May 2019 09:37:12 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v5 1/7] ARM: dts: sun8i: r40: bananapi-m2-ultra: Add GPIO
 pin-bank regulator supplies
Message-ID: <20190502073712.3le5ohnufk7lfvl6@flea>
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-2-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556040365-10913-2-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_003726_587144_02165F86 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0213678389257512123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0213678389257512123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zsawzropahmcetva"
Content-Disposition: inline


--zsawzropahmcetva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 23, 2019 at 02:25:58PM -0300, Pablo Greco wrote:
> The bananapi-m2-ultra has the PMIC providing voltage to all the pin-bank
> supply rails from its various regulator outputs, tie them to the pio
> node.
>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>

Queued for 5.3, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zsawzropahmcetva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqeKAAKCRDj7w1vZxhR
xXbIAP9l29OCHCho5tR8+PsJF9tjCvjKf3ETiZzemaf9PUlAngEAmeQjqD1RSN7g
sQIPXJsIliw67+HnsVbpleKEI3OOOQ4=
=wrP/
-----END PGP SIGNATURE-----

--zsawzropahmcetva--


--===============0213678389257512123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0213678389257512123==--

