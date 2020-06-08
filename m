Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F701F14B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SBgc9unDVnlz75yxrlA5rttKHJV8Hgq4yQCfHnUHhHE=; b=WhdfwGjTkKeBsyHKUtYU1ZGCu
	98grEV0hhuP0urZBG1bXPoUy0GETjHLAjpHzA9i+EaBNcMfVVG241/ilbahW2wVQ1yBI5+C8yVer0
	yDTtBXt48pozszXDzc8HpSYW225ajicjqPEK0kDFGZu/SI2l6iCt+RfX32I1p2DGesHFGOQ40J3Fr
	QU03w5s+2ILGBaBum4RIzAa8toDloMjL9DFui/GA6duihGBh2rMRlfg94kLXcpgK+PIeDrsuUSJJD
	R0K6PYF9Ocdk6TIyYJPRsNakj+f0XoSZ0XNwnPvWtCSLqh+2jW8Z+mC1fQ6uh7eqbh3ykqytioVt0
	JRY23oXYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDSu-0007v5-2T; Mon, 08 Jun 2020 08:49:08 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDSm-0007uR-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:49:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8EA775801BD;
 Mon,  8 Jun 2020 04:48:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 08 Jun 2020 04:48:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=4FMomzrb+aJZDFGl8dGHKf4ywMF
 8dMOAIdEXlOUOlnI=; b=GPR776wq4VXMto29QBqY8K7LvwFTjEdpHmW1JOsDVGD
 gkD9A7qo+z3Hd/couWLz31qb4n3oDm5FYePywCTSBv3BLNH/1X1qVRCETdaYADfY
 t3F2n9as5bFcNCZyPbzTT0WpC4NlQAZoCbd0R8gFbL8P6T50gb641S0BmSxLKc+t
 0zivNRXbhWr0wn/q7e9x9ki1CPBmd1z1JbA6DGf466Au5PgLO9LLS9CWZM0arKZh
 J9VBAOjo/m4U5XHC42wClSPA8uDT9P0fHYKKPP65WAklXlyAYl2nJjspChSE6KYP
 hifzX1aiLxnuEAi0ZtMlliAe+2w4P6bVlM5IGaPPNtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4FMomz
 rb+aJZDFGl8dGHKf4ywMF8dMOAIdEXlOUOlnI=; b=lj/XUGfTAUOCm977pgwYH0
 xfG6uTnRUzuqeh65y8EIbK5xezBHIWseW8ShIaK2hWDDnqVH+gDIn9l930swN1sV
 LbNOhn4L9Bt62vcSRIIBVibnAIUZTxSPglk13d463S/vCvlkocy8qx5uGUfpmNoj
 bLefV/j3RKGBqGhwF0pGxy1C0U/MnKa16OsyktS086XorL3v40P4T64Rcsyu54GM
 eXIJFKIQXiGwBVNWAtrVjCc187+tUyxKxtneBgnyaCUryEq8MqIkm3NNOF8vYuAv
 Y7LpzD17NeBDbhOzv4vFVqk0c2MITcA/yVOPtz8lXCu7P6/AwKBoSZoZQTMFXgsA
 ==
X-ME-Sender: <xms:dvvdXlzcjUaty5XFlbv7a-fwdJgaTDu2SF_JNxfODIT4Ma7kSh8DMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehuddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:dvvdXlSXJ7MsosMgX7FtSf8MH86xQ5yu4SATcWsxGQdrc3RqOJRPRQ>
 <xmx:dvvdXvU-oSo0DJUv8RRWSXf9leXYketCqK91ct2jRKKpykEsV80wTw>
 <xmx:dvvdXnhY98mumj4sW95_31sOylPxqIXBp5hdqLa_xIuzSNVwJP4ZyQ>
 <xmx:d_vdXjuH82koZ2l_6k9-pye71IBKReGAPIRGLfkEolUOkQXV8VIttg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A8B7328005A;
 Mon,  8 Jun 2020 04:48:54 -0400 (EDT)
