Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76C216A317
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kcrkBIsvoyQoYXB9LJ+BIPO8DIninzjpYRt0EnCI+a8=; b=P7jhuRV4JQuPTuKSkCOLYWr6f
	iqDIFD4b4TnwOHpb/fPEQeTMpILncj495GuZKyOK3lPe065gFOOpP4TV1p3PuzQGpjqGwFDRTAmHQ
	Zj42QY3YVCInE5/b1wgMkTYkPA++n3qn8YVcVHWEVQWpm+2WJKilD7EB6/OPR3Cm0iESuiLwhHZLd
	InS73C3Ge/STXTl2e0pGarkfeBhU7T9rw10OJUBWhhyZqp8Ky69coefSuXX5jpUR4zTv3Nrp6kqBG
	S+r17LdFSLVy8a5H1ZvUYJ3f7rGzlcRak0iz4XxkOlruxjb4npRL80j5bcLwWsYjT6CDDM82q/apL
	OaqEPSJpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6APY-0007Ar-PD; Mon, 24 Feb 2020 09:52:24 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69sn-0001Z9-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:18:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 62780720A;
 Mon, 24 Feb 2020 04:18:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:18:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=WcklOXNjPClAWS2mGAy2bDELI+j
 RDMgRpeGqxJlTeg8=; b=eaWvk5mb6QU+i8e/eaEcqtKocqP3AeUpmGfwwNUW3tc
 mR7TYWALtVHbhxtqGDMEv1ABl26TxD6g5vjeV8QcBeDOoHWUmmr2Fu9hW+K8asPK
 5gOQ7sbowIcRaHS1ThIg6cnKgSmjy1axMbbUCyWRUMNl7zI2zKPuTa2cmzhE1D5n
 FWN1/STx4T61q6X/dPro7YJtnBK25Ah7py17KwR271g6yuxxNECNn1s7UEMIpQER
 QuSedDIe3DlQB2jymVm+xVGiawZskye1TIF4AvhKlpFMvJazwx0+5AE0/Ya7zgNS
 j5RjMh9bxz4704l1csVfdfcIurSFq5kdWlIXLEhSFpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WcklOX
 NjPClAWS2mGAy2bDELI+jRDMgRpeGqxJlTeg8=; b=j6r+6HoyWpw5af0kl1O8iR
 0OdbS8ReAsYUr4bfIv9GMoVeORg0ooWFc7aTpdZSaijWkjIWLvkAKaxal69d2Q0/
 6GgPo4d4uc3fqRhn3eZtIR63iN3RwsEkqrAyO7vkwpDME6lcfGizPWlX1GIaMbAy
 kQldYdLL725qsWT7gAeSO/xqSEkw1rZKfL8H4XvCwi9h684LiWf8OgoNvWpyNjtp
 2GiR5CSLUrJL+5IvudEh6Vpud/XSqfEDEvcV1T3fa5MN4z4JGQHZ4AIrehvgmHKe
 jzuvjcosS5VKyXLicYM94Wge1iJtyPKGuPyhe4vKoIc5DJF+qnV7wVDyItBp2cJA
 ==
X-ME-Sender: <xms:55RTXlgJSAMnAi4nfC_g3ZHo5yduA_B_loNE2D65PhrDqzsOtmRVmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:55RTXqMAej9EX-4TEbyLaHUvG96ysRAhsOAtLByCCcEzazcoMvBrTg>
 <xmx:55RTXm4Ao7ueAF4H9VB_nlgek5Ag05BHO5h9JXssgKE-ARp94vm5yw>
 <xmx:55RTXo2A-Aku7FfstmsrzCfCb6eXgBCAqsZn_qABY6WuAxUSRrSlVQ>
 <xmx:6JRTXkZRYJvgSjUxVtTCQGIMjpQetw3Gjshc6DpgrFHgisw04ZXiUA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5FC4C3280060;
 Mon, 24 Feb 2020 04:18:31 -0500 (EST)
Date: Mon, 24 Feb 2020 10:18:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2 RESEND] phy: allwinner: Fix GENMASK misuse
Message-ID: <20200224091830.xeqhwvufsi4cfivg@gilmour.lan>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191110124355.1569-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011833_784728_88FBBA8A 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: multipart/mixed; boundary="===============7612525618750370228=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7612525618750370228==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6ovbwz4bzccxezb"
Content-Disposition: inline


--d6ovbwz4bzccxezb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 23, 2020 at 12:41:25AM +0100, Ondrej Jirman wrote:
> From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
>
> Arguments are supposed to be ordered high then low.
>
> Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> Tested-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--d6ovbwz4bzccxezb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOU5gAKCRDj7w1vZxhR
xcmHAP9WF4Cp+G0e2P+pmkCa0xtayHzdCe3GlicUCpj28PTdQwD+KjqjrzgPEikG
ZnoIi4WBDjj/oBnu7fIyfpFBknOlqwQ=
=8mGu
-----END PGP SIGNATURE-----

--d6ovbwz4bzccxezb--


--===============7612525618750370228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7612525618750370228==--

