Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E02216A306
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PMdfLQMJHsrSm3tjlR5wcbVMZX/PjLGfZO+erfHGDIE=; b=JxF4+NZFZkXRC9BTJ/qa3I5xG
	YeM0Itp1YIHM7wby/1NnMUmLcN/BLW6wwRKDaU1QkVpQ3balCTYQrdmuIaUSk1X17Ei/FjjQKeYW3
	NEF5HVXg+rJUHzZIYf3WdffNpJr90EU0Djpplb7qHd3JaglYhW5kym1K1dcntVWZ83eeZFQuSqFR6
	D0YLakvTdLC8ETa0SsbEucOdrlmfjUcVksxCFnRbGkZqr4Fe0ODGtGVFf6gIggpLFz5iCZY343Es5
	cLkZ/h8m2bhmUQJAxWIPU9oZsQ8sNZum5DMKvatqY8VMJ8sLp/dhCN3q7d2fq9yGh+lD0XQGm5R/9
	nD7GECOmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ANH-0003sx-RQ; Mon, 24 Feb 2020 09:50:03 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69sA-00014G-BQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:17:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C28BD92C;
 Mon, 24 Feb 2020 04:17:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:17:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=bhiSTGzIzLvbB70YLw0z3IoRroB
 BdxIBBUPukc//z2k=; b=jYHVCyH8g9nqg/zYl17i16JkenbWeSe4RJkFKb5s81Z
 lH8dlS5LH0iiSiwf1Dil+3Wdq41wqQAjumX1SANJ+ZSpkZLPSTwFODD512b9bIru
 HMHmPInAWxKK127YRej+6Ky0Z2TqJLcGUynBj8JbOepWU2Ogot2FK3iBUfAOKj66
 SV7FxmM+DknYeeen3vd+jPRNF8RCiMoHtHQKHTfmaugKh6t1zwzhGMaLHD9X+hUT
 eYeWJQ2e7jAM9Ao5HHsYVYKbMzEzSN4mRAfmko31Of2LrRTJMAMZ9uoXtAxN7drN
 m6Hr+xSjN6rotrtKY+iKzXdjLryPlKGg3ROYJeR+qhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=bhiSTG
 zIzLvbB70YLw0z3IoRroBBdxIBBUPukc//z2k=; b=gkNme53XO+FnuMGD8Ajsen
 /9f0CKLdSml0Y1r6i0seq9WSo43MENIWClY7dNhuG6we46yxlOuau0jl73CWIfl/
 g79Op6PIhyeNbj9bsZUH0S+3IUPy+UpDm8ZefiK9RDAeobAl5koep2KY9IcYZPJ+
 OKIszKZa1WQKtw8x8sJBdsowYoKfiOeKoKXVs00KgQmGWfh/YNtRHqOGx6l40ezE
 rh3MBXbLIpUtaXo8Un3hQ3vi35JxZlW3WXbL2/1CMq09ItaewYjFJVibOue3yEx3
 qBdaQPgaSwOhNIHPpz8apDtyO8XuOoHRk94t2kRnY+N42/Iw4y/4TXdt1FULr4zQ
 ==
X-ME-Sender: <xms:vJRTXgIgw2wDuExCBeq6zdnhZF0iVR25zGUAXlo9VZ8AJGw5A-BPlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vJRTXsjsjhxeKwrQoPnm5rtwyOjVeOWKkCFVbnaoOWCYD6bqStpCIg>
 <xmx:vJRTXlISsoyDpUvoYYqQ4RqyeogTyqkTf0ESLoCmNbeDLxaPCi3BAg>
 <xmx:vJRTXriNFGtQk4Q4cFjrmLG2ImZp8EbwrKF7HR8sjf0tPVgzIjJ6jw>
 <xmx:v5RTXkHlYQmCvoFng4iAFMxRUoATVKEp-SGW7cxOLkO_bgZUzcQmGA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 901E8328005D;
 Mon, 24 Feb 2020 04:17:48 -0500 (EST)
Date: Mon, 24 Feb 2020 10:17:47 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for
 PocketBook International SA
Message-ID: <20200224091747.zwnvzosdb34tg5de@gilmour.lan>
References: <20200223031614.515563-1-megous@megous.com>
 <20200223031614.515563-2-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223031614.515563-2-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011754_562783_89819FFD 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, Sunil Mohan Adapa <sunil@medhas.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2623276982494414542=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2623276982494414542==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s3lc6so7ejypionk"
Content-Disposition: inline


--s3lc6so7ejypionk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 23, 2020 at 04:16:12AM +0100, Ondrej Jirman wrote:
> Call it "pocketbook".
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>


Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--s3lc6so7ejypionk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOUuwAKCRDj7w1vZxhR
xa3PAQD5b10L3aKPDDSM7Tfa1QeBY1g2L8BN+Yd10w4ekayS7wD8Ckd8fS7y2r27
5U3OK2rz8CdHy416LnVeOyTtiJosogA=
=ux3c
-----END PGP SIGNATURE-----

--s3lc6so7ejypionk--


--===============2623276982494414542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2623276982494414542==--

