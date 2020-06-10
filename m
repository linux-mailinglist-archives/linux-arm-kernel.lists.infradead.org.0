Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCE31F4EA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kciZWpoSs4I/093pTsX5KrLuHxA/Srr2qD3S1X/B68c=; b=Q+ORyzizTPFEUR2vk/Ydv0Z71
	q1R0tEbW/TMQ4naUU/H42WdNl4+tA7RQqGT70UMusnkPDJNhHbEbT23XYmnEmN4NWkalLgu84cmhj
	smdqT/B9HLL3OlLY2DkO0vPa4kSh0tOiFJ0qGyCvamL2RM5Riy9WmULjULOuVgfT5fwPavzDgGKWs
	3/k9VzJPjOG6UGBUHrtrGF+m8ZBUCYFgtpgABFqX8tq19pEDAvKBuSrg2ChPbYg7m54mE0mEYs9di
	NgWvm3lTXR8c0V1G/wa34vxLISZw28/ZogBa7bsrjfSH4dwfigX3t05X7vECJV7aMLDiFihuCTO3j
	7jf7p7xbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiuuq-0002na-6Y; Wed, 10 Jun 2020 07:12:52 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiuuh-0002n2-C7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:12:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5639C5C00B5;
 Wed, 10 Jun 2020 03:12:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jun 2020 03:12:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=g01DrXYlRa2+6yU8hRXD5BjQ2RT
 tnEPv0eJCUBaLaMk=; b=KWlDdEFghWE2OvR+qAxpbQ03RBir4WRoU6IDMf8zsUR
 Uxf9nZd0FfTOe29ko23YeXIwS3zOinpvUa1JwzQHC+f/hChipKBmiTJIlwdQVTU8
 OWTIl4Tf6KeEZyaH/7dDeZGxqrP9QutK13BUzTBjis428I9W7OpkeLxHBLQYYgQv
 3ZvEo+PLnFUV5sD/v+t0WuOHT/M1Rv0XlGii76c5pEAmviwylg2+gImTLWHsI9oX
 05lLzqIm3WmFyZPR3l6H1MGDoozqLLfoK6oXXgfJPT8ws4xco6x7rJ4H+xiZ1zXu
 fbsL7Vq3nUGAjARkRoIaJaRrt3Z5z0skUzKBHLBrxiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=g01DrX
 YlRa2+6yU8hRXD5BjQ2RTtnEPv0eJCUBaLaMk=; b=KcpPr/P4/zq6AHvPomZ81x
 Q9HS5pDooERZzDlFaJ2rPOTH5LvV1WNP9N5BO5Bf9dOp0xbeZDc+e9zEwFqSqH9h
 8dsnpar9uZBgrLm/kxS93ufiiSl3A9SPa1tDMw9b8uuN4tX9hzRoYNN5tvnBRORM
 IKi1xxTpIeEfRirFY66/V2yKuD1nmjZHWhwj2O9qk0qztlqjg/bRdN1Tq7/p/RYS
 qirSmpBGV3lVOTM1/aamxmUoox+76i9AthRnrpcgU4Ck49ytcfEc0uyxLfgoI3w5
 Zb0pFhlbdL+AlbLIwwfIAhDntTq/jfSDIJAG1RNfNm7/wttd0ejxS6BQ3KxNADMQ
 ==
X-ME-Sender: <xms:5ofgXmtXoZ55T9tagIPGTNrI8lk5CNU1bOr3J05dbyy8JIvDk77NBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehhedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeeutdfgjeeuudehvefgvedvtedtudelfffgffekledtffekgedukeejueev
 ieegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:5ofgXrd21ielAMKgEjWS194dGk8YMboKPW7kdkIK4RkrcjF8jvzopg>
 <xmx:5ofgXhxODb-380ErNpvqA3GMia1xsEgE-ufLSfQHuHD-IGx9eMIq-g>
 <xmx:5ofgXhPWittqnw_hS4KGfzNPR9AmZRMYT_mkjPKVqHdLNhuL2r6eDA>
 <xmx:6IfgXtb07dbhuPUaZGT0ycf4z7BCb4Mi1XJsUSn-H-pxBAeYvxrmDw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3CFF7328005E;
 Wed, 10 Jun 2020 03:12:38 -0400 (EDT)
Date: Wed, 10 Jun 2020 09:12:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
Message-ID: <20200610071233.umk5pfrimluv2sd4@gilmour.lan>
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <1742537.tdWV9SEqCh@jernej-laptop>
 <20200415104214.ndkkxfnufkxgu53r@gilmour.lan>
 <1785843.taCxCBeP46@jernej-laptop>
 <20200422092300.444wcaurdwyrorow@gilmour.lan>
 <CAGb2v64++4rxcwdQXgz30vNbRRR5+tXehP-CFu9T7Lx7K_QOOw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64++4rxcwdQXgz30vNbRRR5+tXehP-CFu9T7Lx7K_QOOw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_001243_744206_F5A21426 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0348347592107992698=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0348347592107992698==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aika3toolbzzx6k2"
