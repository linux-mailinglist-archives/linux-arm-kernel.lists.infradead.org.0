Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950E71A096E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J1xOE+5AA1UjobsqhjOaQgM/7FuylUtyYqFjS4QsIT0=; b=KmzRV+zTazJnhCAaAoq/SP5iW
	oN+v/JfI0H4OAGUX6fQ7PMKRjsAS68Y3KnbCuAkUEA8qdyyxJhV8zKWQ29Y8BheWYKsgVIcRmSOI4
	M6IiCa2+674N2/PW8LzFdsnSSkwu/LWYN2GOxz4Fka6KtPYjZ/CNRkZPSSBFwepnkn1ygKB/G+rmA
	vwuRdRRVCmLdw3BmHQO+f+pZnh9B9hnn/F4tx8SwNt3w/DW2PDG5jSq7k6kkBo5bhTFQBPxtdjkD3
	Jhy7WFl5p9ILmVNz7HUEkd2/s0smo4mB6myMv+PvwOhlwBIO0ItnEGHa1KqTcHzRIy+bIMCM5LnuV
	3afERW6og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjjF-00069T-NE; Tue, 07 Apr 2020 08:37:05 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjj7-00068h-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:36:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4A951651;
 Tue,  7 Apr 2020 04:36:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Apr 2020 04:36:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=4JjD4nhCeDSm8qKCj697mUQU3e9
 hRBe6jxcMGNOUYSk=; b=XsjePcnHJcDSz+mYUIJGJ5B/aG0e7XbHR08R6oCdAsh
 QzvpBvr7/otb8MdKszbYdUvJ7mJAWq7WpZQgnlOOMTg22tCIBfg7s9G01I0Q70ph
 y1FE4ni4is/9D0LSw986qIl42FmIYyaFix9y0BwtS4p+0ngYe1UEr/Ie7si7UjNR
 U1n/WC8YxMmA1Coa5sJ+nRcGFGtdGDflzZMwjJWxXV8Y10va4JA1QUSjp03mOn6C
 InAfGS6Jt9poszH1Rm2Yy+7dcaFn6Dd0EJ9ClcKU91jLgsRYFVjmBBL7pqhly6kw
 XsIs5uuvAVm2szqC/GLE+9mXtSJMV89w8YP8sV07Ixg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4JjD4n
 hCeDSm8qKCj697mUQU3e9hRBe6jxcMGNOUYSk=; b=grugulOlKGnUpe+cw9Zfr2
 9f2qnI/N4GTrxJEk0reU+x7fgJTGrv6wk3aCrPY50tZN80Ig4ttN7IF6rsgccwTV
 +wgWBnn37c+X94Whcfgu7RIxNRzkXxH4tKj2/0/lW/q0447RJ8JfZRgXmysK35kI
 CLOrtNnLZi8AdoU+nA/2yREnra6Kj4zuQl8rvf16uzxgIZYmblNObIdLiizjKalP
 koluwaGEoGmeCrRY0s/NEnN9ZqeQapx1jj1OI6qyGhfmiEzV1CgOIMc3EOaetgy2
 ug25xi+X6xeAMuuhXMwsyY0jUeUmJu6ZivSU+3MP9N9CA6XtTyD3+kLrx+VLPkFA
 ==
X-ME-Sender: <xms:oDuMXoh2gp59uxcEAj3duYH0-yhYXLWYbH_tMDlcGxbbasASAygIXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgddtiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oDuMXqu1vN_TtHjH1yewbxSIyz-7NK8R3TKr_clhgUVp8D_GoQUnlQ>
 <xmx:oDuMXnDbrU0wWq_pGftuSHZP0-87qyEQS3GsGRlmlE5cYkmG7xgQFQ>
 <xmx:oDuMXtUrpVVLtUG4WTD8ytEBgDGLlRkz8Hjt3NkjCYH7JzfxNMeksA>
 <xmx:oTuMXopADU6Av-QC84MI_1SCEhUc3OOEpfHx_3Y1DF3uYJPNjABlFg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 787A6328005A;
 Tue,  7 Apr 2020 04:36:48 -0400 (EDT)
Date: Tue, 7 Apr 2020 10:36:47 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_013657_402790_D26B0F27 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4240158573824677938=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4240158573824677938==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tdgovq5ccaqtherr"
Content-Disposition: inline


--tdgovq5ccaqtherr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sakari,

On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > But that 19.2MHz is not a limitation of the device itself, it's a
> > limitation of our implementation, so we can instead implement
> > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > sure that our parent clock is configured at the right rate) and the
> > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > been rounded too far apart from the frequency we expect).
> >
> > This is doing exactly the same thing, except that we don't encode our
> > implementation limitations in the DT, but in the driver instead.
>
> What I really wanted to say that a driver that doesn't get the clock
> frequency from DT but still sets that frequency is broken.
>
> This frequency is highly system specific, and in many cases only a certain
> frequency is usable, for a few reasons: On many SoCs, not all common
> frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> are being used as well), and then that frequency affects the usable CSI-2
> bus frequencies directly --- and of those, only safe, known-good ones
> should be used. IOW, getting the external clock frequency wrong typically
> has an effect that that none of the known-good CSI-2 bus clock frequencies
> are available.

So clock-frequency is not about the "Frequency of the xvclk clock in
Hertz", but the frequency at which that clock must run on this
particular SoC / board to be functional?

If so, then yeah, we should definitely keep it, but the documentation
of the binding should be made clearer as well.

assigned-clock-rates should still go away though.

Maxime

--tdgovq5ccaqtherr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXow7nwAKCRDj7w1vZxhR
xQstAP0TwTb8HQCIY1hTWh6ICjLurf3wji32l8sqvhKN/kS2bAEA/QsgQ8BIfzU3
wxJ2Dwt128qujydSVIFZL5Uk7XAwJgY=
=IafI
-----END PGP SIGNATURE-----

--tdgovq5ccaqtherr--


--===============4240158573824677938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4240158573824677938==--

