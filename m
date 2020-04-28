Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB72E1BB819
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eEDgbD377fjikoqpcES4O7WpoeX4xzCCI2ZAmxxKCYo=; b=tw23yhuGAGikFGxm12Vc1udni
	xwtoLRezN2gWZlcu9BSisvnvEzQNgVJuN5QeYvqz5hm6U2HcqBxIgqfL6s5sb+Rbej1zhLVgNQ/1F
	T6mh0Zui9QooZQ5cnZWqyhfGjU9clGgklQIDQJVpA+x7//MA3jPcM2uH6FdxQO2auQiDAxGYbZWnV
	qjUxZeytEbpvG8FAB4QJ43dQbcOFNLI9c0aEjQ8itBx96PpU4Dzm10m8udKyzcunuNz7W/3DWykfK
	33tdORMqxUN1W2f92DVaeQyXeZhl7+eBmNGh3AA1W60lffHLIdovcEKuWm4mzscIZKj3R+j/94crH
	4YVqlN6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTL2f-0007eE-4k; Tue, 28 Apr 2020 07:52:33 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL2D-0007Uc-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:52:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7FAB65C0242;
 Tue, 28 Apr 2020 03:52:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 03:52:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=V3F6bgU0rAXVY56HsN7kHIpWzuM
 aEzjdPUeTPKOkaG0=; b=GN//1xQTf4yXhNpbQP8Zc9xxWk2xJ56RdOw6PKZoz9o
 +E8qbi3XzM/0l5NjjHGni9L2JYmrL71d5+SWiI/VvGkYqFQAEFCqMzAEgYMvWGCJ
 NhoM6XnhWHQ5evKR2/xaZHPoeJF4qwHYmNNwblSeeIyJInBEX/HXnUJvV5+GDNFT
 KjMxIqx1mDMJhHPCAclkzhoCbTfHyP7f/lj088nx0ZizFngGObQk0I54AJLv/v/k
 YRiEGE3DjWi2iUk3hYwrOVSORWaEDtUu7BlI0OrWr3I4wDblqrQg7oEO+GPO4rAd
 bJcog3vcMQj5jPcfRMszK10HMsDg5mEx08DRLJ0RM/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=V3F6bg
 U0rAXVY56HsN7kHIpWzuMaEzjdPUeTPKOkaG0=; b=MRBAYWKAjvaFWz3YsE0ku/
 DkNYdH2W8vHcXBjxUqP6lV+gftTI7UB/s+QWKzSlGq3RKYPCPk+skGoMf+jxjugq
 BfFKkE4o612wolzPCWp2o65mvUlrYZZ6sx6ZVXK+T4Q+CdUt1Ul0ywawrfwhhm+d
 EvyYYEsPoLnOrnoRVEMS4zplri9bo/QguB0tcCA/U8m6SP6cZK/wBZ0HWJ6Gs9cW
 4qpN3RyasCDP/zGEPFDic/5S4iza6HI5hSReB2L1+/E6HNVHnYwSNnDwcNRnLdc4
 HB+t0kZUiYQxwTuQpL/2GcxSC+1fDzYShOm9ATWLZL9X3wosb/9cjRQWarRc+EKA
 ==
X-ME-Sender: <xms:n-CnXihsqEnrGJ6OHdfqI_LaCGXt45oS_PVy6mlP6a6yrTJhkF7hAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:n-CnXn7wEhWJJmoj2mTVuVT6nrrfmoj7LMLFO5iVC1NnxQ9k9YiiRw>
 <xmx:n-CnXnqqdU2Zd_WRJhmy0R8kMIBsbva2BWQZE_w2_QFHiXUR4LhUHg>
 <xmx:n-CnXtUBXrMLAiP5tEIrcxRbmhyynOGVX28lmk21_fGKmDn9idb2AA>
 <xmx:oOCnXoRNxVwYOm0wyWwXdWGslFkNT-bOA2RcB8C18LI9WcdK8zyvRw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 025DA3280068;
 Tue, 28 Apr 2020 03:51:58 -0400 (EDT)
Date: Tue, 28 Apr 2020 09:51:56 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Use dedicated CPU OPP table
 for Tanix TX6
Message-ID: <20200428075156.65okklrupingiza6@gilmour.lan>
References: <20200426121709.1216-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426121709.1216-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_005206_091611_C3126EB2 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Piotr Oniszczuk <warpme@o2.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7829696518334447553=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7829696518334447553==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hy3utu7gd5xuclrb"
Content-Disposition: inline


--hy3utu7gd5xuclrb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 02:17:09PM +0200, Cl=E9ment P=E9ron wrote:
> Tanix TX6 has a fixed regulator. As DVFS is instructed to change
> voltage to meet OPP table. The DVFS is not working as expected.
>=20
> Introduce a dedicated OPP Table where voltage are equals to
> the fixed regulator.
>=20
> Reported-by: Piotr Oniszczuk <warpme@o2.pl>
> Fixes: add1e27fb703 ("arm64: dts: allwinner: h6: Enable CPU opp tables fo=
r Tanix TX6")
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

I'm not really a big fan of duplicating the OPPs, since that would make an
update of those very likely to be overlooked for that particular board (and
since it's a board that not a lot of people have, it would be harder to not=
ice
too).

IIRC, removing the cpu-supply property should work as well?

Maxime

--hy3utu7gd5xuclrb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfgnAAKCRDj7w1vZxhR
xcKQAQCy9iRfHhgQB0zjFFyIcVr+pNkJu/NoOpUwGHC8OFi59QD/b/ffdd2k2+Gp
1HaeNUO40UjzCAvU3mSLTulZyrAF0Q8=
=TWTU
-----END PGP SIGNATURE-----

--hy3utu7gd5xuclrb--


--===============7829696518334447553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7829696518334447553==--