Date: Mon, 8 Jun 2020 10:48:53 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v2 1/9] irqchip/sun6i-r: Use a stacked irqchip driver
Message-ID: <20200608084853.wr6eca5nt772p5h7@gilmour.lan>
References: <20200525041302.51213-1-samuel@sholland.org>
 <20200525041302.51213-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200525041302.51213-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_014900_666306_CA05A287 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, linux-sunxi@googlegroups.com,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0731134726157099507=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0731134726157099507==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7vhq7oykrmn4c3qk"
Content-Disposition: inline


--7vhq7oykrmn4c3qk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2020 at 11:12:54PM -0500, Samuel Holland wrote:
> The R_INTC in the A31 and newer sun8i/sun50i SoCs is more similar to the
> original sun4i interrupt controller than the sun7i/sun9i NMI controller.
> It is used for two distinct purposes:
>  1) To control the trigger, latch, and mask for the NMI input pin
>  2) To provide the interrupt input for the ARISC coprocessor
>=20
> As this interrupt controller is not documented, information about it
> comes from vendor-provided ARISC firmware and from experimentation.
>=20
> Like the original sun4i interrupt controller, it has:
>  - A VECTOR_REG at 0x00 (configurable via the BASE_ADDR_REG at 0x04)
>  - A NMI_CTRL_REG, PENDING_REG, and ENABLE_REG as used by both the
>    sun4i and sunxi-nmi drivers
>  - A MASK_REG at 0x50
>  - A RESP_REG at 0x60
>=20
> Differences from the sun4i interrupt controller appear to be:
>  - It is only known to have one register of each kind (max 32 inputs)
>  - There is no FIQ-related logic
>  - There is no interrupt priority logic
>=20
> In order to fulfill its two purposes, this hardware block combines two
> types of IRQs. First, the NMI pin is routed to the "IRQ 0" input on this
> chip, with a trigger type controlled by the NMI_CTRL_REG. The "IRQ 0
> pending" output from this chip, if enabled, is then routed to a SPI IRQ
> input on the GIC, as IRQ_TYPE_LEVEL_HIGH. In other words, bit 0 of
> ENABLE_REG *does* affect the NMI IRQ seen at the GIC.
>=20
> The NMI is then followed by a contiguous block of (at least) 15 IRQ
> inputs that are connected in parallel to both R_INTC and the GIC. Or
> in other words, the other bits of ENABLE_REG *do not* affect the IRQs
> seen at the GIC.
>=20
> Finally, the global "IRQ pending" output from R_INTC, after being masked
> by MASK_REG and RESP_REG, is connected to the "external interrupt" input
> of the ARISC CPU (an OR1200). This path is not relevant to Linux.
>=20
> Because of the 1:1 correspondence between R_INTC and GIC inputs, this is
> a perfect scenario for using a stacked irqchip driver. We want to hook
> into enabling/disabling IRQs to add more features to the GIC
> (specifically to allow masking the NMI and setting its trigger type),
> but we don't need to actually handle the IRQ in this driver.
>=20
> And since R_INTC is in the always-on power domain, and its output is
> connected directly in to the power management coprocessor, a stacked
> irqchip driver provides a simple way to add wakeup support to this set
> of IRQs. That is a future patch; for now, just the NMI is moved over.
>=20
> This driver keeps the same DT binding as the existing driver. The
> "interrupt" property of the R_INTC node is used to determine 1) the
> offset between GIC and R_INTC hwirq numbers and 2) the type of trigger
> between the R_INTC "IRQ 0 pending" output and the GIC NMI input.
>=20
> This commit mostly reverts commit 173bda53b340 ("irqchip/sunxi-nmi:
> Support sun6i-a31-r-intc compatible").
>=20
> Signed-off-by: Samuel Holland <samuel@sholland.org>

As usual, thanks for that commit log (and the experiments you did to
write it in the first place).

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--7vhq7oykrmn4c3qk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXt37dQAKCRDj7w1vZxhR
xfwXAPizyBvckLGns6wXiV08j4/nfH7oDaFjB/EyJghf0IUHAQDP9WOZklmQUarr
ISv9usKlAe9yKa3Bpw7oyVfgim/LBQ==
=B+g1
-----END PGP SIGNATURE-----

--7vhq7oykrmn4c3qk--


--===============0731134726157099507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0731134726157099507==--

