Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7B21A0DB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfZUz9nh1itYX7gma4/JuU1gQNKd1swbYMI/qGsyyvU=; b=L6z4j7gcoNFCJgEILpPSMwU1/
	d1UAfXhzzAcYp9I/iojz1EYKK3/2dCJ/m+Iu9L4zjITO1yLDBMMCHCfNPqXcdShykpdalEo9/+UJ7
	VZSe6rOmGBuvdHhuCVmVz2TYr5+yxPcs59UShyYvDk3wavLf+o7/LHnb6Vvyt5ml9KPpV9/IbkcL1
	cgb810WbbHtYRfHELALwh1SlT2kTTko6ujcyrVV3ELRA62tAOqPCv5VKTYcTZmWpCmZ0dogJFEdoN
	aEHUo+80gY+j2/zvgQmGyqjaFc3zRHqmAxYk19Odoj86qmehvQKPZDOyg331qLGi98HwdRxsPScWn
	X2BZww29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnPO-00040P-Cu; Tue, 07 Apr 2020 12:32:50 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnPE-0003zG-46
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:32:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 21EA15C01CC;
 Tue,  7 Apr 2020 08:32:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Apr 2020 08:32:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=AJJDe/ySRz3tiDgYe4Ah8eWUjMw
 PlBWYVnjlrFiwgpU=; b=CCPrM+UmHvchU6T42mFGaM+xWH2yZfApfdGSBDlSWgo
 Xh0OdoLnFs1sa+9urnGFkIrs92XYTBbvgLkAfCVLf/SlQ2Ofghm4AdZjNqtXQiXa
 qIEhanCDEdrxsfpWLM7yVbQGadXlRW+bPu0Ep0gcqfn8pG4//FtyKQK5xl6weXtX
 wcTHaHaZhDdoEbTJCvwVC07o9NwVbEBGhCVSINs9sXwjnU1+jSo62wRbShe8KLDd
 r4EQoxgv7KimD0NnfKN0IoUwSAJhT3Dz0g8QkLai4azf5+3zS+Wly+staUfJnR3v
 akLSQ9NEaTOFnE7B6+E1FojbdGQI5g2JBkQSvyF2xEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=AJJDe/
 ySRz3tiDgYe4Ah8eWUjMwPlBWYVnjlrFiwgpU=; b=t4RqkwNMROgv8J04ULLbet
 vNfJFqLnjMojnj+Psea7DWXuOh/qi9j0f4iqKSVPucAeaeOl9kZO/LXN0dCIlU+7
 LXC3dT0yeGEVqRglpbS/n1NLioGN1BZ1A5m3gecAfIwtHsDgFMDk+PXhf/GIx2gv
 ZJP3yM2GEzEyqmG2Ty1tfya4a6EzFZ9CTL4vfwZeZQrpkycghppMBk/2V+5ysSDj
 m0D8zoRXlNJ0Vq3WfczsexvqVfeOWrAHElIXsWIXpWmSAe/1fcnL6+6OV6aGJ4TS
 /ITx6gNMVYtlXXnYqzt2Y+KLuj6qxbJ4ZcKJEBmzlriPHJK9/6istrrP1vJkXakw
 ==
X-ME-Sender: <xms:4nKMXhxx3OJoYu1Ih5_UrKqWFi8ciC_sOMQacN_tG3ySHv8nyBfG5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:4nKMXuejvC_z9AjzWbD98-bH3EL_wkH29hXxmJoTIFqH24JDdymWHA>
 <xmx:4nKMXjXiFNgG_f_d-m57ibzOGjIuern_3XWhdOFyfXhyx7MCUIL_Yg>
 <xmx:4nKMXkMVbbbdHht8-D-F5Xy6xouh6UYJmHL_yohmUauBaFNe6-cwoA>
 <xmx:5XKMXrqDifzzqHNJWRY_TK0e2EdA0gCx0lQX52w0uDmaoK7YUzidxA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1E3CC328005E;
 Tue,  7 Apr 2020 08:32:34 -0400 (EDT)
Date: Tue, 7 Apr 2020 14:32:32 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_053242_252679_07F545AA 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
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
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4084859179256923164=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4084859179256923164==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l6xvrv4jf2wbahni"
Content-Disposition: inline


--l6xvrv4jf2wbahni
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > limitation of our implementation, so we can instead implement
> > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > sure that our parent clock is configured at the right rate) and the
> > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > been rounded too far apart from the frequency we expect).
> > > >
> > > > This is doing exactly the same thing, except that we don't encode our
> > > > implementation limitations in the DT, but in the driver instead.
> > >
> > > What I really wanted to say that a driver that doesn't get the clock
> > > frequency from DT but still sets that frequency is broken.
> > >
> > > This frequency is highly system specific, and in many cases only a certain
> > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > are being used as well), and then that frequency affects the usable CSI-2
> > > bus frequencies directly --- and of those, only safe, known-good ones
> > > should be used. IOW, getting the external clock frequency wrong typically
> > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > are available.
> >
> > So clock-frequency is not about the "Frequency of the xvclk clock in
> > Hertz", but the frequency at which that clock must run on this
> > particular SoC / board to be functional?
> >
> > If so, then yeah, we should definitely keep it, but the documentation
> > of the binding should be made clearer as well.
>
> Alright so, let me summarise the desired approach then.

There's a separate discussion on the same topic here:
https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/

> ACPI:
>   - Fetch the "clock-frequency" property
>   - Verify it to be 19.2Mhz
>
> DT:
>   - Fetch the "clock-frequency" property
>   - Verify it to be 19.2Mhz
>   - Get xvclk clock
>   - Get xvclk clock rate
>   - Verify xvclk clock rate to be 19.2Mhz

The current status is that you should
's/clock-frequency/link-frequencies/', and in order to replace
assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
between steps 3 and 4

Maxime

--l6xvrv4jf2wbahni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoxy4AAKCRDj7w1vZxhR
xVapAQCajMfkGy5KObQodKq6TMZ/f6RLIlLUEGI+a//+esc7rQEA2Ln60lZuEk5u
dZFJEBn6+y8Nrkp5GApl67Yq210tSQ4=
=eEag
-----END PGP SIGNATURE-----

--l6xvrv4jf2wbahni--


--===============4084859179256923164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4084859179256923164==--

