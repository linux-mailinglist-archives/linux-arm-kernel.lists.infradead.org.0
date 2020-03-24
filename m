Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08724191556
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RiSI8W7qxHj7RlXK5nL6ndnAvK48NByRhVEQE+cGKdo=; b=jdX4mQs+18KTl6vvqqVoh91M1
	cypfo8TCyIxs52WeKxe6xhmrgx5AR/fxURETCFQrO064Ba6fYKLAh8bq03icjlJJJ41dnKRkGa0aO
	VwTauGvBjiqBICgpjxXjjofQjN2/+Ujkf/g1rSGgJIsmUP/ZBBx2EQJ1F64WmtChylI+WjTbmC/PK
	++waDJMDTTMbnXzlg/cCk98bAJ25NwuHv1BZBFqsHanQbd6qTlTUZK1XMjKz+Hwl1cqo7HT7g2LrN
	EiLuAFork+A8ehdq/uqCPWfqDa7F5NXWaORJZkE7wiFLWZwqn3goEQeWdih9Wi2Xuj8V6G3C1hnys
	ZAX5ejmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlpA-0007yJ-Jf; Tue, 24 Mar 2020 15:50:40 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlp1-0007xp-EC
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:50:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4A0815C01B1;
 Tue, 24 Mar 2020 11:50:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 24 Mar 2020 11:50:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=0Pu6HeLGr4uD+zkjxE9sHKczNd6
 ZBYS3wZrKUtICS4c=; b=O/2P9cncGMHR3/iVHph7f5JHAMbpIKmR8PDg0jEKoYO
 UQXd4cJmeI8oSj2Ax2UE43i+sxLSzCUn/mKlopSMX5B4MNAMOgNyRqDlGV0Mz5+c
 1rrwW4InKYPjM+U80IYFcmlNriH3iWRCOmCZkZOgxo4hDiMlIENQmjAy8JgcQdFR
 ccgTis6NUar4stMS+80cuVUtYV59dk8XJg5nFuJAYntLYQiDsSBfljGx2clV8Kkj
 OArdTSlcD2JlddGLoDRaDH3Mf5Ov7Z7TusggmyiYpc8MiDCLJ2O55jKBpTZGET73
 VS3fYShFmDeBj9cWBeRnf3N/7XV6Heg0rTIah86Rkew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0Pu6He
 LGr4uD+zkjxE9sHKczNd6ZBYS3wZrKUtICS4c=; b=G0py85zP/R+q7eeXbXLFSB
 bhA+l/ByNpPYszKXgXcXySnBZPyT2Kwskpp3SmRB7pSojncTvsq1UC0OmeuQp9FD
 pSTT3cTbGi/JGOTIcfs9aSiBUL25THbFN6YPRQttBRnDyy9ObKfpv1Np6RsQths8
 8tASQlcQej015l1nKkOAy2vg4kkefEpVpT+16AGlbWhE6/ql8evXICpO5hZkq+BO
 sP9Sa9u9xjU8BfoZvzigv/aGi5ONAeQqBivKUYSpuCczcxFOtM6bWeONHFPMv7I9
 I+yJ1Smh99giMMu6j1FHjr7U9uO/ag59r2Ca85asSvVH91f61Mm9JRjkI1RpC85A
 ==
X-ME-Sender: <xms:RSx6XtpCEMWc7fF82phOUnsZuBZykBayfx4CRDz2EYX50OZ_DLCSoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:RSx6XutNXb9Z4FNRSsdyrOiTh1S89k_MsnhznGympRzMcSLpw6N_Ew>
 <xmx:RSx6XgYN7IB4g6thHrGs_FirKgMaE4FBNBn_XrStpLWTZqexWnmTZA>
 <xmx:RSx6XlYNpqIiGEZQ-paGpCME8mOoIJMnkEULbhFq8pYI2gatKMTORg>
 <xmx:Rix6XlRlRRebrKt8Emc0WxGu755Edrxb11l-5bQT1t_2ZM2TkKikxQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3B6843065273;
 Tue, 24 Mar 2020 11:50:29 -0400 (EDT)
Date: Tue, 24 Mar 2020 16:50:28 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 0/2] Add A20-OLinuXino-LIME-eMMC
Message-ID: <20200324155028.u3shfffoetuqii4x@gilmour.lan>
References: <20200321075757.15853-1-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20200321075757.15853-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085031_649445_8E8AA6A5 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2208457761982908792=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2208457761982908792==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kqrycw6rh2fpqmts"
Content-Disposition: inline


--kqrycw6rh2fpqmts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Mar 21, 2020 at 09:57:55AM +0200, Stefan Mavrodiev wrote:
> The board is the same as A20-OLinuXino-LIME with added eMMC chip. So the
> dts is almost identical with A20-OLinuXino-LIME2.
>
> This patch series adds a new dts file and appends the bindings
> documentation.

Queued for 5.8, thanks!
Maxime

--kqrycw6rh2fpqmts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnosRAAKCRDj7w1vZxhR
xZN+AP9ijoVWA3V+WNmKTAKulfQEX3zkDy8h3UZ+xROn8wVLUAEA4IARh9UJTMFG
Jyj0Lesrd9XoLwHm+hDZK/4dROMZHws=
=ej6K
-----END PGP SIGNATURE-----

--kqrycw6rh2fpqmts--


--===============2208457761982908792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2208457761982908792==--

