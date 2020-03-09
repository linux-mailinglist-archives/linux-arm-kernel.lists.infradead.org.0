Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7296F17E35E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/wAUlJXgyvxzHBg6xlBUlcmpgu8L7gj1mcmhs33Y3M=; b=rV59npkzSSxN2u0s1AWIeCj8f
	hfmeB9E52AnZOmAzXKsz6cjXjxFSo0Ef0jhNbKRLTOiN+v8Ikp/iNkFP4ryAWI6+/7JEGHvd05ISc
	y+eCjDGbk/7XuUDirSsaWbWhgsRZFDgcPIqmlIsy70MbbrME0LqUg4Sytyj+isvLbZBLIlV10k2ZI
	id1lIJiWrNByLDYSjaTtDqKibcV4+RQ1iX4GlZV4aj1GNdCNQucjco3Ty1wl5QpsutCIGvayFPbCd
	cHcnPv8EjRNQaG9Rm2oUEm/SZf2VgdgRr/PMzRiBy7RVcE9UH8iTAH95egAx2XKCJm994cOpz3dOz
	H/EFT08Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKAe-0001nZ-OE; Mon, 09 Mar 2020 15:18:20 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKAT-0001mZ-JO
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 15:18:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id BB9E322050;
 Mon,  9 Mar 2020 11:18:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 09 Mar 2020 11:18:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=FzkSUNOJXK4eu8BOSDV7DOU/ZSv
 0p8/ceeRaBi0OHNk=; b=mZjuohJ0nrVUq8Ue73mun2mtyARxgeJ/pndzyv8JVoq
 LLGkv8gIoDpQWf9UIDMKntzoe4ZexFB43zTNvXtGLioHPhijF3FPUtaDAmnnf3UX
 WAVwsMaH2V5m24509WN/OKYNSfSKDKu8GVzG2drbWNUpc04mnzOaSq2lj2J7XMge
 8Y/UaH0ccDs6oC+xFPI2n491EXkRpEshZUij3YU/X12ZWlLFP2F3MWoM/IG2vcIG
 b2qPqafr1n25DTUD6H8sYwqBpwFhR+CqDhOQubwHgY6oWOBtJuCcGMgeKlTGLcIo
 p2iBrjXVZr6ZAOJP2xm35t3EyApvzDvhWoKkqfj2hqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=FzkSUN
 OJXK4eu8BOSDV7DOU/ZSv0p8/ceeRaBi0OHNk=; b=A/PofnUFdfVssU2mni2W9H
 7mnoSAT49qAooyCQVmUz+Cl42YTZU1JZERaZCdIqodYkLsdMS8IoLAAlFvZSASyj
 9bDTSlonWFG2Q56WfNxysMbi1aR21Iza2m69qbsvi91RtIOLZxdP/RFmj3w9Hbr7
 ApPni+iJY5xds7FKSWErx5YyVPRkEor+HpXgBXWTfSUF5Bx1trrFJQZFuIK1Q5YV
 eSpGIpRUGXssK4crjdQHu2szfcVnKoo5ewBwh2Jtteilq4VV73ZEoD+/El77ZAtE
 Qcv1DwI2BBw7keImgiSz4BIdiXPzy5iVoz2izn0oaERaozRlSZS0UJ2/6F5pq7+A
 ==
X-ME-Sender: <xms:MF5mXr180yGr00Kr_31--sZ11gGHmIwUmROBtRXaV9Yr-SRyuqnDQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddukedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:MF5mXkWdGVq1UT1bBxS1jkvlAh__HZ4myBbz4np9x0C676ie2lrZYA>
 <xmx:MF5mXhWQ-M6iLmYQXobJM0O8J3Z-dlhsr5XUXP-8mX_YV3qTAMUSdA>
 <xmx:MF5mXnFWQ8WVdg27LQrhLc17QJJ6oNnFrU-OnznAdkQTZvqaFeKOCA>
 <xmx:MF5mXgUrUSNa6IpyrNAGFYeYHfV5k2i-0hwIypr3y7mqm3vIdqKdvQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EFFB4328005D;
 Mon,  9 Mar 2020 11:18:07 -0400 (EDT)
Date: Mon, 9 Mar 2020 16:18:06 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 2/2] arm64: dts: allwinner: h6: Move ext. oscillator
 to board DTs
Message-ID: <20200309151806.7sxgis4akb6zdmuv@gilmour.lan>
References: <20200308135849.106333-1-jernej.skrabec@siol.net>
 <20200308135849.106333-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200308135849.106333-3-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_081809_799204_E24561D0 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2777717016570384617=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2777717016570384617==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="elcgw7ieqvmk4fns"
Content-Disposition: inline


--elcgw7ieqvmk4fns
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Mar 08, 2020 at 02:58:49PM +0100, Jernej Skrabec wrote:
> It turns out that not all H6 boards have external 32kHz oscillator.
> Currently the only one known such H6 board is Tanix TX6.
>
> Move external oscillator node from common H6 dtsi to board specific dts
> files where present.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Applied, thanks

Maxime

--elcgw7ieqvmk4fns
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXmZeLgAKCRDj7w1vZxhR
xellAP97yFvv1suUpEeMYtlmRBIx/T+Noww6myEv6ikcflh4ZwD9E0I1jVOnDbbP
S3hbh1vdMREygEhT05r0c3C4QcQ26A0=
=+m/H
-----END PGP SIGNATURE-----

--elcgw7ieqvmk4fns--


--===============2777717016570384617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2777717016570384617==--

