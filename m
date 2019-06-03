Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AF632EEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nek8q8XPn/VoJb0zhUuKKSWT8etWWiFgHQCk+1UA5gs=; b=OKsVs+J3uvgxU1K1oHadqYJ2z
	x3uMFYDq1Rtp9DPf6eFAWAAj36YwGDnAU6jW2sbn4qqUbWjFDqof3PuVddsAGCZBN9LXIKFtlmdP9
	mnZH2SmpXrwzdnZ3NHws3urpyLoGkI0ut2gtGo+6FYAseQ9oYi3WimnHscO0bSik2mm1N1tAqp45p
	EvwfJCXkuKtBWjmZFuvz2zd97bWJ/4NJZRhdkyXRp4RxNrAZyVpUCNQ0aZcQRqgCWQuboif442/dZ
	kDRapFG2BGT3BWDUlXmkLK2WWVw23vs8qcEl4wo49MDeAGNCygJMwrw3SFq2z6J99XXOsXyk9OhVR
	WIvWNa+ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlQM-0007i6-9g; Mon, 03 Jun 2019 11:46:46 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlQF-0007hm-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:46:41 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 6EDBB1BF216;
 Mon,  3 Jun 2019 11:46:21 +0000 (UTC)
Date: Mon, 3 Jun 2019 13:46:20 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Message-ID: <20190603114620.vsvbxz6gyhg3tn7b@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-3-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_044639_684823_C97D6C1B 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca,
 paul.kocialkowski@bootlin.com, wens@csie.org, boris.brezillon@collabora.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1154647993940257147=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1154647993940257147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fsayms5djr42vwm2"
Content-Disposition: inline


--fsayms5djr42vwm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 30, 2019 at 11:15:11PM +0200, Jernej Skrabec wrote:
> Reference index count in VE_H264_PPS reg should come from PPS control.
> However, this is not really important because reference index count is
> in our case always overridden by that from slice header.
>
> Cc: nicolas@ndufresne.ca
> Cc: boris.brezillon@collabora.com
> Cc: jonas@kwiboo.se
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

> ---
> We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
> and pps->num_ref_idx_l1_default_active_minus1 fields or add
> num_ref_idx_l0_active_override_flag and num_ref_idx_l0_active_override_flag
> to slice control.
>
> Current control doesn't have those two flags, so in Cedrus override flag is
> always set and we rely on userspace to set slice->num_ref_idx_l0_active_minus1
> and slice->num_ref_idx_l1_active_minus1 to correct values. This means that
> values stored in PPS are not needed and always ignored by VPU.
>
> If I understand correctly, algorithm is very simple:
>
> ref_count = PPS->ref_count
> if (override_flag)
> 	ref_count = slice->ref_count
>
> It seems that VAAPI provides only final value. In my opinion we should do the
> same - get rid of PPS default ref index count fields.

The rationale was to be as conservative as possible and just expose
everything that is in the bitstream in those controls to accomodate
for as many weird hardware as possible.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fsayms5djr42vwm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPUIjAAKCRDj7w1vZxhR
xdm0AP46c7mpa3rFUC3RjFMniXaoNTXWcQ8pPICsPfw3vjCa9gD+KujizJ6uc9di
+fd1bkaTJJCq8ZbqR+3HqBMJe9acIgE=
=wE3x
-----END PGP SIGNATURE-----

--fsayms5djr42vwm2--


--===============1154647993940257147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1154647993940257147==--

