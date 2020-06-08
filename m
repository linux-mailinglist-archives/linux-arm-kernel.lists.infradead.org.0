Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3A81F14B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l1DkaBqRgKstK4sEejlysHy78bJyMDAdjIYDDMn6QDA=; b=W+pS39HzCuklthIgIfF4kNJGE
	SPGPeOU6BJo5mboTKPRtNZ8B59wK/dhuPrgoOsW6iS9QRpVYk/9Q2TdyHWi9ugicPAjPDasUyQ98F
	qSV7bOtsHtnE0H7/XYAHUK5U0wqfZRQC0bmUJr/gvyl8r06Qdvqark/ag50gwQejyNBptfQuc8CcP
	zPEZyonXma8EoO5XuuSn+2tXbsJCnMHj24htjGgKf2moITPDETdyQ37vVtcmuT5wi0CQdSKjT/EBa
	CqukYGoFMH3f8tCgvSkm81iNHUG3texnJaWQGSG7O94PcYoUUx2o2kEbM4urrVYmpSWiQMV0ZIHAy
	ptOk5lPPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDTG-0008AH-8z; Mon, 08 Jun 2020 08:49:30 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDT6-00089H-8O
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:49:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9C0AF5801BC;
 Mon,  8 Jun 2020 04:49:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 08 Jun 2020 04:49:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=pHrqLUxD8NCGQWXj/OLcTY5z8hm
 NTSXoKcbo0L/lZZ8=; b=b9HIaOxXI+jBphibKXG4hTwMIHjudTorOID3DwqNsEs
 MNpF8NhGL/cMHmyWkNHYThWeBf1K8euOjvVIerzos7s09Mo+9jEdc6TAtn56KT3B
 dulmycfS3ogInT/OgczDvcfxYTvtyWOB8d2b/fC0fH+3961a8lc5kOm2lbStjpye
 dGxmCdbMsn+NEgI5aG+on0JL5oeD2y9Fn1z7r1fJglNUwXE2ME0VS2H1RMGuTCJe
 qoXYJmimcvLHCZklK8whe+RtK0r5l0oN57kr+9UqxU0EXTJSpzL5VuulVLiS1lzx
 +QGHGMhFWuGTkhHI25dhpARSbenRc4UqaOqftmidxFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=pHrqLU
 xD8NCGQWXj/OLcTY5z8hmNTSXoKcbo0L/lZZ8=; b=kaZSv4s5TiDbYke9NqbaPt
 3yqz2bOyGp5TYpr6X6lO+ykvjlZR9q5/hcrbo2E2kcCRsYbPGt1OtNGmBgiHUtfm
 RD9vsZbYuOue0fJKlJki9FCBB3izUnC1lZHmbh9eYvTIhxeu4SswDmHnizuZzb7k
 EqsA69AyENdB1mPtImruugcUAnH3lFw2Wla+FSKYYPe9vjjNer7PbrVRrI1EUWJX
 pyQe71qk/jPvjX/umkv38j7fo6stDuZd9wcGLOhc1nui0Ckx3hb5d08xwWo7zmi+
 8hJsAhwJlB3gc4zZOXmzJCgJkVdjKbVyThJQiLxwteMFihevfCZ2InXA+UtPfR+Q
 ==
X-ME-Sender: <xms:j_vdXiNTY3652zRm6BaBIFC7mdysxQLUje3fbr8A0YsHM53QOjv6qA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehuddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:j_vdXg_0NVP9T0VBeNu29bRkUE1elIdnGWZAymFaGmVBn9IIPtgrVA>
 <xmx:j_vdXpS8ct4glPYJHw8WWpdUPHRgr7-PoNdwGpcjhU-r-WzmYGZ-uw>
 <xmx:j_vdXiuvmkGe9WpL2kmbWrS7qwrserkow5bVqstyVHRNhDkm9W0y0A>
 <xmx:j_vdXq7wNXooeisN-oPZYnrj_jxQAWd6SCVhYgy53PVDGu85danaww>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 39F2F30618B7;
 Mon,  8 Jun 2020 04:49:19 -0400 (EDT)
Date: Mon, 8 Jun 2020 10:49:17 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v2 2/9] irqchip/sun6i-r: Add wakeup support
Message-ID: <20200608084917.qufcgedya2kr4arv@gilmour.lan>
References: <20200525041302.51213-1-samuel@sholland.org>
 <20200525041302.51213-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200525041302.51213-3-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_014920_432879_6E4BC7F4 
X-CRM114-Status: GOOD (  11.01  )
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
Content-Type: multipart/mixed; boundary="===============5273987803889779544=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5273987803889779544==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hhnnuvojjvpvrory"
Content-Disposition: inline


--hhnnuvojjvpvrory
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2020 at 11:12:55PM -0500, Samuel Holland wrote:
> Maintain a mask of wake-enabled IRQs, and enable them in hardware
> during the syscore phase of suspend. The restore the original mask
> of enabled IRQs (just the NMI) during resume.
>=20
> This serves two purposes. First, it lets power management firmware
> running on the ARISC coprocessor know which wakeup sources Linux wants
> to have enabled. That way, it can avoid turning them off when it shuts
> down the remainder of the clock tree. Second, it preconfigures the
> coprocessor's interrupt controller, so the firmware's wakeup logic
> is as simple as waiting for an interrupt to arrive.
>=20
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--hhnnuvojjvpvrory
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXt37jQAKCRDj7w1vZxhR
xX1OAQC5mX5yhmjwOKp3HJXrXFGEXTeo1cjUm439PInsQbX4+AD/ZHAcr+zLEmOn
8IjIXz6vKJL/ItkgD1SrjpSKMvdH9wg=
=VPNa
-----END PGP SIGNATURE-----

--hhnnuvojjvpvrory--


--===============5273987803889779544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5273987803889779544==--

