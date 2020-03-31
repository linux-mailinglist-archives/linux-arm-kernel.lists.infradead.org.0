Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BDA198F24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 11:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mAEV30SEbj3KlarpA1EjU7V1Xdpop2ShCD1xDHswAfk=; b=rxglsDhV4qqaxV/CdGplyXc3M
	knW27kIB1Lpny7YA6kbqWYS1B+TpwOyhLA0854bzOmIYwP92G9anR3dOWxz/3dpjLVDZCM3l5oURA
	rb8BVDSti4N6St4GxTXkrdZ1H9YxFrCTfsXRaX+uDlLNNI0RaOjpkGZY7b4oL/EnrV4rkUvEILmB/
	BPW5wzp5HAJvdeoQE67NB2ZF94qnSRlscFTQQDM4YE8KcpC9S0dj9/UJARviq6YPtxJPPV3mxowg4
	zn7QjxBpRZuNX/4bxdbyE6vrpAkA26D1emyOAS6s/oOQsChE4NSxc+8c3j5QySZnjv1Ik2WlU+Oux
	Na+5uP6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJClP-0006F8-QX; Tue, 31 Mar 2020 09:00:51 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJClH-0006Di-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 09:00:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id EF59D5C0403;
 Tue, 31 Mar 2020 05:00:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 31 Mar 2020 05:00:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=4yK+oP+E2ftKY87Z70nWv7pkOnp
 cr42m5qvb6XN0sv8=; b=EfMEFse80Brg3++mtTk/jXn7Ia+YfgRfJP02Uqgsy7Y
 o8HMWuvbAYTprqpTldRl0DxfEjvtRSj41/kcKZm2tu9q5AtboB5isRoepZzDYazx
 TNS1hddO2D3lqa469nqwy0+i0whJUMrfmO5656Fa+IG6Bchi4nnwxgljHTr+bOpu
 /n97Qw+SYQ6U5U6fX7LmXWQdlvF3/sJ/eddLY2a/QQ6HRFHmuV50Z8GwlT+C3KtG
 CLAo6t72z9czfVGsQFx35bEjGYTz1FASVycASyKy9HW+cXXEGBMpckj+gKSgNUwR
 8bfVUitx4y46bnXj560YaYJQX9tIG0V2vgsempKPj6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4yK+oP
 +E2ftKY87Z70nWv7pkOnpcr42m5qvb6XN0sv8=; b=1XLjA/zuGwIG91NbBthKh1
 Qd8nkCr+URZAfk9YkH2JxD2nTQ5pidhhGv5ULJ2QU0PSgb7VG7LwIclq0B6DfnlS
 GSIOMlnF1FW+S8Zfmp6z7TwSUNL077HIsryilnR2vZsf8jIgQZ2jYEba22K8nnTp
 8NzOlMO8WfyHGztp0NytHfKhIbdRJ2rRVzXqg0HB5brw4kIEdjmQk2T/AO6dEIJM
 9FuuQVpTI/BYcYMvXsI97LUa7hjFIXYYdgwFLRH9M2D4s54hJTfcYH8i18A9cSLT
 NWq52BnZpgJSwzlxc2JfwjPXFPmkRGTt4UMsiRSudLbpSpytF8wd0sCP/NXUaPww
 ==
X-ME-Sender: <xms:swaDXsTXGQwyQp7Ha2yKqIyxrRrdKIsHH_oAIXhEhZwH4p8xL57cFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudeijedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:swaDXmn2HDslN0DRy-LsdgpX9lk_XN3vfss8M9RS7zsBEtMk4arEVQ>
 <xmx:swaDXsEehcshyce6J6mSKwOCwwaaiV3-c4rQ0ZFairilIuaodId1Nw>
 <xmx:swaDXgJ_jr3Dr5j0-MY85W1MyoRbLJRDGFEFArLDqeOX6xTUwbN1cQ>
 <xmx:twaDXumD2A9NJS4QTAxSnmAzrqi-YSfw-LqgJ2XMlPR01cQ2pYp2JA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4039D3280065;
 Tue, 31 Mar 2020 05:00:35 -0400 (EDT)
Date: Tue, 31 Mar 2020 11:00:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: olinuxino: add user red LED
Message-ID: <20200331090033.463xytloqn3fdgtz@gilmour.lan>
References: <20200325205924.30736-1-ynezz@true.cz>
 <20200330175347.r4uam7cybvuxlgog@gilmour.lan>
 <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_020043_431527_C91CB1CE 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5218637570919880405=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5218637570919880405==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q6zww7gd7ff5vqam"
Content-Disposition: inline


--q6zww7gd7ff5vqam
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 31, 2020 at 09:19:57AM +0800, Chen-Yu Tsai wrote:
> On Tue, Mar 31, 2020 at 1:53 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Wed, Mar 25, 2020 at 09:59:24PM +0100, Petr =C5=A0tetiar wrote:
> > > There is a red LED marked as `GPIO_LED1` on the silkscreen and connec=
ted
> > > to PE17 by default. So lets add this missing bit in the current hardw=
are
> > > description.
> > >
> > > Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> >
> > QUeued for 5.8, thanks!
>
> The gpio-led binding seems to prefer "led-0" up to "led-f" (^led-[0-9a-f])
> as the child node name. This was recently brought to my attention. Do we
> want to follow suit here?

I've fixed it up, thanks!
Maxime

--q6zww7gd7ff5vqam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoMGsQAKCRDj7w1vZxhR
xXsgAP9qUq9MJFLKyC2XsD9mNjGT3ZF7vmPVTAVvOezdjv0BkgD7BAo+Q29VGh1q
IISh60xTBwcV54TuffpFZIulHONf5gg=
=qXte
-----END PGP SIGNATURE-----

--q6zww7gd7ff5vqam--


--===============5218637570919880405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5218637570919880405==--

