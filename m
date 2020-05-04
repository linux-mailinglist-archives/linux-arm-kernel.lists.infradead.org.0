Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0501C3742
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xVs8bicp0IiR6alJdqiJqpIE3NSKBnnpy6UMLcUSYn4=; b=YIiOB60LtXEEIwzzeL3I6/880
	tM3HE/VgEKa+htki69M3R2tebOejfgy5KeuiyHbLpTnu7Eky6qEcDgsYO0aNb1Hus+q5zCTy+ff4S
	cW1ycumiS7kr58WqSSMWcbPaDuEKSfM4Il4AVpTLA1TIQCb2OPy0yxwJVTpf3MdLIRKYePZK/daxP
	kc2+g8LAio+S9S821ZJDAPkCff5W/n1Cj39Lx45KtF4cpetS8vhHe1xWJvkG34KLTlru+zRh1OQP1
	bYCC+NPP1PA7LVuYJp++lvC34c2CXQcwg4vfFW6yS25BPQzH6eQPE+qjDrssbuvdO9rR7CSt/SlCV
	XLm2dC34g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYjk-0005aX-T8; Mon, 04 May 2020 10:54:12 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYje-0005Yd-Pz
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 10:54:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 409376DB;
 Mon,  4 May 2020 06:53:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 04 May 2020 06:53:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=zvy14YHR+znGe3t+Hmjo/EjD6Mr
 ZIZqEI9VaeaWaPVA=; b=c6opjvGMp1R7qBwwuGO5veGzwSInNqfyNFTHkFEqsbX
 j2Qi2i9Zk+h3W3Ku1zJ+QkmW2OwV5oRKl+Mr7b6dyu+OyjsOXMPTMxqKAdu5e3Dq
 5tFt+4/glEyVTLkkQvvBZL5DrlAk19DdJki0sNbMlZib5ZakBhISqnkUk9eQ1NsK
 //De2EGAk39Slc9kYnfpZq13rlQlAFuaILbM2LMIlBbIVbfPYsJJliQIj3XjVu0w
 lvWDPI/UO+raTNSSBZS2Umgktlu4/cqO/+uwdvMw/XOKRuPFr2AOBKDa4erZJO7c
 fpbwGHXrzZ3+2mXUh8eOaYmkumm0ZLk8EN8yvrQoPmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zvy14Y
 HR+znGe3t+Hmjo/EjD6MrZIZqEI9VaeaWaPVA=; b=KX/tQ5X2P4047WY26xXMpN
 b2CgOT0HlF/mo52lhJp+yhpQsKnu+ibT+PJ1jEtKnZVWRYysBPRFG2YUR4RnmJqw
 6OBL+cf6T/7Y8HjBrQ399dTvj18V44olYeF0EJOEM+N9wCxqWAynaj6ENjrazRqg
 luaWfHH0RdFX0DNJcK2qzRkoEgt/6KXQvlUqbRqYSOyL2t2upq4WVS3M88HNFMfg
 PlRTYq9YiCUjMMxzWA6QVAoMDmfn1j6VAYcZk1OBh9s/T9xOO9oV3XVtaYWkui81
 tqDrXwaPO15eMDcejU6DMYvoruFYQG5KEWva5E5bfg6f9tngKiNywMcl+8ltPxwA
 ==
X-ME-Sender: <xms:QvSvXrqoYQNskZQcQQl8xwEk2H0i7mx16kbdj2CwSsp896PWfE4N9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdeftdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QvSvXrz30qCcw3ZnA9cGgvIkheGr5Uv1PDHJ_esRVMc_c9shi1md7g>
 <xmx:QvSvXtwKchh-vk1ZccyGeZifdTRpqXjrVnzC_ZQwyMegWklxK5dqeQ>
 <xmx:QvSvXiTlRe_4owVrv-vXfGysxgEDdVepPsQKo1J8bSEjnSDnHqtE5w>
 <xmx:RvSvXtrr16GO2RI2A-sj8RjTFJMAIassDdgQOLxHpCm5qhcP4UwqGA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5F89F3280064;
 Mon,  4 May 2020 06:53:54 -0400 (EDT)
Date: Mon, 4 May 2020 12:53:52 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: pinetab: Fix cpvdd supply name
Message-ID: <20200504105352.m7x3yo7ne2j2goas@gilmour.lan>
References: <20200426162353.52465-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200426162353.52465-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035406_891011_181100A4 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7025328288519485751=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7025328288519485751==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3rgwd3wzs7dmr2rs"
Content-Disposition: inline


--3rgwd3wzs7dmr2rs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 11:23:53AM -0500, Samuel Holland wrote:
> An older version of the analog codec binding referenced the headphone
> amplifier binding as "hpvcc". However, by the time it was merged in
> commit 21dd30200e3d ("ASoC: dt-bindings: sun50i-codec-analog: Add
> headphone amp regulator supply"), the regulator reference was renamed to
> "cpvdd". This board's device tree still uses the old name, which fails
> to work at runtime, and which causes a warning from `make dtbs_check`.
> Resolve both by fixing the name.
>=20
> Fixes: 674ef1d0a7b2 ("arm64: dts: allwinner: a64: add support for PineTab=
")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--3rgwd3wzs7dmr2rs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXq/0QAAKCRDj7w1vZxhR
xfCMAPwKSTdj7Wj0M2iBjxXSpxos0dEHNj3F/XGvsdNIlb16kwEAz/3eiEZHeaVM
aqGK08WsKBWeCCBX/TXwIfEoD21ruQ8=
=/g+o
-----END PGP SIGNATURE-----

--3rgwd3wzs7dmr2rs--


--===============7025328288519485751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7025328288519485751==--

