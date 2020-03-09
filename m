Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE58917E364
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KCN5Dz5yfGN1pLs53WcxSmik8ijV2tjVJXmKSwF4g0o=; b=iiqC3mXs9MWa3a4VKsnGywhEn
	ZCTG7GGZa9SUpetBiBo7Nl5FLZKGkdI44ZbvC21Dwp8nKBDLvOBuoxmvUtKJn9lca/ODOlX0aocM9
	EmYjLqIb4DbVcECeFkg7YHWim//JGpJdkZ/SbY8zZLlFHAA09GWBeN3IfF2JzqVEwnN0IXXQSkAZG
	r/uUYwvYawGx+CSQ4fd8jCGo4s8biCD3pmiWXAP4YB/K6O+9DZCyUSUmbq5RnaiUUycBZ9HsFIfRu
	zqmBNIUjMGcoP16l7mAYrb5VaNkwfYnhcgvA7/eh52eUj/9lFT8up4sB3SPZxg4bo7ZEk9OfnIXAY
	ULiT5VWow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKBd-00026r-Cs; Mon, 09 Mar 2020 15:19:21 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKBV-00026Z-6L
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 15:19:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5C3C9220BD;
 Mon,  9 Mar 2020 11:19:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 09 Mar 2020 11:19:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/JPDb7JZb245BQ0JKZ050bxEsfb
 WQHkBiU4vwt4NoJw=; b=L5c2JhCCO8JJzN92UkJlQp988apYtWXsX/tztvNhJrR
 CHAQCi7ObXXy1M6BR58JMZOf4qP+wGgdDxiTYbDEdZwcI/Zpjneai63YqKDD126K
 CS4Q2xOT7MDipse+GqpOon4bcW9nVRojs69jI6SfjP+wssNM29Cso18S8/N44fgi
 pWBqdK+/s3l3v0yBWbrtbOXkGxw8sMAlx5vsHWaUp4+X6iLgnyVT7GYeu0mxnSvm
 NgpKyf6MBtwPv3eKhpIygCBVCnBhaY9SCEUaQr2fElbKY5rc+LXgkx3Q4dNk1xiD
 6nDM46gSfRrq+NUxPlSXFXOYggH962/dRs7MH8ia2SA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/JPDb7
 JZb245BQ0JKZ050bxEsfbWQHkBiU4vwt4NoJw=; b=MSgwcIOhE/mkeOpm4c4bel
 LDLDuqLcQwGduHHp4XFaV0Cv2mb5jVG3GrkMRdZiRdmW9wba+X1344gxIP4cv8Kl
 jetUfJI7WK4BJucfsg7mjOb7CPhSRRQgog/dxXvyftxYN/HlV07V8+IN4PDXAjsZ
 5j7DYdzDo1EN5cq+4mSk63XMiCopklooadN7KFNGdD3Szgb5by4GTHt2JaBr9jyN
 FJSl5Sal7d8ydMzf/EjP2XeR6qHqgweamkXFNG/tDWTFDnlbDTug6jPuXgZmgfjO
 +Gd4SlGbA/dPzZHqiHQX7HoPiEE89239RxOpptoGnn+3P5WbawRmeKXERIs82vyA
 ==
X-ME-Sender: <xms:bl5mXlXNnGXqAx1aTjZD4juTlwHGcpVCqEQwyRSLToVUuYfOj6IF6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddukedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpehinhhfrhgruggvrggurdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
 gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:bl5mXkEJIASZKCuUPId8-MJ8b2AEkehqodn2I41oagWxX6ko4x_LjA>
 <xmx:bl5mXoNy3OWQ3pmDMwbrKw6Hr3XBs5fmiTQN1d5we4ZA_1tJiJ0rZA>
 <xmx:bl5mXoW_6OnAHq-ijqYQu3d-bzgxMKSRYTjFkcwlZjxBPe4cEgmrPw>
 <xmx:cF5mXvv3eVSsBzst4zFDuUJQ0lq36jWOyfBpEVp7yUEzIA8SDlgJOA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 65C6A3280065;
 Mon,  9 Mar 2020 11:19:10 -0400 (EDT)
Date: Mon, 9 Mar 2020 16:19:09 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/2] arm64: dts: allwinner: h6: orangepi-one-plus:
 ethernet and HDMI
Message-ID: <20200309151909.qkcybvtqhltjx5pf@gilmour.lan>
References: <20200308164840.110747-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200308164840.110747-1-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_081913_377646_89652681 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, wens@csie.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3689466105106002550=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3689466105106002550==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3gs76qg3etkdsmvv"
Content-Disposition: inline


--3gs76qg3etkdsmvv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Mar 08, 2020 at 05:48:38PM +0100, Jernej Skrabec wrote:
> This short series enables ethernet on OrangePi One Plus and HDMI output on
> OrangePi One Plus and OrangePi Lite 2 (shared DTSI).
>
> Note that patch 2 (HDMI) is based on top of:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2020-March/716661.html

Applie,d thanks

Maxime

--3gs76qg3etkdsmvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXmZebQAKCRDj7w1vZxhR
xVcCAP9k/liklt0k0GvaDRpxWuOHqUvfue+5kYy/cdlvN/wBIwEAyIyQ0RG1R3DX
9zu2J6e9HAhBaxRD1aSRE6arYFJ4cwY=
=xynm
-----END PGP SIGNATURE-----

--3gs76qg3etkdsmvv--


--===============3689466105106002550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3689466105106002550==--

