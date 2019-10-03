Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBDDC9DCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KBweqJwCipVV0qACz7r5YJrVHqjtYtC4wUClIaBbYKM=; b=ahe+ZX615J6YOk65X+/Ej8DWf
	g+kZQkNA3MR3ZaLX6/LxLL1kxxHppFyYcYPag248puCWV56An9otG5DslT5eV89cK8mUEdtkxRFxB
	3UCf5u9VmXOjWrkQnsw2endGadWKWo29H6pN+Fd9NGNOsrofhPuwJ30lLlIHmGauctOSG0RhNgmCk
	+nkc7tbsvFbVofdBSxUSD5S/hN14uA4x2ixcry+kmHOMTlQvWqWpOzOGIWymmT9sjZ4ZXOUGMJYut
	dJXYapWkdREG0lXrh9nM3MXW12Uipwf6rMHEVpLryBcN3qg0HXcTMSpA8l0IALGGeg4EY55mUDpkw
	waHIIycUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzeQ-0008JV-86; Thu, 03 Oct 2019 11:52:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzeH-0008Ie-Je
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:51:59 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C283F215EA;
 Thu,  3 Oct 2019 11:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570103517;
 bh=gh2BwGChFgakU2b0Nn81nUTVrkAdKDXGZpJ4cMB1VM8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vdRXrRY18lwTNPL/y9J3Ef9MtoUxJKfG7fmE8fGIKEmTJwfJgZg9XqdaEirRiSA7m
 jJGvAiJG+M24eY4h79ygx5XcyBA6YdhlxUebj78LxuLisK8hmiFGAvZbLraxmzkfiy
 mwPt9B8wLzyBWOxnSpuFkGW23MvVWm0YcPCQs+wQ=
Date: Thu, 3 Oct 2019 13:51:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
Message-ID: <20191003115154.6f2jgj3dnqsved2y@gilmour>
References: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
In-Reply-To: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_045157_668787_033E9A6C 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1699545488433655867=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1699545488433655867==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nmzxrjrlzz4yd5h2"
Content-Disposition: inline


--nmzxrjrlzz4yd5h2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Oct 03, 2019 at 04:52:24PM +0530, Amit Kucheria wrote:
> This new binding fails dt_binding_check due to a typo. Fix it up.
>
> linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
> linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
> make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
> make[2]: *** Waiting for unfinished jobs....
> linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
> make[1]: *** [dt_binding_check] Error 2
>
> Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>

Thanks for your patch.

It has already been submitted though:
https://lore.kernel.org/linux-arm-kernel/1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com/

I'm not sure why it hasn't been applied yet though :/

Maxime
>

--nmzxrjrlzz4yd5h2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZXg2gAKCRDj7w1vZxhR
xS0OAP0SU5JvkUNzuu7h9+tNkONFA7iQwgl1sR9AZpJjgOiFJAEAoJeO4CR/ZOBa
0Vu6m/HmNJojnOFoY2ILvkflVt+Zlwg=
=RF+5
-----END PGP SIGNATURE-----

--nmzxrjrlzz4yd5h2--


--===============1699545488433655867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1699545488433655867==--

