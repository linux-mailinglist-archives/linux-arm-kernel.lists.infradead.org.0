Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7EF16A402
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gNTGvBZMol8ZGlwGZSnbg5W1c1FENW+Cmyz4Rz6pTqQ=; b=BhdZC703F+3fOjgdwtwu5h/k9
	3jO54k8KU9p4asWTZj3seODFbqyMSpHHWM6Zs244wx8lJl/yhxgPEZrYvbPPHXYY+AHTVOhWQ2P7e
	gBk4B0MXHbKo3h3o86WprCUImFWn1bE2d1T3igqT5zNcVVboE39WfUywVwwLkdemEb3UXLwxcaP3p
	su18aakEmZjBjqQyTaUzQ/Wl0Te3gHUQw89HRN2VVsF0d+xZT03Q/9Sm0swctLdhWCfLEvAoHLC6Y
	Se9VQaTiRVxu8zC76aCjviJOI4WSu5zY3NeuwPm9ehTUIeMHD5PZRDQhS9Eq4ld8pxFk3Tx9tBSfK
	B7i08+G6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6B6a-0008Ai-Dp; Mon, 24 Feb 2020 10:36:52 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6B6N-00084d-7j
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:36:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1E1A07445;
 Mon, 24 Feb 2020 05:36:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 05:36:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=98AnBcjT/7SHHMY59lwxXE1iEWB
 ci2hepKPUud3s7Ws=; b=gpbr66qMYvCLa/hrTLoLlWpQuhyFBOw5y91GB87bIRB
 ps5Kk9oXhlcpFVYtHWAeKO9e2Q1LoEqzqmQxfmTn09a3GVv5UEd2wiTPTa4pPrmR
 j+Ufpdb+aryj7xapQhv+w1np++en51FDaIeZqTzu2Vc+V5zpsC825EicUhkXN6th
 bx5Z/r2ARMvp4TuCZ58TBbgeFDZhg/hnJ/g5F25X5igJEZXBLTMPzCpZe6Hnjj+r
 Pa7dgGLrF6+0J7plr4z2Z8Nhn/+9+d5Ch5gtoaVNKwkfZr4eQIbSRnXGUmLbaW3L
 OjrRcjE5JiVfzvNDb55as/y64AJHpmoqBq9WQ6wgW2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=98AnBc
 jT/7SHHMY59lwxXE1iEWBci2hepKPUud3s7Ws=; b=ddOeckvY53iYw8cUHLURIt
 AmDwl1cxzcAVvtD/wi+FGGnyyz2CEc/Z4t3FKvwHITkv4qs+ho76EHEbTtV0Q5MK
 RxGJH6I8s9DdCDAVx9FSss0l/MfHTYPh57HO2Ap1jA/uTaTReSaJt7Mgbje3YqSN
 ZLz1nmP89dLUSgxOcCSfe0dUNjIo0T2XzU9PmOR/6S81X6cCnoi3g9s+VCXbGbsH
 8q/faAaq+RhTy6dRZA4Pm7xgZTHQkWsVrK+S/Ed8EGTjAGiUPtZaFIeO1eRLTwNM
 O/QroJ/oe1z9kvEFIgUsvLX8Z4Gl1VCWNQro2TJpoRt2QPRYnSblfGKRVPiQZDBw
 ==
X-ME-Sender: <xms:MKdTXvsFRLXmY0aXtwV7TYSTzGWMkpwleawOtphwNnsYpdynykKKGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddukecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:MKdTXrITZ1dfZ4RwR5rMHGl7R7BlkDYZ99H5LEMjBhqwPd70dxw3aw>
 <xmx:MKdTXrcYLwQXP4w0azweTXDeaBrTPU_5CwWmadIpS2Gv789Ar9rJnA>
 <xmx:MKdTXlWS60wzfuiDpzEXXNLCjcz9kpFjGr6D2BVOK9NrkP0NSlPjrQ>
 <xmx:MqdTXv7oylQfOnEuPSKw9lrk_UIU5cD0u1jq47Qe2bi2NaYHfaHfcQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 34AE83280062;
 Mon, 24 Feb 2020 05:36:32 -0500 (EST)
Date: Mon, 24 Feb 2020 11:36:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v7 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
Message-ID: <20200224103630.iqvs2qhsve6mgfjz@gilmour.lan>
References: <20200223040853.2658-1-samuel@sholland.org>
 <20200223040853.2658-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200223040853.2658-3-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_023639_610354_34B114BE 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5688458065120243904=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5688458065120243904==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4fdqcj27v6pfsjny"
Content-Disposition: inline


--4fdqcj27v6pfsjny
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 22, 2020 at 10:08:49PM -0600, Samuel Holland wrote:
> Allwinner sun6i, sun8i, sun9i, and sun50i SoCs contain a hardware
> message box used for communication between the ARM CPUs and the ARISC
> management coprocessor. This mailbox contains 8 unidirectional
> 4-message FIFOs.
>
> Add a driver for it, so it can be used with the Linux mailbox framework.
>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--4fdqcj27v6pfsjny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOnLgAKCRDj7w1vZxhR
xSYSAP90wmCOPtG7vTl+Qa8bGIV4x6/FQdLNVSWtHx6m9COPCwEArxwMK/wR/nQz
ZE/ck+ygsbElW4541iFuMeW7JxhIsQU=
=kBdP
-----END PGP SIGNATURE-----

--4fdqcj27v6pfsjny--


--===============5688458065120243904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5688458065120243904==--

