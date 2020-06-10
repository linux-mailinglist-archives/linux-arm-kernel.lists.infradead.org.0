Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E071D1F5B5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VjzQoQoz+B4MlswCHi4CUd2yk2GjxTBpk17blVCXkYo=; b=A88wtYlMpWMF/bhy8940YeRPh
	SwHBfrHlZjIf5qHVVC8hVXcjEM5bQfGJ1eH9mLcFUk4xXAvUGaeb6MO47gAEEkvopY3SLN1zH5oHn
	RXM7rExCmHjXcglA/UxDF4uzEg2DArHx9l/vgqqzcu7Q/2kFbcXA+sJp6gZjwCJFnZVB1as8nViA9
	VsiyX/QonksfLWDUnRFaFBE5ou50idRMRPsPSpzM9Ns3HjeRTxYZsvM6fIovS168yLEJ14NQqDOWc
	fAT6kYUBb+DfM47FYvmXMffu34hVguKKwE8xiU6eh+qSTUcAyA/KxF5rwyStqBzM3COCrPQWXseuC
	CsqZa56NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5eI-0002Pw-J8; Wed, 10 Jun 2020 18:40:30 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5eA-0002Ou-Tx; Wed, 10 Jun 2020 18:40:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DBB4858015B;
 Wed, 10 Jun 2020 14:40:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jun 2020 14:40:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=udqN551CwjSTVUDc0D3kSahB8HY
 8CeSIkA8lNOgclJo=; b=SSOBpvk4b4Pw9e8QupB5MChycdXrWcxNGUbo5+QqOB2
 EG/b6zh9og0gepAraw33BO9gskuaIRH/d0B35Z8IRps3FyOX9d09lsd8adi6iZud
 e4LF60hPZkpPmAu/O1VqMmODBhtuiuTNUgkN6kPFd0EfVB6pqxZ0SQ+sbm/y/nRO
 MNTEjq/SsNEpo9sa0FRTaXDvCrZLPJFIAn6DudP3qcIE9GxA/fgU8wjLHtzPcYpE
 Nu3K+4rdJ1I2YSTF4zBggLJD53HHuXGiDBIgUIg7GAQMLxDLwTE9cIgBj8SQsIGB
 DQ4z62PiBkuUX6hQy+lS0Tf3xRZ7FSAlI0tNzJyEtTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=udqN55
 1CwjSTVUDc0D3kSahB8HY8CeSIkA8lNOgclJo=; b=oUMwvVekXmmDKq3tMHHOiq
 Oe9XPwUXSkst2D1ORd9yRYO9u/dghU0y7YQOhRV5KtF2yslH5qzusgPFowpBlrpU
 +TGcxs6rkP28NyrODwFw+02LPte9frNWwwH6y/bNeay6zQ2ABLMb3yU7hkmLiWbK
 TcDdko3D0PsAE3dbjz079ZwugHREMVR+ecCwNXR9JnDW+BjmFHCKW+/rOCZYsI/N
 ZZvYdbkGu6Td/qD0nK/UgT1g/fsNMLm+PBk8ocOchxmIDUcZ/kuSo8mrQkVZO4Ck
 snK/aDJys04wqBT2O6DV+tzzKj3CMNH827Hc5u6Pl2u7J461+KLnuKbUKy/HPfYw
 ==
X-ME-Sender: <xms:DCnhXtRpnDDHB7tIAsgobtDpskmMLtcq5mgmBd4ZveX-ADkzXrvmjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehiedgudefudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:DCnhXmyjE-mu_wBJfFrUMjijn_JHiqCkLoIfce_gMkkOdJy5pzYR-Q>
 <xmx:DCnhXi31HyndptgqdHeNm8rYG2sDdpk_rg8DI31Fibd1LTqMSLPWag>
 <xmx:DCnhXlA-QYkYRubCILB4TOA-06l9HsdBHv39yzdJvOD_yWDnTM09AA>
 <xmx:ECnhXqjgnNS8FrTCg8Qxbtz9huV6yGQNddfcwbSdHWAb8o8mOm9kaA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 962643280064;
 Wed, 10 Jun 2020 14:40:12 -0400 (EDT)
Date: Wed, 10 Jun 2020 20:40:10 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v3 066/105] drm/vc4: txp: Turn the TXP into a CRTC of its
 own
Message-ID: <20200610184010.slnn46azvxvtxp7t@gilmour.lan>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <e9bc87e240b62c80617ea7825144121a470a2d44.1590594512.git-series.maxime@cerno.tech>
 <CACvgo50j1t5VtMgE7-pquuYRaC_ku5pZ2aBVoD-MCCktfPm-VQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACvgo50j1t5VtMgE7-pquuYRaC_ku5pZ2aBVoD-MCCktfPm-VQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_114023_108199_A2A1BC40 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
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
Cc: LAKML <linux-arm-kernel@lists.infradead.org>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============4656724318940572711=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4656724318940572711==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="heqnr6uenmn6etam"
Content-Disposition: inline


--heqnr6uenmn6etam
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Emil,

On Thu, May 28, 2020 at 04:51:31PM +0100, Emil Velikov wrote:
> Have you considered splitting the series into several parts and
> focusing on merging one at a time?
> IIRC this the longest series _ever_ submitted to dri-devel, plus it
> seems to be growing with each revision.
>=20
> Due to the sheer volume, it's likely to miss various points - large or
> small (like below).

Yeah, I know, I wasn't really happy about it either :/ I already removed
some parts of it to reduce it, but I'll try to be more aggressive.

> On Thu, 28 May 2020 at 08:47, Maxime Ripard <maxime@cerno.tech> wrote:
>=20
> > +static int vc4_txp_enable_vblank(struct drm_crtc *crtc)
> > +{
> > +       return 0;
> > +}
> > +
> > +static void vc4_txp_disable_vblank(struct drm_crtc *crtc) {}
> > +
> Core should handle if these are NULL, so the stubs should not be needed.

I'm really not sure actually. In the general case, you'll want to have
vblank functions, since it doesn't really make sense to have a driver
without it.

We could argue that with writeback, it might be optional like being done
here, but you don't really know if you're going to use a writeback
connector in the CRTC at initialisation time, and all the other
writeback encoders actually seem to use a real CRTC that can output to a
real encoder, and therefore has some proper vblank handling too.

So yeah, it really looks like the check is valid, and that driver is
just the odd case.

Maxime

--heqnr6uenmn6etam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuEpCgAKCRDj7w1vZxhR
xfKbAP4guXZpKOBW0DBgderX3rva9jNmN1dH66Kel2jC5+ha2AD/f4mM9LuoVOUU
FtD2pyxEBAUtj6eIpZBwTD4vxJiVgg0=
=v1fz
-----END PGP SIGNATURE-----

--heqnr6uenmn6etam--


--===============4656724318940572711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4656724318940572711==--

