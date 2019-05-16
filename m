Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48182015E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QaHT4leFBoHp9uqVR6MOb0GwaxUmiuZhzrmAaYdMzd0=; b=MBJHQRC2w4NoypH2V301c4Z70
	LDZt95HmcmqAwAJ93WbUALtMS1IXtySXveo7XJXyxaRQ6b4mmaJYUCneyzHN/8wY2RbTILXdtzUw0
	wOfgJ1aKzQRjTkukXlA2znD4ulHrNVOrT9KX6+YlvU0RspaovWWfKswERInlHqwx+434HfxH3z5HL
	6+/W3zY7h4WQLbSmn53FV4ANYRjrx0Zr6odt/Xof/0gQsVK5Kfp712ikAFwp7hA3fAVm29hWbIrMX
	6NvaCNwrrV78Y+LGsNGNFrQ0EsruMHgsPKDarAocnwE2kUnlH3YxVAmVAzgm++Y62fjs2AzTv7bxg
	Hplls6TBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBpI-0001Op-NH; Thu, 16 May 2019 08:33:20 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBp9-0001OA-30
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:33:12 +0000
Received: from localhost (unknown [80.215.246.107])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8AA99100019;
 Thu, 16 May 2019 08:33:01 +0000 (UTC)
Date: Thu, 16 May 2019 10:33:00 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner RSB to a schema
Message-ID: <20190516083300.unlmhvr2aueawa3y@flea>
References: <20190507193848.22205-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190507193848.22205-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013311_284100_25268FA3 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7892460993837939631=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7892460993837939631==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5rbbzdkam5ymrs3h"
Content-Disposition: inline


--5rbbzdkam5ymrs3h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 07, 2019 at 09:38:48PM +0200, Maxime Ripard wrote:
> The newer Allwinner SoCs feature a bus designed for the PMIC, similar to
> I2C called RSB. Let's convert the device tree bindings for that bus over to
> a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

queued for 5.3

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5rbbzdkam5ymrs3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0gPAAKCRDj7w1vZxhR
xfSOAP4w53UkHq9VRYESn9kb47BhLxkUOoZUaa432ND2A8uL+QEAh/meksiVja9V
X1RYaA4H2p40X7ARMa1cYAdBpBIuCAY=
=BL1r
-----END PGP SIGNATURE-----

--5rbbzdkam5ymrs3h--


--===============7892460993837939631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7892460993837939631==--

