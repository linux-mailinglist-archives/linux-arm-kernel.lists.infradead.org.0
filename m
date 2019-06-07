Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05635388D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BMb5QNDFGBQnNT/xBukykcM0XCfzui8JEbAsQcQF8hk=; b=DRYhmyrBXp1kmLiyVdWuK+uww
	NmdH3y08l8QbXiDCIPjfXBD8rkMvFvaG3uLIZDXvSLdZqGgwESAYYSyYuSjzVmFWFy+9jUDYuMM2u
	XEliB1EoDhZzVO2ff/GY+rxmS0syXFifRMMVQs8ry1JuGzSX9BnefYdEPtB47Guc3V47QxPoeEnG1
	+Vo80JAG2YI0wEcJVG/jgr3WGNN5xGA4XUIyOQ1+it8/5pjkGXaaVZ7l0FnBcr3ZBbiuE8Fm1pcl5
	ry5aTo54qks1WjQY+VMIZxNGqy5oUFEXuhCMqjCWlmskWBntikHgz1KS7B3d9JjZk0QG7Pqp8V0Pq
	aWHwz7arw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCtb-00040L-Of; Fri, 07 Jun 2019 11:18:55 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCtU-0003zv-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:18:50 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id EE8FC4000B;
 Fri,  7 Jun 2019 11:18:38 +0000 (UTC)
Date: Fri, 7 Jun 2019 13:18:38 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: pwm: Convert Allwinner PWM to a schema
Message-ID: <20190607111838.xlx74cvcfhaob3wf@flea>
References: <20190516120848.25007-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190516120848.25007-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_041849_096056_95E43724 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7442821093348605924=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7442821093348605924==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fsx2qrso5t2rhcip"
Content-Disposition: inline


--fsx2qrso5t2rhcip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 02:08:48PM +0200, Maxime Ripard wrote:
> The Allwinner SoCs have a PWM controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Ping?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fsx2qrso5t2rhcip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPpIDgAKCRDj7w1vZxhR
xdluAP41N1Jp3Dwm49Xfan9JPKoR2ntx+N8mCFZ4hxJNzCClgwEA/b+vciuNG8XX
hSmZYYIlPhekGqLpadsETIfXDVafiAI=
=BXUr
-----END PGP SIGNATURE-----

--fsx2qrso5t2rhcip--


--===============7442821093348605924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7442821093348605924==--

