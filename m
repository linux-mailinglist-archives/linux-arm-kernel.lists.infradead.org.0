Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F8516A337
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XMPujuVrKVf4EgsFoTA6MCzkxKfDSQvv8Hc7EOQ/alo=; b=dPMduG/LH0Cxe/eZ15F+YF79G
	NRzPL0+6NdD0adFfu+tQMZ4iz6yM5y4bjG1oaR+rmxaw0fgnB/5Hgif6lTSlbxAhA6x9W1Fr5Gx8j
	hukMri4WliV7ulUVCgxf7T7dq5pVmEUmiYDkZ5iRwpBqn43SIJOAyoVE30LDsS+J8J1gVCsoTh55/
	hYPOTMiCvpxusXcfP/3u+zbyWVTcq3QRDxAwfb3TMyBIJhwIufLRC9/LOIdCYsZ1HNI+vau7X3+yw
	QlbCfGLABJif0bn3geobm6TzRjnkhQy4qxYgU1KFhIzULXxyV4rSCGXGytoJjF6sd8s7H6Z89zFHz
	2UfWeg7Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ASJ-000179-7c; Mon, 24 Feb 2020 09:55:15 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6A6R-00018a-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 09:32:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BEA8D20B51;
 Mon, 24 Feb 2020 04:32:38 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:32:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=SmI05YfllgEMaDGebG7yKu+Qbjz
 kPlrBEKDifZ9AT5U=; b=WWOqYQDaH8h49mUNSnqF4QsbjkvmJTMOFxqCjBvYI1S
 8g8kyo1JMmxO+r4aX2c/9CgtT3CTV0c4jAm6M3QiQQRAudfnfc8Ocyf7V3hCHDvb
 +tCrDU5pxSJsuoFw2uaPYFbb9Ax3z3Ap8swNSFyZCCP9fpj2ajygohh6pSfZ4OFK
 TqNE9mnTxjdR4dj+dRa1QA+6LfSimBblFVbuFjDlFrH+LaelgBmjSwX2bFMDjZEk
 sjXtesCZXUqbyvjriM2MMLyHi2eWB9+ogZeeaCqslwScj2elqrkPPd7b6lVzecEy
 8NMPoScYGkTo7qlVW3URVxDnFh4tk6xT56GRNcpJkVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SmI05Y
 fllgEMaDGebG7yKu+QbjzkPlrBEKDifZ9AT5U=; b=Hh0uNwDyojH9X9eU0N1JxH
 bFgKcpkwxC3DrLOPoPQrQqYSWatF27WPH9BKDnC+S4gNbKjdmiGlRXIxwRcFhKpt
 fThBFLxmqkyk8C97NCGQ2oPQJO0iUkELNerQbv7SVjl0w8lJSwTvr1ahjVuIrq9A
 TB7p8Ye+pDi/wkexY8aH/mKyWYioKQkCoJtbKE8/mVySbVZY7859BXHww2Beh5v0
 M0//GD4TcPsE3J8PLszeb9OPWLFeGJX4ELCeJgEnaTZgNs50LN9mmUC9I1bvOTs5
 Y6BEPU+OlrrqQ4YnRMNa+YX6Ffeazr0LtZ/X3MWh1Mk958LltVtZpeI18O6Z4m3w
 ==
X-ME-Sender: <xms:NZhTXu3feOUHnxI6g5TRmQnFx5ov_Ol7tkPfmKoQSACpNTiqO-wzPw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddthecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:NZhTXn_Bg6y2yQfRTOwOjxBwzLPrEnIw3S1NtDxpcWjbwzu8lk5-tQ>
 <xmx:NZhTXj3-lmGiZHCsCU-snpOGhVFNytNdzqIQHbZsOl3ab1IW_BJB5g>
 <xmx:NZhTXs8XxOlhrTQ4rkwBQydE2tczzM5MnXviVfQu4eqS8OHYxJuMIw>
 <xmx:NphTXhNLSY6qOWm83RgG_0rWEgmnx_kO13MJXHxq7dKmK0PiFWI8JQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 283DB3280060;
 Mon, 24 Feb 2020 04:32:37 -0500 (EST)
Date: Mon, 24 Feb 2020 10:32:35 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 0/4] Assortment of fixes for TBS A711 Tablet
Message-ID: <20200224093235.7hqazfxzadzqwlng@gilmour.lan>
References: <20200222223154.221632-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200222223154.221632-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_013240_141656_BF3BFBCB 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3532946238192691725=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3532946238192691725==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ugm5lafujjcs4zuh"
Content-Disposition: inline


--ugm5lafujjcs4zuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 22, 2020 at 11:31:50PM +0100, Ondrej Jirman wrote:
> This series fixes some issues with camera overvolting, USB-OTG/charging,
> and WiFi OOB interrupt being stuck.
>
> Please take a look.

Applied 2,3 and 4

Maxime

--ugm5lafujjcs4zuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOYMwAKCRDj7w1vZxhR
xXS1AP0ZLJkOP74wrxp4yvAMDXitjkezQh6SiGvTEOgZkrMpbQEA4NTdiVYQUVPW
dGuZKk/63QYvyf81LF2BFCmuenIV2wk=
=C6+q
-----END PGP SIGNATURE-----

--ugm5lafujjcs4zuh--


--===============3532946238192691725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3532946238192691725==--

