Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045711D176F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1IxTtC3UM1PzmgLcoHL775vKaqR6r2IsKWOM16EN+v4=; b=VOaaO+9sgRsw7+J8Qrdd8Acse
	1ChbXxHTlxQhQfv/jEWtsU8T0slfcBxDHSNdI+gEPDLSXE2KPcaplbObEWXvxTLIco3rzsBSLlTd1
	hMOYwWgpqkChWVXMB8f4JNivfYQSzNh2LOx/5lujBp7AkUAkzy+9JQhwWZOd7uJlMIMW+eYgcCxhx
	t7mJkF+jheqUewaHLSy3/v2aSiIN8lRQTOmNfIzgsTbIlR8KwLAwm+VaeGGJsbSOcqGxYYA9v5H11
	VyVNmogcV31RpRFCLndMcK/1KONC+sBSz/t+3Tkzs1F/hr3GTLigkaj8oYJ7TWQdk+6yg1TGL/TIl
	P/maqQBFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsFj-0003Vx-3A; Wed, 13 May 2020 14:20:55 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsFD-0003EO-Io
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:20:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B6E745C0174;
 Wed, 13 May 2020 10:20:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:20:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=H2UDzjWDd1EUmh5SZFNQe1gnXPY
 X3nwsxruPH2QTo3c=; b=SnO1oljPpLbHSyV9DkYCy9r0YGj/t5QQwJ4IgpURgMk
 lZQLZMyKF4Aht1H9vFWSirikNdxeXzkFCf9UcibnMgIWq5JYkempf1hlzvWG3w00
 mBlseSTaJHU9HWXtf1ADv/gx184JEcgyEAh1pl36riwpMFSRoqxL0wlCsjOb6TgJ
 xRwMqzvRU5cyS6eyoLXzddILbCPcoDozCdxjXVgk4bWB2+OGzfjiktCC29panzse
 fZpLNCPGYEjW1qGnsh0sxPqnvq9axDZA8ulUAHNisrmxvQAc6xzXnuM5janZUhcd
 JeX/oP4oiCDt7rXPxW9Hvf3ZyLD0kBy1pfOdcZQ6EzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=H2UDzj
 WDd1EUmh5SZFNQe1gnXPYX3nwsxruPH2QTo3c=; b=N2A59Zz608j7xl2RnVkBiO
 CKVuAn05JUk2PcWZfZ/VhewTSY45PvAZWC7ia/d4a1pk4GFAvY9LekflPIcW9n6d
 k7SVDAAEB2LGBU7TRZDxFoNMS3O7IuOV+aGGF7pVLWIsdQK/qKfZQhg4ikXyyeSr
 vmO9NXD0F6IB6bo9UKIQr1oQTGDTm6oAwJTVlgLTgv5rSdCgb3mOhFSrxLX2yv6T
 4qZFBXspktLXzxbGaxejs1H7bCgym0oCnNZMaUMtTFYuJll2M8QDox0sjb7Mjel2
 aF+ZpzkZTjtKCYtXilyFfQ138TKMn3hkOlzTOYQOQjnPj3BXyE2ROjMBLB8n0FXA
 ==
X-ME-Sender: <xms:JgK8XpVI00HGGWimKzxYkWYwFypqdBqtfZUtV7JtJhDgJAKEOy5mhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeeutdfgjeeuudehvefgvedvtedtudelfffgffekledtffekgedukeejueevieeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:JgK8XpnhfUGhYWyxvX11ZVSQchZ0gT-WfEwFYuUTraICfXdtFu7Xtg>
 <xmx:JgK8XlbctJlGHrpPGObtTlPofa4T-q5zlOvMvMhcBUOexH8JdKK0KA>
 <xmx:JgK8XsWAIugkpQD8QTRHyopU52EW-_N-oj1zr45CopwIE_8sb-_QGg>
 <xmx:JgK8XsB7djlcDt8z5NVhe0pEJzCUTPKCAu3ff51T6gisAoBQVHkK5g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D4C263066309;
 Wed, 13 May 2020 10:20:21 -0400 (EDT)
Date: Wed, 13 May 2020 16:20:20 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Tanix TX6
Message-ID: <20200513142020.uossnjz7g5sx32mf@gilmour.lan>
References: <20200508191035.24276-1-peron.clem@gmail.com>
 <20200508191035.24276-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200508191035.24276-2-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_072023_774198_563E92BB 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6152322801775593522=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6152322801775593522==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7k3wey5tatwrtser"
Content-Disposition: inline


--7k3wey5tatwrtser
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 08, 2020 at 09:10:35PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> Enable CPU opp tables for Tanix TX6.
>=20
> Also add the fixed regulator that provided vdd-cpu-gpu required for
> CPU opp tables.
>=20
> This voltage has been found using a voltmeter and could be wrong.
>=20
> Tested-by: Jernej =C5=A0krabec <jernej.skrabec@gmail.com>
> Signed-off-by: Cl=C3=A9ment P=C3=A9ron <peron.clem@gmail.com>

Applied both, thanks!
Maxime

--7k3wey5tatwrtser
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrwCJAAKCRDj7w1vZxhR
xWsqAQCplDxqnHn7w9heLEuzvIWCfXkOpwY8JhUokblIIOzr/AEA1A549C/WG799
7csQ30uDQta1DukX8D6UgqdlG7QZjQE=
=0piT
-----END PGP SIGNATURE-----

--7k3wey5tatwrtser--


--===============6152322801775593522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6152322801775593522==--

