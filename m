Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A4916BCF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NRPBpei9eWEDPmBnNIkcjCw7ZPK0r58zqhM7UMsJmuQ=; b=MDJqoraTOhlQSyDDib3m8ewVX
	P0zEtdxp1DOG6aDVsBBL0A6dVKz9KoTyK5CTIXKSQTTocOPuoYHDfU+HQda/4LFN39dsLL4/C0H1T
	jwZQ1cV/3szoPpaS4PZlQKAVB0+QpqaCbL9DFJe8z5WIzXV11XZUj9FDHcqGo6sMJMvMiiNkcetdb
	cqKPdjPsdytNfwdecc8eRqiWObXKOY0ScvkbHhRl6biGe0vuTv0hvASGUwQB5TEGlqLMJ+yvZXaWG
	5R5wwONydeE9qvx75M92XyzeJsXX3enzXy/s4+s+UmbltQM9NfmEexC6CmFbbHyH0dOKBbWwzSr0N
	v9/kuYORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W9a-0000eX-VD; Tue, 25 Feb 2020 09:05:22 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W9P-0000dc-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:05:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CEA3722085;
 Tue, 25 Feb 2020 04:05:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 04:05:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=hKt9OOfB9XeD3ZLSEgsAq6xaJ/6
 rxoPVZNvP3Ww5CRw=; b=aF6UJQFgDWDX+W6sZ6uarr50+bF/ndtyBmSx9iedziC
 QMoILY2bSbT+Pyatw/rSDIE9wGNOhjNSp6OMcDIqRKSbfpuA9fdhpJOrIot/fHvl
 d7R8b4yFQsu6DIK/SdQVZ+vc710I7aZ9GRqm3sIL4+u4rtVdRYnaaVLWqh50Qzft
 VxRIHd4TYkAnaiybjvRKCBcU//kcMWfCWlhU0lc/CLzhN4ofa+G9bD6BQYZ17cs/
 Ck04yDs/1QhySXrwNdSTin6ao8SVJrH0Bzfl7CGbfgHFjGelcs3yTA6As+1g0wA3
 bqn5+fUdsgDGpbwGdgK8r9OdVFs4KrB8PvHfIC/g+xA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hKt9OO
 fB9XeD3ZLSEgsAq6xaJ/6rxoPVZNvP3Ww5CRw=; b=OQfE9EZS6U5GwpmMsz2WTQ
 HBZ+eikiYPUFE0eJiEERN/Tux0JUueQw0YlqKxtGVsgRzbNlPN9Swo68DVtdojAh
 HLX1Q1YenlnHHaP4b+7IOR5C6GbKTkJNuQjOaMvI63vkT/O0SWLq78oQvD4rNWOK
 LyG07ViY3+Ya7S/aywwDDcPQdN0FYwRcLN7obt9ORk1qLyQtu8b9yx/ynbd0ZDGv
 T1oRgl0MiLD3Nb0OOmylJQ18txU3hwVcyP/D3F0LMZKlBls1qLA7cbkGL32mUJK0
 qR6CXWIoP8sqcw3IpOXI0TauIeJXRETCgLfze0fS1RyPH9oEFHiUKW5by+XUnFjw
 ==
X-ME-Sender: <xms:Q-NUXhdSGO21088RZoqhnwU-N9Z2TZhsRXqtw8gl1QaKUpR-l8P7Kg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledugdduvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Q-NUXjeTdA0LaTk9oFS3bfmdqTPNIZI6_h763JfXq3VkckM7WeMVFw>
 <xmx:Q-NUXlgFRaFwZf9-FscMZvjqZAtCQNqeuHpo6xzEfNZl8-k1t6Y9dg>
 <xmx:Q-NUXvRfT_njXx0BBTIHubCLo8Yxw_TGcbjiI_eVw5Gc6TtURtrwQg>
 <xmx:Q-NUXpvbwx2KCPU45bA4GJylYdbpbnMCtciTsU6k9hu3iaqB39F-RQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5F6BE3280065;
 Tue, 25 Feb 2020 04:05:07 -0500 (EST)
Date: Tue, 25 Feb 2020 10:05:06 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
Message-ID: <20200225090506.4fnylq56bscuhtf3@gilmour.lan>
References: <20200224165417.334617-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200224165417.334617-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010511_931367_7495CC16 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6603314544935771702=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6603314544935771702==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vwpjjsjg2oauasuz"
Content-Disposition: inline


--vwpjjsjg2oauasuz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 05:54:17PM +0100, Ondrej Jirman wrote:
> This enables passive cooling by down-regulating CPU voltage
> and frequency.
>
> For the trip points, I used values from the BSP code directly.
>
> The critical trip point value is 30=B0C above the maximum recommended
> ambient temperature (70=B0C) for the SoC from the datasheet, so there's
> some headroom even at such a high ambient temperature.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks!
Maxime

--vwpjjsjg2oauasuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlTjQgAKCRDj7w1vZxhR
xYalAP9vnW4VdHS9SOdq6rECbAh1zFYhmhM1JDb6JlXtDGMdNwEAvKgrrmVt/jfK
sa2LzjhCPTU65QA8na0nLnyQC3clbwM=
=gevU
-----END PGP SIGNATURE-----

--vwpjjsjg2oauasuz--


--===============6603314544935771702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6603314544935771702==--

