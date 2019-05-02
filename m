Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B425121B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 20:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z8BwG3v8d6DUEP9Nj5SRF38xylMhq4CeLn63/ikXxXQ=; b=mxqyiJWf6PFEJBKz3TjXNEZfY
	sIjBaaQH6ZaZp7lSmNMWenpaGJzK+CiYhT8kS7eGdpeob9ww4wV1SqZvUw0WxOrQtHzsQ1AFaK3Y9
	hCBcnHGzoE/+PFiksnNoyD69asaHQHD4kWKD8wG/jfKDh5cBo0zMdKnqh1zEGDmGwTf3AkpdmS6uC
	OYT9mjo8qqCq6WTbXNOCbdggAAMZ0tcXfsFefLNHSrJlOVIYELtNBjOFaW0qUB2j3wktkjTaXyk2M
	sHUas9v2UhgK1Gi4pr1o9Fg0m7sPgQ6rF423uMoAzRTAj71JJ5duw/rJn+KRKVLzN4wMyafMOCWhJ
	EPM8shIlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMG9r-0007w1-L5; Thu, 02 May 2019 18:10:11 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMG9i-0007HU-LR
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 18:10:04 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id ACD61240005;
 Thu,  2 May 2019 18:09:53 +0000 (UTC)
Date: Thu, 2 May 2019 20:09:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v6 0/5] ARM: dts: sun8i: v40 Rewrite BPi M2 Berry DTS
 based on BPi M2 Ultra
Message-ID: <20190502180952.vsnccuoefnbzddu7@flea>
References: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556804030-25291-1-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_111002_858610_809D423B 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============8915017492190498197=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8915017492190498197==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="slwwbo4od3ptjqjp"
Content-Disposition: inline


--slwwbo4od3ptjqjp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 02, 2019 at 10:33:44AM -0300, Pablo Greco wrote:
> BPi M2 Berry is a trimmed down version of the BPi M2 Ultra, completely
> software compatible.

Queued all for 5.3, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--slwwbo4od3ptjqjp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMsyaAAKCRDj7w1vZxhR
xX09AP0WVJEEWFiWEqNzh0Os9U6AfuUj64vmMokvrL7gb92eggD6AxtREGX3bitW
fe0PKVusH6CQI0mnJijOubZyWQpYjAA=
=nFqn
-----END PGP SIGNATURE-----

--slwwbo4od3ptjqjp--


--===============8915017492190498197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8915017492190498197==--

