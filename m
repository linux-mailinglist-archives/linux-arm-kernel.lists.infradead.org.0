Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560A515AF5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ehTPSBT1fuNR8gQKBhKxZWPlNK6Ydh1HGNYSonENOlk=; b=OzOb4a7so3rOTc2h2V710lGG4
	Ckh0xOzbUlGZmKKC34Vzo0qkA0jxghddSCQPqrXHU7diEgkCA2K8e5J8OfLeRz7Xkcffcmz52kMLh
	f0AJg0CwWewCqlhUT/R4J1O470QWRA8ABmqvlc6SGrg4kczO16eufga8eqrRAOGmsrVV2GzCOtKSh
	UokYfBng3mdkdeGYSiP0PjSo7lUR8ebpHfsBj/lpR8T0TKhYX+fu7WP0vQEZW8XYrwgqFsmgvSbZn
	SEbotyRrk8GEqZ+//HiunSwGHYEbSzhC3bHts4vaFbuzPRtdYorDTbBiIG5CX2sjmMpU9bWquJ3m9
	QFwmdvPAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wKe-0007UL-9F; Wed, 12 Feb 2020 18:01:52 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wKT-0007Tp-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:01:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CF6F3889;
 Wed, 12 Feb 2020 13:01:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 12 Feb 2020 13:01:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=X0tUEgWYpJskWtZqIPoTJqiI8dE
 WemwbHtY1RuLYLac=; b=S3codB0SjgfiIeerPWZhWCajm4HsdDALTl7fEkpMSD+
 eTtCk0tBX/aaMgE6NiI3ZYCRSB8L3Qpm/oQtC9uKtxa/mygebsxXLRPI1S+GGoPk
 FKzM0uZvzjV7GY55Oxr8iwsh8lBqYIv4tEMwI1Z//tIKc4slQQkVLUyN0KqEi40j
 kN0/fI1SiCubXxhmSJejIlyF3K7PrqK1hQPmZnDhAXfCUoYlZKhDuey2fslIRxvn
 HgLGbSKqU9ld0/FSZ0sd2rfe1rKzXZtdV/aF2XofZD03eJa91QFiklt33nRSE/6T
 tVbQU6++FLZd5aVosEqGp/p7LeKdfd+Bgngek1fzVIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=X0tUEg
 WYpJskWtZqIPoTJqiI8dEWemwbHtY1RuLYLac=; b=DKi/2qYkOb4RXiyBa0ZtqP
 VlIpTADIqROLl600En03rfr0/3XG4PGk4RKjV7trRkGwQRHMVHGXRlgey410zib5
 PkRS5LeVrZhTkR7q5Z+IwweUWaPX1gRo+ku34IrAH8B6ntRincJXTESm9MnXepgM
 6YEBsVFpjzl5dke+cG6ibcdE5BLdCPDetH0wa6yATxC2bxGdkSceKg9ETL7f6Edx
 WwYsEeO5mwXQlpIn0ssYXsnH8MQQ1lcEXhdOntxmtY9FYbaW666/5qqrOmKo3r3O
 QzszbqksMGs1QlHkfge77LSak8ymVnm20m3X+5rO4+uTKLB/2uau54io9uFiwWDA
 ==
X-ME-Sender: <xms:fD1EXgncqtNlKrmcXmTRI4OPNk4OtsF-8B_knl0x1Q75ufg5Kg2aqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieehgdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:fD1EXnJb43z0HlyQTC8HtyJzy3SBxOBRT9xyaOew91gFXah7c4q6DA>
 <xmx:fD1EXhTL0-N2gPgABFG_wBbwHEPvr5_KKzXY6VoC_zerTiwDxGtD1g>
 <xmx:fD1EXmqUM0DYEA2_Wcm2XI_tATG7lXCXnIdH6jxtjxwkUqxgD_-tAA>
 <xmx:fT1EXlPb8FRYWG31si6SJypIn8ezCY230mMzItnY3AVP3zHI1Uu6AA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 462ED3280059;
 Wed, 12 Feb 2020 13:01:32 -0500 (EST)
Date: Wed, 12 Feb 2020 19:01:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/7] clk: sunxi-ng: sun8i-de2: Multiple fixes
Message-ID: <20200212180130.kqxcafhbhw76gbmu@gilmour.lan>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_100142_045912_12FD9EF0 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 wens@csie.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 icenowy@aosc.io
Content-Type: multipart/mixed; boundary="===============0709251034771287244=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0709251034771287244==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="svjny34pbuqgftj2"
Content-Disposition: inline


--svjny34pbuqgftj2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 11, 2020 at 07:59:29PM +0100, Jernej Skrabec wrote:
> In current sun8i-de2 clock driver, rotation core related clocks and
> reset weren't considered properly. All SoC which have that core don't
> have those definitions. Even worse, the only SoC which have rotation
> core related definitions doesn't have that core at all.
>
> This series fixes this mess.

Applied all of them, thanks!
Maxime

--svjny34pbuqgftj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkQ9egAKCRDj7w1vZxhR
xRlkAP9fPgQUlJwexenVqLaVnutT9EYmHdW/yd43xbmwPlJpgAD/fyvsNedPpviW
OWmV/BPxV3fmlN3vlGhTn9TsLWNrjAc=
=PIcB
-----END PGP SIGNATURE-----

--svjny34pbuqgftj2--


--===============0709251034771287244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0709251034771287244==--

