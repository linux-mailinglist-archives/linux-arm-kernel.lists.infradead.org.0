Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852C46EDE4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 07:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EtWqFjnMG9XmVOnlP8Xc9dym+mrcb7niInzsZaQf7hg=; b=i+UJXeGOfiGPxBGmi3PAsrrT+
	cEi13ncx4wm4TujENfuhI9gsBKHBET27lK/XsfVkqBT4eme2XB28bEkyJGkDhPoL942bWecXcWJdV
	4UAToQpdj64EXbTIw1WOxLr+pPM8/q7ALh2G2GzcHTdykI6uToc/zzgKgnjRo00cuQFB8rYF0HtVn
	DVekiHmpYrBXlR3NiOf4TntT5bMixMk9vu8bcTrEnvMo57G+2aAd2voY/L9YhpsjGxLt3ex2PZEpc
	X/PakPrz40D446pFvjFzID/dJUjVcMfgaYq5PIa6dK9C2iygIVr//+4pqqbEzAHUStimqaff9OFDL
	Tt77397wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoiAL-0008DG-Oa; Sat, 20 Jul 2019 05:44:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoi9q-0008DA-QV
 for linux-arm-kernel@bombadil.infradead.org; Sat, 20 Jul 2019 05:43:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kEP8HL5dEZzchSMMN2ExPn/NQeXmZyVrGL9v0LMR/3U=; b=T19z9k9FwVdD5Yzu7I8axSGuU
 r9NPsIxDOFkVVArHoFKAYcOJsHY8iLWwuQHO8Q1Klt/HdLWZ6WyxNu8/o56MwaIqHMV2V636P6chk
 1pnVygAZ9PtDXjKA+W9xUmCq+XG+vZxKJhFzZb1OPnJPmmj9RYTiHLfu90LFU5pumZihsIbeiN7PN
 zpoBIXHR/uHliH65hY2TFCt+YlyBZ1qPsa6D8EHKmJD6js1SS8I9pR5Vr5RmAaVmCJqLR0VzimM09
 gj94X7K2ew2m5lSQAsUze6Tl3Tbac1iccydstb1u7ns9gM3RxkCmU6cXpmaZUZxNv+UXqFlrs6QgM
 sQibXC3Gw==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoi9n-0006eK-2F
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 05:43:44 +0000
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4F917100005;
 Sat, 20 Jul 2019 05:42:56 +0000 (UTC)
Date: Sat, 20 Jul 2019 07:42:55 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/3] drm/sun4i: Add support for color encoding and range
Message-ID: <20190720054255.vyma2lyiu2tohl74@flea>
References: <20190713120346.30349-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190713120346.30349-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9126107903392084123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9126107903392084123==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4bp3a2hzmkf5ifze"
Content-Disposition: inline


--4bp3a2hzmkf5ifze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 02:03:43PM +0200, Jernej Skrabec wrote:
> In order to correctly convert image between YUV and RGB, you have to
> know color encoding and color range. This patch set adds appropriate
> properties and considers them when choosing CSC conversion matrix for
> DE2 and DE3.
>
> Note that this is only the half of needed changes when using HDMI output.
> DW HDMI bridge driver has to be extended to have a property to select
> limited (TVs) or full (PC monitors) range. But that will be done at a
> later time.
>
> Please take a look.

Sorry for the delay, I applied all three.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4bp3a2hzmkf5ifze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTKp3wAKCRDj7w1vZxhR
xb/MAP0YGFEL32Wso4KP7I+AUWQBVf1s5y0UbrS6kdiCC1q+pwD+IxvTlGoVYE3C
XSeD1QTADsnw4LRHiB1TTiZsmdd3rw4=
=gCkd
-----END PGP SIGNATURE-----

--4bp3a2hzmkf5ifze--


--===============9126107903392084123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9126107903392084123==--

