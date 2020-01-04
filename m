Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E1D1301A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 10:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ZyaBRfutRYpwN0h4AN9tD99npY95oui+M8/luoC3vg=; b=jhcx4pLs2EtxXWgKMomLn/OmK
	wB5hqtKZ3If45N69o53XE06yB+6865+hak/USuy4rRU1K1/XzCA5fj5aTEZbdmV9uB3/2ypEveaoq
	r17nvxa+xL+drO4L2PfIbZlkAI2YoaKAdejsrSs+a2nwyoFK4LpoR19Ne1/DyJVZNGLhj/cN0qcjr
	o1eyVmlZPHbrDQRakOszK4m2nHErkclyV4LR7RMPBMMmFVL/QI4L8dWU8OcTRz+ayalCuyEznQWJn
	L3KdSOZ8ErsLOXRFQbY5jszfRsclHHoLRYsEBmbavR1VWPInJ8PhsH6fZXeazgmHCH9VJeTbD52oC
	syvgg2tvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ing67-0002QE-7C; Sat, 04 Jan 2020 09:51:55 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ing60-0002P0-G7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 09:51:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 36B1421F30;
 Sat,  4 Jan 2020 04:51:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Jan 2020 04:51:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=xC5Tz6kxh/HPATOcuMFe1CFgfrY
 z3FGFb6WfQx7tpiU=; b=QYPwpIXkFKiryPz0uVyL+qBqyJul4eapdXgrSk1C6LY
 pnjz+aagVn42z6xnw376R05QYmKSx/kXR8KDsGqeOKYlaqKSYZBUBo7Aj4bL7jEM
 D03FkNM2vAUW3X8VOqXYfAPq2uRBfnK3WfW88grvgZ5gPmGd+by366Ns4Sr/NZuE
 CTe1Mnz2/8UtFXpFDWrjA8L/WkxZATnCJ5ab4BG92PglfEnjOGtZYigQJgBcxN+5
 vqnMB8fqkn7vjiD4JBPmX/39bnAoItN2vtKILN3X05jv6zIZcl2kRJtYLX7LwYLI
 Tn8xT0HIr5QkBBzRhcx/oKTbGryp8PX4vXyZPVEyjyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=xC5Tz6
 kxh/HPATOcuMFe1CFgfrYz3FGFb6WfQx7tpiU=; b=eP2LDquLIsBoBCjVO/uzUG
 qB+cEQvJEXOS6H6AfVwoMpvfkhOfdD+kDl7wXiPGTRQAVsgorS0gT0Z6AAKqNGxB
 3pH98Il6vfN9yrXq5jEmNsEvZMd6j4saaChs5NBh/z0nQxrDJ+6dUV4w9q8/gG62
 CwJWGepPSGgMlocidhlQKnvVsrEBj9BwNlzKdV+TJ2khBM57DUq+6A2qYSN5A1z8
 rCXVt4km7J78YGRJ9ahAkwzMbHZ+grIpHIsnhF1HST2Ot1wczFnXwQ+1fvBRKtgO
 0s7fdnh2iFmT4ppoMLkBU6t4f/mLQ75cJlH5RbBzBNSbpqvUSnxJ8Lib6z7+1E5Q
 ==
X-ME-Sender: <xms:KmAQXkW_muQUBoXd7LPAjZkZSJyy3g4PY-TO4jmHXFEKJ3QFh1JKkw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeghedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:KmAQXs1jfChJntnx27I2W6Ago0un6WRF_3uWsfPC78tw3OKmdnFu_w>
 <xmx:KmAQXjaZR4ecL-EuVGQliH8pxzHDtGMKqDHylqjdl0bfAbYMhiYvFg>
 <xmx:KmAQXnrJ6Q23KCU5v-MlYCqW-yvVCmn5rvpDInUZbs24iK9TVgyz-w>
 <xmx:LGAQXnvfA7utU7AZ3Ea8lQQRUb3zu3UBGCjtlsQlHXB508k5Wc_RQQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A0D08005B;
 Sat,  4 Jan 2020 04:51:38 -0500 (EST)
Date: Sat, 4 Jan 2020 10:51:36 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 4/4] ARM: dts: sunxi: Add missing LVDS resets and clocks
Message-ID: <20200104095136.qaoai7lrmvp6komm@gilmour.lan>
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-4-maxime@cerno.tech>
 <CAGb2v65S32hbbKHRu1W+p7eP3-_uC1qKKGSP+ftkzxEO1egnjA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65S32hbbKHRu1W+p7eP3-_uC1qKKGSP+ftkzxEO1egnjA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_015148_937909_22362C95 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7993375984340806415=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7993375984340806415==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vfkmj2tp2msjoyp"
Content-Disposition: inline


--5vfkmj2tp2msjoyp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 11:31:05PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Some old SoCs, while supporting LVDS, don't list the LVDS clocks and reset
> > lines. Let's add them when relevant.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--5vfkmj2tp2msjoyp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhBgKAAKCRDj7w1vZxhR
xSWTAP9aLj6GqedfeHASxNxXQ3luUUvfRIbz5JznIwm133TvOwEA8qXDQvjtDMqX
rNEnwGr9Z5n8Qf9/snsuaWPlrXFNSAY=
=7GLd
-----END PGP SIGNATURE-----

--5vfkmj2tp2msjoyp--


--===============7993375984340806415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7993375984340806415==--

