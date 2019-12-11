Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA411A597
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4x3KR53wtVxCpTXyew0KDW3JVuG0wwZ5ybaOewDIVQo=; b=EAh5IQpbJnI14Msr+OhnqqPFr
	2GbJwRac0lL7DmyWxVvfDgZn2JFpe+VsD+qotSiqHlO+CKyFIy2Y+bBa4s489yx0E/cNM+S0EYeCP
	lZEeLx+ybyQmNPgqA4iJkAleW1ZlPDbrODUcKMBn7TAQdhUxb5P0HS3WyZeOx860swu98RLLxAS2p
	b2qdQGvSleQGHKNBmLNTjn+LA+Ny7dD5iqnaG62ExLqFVZIhrWEARDdjspI2MDwUAlgpbAS6WEq8q
	n5oyvsLsYBTPLhof6NowjSGLpKESOpwYgC2tPnA08+UX+gyhBRhq5c9xKWDzqvfrfQSYVPRW1FAWE
	1cUskr2FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iex1H-0008Ij-JN; Wed, 11 Dec 2019 08:06:51 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iex18-0008Hj-Rx
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:06:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id C866B22138;
 Wed, 11 Dec 2019 03:06:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 11 Dec 2019 03:06:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=hwPGVZSfhiMxz+WWKnEgFwPNaIp
 NoOUWvpk6+9E3qN4=; b=pNip4IpkG9LKvVBXYoyj4iVJS/ovoPIw9uWvOPk5cd9
 aeaF/jCv7glBQ+oKn8wpOl6n3UrLb0rgftmS04wkr50FD1IkkFHTMYvonRZw86Lj
 rIxwCZ6cNOEPfbb0UmR7pNOh3W8Tin3r2rF48bQskZY+1mLE/4zjEU7Lttik/FJI
 n8jQEQBF1wfSCShgauIgmygzeTmEYzHl8gW9Cipklj/+z0SGicb0Oef+ZCrnXbpy
 2LtsLThBsWK9Q7i5Mvc8GxhhFC6z6Cg0whP53l11XVHQwbn1CHVNnpEOK3kAStYf
 PYwKSDBhhcd95w233qcW/ZL7lhTiWF7eewTLoRU07ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=hwPGVZ
 SfhiMxz+WWKnEgFwPNaIpNoOUWvpk6+9E3qN4=; b=jj9j0YlySSDVxgY0h/vfI/
 aBM5pZSEUheItTPmultGLLgrgaBhHTdUTeNy4c41344yAtToDW3qW6/G83+QyggH
 sm3g6pf7cEXj1zUWIfLGKTsY44dhhovQamRUtTQtBA+p8tqvMA+14KLCSOCjGMnp
 wXMHTL2W+IfRxZrpRy5xOQAzkd4wt0TJ/Oy1dsxlCXGAtRrX5GwLqfns5zgxJWgt
 adK9eQS9r5Rud6MWzRraNXrxsG1MtxQ9/h9lBnNK5cCJ7KV+XtjpWF86PMoKEP18
 dFSX8G8JlEcREUqZwBpXrBhvKyj1SduXIfRAePAw817s1//ZjTbA5OkZYf4u2r8g
 ==
X-ME-Sender: <xms:jKPwXfXqZ_5EeTjpf0WKqXeWJktHHwg9Hv0q58PoZoj3nTZoHjIwSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelgedguddtkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:jKPwXSl6xGsb9BnnvKa9iCOm1T5zBt8VRYeehfUjcihda8tyWGH7sw>
 <xmx:jKPwXYg_duZ4YteFKA2eq--62RBE3EUDVTzlmiFFH1OgnjMeCKELKQ>
 <xmx:jKPwXS5eunZZjFT3NveH4Rpe-x2fnIaaEwQZn7a1LrmQs-O310SuYA>
 <xmx:jKPwXXnbpFRNjLVoZD7ulW-OOlvofq2rh8P0vhnr9WhEweg_S1Xe_A>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B864880070;
 Wed, 11 Dec 2019 03:06:35 -0500 (EST)
Date: Wed, 11 Dec 2019 09:06:33 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] dt-bindings: pwm: allwinner: Fix missing header in H6
 example
Message-ID: <20191211080633.a6yzwbxi7fcmislp@gilmour.lan>
References: <20191210174710.10649-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191210174710.10649-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_000643_044978_3AE51EC9 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1794107791527744140=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1794107791527744140==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="44tksmdnwrh2gezn"
Content-Disposition: inline


--44tksmdnwrh2gezn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2019 at 06:47:10PM +0100, Cl=E9ment P=E9ron wrote:
> Latest linux-next doesn't build due to the following error:
>
> Error: Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.exam=
ple.dts:35.37-38
> syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-p=
wm.example.dt.yaml]
> Error 1
>
> This is due to missing header in the device-tree yaml example.
>
> Fix this by adding the missing headers.
>
> Fixes: 4ee929b3f08e ("dt-bindings: pwm: allwinner: Add H6 PWM description=
")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied, thanks!
Maxime

--44tksmdnwrh2gezn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfCjiQAKCRDj7w1vZxhR
xTcEAP9uGGmta1bRoVSRk92LUIUmW8iSPPITd+A+9/tLuXcG3QEAkBBswRhpwUQ9
IcmAHUp2Yo34CHA+/krrKKxL0JUADQc=
=UP4/
-----END PGP SIGNATURE-----

--44tksmdnwrh2gezn--


--===============1794107791527744140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1794107791527744140==--

