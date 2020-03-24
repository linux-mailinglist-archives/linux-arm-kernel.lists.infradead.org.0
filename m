Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701F41914A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:38:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5qSkwBtbPMiVteT4/dQ8DTqnZm6sIro8PwR9WtIZQ8k=; b=WNyyxqqN3eJ6E49GjWzJ6xuwT
	l+2mZLVjqjj+uyh4lDhsJ23L8XD8u6QjGC3Z3o9LXR9B2d/KQ7saM2x6qQ17od6M0yZQiUlZxFKxE
	ZJU10d7DoyGKPy0BAgoC/LX7YAKWeQ4m7oF8Lb03H6K0GkQGUg3opeq04gUbnwo+twBdakjidtTYD
	0KL8HrgV5ns9TjbVw/sAEGmdsP4ZWKdWyNaqIFTjVPCVDPEIKHQrNt2i7+2j4rnuv5t8jiMXbmfDS
	gNkNPqKbRJo/CdGK2JxRcVtd8rSJ18zMxuom0HZPpctc3+c57VnOrUPj6sDyIKyOZ/k7QzARjTKps
	2m3F5M8Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlcv-0000JV-GT; Tue, 24 Mar 2020 15:38:01 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlcm-0000J2-09
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:37:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id D33087E1;
 Tue, 24 Mar 2020 11:37:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 24 Mar 2020 11:37:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/8GGCfjSDSOcyCzU/fE+Iy8ZyVZ
 xms/k45jF55KNAxo=; b=WJ19pKRiEIaAXaeehQTWMZ6VLS1+ll8gJWvaPC2tkLl
 XEMD/BqcgYtsa+3l3XNNFQ1iBkNrGG8mBeY4crczeaaQrGxHkMVR+h+/GTRVIKKe
 ssAF5k7PSfDo4SMqvKB7Lgpc8ov7EuiNlkeXwjG6hJRSG0Ql3QfEFY20y85XTU7P
 OZnJBpIcaee4PlVbuzmfUMoCjwYyUdoYDsSGOfhcVV/GbV8ldW194i8/zoJJZJ42
 SbHW5pKLc2mB4Bh0mw5upRi25Eu3KdX6YyW5Q/W3+oxaHPMLbPxJ/Ok/ob614tYg
 XPqC5Rg/Buk3oW6m8zuApC+fuhzQokYGsxLWRjiSxJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/8GGCf
 jSDSOcyCzU/fE+Iy8ZyVZxms/k45jF55KNAxo=; b=gBbVxrhQXOK8FAkMp5Ows5
 lRajk1ZPTs6ItDc8Le9JDUUmXjSy4OvfMFuFWViVgn5sxfBeVVnxM/QbrYjqHJoD
 Io+9BdV+Z+KpRI/CzK/BUSVYLvJVaqGwxKmx7lbQoIR74RnwkYSxAHlRmdiTmfg2
 nfGuO3WxBKgWonfA4J9xoLFxe/oYGG1oz6ELFmutShR0LzM5fob1iR+ThJMW9/3D
 xqywP2nJKCP2DZf7uuAanlgvVbtijz063mKwDpBaYQfEwtZuC9jyVQuHWxyPiplY
 GHcWTo1Hh2yWD3wg4SHVys+ENmCVi/nDsZ7S+wm7OekKiV9aybUE221YzQSdjcXQ
 ==
X-ME-Sender: <xms:Ryl6XtXnp7C2olFE8f6_A00PYCJj_hoeqmAvUfWCK1JduUXG4tBNGw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Ryl6XoQgvcBUJKlflXshJpxZjllKlRTyrrejaSXnTteUeHbbh2Ci7Q>
 <xmx:Ryl6Xl3R7doO7hxE58iR8Tb_OBjZ0JySI4O-EqnMc6i3SsA6wB3gVQ>
 <xmx:Ryl6XmWF6DIrrLppP3g2drl5Us6eM57P_TNmYPgJ82_5pZtW1t7MZQ>
 <xmx:SCl6XsqanWQS_PVX593aPxHhsNOMQcO1Rdxo3okOMx8V5Rp53P_Oew>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D5E443280059;
 Tue, 24 Mar 2020 11:37:42 -0400 (EDT)
Date: Tue, 24 Mar 2020 16:37:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: Re: [PATCH RESEND] clk: sunxi: Fix incorrect usage of round_down()
Message-ID: <20200324153741.cduhe54zya3dfn3z@gilmour.lan>
References: <20200317211333.2597793-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200317211333.2597793-1-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_083752_077052_4217E740 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
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
Cc: Emilio =?utf-8?B?TMOzcGV6?= <emilio@elopez.com.ar>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0933618599642580060=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0933618599642580060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qd23x4pcu2qxe5pk"
Content-Disposition: inline


--qd23x4pcu2qxe5pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 17, 2020 at 10:13:32PM +0100, Rikard Falkeborn wrote:
> round_down() can only round to powers of 2. If round_down() is asked
> to round to something that is not a power of 2, incorrect results are
> produced. The incorrect results can be both too large and too small.
>
> Instead, use rounddown() which can round to any number.
>
> Fixes: 6a721db180a2 ("clk: sunxi: Add A31 clocks support")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Queued for 5.8, thanks!
Maxime

--qd23x4pcu2qxe5pk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnopRQAKCRDj7w1vZxhR
xbsDAP9HNPJgJv/i/PES34txFREPG9WzuLhxYhExZ+57Dfp4bgEAoMRzRRzGl9/L
zvgAgAVuBVoC83GhKIqHFx4eFO8iqgo=
=KHLP
-----END PGP SIGNATURE-----

--qd23x4pcu2qxe5pk--


--===============0933618599642580060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0933618599642580060==--

