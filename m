Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01EE17E34C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nhN8RUa0LDCiPjBLO2E6HpgMFWPUZ/7iORX6JVBjfGM=; b=uIm6pLEtcRX/Sq4VRp9Q/Pfqw
	jpREoeDdSvOFjDrH93TXCRNLcXp6/hJ9LfYyPtXWRV0jMMxm1y49YUUVnPwlpcixfhDMgGOABq9vs
	zcUKcCvJfuQGqd1p+kL0RbIocb+3Smrisvv/jnUGFOnnENkq+IM7vHrPdQ7sPQjtlUExAYgd6dwe1
	OCvhMYkSRoMl8W3GyX58vcZhZbPfv+hwUWeLrPP1tYonLqm63ZD5rH0UqJeGeUT/VS9Syw03ZgcyW
	Wb7Y2VB9XKa5mZr+szJmhcS0UXCxBY1JkrB5MIqnL+GNN4sfBQBIRc+cXcvKHOsUoad1JH2K1K31q
	v6Uo5QxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKAF-0001YC-3o; Mon, 09 Mar 2020 15:17:55 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKA7-0001XX-7M
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 15:17:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5F4542208C;
 Mon,  9 Mar 2020 11:17:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 09 Mar 2020 11:17:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=eiBGI29FHei08t6XFORVjpCHPMk
 OAUq3d1gYSUqVL4g=; b=ONOY9KjdoN9Ygq7N2Jq3G8mxgcbdbzsZIlf+4N3P1U0
 2y7GuTVXX4ACmPPc7sCqwMBC3vZp/BHRYy1aZep4nnABEQogFWpkezpx6TaVm+ZP
 mDJhJKiq9Mw+iEVsy5ZuyrAmOgkjNPNyEJ7Dxl2II8puze3qi8nrNXTSG6AAeosu
 ylb+ubfc1SGkeWOqGmlNfjRw7W/Uvu5XSFqm+zluHQbhPcci0IBIp+fhG50C9vw5
 gvCtPZbn2HnSeuAStG75YZss7CD/WF+JCbRz3/5CefVbHDYCU7FrEj6QLnb580hB
 DkjSA1h9sZtLnmQ1xKGuNQIXuEX3AxeKONfLHt/ev5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=eiBGI2
 9FHei08t6XFORVjpCHPMkOAUq3d1gYSUqVL4g=; b=FgOc4N0Ncq8b6lSP62JDG+
 qwNdaR9IN1uaHUPOA90xtyj0g0Wy+ScVImJER+RiR6Z+Zen7FQiUQMj+418ZFZ3d
 2dK+6hS3EVDeWFA23PUi17o2R7zgmfwDG33O6Q3e4ohemGyTcPUz35UbTMfdhoJe
 V2k6dWoRyLNlOJ+OxXAjg6HNxqYUmiV56sbsetDPuuMa5Riwm1nu1NHlJv57Nmq8
 Wg/HXXs3yGCL1LJUey+TvecAwyZZKXHP/D3UrdTJmWXvX5nwwnyKSeqNaGhk86Zr
 W65YHQ4gY6XCAWHt4xYN+WYcf8qGgcTsx2xito00hYhPC33U8KL8g8DIAPCfL74Q
 ==
X-ME-Sender: <xms:E15mXpWwSFYLVNYrVqz-nqUEjjKt0NsLgke6lJhfjFNAlgS-0PC4qg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddukedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:E15mXuZDLxqrwOnsqS6WYZ7r46M_ksnCi_m2AvFWy7pObmPvzO1brQ>
 <xmx:E15mXmWsqpPyBORinJgfb_IZaZQ7hS1qMa194RN4fvcprTNPU5FHTg>
 <xmx:E15mXpWVOwYT1Fdg_C8XErH2-TJCTZ2z5eVhWEnxwM9mkwSCqvTnvw>
 <xmx:Fl5mXg5_-4Kv-Ps1ermAG47ZWOAfoLcEFHJlblcB1oYPS6yiE9xuNQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D8A0A3280063;
 Mon,  9 Mar 2020 11:17:38 -0400 (EDT)
Date: Mon, 9 Mar 2020 16:17:37 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/2] rtc: sun6i: Make external 32k oscillator optional
Message-ID: <20200309151737.oklian4uskzsur7x@gilmour.lan>
References: <20200308135849.106333-1-jernej.skrabec@siol.net>
 <20200308135849.106333-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20200308135849.106333-2-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_081747_679556_7DD8A0A3 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============7958234954804502546=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7958234954804502546==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zmt2v6xvi26ix5fd"
Content-Disposition: inline


--zmt2v6xvi26ix5fd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Mar 08, 2020 at 02:58:48PM +0100, Jernej Skrabec wrote:
> Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
> (H6) don't have external 32kHz oscillator. Till H6, it didn't really
> matter if external oscillator was enabled because HW detected error and
> fall back to internal one. H6 has same functionality but it's the first
> SoC which have "auto switch bypass" bit documented and always enabled in
> driver. This prevents RTC to work correctly if external crystal is not
> present on board. There are other side effects - all peripherals which
> depends on this clock also don't work (HDMI CEC for example).
>
> Make clocks property optional. If it is present, select external
> oscillator. If not, stay on internal.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--zmt2v6xvi26ix5fd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXmZd/gAKCRDj7w1vZxhR
xVw9AP0VCEgk97xX+BaDQqoGIYsBqjYiEQlNki/RjBw/7bId5QEA24cqSb8XbO7U
RhEPzJjA8PzDCNUq1swQ2hIvvURD6AI=
=BaHG
-----END PGP SIGNATURE-----

--zmt2v6xvi26ix5fd--


--===============7958234954804502546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7958234954804502546==--

