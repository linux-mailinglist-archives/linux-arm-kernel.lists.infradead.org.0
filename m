Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD972ACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7q7kfJxArozCd0zgzvUCbAIp4CTFZBoOYipqD7l4NIo=; b=uE3ckQEkrPPtJHFsY0o021x/L
	LgoI45T5T8UFC2ScOXOAxOqD5Z5Vy5EHizcKqynZPHWNCSlImt8vQWsYBGujQD+CyVmnbqPcSJzTR
	MzfvW60fHYMpIX/PD1Lc4nvFiK5aSr1/TPgTrq24VKnxTfSGJ5qVmuDMweObdHl0ynXrpUDz9Sf+e
	QwDFle/JIuFb4TolU2M+cwINtn3/mxLAfUhtmDB2MilOU8pXhQ3eOZlhozXfQKax/eZeeutR2N8Ue
	Qf3YQgXbHDZBVQwVYZcmCLIUSrEfTq5B5o6nAKiOEmEOGvIRJ/f9zm98itm4Piw0+I193r7XmgjXp
	nd9dt1p1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD5Q-00068e-4R; Wed, 24 Jul 2019 08:57:24 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD1F-00026W-FW
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:53:07 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3181760012;
 Wed, 24 Jul 2019 08:52:54 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:52:54 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: "Zengtao (B)" <prime.zeng@hisilicon.com>
Subject: Re: [PATCH] phy: Change the configuration interface param to void*
 to make it more general
Message-ID: <20190724085254.2amajixbxllgfluq@flea>
References: <1562868255-31467-1-git-send-email-prime.zeng@hisilicon.com>
 <20190711112039.leuvelpm7opeoaxq@flea>
 <678F3D1BB717D949B966B68EAEB446ED2FF5B22D@DGGEMM506-MBX.china.huawei.com>
 <20190717163753.ti6swjfhm7fczcn4@flea>
 <678F3D1BB717D949B966B68EAEB446ED2FF5D942@DGGEMM506-MBX.china.huawei.com>
MIME-Version: 1.0
In-Reply-To: <678F3D1BB717D949B966B68EAEB446ED2FF5D942@DGGEMM506-MBX.china.huawei.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015305_949897_5851C688 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1898326315319173620=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1898326315319173620==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zhoe2rfuq6ldgivi"
Content-Disposition: inline


--zhoe2rfuq6ldgivi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Jul 20, 2019 at 03:03:20AM +0000, Zengtao (B) wrote:
> >-----Original Message-----
> >From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
> >Sent: Thursday, July 18, 2019 12:38 AM
> >To: Zengtao (B) <prime.zeng@hisilicon.com>
> >Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
> ><paul.kocialkowski@bootlin.com>; Sakari Ailus <sakari.ailus@linux.intel.com>;
> >linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> >Subject: Re: [PATCH] phy: Change the configuration interface param to void*
> >to make it more general
> >
> >Hi,
> >
> >On Wed, Jul 17, 2019 at 06:36:09AM +0000, Zengtao (B) wrote:
> >> Hi Maxime:
> >>
> >> Thanks for your reply.
> >>
> >> >-----Original Message-----
> >> >From: Maxime Ripard [mailto:maxime.ripard@bootlin.com]
> >> >Sent: Thursday, July 11, 2019 7:21 PM
> >> >To: Zengtao (B) <prime.zeng@hisilicon.com>
> >> >Cc: kishon@ti.com; Chen-Yu Tsai <wens@csie.org>; Paul Kocialkowski
> >> ><paul.kocialkowski@bootlin.com>; Sakari Ailus
> >> ><sakari.ailus@linux.intel.com>; linux-kernel@vger.kernel.org;
> >> >linux-arm-kernel@lists.infradead.org
> >> >Subject: Re: [PATCH] phy: Change the configuration interface param to
> >> >void* to make it more general
> >> >
> >> >* PGP Signed by an unknown key
> >> >
> >> >On Fri, Jul 12, 2019 at 02:04:08AM +0800, Zeng Tao wrote:
> >> >> The phy framework now allows runtime configurations, but only
> >> >> limited to mipi now, and it's not reasonable to introduce user
> >> >> specified configurations into the union phy_configure_opts
> >> >> structure. An simple way is to replace with a void *.
> >> >
> >> >I'm not sure why it's unreasonable?
> >> >
> >>
> >> The phy.h will need to include vendor specific phy headers
> >
> >I'm not sure this is an issue.
> >
> >> and the union phy_configure_opts will become more complex.
> >
> >And this was the plan all along.
> >
> >> I don't think this is a good solution to include all vendor specific
> >> phy configs into a single union structure.
> >
> >The thing is, as Sakari have stated, this interface was meant as a generic way
> >to negotiate a configuration between a PHY consumer and a PHY provider (ie,
> >whatever sends data to the phy and the phy itself).
> >
> >If you remove the explicit type check, then you need to have prior knowledge
> >(and agreement) on both sides, which breaks the initial intent.
>
> I get your point, so if we follow your design, it will look this:
>
> union phy_configure_opts {
> 	struct xxxx1_phy phy1_opts;
> 	struct xxxx1_phy phy2_opts;
> 	struct xxxx1_phy phy3_opts;
> 	.....
> }
>
> And the general phy framework needn't to know about the type but
> just pass through, the caller and the phy driver definitely need to
> know what they are doing.

I'm not quite sure what you mean here. The configuration only applies
to the current PHY mode. So the phy consumer will have changed the
mode, and the PHY will have accepted it.

That change is also doable from the framework.

Then, which part of the union is being used is easy to figure out for
both parties, since they agree on it already.

> So I suggest a more general type void *, otherwise the general phy
> will need to see a lot of details which is not that general.

Except that this effectively becomes a black box that the framework
has no control and / or knowledge about.

Which means that it cannot do any kind of checks on it anymore, and
again, that the consumer and driver need to have prior knowledge of
what is being passed, without any way to check whether it's actually
what needs to be passed.

To some extent, the union also allows that, but it's just less
explicit and in general worse, to just pass void* here.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zhoe2rfuq6ldgivi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTgcZgAKCRDj7w1vZxhR
xbVJAQC2WbhGtzvCUsqlgubaKt5tOZDSw/86LuIRNUn0C631dQD9GWfS8I5V23G8
OJ5HZ5/L3OnvQJfGu3rgI+p9a7tHdgU=
=jk2+
-----END PGP SIGNATURE-----

--zhoe2rfuq6ldgivi--


--===============1898326315319173620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1898326315319173620==--

