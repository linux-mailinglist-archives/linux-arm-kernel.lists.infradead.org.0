Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52422F1574
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uEzusQmqbyybk32nxBIr2oKLNZzVki9EeJnAn2q72iM=; b=T8JQuO9eDUKXO9Wx5wp8oA7Kf
	+yfEkXZhBvEmD78GwSOEathOCl2Dar/axr1H02+1eLTE5TZjRvvYH9Wp6frgCvD1ybxtODG6H0SQd
	OFqXwmGhIxBzNXvek2SEuS8WFIn3ZRkc29vh6rbIWdPEQ7MLlnx5Tfg3Qi/a/ZjOMMi+osDKUXETy
	O7/ICqVJ1TM+DiMk36tlG1K8TfRu/d24gRTiBaREzkuIaG/Wbw/Vng1h8kUWvqUSZ3PnY6RasqKR6
	YrbNdlJprMXI8cPI52KjNlGi9a47VZscS9hCRsA7XTcoR2IRZuICLHlPVMjxiSTvk1JirlF7QIXwD
	NuQneis4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJrW-0005mQ-2f; Wed, 06 Nov 2019 11:52:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJrP-0005m5-6Z
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:52:28 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 870302075C;
 Wed,  6 Nov 2019 11:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573041146;
 bh=OF5G2aua6XJ/Sp4YTPouRXr0Og+dxfgO9zAId67DLXE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qIUFYfJ37F3Z3WnIERx/g5BXRvKYxqkb58MjBLfS4mnY4LrPgrprykjOUbSbTH9wM
 1BuL2ZUvQD1NSjB4KzI13eNg5rZ87yDmhcv8TXNPYjjm7WtzxFgizy7YU9zdiIVb+c
 P3USJmz6ZAZQsdpb0C+2dlJeMGpZWWzEeWU0kOrs=
Date: Wed, 6 Nov 2019 12:52:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alistair Francis <alistair23@gmail.com>
Subject: Re: [PATCH] arm64: dts: sun50i: sopine-baseboard: Expose serial1,
 serial2 and serial3
Message-ID: <20191106115222.GA8617@gilmour.lan>
References: <20191012200524.23512-1-alistair@alistair23.me>
 <20191016144946.p3tm67vh5lqigndn@gilmour>
 <CAGb2v67QrTJjSO99UNs-=3ZZnK948am11=izRTHT6gZ06E28eA@mail.gmail.com>
 <20191021111709.dpu6g7jltuw6cbbn@gilmour>
 <CAKmqyKN8Ru19h3y=9O13=5wpys3BC2LQM65S+2QYjPdJQn2O4w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKmqyKN8Ru19h3y=9O13=5wpys3BC2LQM65S+2QYjPdJQn2O4w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035227_282795_B0D94C82 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Alistair Francis <alistair@alistair23.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1177412167226748134=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1177412167226748134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 05, 2019 at 11:27:42AM -0800, Alistair Francis wrote:
> On Mon, Oct 21, 2019 at 4:17 AM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Wed, Oct 16, 2019 at 10:54:27PM +0800, Chen-Yu Tsai wrote:
> > > On Wed, Oct 16, 2019 at 10:49 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > On Sat, Oct 12, 2019 at 01:05:24PM -0700, Alistair Francis wrote:
> > > > > Follow what the sun50i-a64-pine64.dts does and expose all 5 serial
> > > > > connections.
> > > > >
> > > > > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > > > > ---
> > > > >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> > > > >  1 file changed, 25 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > index 124b0b030b28..49c37b21ab36 100644
> > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > > > > @@ -56,6 +56,10 @@
> > > > >       aliases {
> > > > >               ethernet0 = &emac;
> > > > >               serial0 = &uart0;
> > > > > +             serial1 = &uart1;
> > > > > +             serial2 = &uart2;
> > > > > +             serial3 = &uart3;
> > > > > +             serial4 = &uart4;
> > > > >       };
> > > > >
> > > > >       chosen {
> > > > > @@ -280,6 +284,27 @@
> > > > >       };
> > > > >  };
> > > > >
> > > > > +/* On Pi-2 connector */
> > > > > +&uart2 {
> > > > > +     pinctrl-names = "default";
> > > > > +     pinctrl-0 = <&uart2_pins>;
> > > > > +     status = "disabled";
> > > > > +};
> > > > > +
> > > > > +/* On Euler connector */
> > > > > +&uart3 {
> > > > > +     pinctrl-names = "default";
> > > > > +     pinctrl-0 = <&uart3_pins>;
> > > > > +     status = "disabled";
> > > > > +};
> > > > > +
> > > > > +/* On Euler connector, RTS/CTS optional */
> > > > > +&uart4 {
> > > > > +     pinctrl-names = "default";
> > > > > +     pinctrl-0 = <&uart4_pins>;
> > > > > +     status = "disabled";
> > > > > +};
> > > >
> > > > Since these are all the default muxing, maybe we should just set that
> > > > in the DTSI?
> > >
> > > Maybe not, since people may want to only use RX/TX, and leave the other
> > > two pins for GPIO?
> >
> > Right, I'll apply that patch.
>
> Ping, just want to make sure this has been applied/will be applied.

This has been applied, and was part of the PR for 5.5 sent last week

Maxime

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcKz9gAKCRDj7w1vZxhR
xfPJAP4qP44/SpPzLjXIyoizSx9xs7CQpWprZuxSoSTc3Ba5RgEA4Q2NIc2Xk6rr
HnXc85K09hZjEcpzLo2Q1Dw6Kx3rBw0=
=Zoc5
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--


--===============1177412167226748134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1177412167226748134==--

