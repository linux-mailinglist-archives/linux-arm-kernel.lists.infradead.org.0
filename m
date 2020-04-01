Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3919AB70
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nTRLiNVUmPQgjqHsbz8kfr8Y5MeJuymwySpxq04Xdjk=; b=TxcLKD1/u2WUjQe3i+qQR3iPh
	PF8mgdfAQmzRSfuKp6JH67gQNZqC1TN3IYu6t2Zab/xYH0BT7ilDvf5bLnie+VXEVmGZeSHcdLGSz
	/ynLhmzTE/vwBah0VHaDd6N/LB4fMkZ5nzpdmPYWQa/+vzJnvHc8SWeQ37V/CXB0/CVoKqDhH/ZLt
	Z0msofb2iLRS+dn5zUqA+BF0S2dbLlnYpIjqKhYZYbxqPyWKcDapnLjYgko6fp1YCooap0QWOjLHq
	AAqJ6TBgHR/uUeYgcQdY9L31BJyoU1KhkMZtlTArCHD/RMDqkDHeUN1vruwxXdMie1XRBOhPKoQR0
	0mOtAzQmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcGk-0001Ve-NR; Wed, 01 Apr 2020 12:14:54 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcGc-0001VA-E1
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:14:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A16716B7;
 Wed,  1 Apr 2020 08:14:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 01 Apr 2020 08:14:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=riGmB2diO+qhO4m3ef50ZIgs9zg
 sZUj/MkF7JyIQwJI=; b=oyGr9tAximrzsF7O0+NzcvTkxWcOu82jh30GU02HAxV
 BgTEVeLBTUDvHDh7ITnIJyNlUt00vhabS8R0WITPRe2IpeO1S1rtb7aEmW0YZqqI
 JEX5QTivfKgwQTc+FDuRiF69oRTTluCLmbS3QS+6iT6yiPBvnw5I4YANjrelYJQd
 sPJTFKlJdh1Z41hPTMS4n2LaK2tYZtoOXWP7sRA7Nx5dPjsIiFlGJW3w3ZFQaHXG
 5XD0QAdZpZ/lEbD07a6eM2UgCpe9nU13BhSmFeAdlELA6btZovMpR9MJFgt+RA0K
 yazrZiWlCbBJR1djx8+f0vL317MBN0PwZi7Y29rSbzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=riGmB2
 diO+qhO4m3ef50ZIgs9zgsZUj/MkF7JyIQwJI=; b=lMnCqBKyKZuaWaiUIcHsJF
 zQjfxXc2s10I3qFb7O/EBhgSmp70u9lWMrdOq4MvliWiag6ynPWeFbtXmOTZ/AGt
 8U22yjKFIcZ+l/sT4hzjcCq70vBo/04xUEHYog865lQltLnZ78LqEPJYWZH7I1rM
 rco6uLw7ywHp6T32IfDoFN2tkbG4YLYfigm1KM6JIl9xQ+PyQ30DPPOAjMGismHX
 eRKBtnOc6CwlOYA+59F0etlzgI8utmnlnBxFppekrmO3KG83kH2b2lx9PgIQ6H5R
 NC6u4pPkSe85PYHHW/yUYQvoYJ+dqqXmR1ITpNc6n+kFiaxmC7t1h4lvZC1kgYyw
 ==
X-ME-Sender: <xms:soWEXg3RSaHT0QnHe8K7B-YKWUwa4oSvE-68KVwZJW7yxt2PhhtBpA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtddvgdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:soWEXovmjV_lepey-Hk9z-G609gxrC39fnoWQlr4ulRUzoJDCczXAg>
 <xmx:soWEXjjB9i-vcMsuOCzUZ-xp8lYxTEjTc2-egSPpBmNMBduCdJK6pw>
 <xmx:soWEXjyQqm9lJqFo_-NO6Q4Utr8G3YOhjh5X-s9ptvfPDc-kMS--GQ>
 <xmx:tIWEXiaFArDSF4BzmWCAud29O9nzIE_QM4Var0sTibOeTakTOPQweQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 462C6328006A;
 Wed,  1 Apr 2020 08:14:42 -0400 (EDT)
Date: Wed, 1 Apr 2020 14:14:40 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey@lebedev.lt>
Subject: Re: [PATCH 5/5] drm/sun4i: tcon: Support LVDS output on Allwinner A20
Message-ID: <20200401121440.z4hj3g5nnrpehhy6@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
 <20200219180858.4806-6-andrey.lebedev@gmail.com>
 <20200220172512.dmjtqgyay73x3ubx@gilmour.lan>
 <fa780b70-f1cc-ee4c-e779-089c7e9159ab@lebedev.lt>
MIME-Version: 1.0
In-Reply-To: <fa780b70-f1cc-ee4c-e779-089c7e9159ab@lebedev.lt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_051446_512313_82A762FF 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 Andrey Lebedev <andrey.lebedev@gmail.com>
Content-Type: multipart/mixed; boundary="===============4449185971216732016=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4449185971216732016==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4urpxa7m4yqglfam"
Content-Disposition: inline


--4urpxa7m4yqglfam
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrey,

On Wed, Apr 01, 2020 at 01:59:27PM +0300, Andrey Lebedev wrote:
> Hello Maxime,
>
> Since Linus' merge window is now open, do I have to do anything to get this
> merged into the mainline kernel?

You don't have to do anything, it's already on its way to Linus:
https://lore.kernel.org/lkml/CAPM=9twza_DeycOEhT+u6Erh0yFTAUe447J6bxWCLq5+QW8ZaA@mail.gmail.com/

Maxime

--4urpxa7m4yqglfam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoSFsAAKCRDj7w1vZxhR
xTv4AQD3RW3fxzBC0un1iccyOIDGwU4RRbxjDXtwj9WeWzIBdQD9E2WACdnxoyZs
vikDyWZGzFHhl6C5fZJdL4IWWCh9Pgs=
=ndqj
-----END PGP SIGNATURE-----

--4urpxa7m4yqglfam--


--===============4449185971216732016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4449185971216732016==--

