Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B034518F335
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HGbXbo+7+a/rrDcva49hwh2JZth090mv2KpJ0TcQQL8=; b=RYLkGmeBaGdOwFaSaS8Jvc8BZ
	WMt4AezEISI91opw60udb5dAUs593IvoIXUMnJZIaJBDSxqifj0jA58Isp7E46yF2LucHXkcS7wzG
	erL9tvd8+6AKz/QvJM4vODZlBSAI5JtAcrOwgDy9XXypfGV5COGpBth00ybTt8eI428DedSnl3wbq
	wIy6iGDk056JNYnoYhIpLxDEpFfwm62LjrvMoDQBwt1LpCyrJWujDhMWhUNq6+RScF1jl496GUlR6
	OmaPMO3usoe33uJlZTJWjd8iTxs7xHXXSZRnctkgPTlhsfdwrgGcgJIjuQuecfp3H35rOQImQmJXX
	U1+d1+grQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKky-0002bw-Uo; Mon, 23 Mar 2020 10:56:32 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKkn-0002b6-NH; Mon, 23 Mar 2020 10:56:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 6A43D47D;
 Mon, 23 Mar 2020 06:56:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 23 Mar 2020 06:56:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=fzpRCAmsyk5yn3no7NdCLTL9Xu4
 x7dq5wW+w+4PqNzo=; b=qjncN70i8E/mm68IiqelYpyQxaqaLFMFkq552WiZ0Ji
 RDnn/NVEiKwbPBkt2W9lxujvSitEatfIuvVuj78XE0PcmTk+hzhcz32ZYhhtM/60
 1yFzSlh9H/oBHVjcFJ2ugGcpKarGWqzjiTKFex07KRbzpvbdVf3PAv/VcUoR/lEE
 4Mot7T+dlrf+JN6aOHzR5EnTO9QxbMDHptMN9yXpWIF3+F9y4LIkzkSMZGx2pWtX
 eRWw3eyev+hZ+str3PdFD3tz8rBoKp737Mw4xtdpoMs32adEhVUPxmogt2MyYJ61
 wvNhvrQaE0WfsJKQNeLIf0hlfT9kkHEOSRIeNDJTpgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fzpRCA
 msyk5yn3no7NdCLTL9Xu4x7dq5wW+w+4PqNzo=; b=cE7OolyF0peWljveJycKKO
 zgMMYtHV+pOFwh6Kmd6FjS3CP/+dOVKARo6nxtG8RqXaYMk0oxNUtX/r5t4uzYfJ
 ZfoTXKnfD9BLHiemRmNxe/Xjoa7iM2bHZWVxMVCKDh99eCJp/7+cdLObC/GpnflV
 1Avfs9ubY8SAgqT0wiE9/fvNICQXjzupm0tgLW7rFcKwOwdKcUfaUKY39TcyZ+Oo
 vGYIPzRBbyYmSY6T2s1DCdvEyosqg++n/woeb+t9tMYE+DiOZJGWeDQjX/1HyK5E
 nd7oA0OaxQeT1Ic99a9lrnRY63dcHnogyo8riCVTL2kprKBnMQJM/UMzPVf515sQ
 ==
X-ME-Sender: <xms:0pV4XpGakGjxFm5WSUO12GozMq6f_D1A6FSPkAn00TVm_p6d4s6Ang>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegkedgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:0pV4XikLQU1_NHrUyExDlyHq0J-4oojakDBlFW9FsrNR-C2JnF1hZw>
 <xmx:0pV4XmKDL-6HyZMPOqYR6s0tWnJrzCMMMdwAO5GIRETYm08AjRr-WA>
 <xmx:0pV4XjYGnEMLXt1wHnszQKokWtv-_l8H_BluGP_LWAI0VCj_lKT5Dw>
 <xmx:05V4XimO5x58E3e7V1Pcv11tNhvCMfJifrwgWq7JC9tH9wENGCIu1criPgA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DED263280067;
 Mon, 23 Mar 2020 06:56:17 -0400 (EDT)
Date: Mon, 23 Mar 2020 11:56:16 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 27/89] clk: bcm: Add BCM2711 DVP driver
Message-ID: <20200323105616.kiwcyxxcb7eqqfsc@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6dd6bd48e894c1e8ee85c29a30ba1b18041d83c4.1582533919.git-series.maxime@cerno.tech>
 <158406125965.149997.13919203635322854760@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
In-Reply-To: <158406125965.149997.13919203635322854760@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_035621_800675_CD6B7F70 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4685677254487424193=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4685677254487424193==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tfljntymmeg4eptb"
Content-Disposition: inline


--tfljntymmeg4eptb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stephen,

On Thu, Mar 12, 2020 at 06:00:59PM -0700, Stephen Boyd wrote:
> > +       dvp->clks[1] = clk_register_gate(&pdev->dev, "hdmi1-108MHz",
> > +                                        parent, CLK_IS_CRITICAL,
> > +                                        base + DVP_HT_RPI_MISC_CONFIG, 4,
> > +                                        CLK_GATE_SET_TO_DISABLE, &dvp->reset.lock);
>
> Can we use clk_hw APIs, document why CLK_IS_CRITICAL, and use something
> like clk_hw_register_gate_parent_data() so that we don't have to use
> of_clk_get_parent_name() above?

That function is new to me, and I'm not sure how I'm supposed to use it?

It looks like clk_hw_register_gate, clk_hw_register_gate_parent_hw and
clk_hw_register_gate_parent_data all call __clk_hw_register_gate with
the same arguments, each expecting the parent_name, so they look
equivalent?

It looks like the original intent was to have the parent name, clk_hw
or clk_parent_data as argument, but the macro itself was copy pasted
without changing the arguments it's calling __clk_hw_register_gate
with?

Maxime

--tfljntymmeg4eptb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXniV0AAKCRDj7w1vZxhR
xTnlAQCIhFMKlCTUi7lT7vtutsg55UjNkCiTBydMK2jwFL/FAwD/SNvqj7HP9kXi
Uu9uGwZ9ol7SO9ZaYUzJVfxPPZbXQww=
=Ie9e
-----END PGP SIGNATURE-----

--tfljntymmeg4eptb--


--===============4685677254487424193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4685677254487424193==--