Content-Disposition: inline


--aika3toolbzzx6k2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2020 at 01:19:32PM +0800, Chen-Yu Tsai wrote:
> On Wed, Apr 22, 2020 at 5:23 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Wed, Apr 15, 2020 at 07:52:28PM +0200, Jernej =C5=A0krabec wrote:
> > > Dne sreda, 15. april 2020 ob 12:42:14 CEST je Maxime Ripard napisal(a=
):
> > > > On Mon, Apr 13, 2020 at 06:09:08PM +0200, Jernej =C5=A0krabec wrote:
> > > > > Dne ponedeljek, 13. april 2020 ob 16:12:39 CEST je Chen-Yu Tsai
> > > napisal(a):
> > > > > > On Mon, Apr 13, 2020 at 6:11 PM Chen-Yu Tsai <wens@csie.org> wr=
ote:
> > > > > > > On Mon, Apr 13, 2020 at 5:55 PM Jernej Skrabec
> > > > > > > <jernej.skrabec@siol.net>
> > > > >
> > > > > wrote:
> > > > > > > > m divider in DDC clock register is 4 bits wide. Fix that.
> > > > > > > >
> > > > > > > > Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
> > > > > > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > > > >
> > > > > > > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> > > > > >
> > > > > > Cc stable?
> > > > >
> > > > > I don't think it's necessary:
> > > > > 1. It doesn't change much (anything?) for me when reading EDID. I=
 don't
> > > > > think it's super important to have precise DDC clock in order to =
properly
> > > > > read EDID. 2. No matter if it has "Cc stable" tag or not, it will=
 be
> > > > > eventually picked for stable due to fixes tag.
> > > > >
> > > > > This was only small observation when I was researching EDID reado=
ut issue
> > > > > on A20 board, but sadly, I wasn't able to figure out why reading =
it
> > > > > sometimes fails. I noticed similar issue on SoCs with DE2 (most
> > > > > prominently on OrangePi PC2 - H5), but there was easy workaround =
- I just
> > > > > disabled video driver in U- Boot. However, if A20 display driver =
gets
> > > > > disabled in U-Boot, it totally breaks video output on my TV when =
Linux
> > > > > boots (no output). I guess there is more fundamental problem with=
 clocks
> > > > > than just field size. I think we should add more constraints in c=
lock
> > > > > driver, like preset some clock parents and not allow to change pa=
rents
> > > > > when setting rate, but carefully, so simplefb doesn't break. Such
> > > > > constraints should also solve problems with dual head setups.
> > > > I disagree here. Doing all sorts of special case just doesn't scale,
> > > > and we'll never have the special cases sorted out on all the boards
> > > > (and it's a nightmare to maintain).
> > > >
> > > > Especially since it's basically putting a blanket over the actual
> > > > issue and looking the other way. If there's something wrong with how
> > > > we deal with (re)parenting, we should fix that. It impacts more than
> > > > just DRM, and all the SoCs.
> > >
> > > I agree with you that automatic solution would be best, but I just do=
n't see
> > > it how it would be done.
> >
> > > Dual head display pipeline is pretty complex for clock driver to get =
it right
> > > on it's own. There are different possible setups and some of them are=
 hot
> > > pluggable, like HDMI.
> >
> > Do you have an actual scenario that is broken right now?
> >
> > > And there are also SoC specific quirks, like A64, where for some reas=
on, MIPI
> > > DPHY and HDMI PHY share same clock parent - PLL_VIDEO0. Technically, =
MIPI DPHY
> > > can be clocked from PLL_PERIPH0 (fixed to 600 MHz), but that's not re=
ally
> > > helpful. I'm not even sure if there is any good solution to this - ce=
rtainly
> > > HDMI and MIPI can't claim exclusivity and somehow best common rate mu=
st be
> > > found for PLL_VIDEO0, if that's even possible.
> >
> > IIRC the DSI DPHY needs a clock running at 297MHz, which is pretty much=
 what the
> > HDMI PHY should need too (or 148.5, but that's pretty easy to generate =
=66rom
> > 297). So which problem do we have there?
> >
> > > I was sure that HDMI PHY on A64 can be clocked from PLL_VIDEO1, which=
 would
> > > solve main issue, but to date, I didn't find any way to do that.
> > >
> > > That's pretty off topic, so I hope original patch can be merged as-is.
> >
> > It does, sorry
> >
> > Acked-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Looks like this hasn't landed yet.

I just applied it.

Maxime

--aika3toolbzzx6k2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuCH4QAKCRDj7w1vZxhR
xReXAP9d6b29GcEjh727p/kA9oAycPXHl/4zoa+y+ez+lswzmwD+NB0Yb6YdZty0
p+ceaQdycWA9uZfPAwFAra/NTM/IwQI=
=63/4
-----END PGP SIGNATURE-----

--aika3toolbzzx6k2--


--===============0348347592107992698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0348347592107992698==--

