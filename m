Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3F08A034
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XMd1HbAr8nZ+MgGV0zMrT2p/ZubSyGNFMF+aCB/+0l4=; b=Kd1CzJE7YL58foH26Z0CFNTS2
	Y7T3oPGkklS7c7qPW1+cHrq8L1QmtONKWIIfknuTPjzzbdmSHUJpnOWZi8XAZ2ih+bNyF28yFUlOU
	pzhEXw5iMeZUOnR/ogrRQj/qlJ33AZAsHW6IrWYXISyzJzKUHe3tqyItVseo+/3Zr8Q4E//1mKWwO
	YYTu0FvC6snMS4CeZbSQ4H2ey+xGlLRqnQ4eJNgJEhylQUeVblBQPOAlo1SvZmRrQriocbEFids/O
	SrQqk4O322nbQO7/QwK6+vjaonMR+y1aZBTqIphCKytfwf7+N9TIENa29Xoi1OTd5DY0go8UPxaur
	YoFREGX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAoE-0000dm-DH; Mon, 12 Aug 2019 13:56:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAnx-0000dK-Ly
 for linux-arm-kernel@bombadil.infradead.org; Mon, 12 Aug 2019 13:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RunPSQRypBE4GSMQC6r7DT97Gu1IHMMIOQr/iwYIAsk=; b=ftnRzj0FjlePH7DU8MLUFfaTy
 RRDbtle3XWZB1X9rjIMTgHwkyflh2c3WwYmo3xlI7M6TAx1z5X1IFWNo3glY1kA98Iq7OeTWW5Vf3
 u+wVrWnlDBX+ji5EWDqm3O1ruPr+zBxyvgGLRlt7B9Ac6/Rc4wy3LbftQVbrY8iU8xUPzZFYxv1AH
 JBmAJtwq/TkiwQEv7dZVk9lJPTtHpfHqbz53XuuQFK0B/rTN9M1sYDt6yY8JSoiZsia7My/C0zVFj
 UAklfaRbpzygoFVqG9DxvL93JwzVrv7Q2jXszVJ6+fvAV10FlGw+2ZuF83nGua3GNd06s5vwpfx4b
 Qv7T2j+9Q==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAnr-0000e1-RQ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:56:06 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id AD3FC240003;
 Mon, 12 Aug 2019 13:55:19 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:55:19 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
Message-ID: <20190812135519.ysmqytkhtln7sknc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0259850066495332439=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0259850066495332439==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ghcmst6jaoa4kn7"
Content-Disposition: inline


--5ghcmst6jaoa4kn7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Mon, Aug 12, 2019 at 02:12:21PM +0200, Hans Verkuil wrote:
> On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> > Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> > has a change which raises a question about H264 controls.
> >
> > Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> >
> > Please take a look.
>
> This has been sitting in patchwork for quite some time. I've updated the
> status of the various patches and most needed extra work.
>
> It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
> that these two are still valid? They apply cleanly on the latest master
> at least, but since they are a bit old I prefer to have confirmation that
> it's OK to merge them.

Yes, you can definitely merge those.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5ghcmst6jaoa4kn7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVFvxwAKCRDj7w1vZxhR
xaNLAPsEGPiyqOdRajYEA4cGxVY18jjPs7B80tUGLwn7y/lX7QEA1hoN114NPrjR
odSkIRw1Cs9MkNQXMbozY4cjiWx8ZAs=
=JSLg
-----END PGP SIGNATURE-----

--5ghcmst6jaoa4kn7--


--===============0259850066495332439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0259850066495332439==--

