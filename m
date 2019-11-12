Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB0F9A3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ibViSRh9iE1w8dHqtR2mYZRWpHqo7QeJRrq4Jtc4Vns=; b=la/YXSvBpsCoV/GEnzpgei4gM
	PrYunAlqQQFgU+2G7BG0PrXveSNqAm1jW04YeNyY1sOzvsJotTxbgIqxxGUnvbAH6NuGvzQomk8pK
	wHpo+tLIsdiHXIhAoJRwDClSGiOGvzWoo+8PeaVov6b2zoJK84Lv/S3/5og5F6pv1j4U4JinhiRTt
	15jmRprMwa6ww6uDwSTPbtWqTE0/9PR5E5q2F7HFNhI77tcdNrehi6nWJE1UQDlyCSLsU2hmwmOQw
	nfCsyeM9zjvSu+S4uBW/YXtTMQ2UtMgCzfIFj5TEgryvAu5NKPWs77ikDN7M5OUjoNQFU0QrcBkLE
	mom/CqGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUcQ0-0005jK-Al; Tue, 12 Nov 2019 20:05:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUcPt-0005iu-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 20:05:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 261A421872;
 Tue, 12 Nov 2019 20:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573589132;
 bh=Snz++UdcsaVDqtyqzKDLVJnVYN3dmVpXMHJ3jUKP5IY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vYvIjyxkX5Zo8smdNu3bWGbERygoEFwwa6KXjuXfQq+TRCeAWsmEJn1F8txa55XNl
 dcJm4I7iUpp3pdW1mO1EXGRS1dC5mvoij3dl3829qiouhIb/BOWR7tZJJ0XfhQKzdh
 RpvjGbVD5r2n9ALYNjdqHeXzOjS8r6oIv9wTYj5U=
Date: Tue, 12 Nov 2019 21:05:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH] drm/bridge: fix anx6345 compilation for v5.5
Message-ID: <20191112200529.GD4345@gilmour.lan>
References: <20191112175940.GA13539@lst.de>
MIME-Version: 1.0
In-Reply-To: <20191112175940.GA13539@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_120533_129766_781A9A70 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7671179490535782196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7671179490535782196==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="K3iCROrs1P5jLO0B"
Content-Disposition: inline


--K3iCROrs1P5jLO0B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 12, 2019 at 06:59:40PM +0100, Torsten Duwe wrote:
>
> The anx6345 driver originally was copied from anx78xx.c, which has meanwhile
> seen a few changes. In particular, the removal of drm_dp_link helpers and the
> discontinuation to include drm_bridge.h from drm_crtc.h breaks compilation
> in linux-5.5. Apply equivalents of these changes to anx6345.c.
>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
>
> ---

I've pushed that fix, but it still doesn't compile on x86. I'm
guessing you're missing a depends on OF in the Kconfig option.

Maxime

--K3iCROrs1P5jLO0B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcsQiQAKCRDj7w1vZxhR
xfxeAQCbVisRTcE1Ce3PVDIcGzEUIJUMob4fd21aFdLYVx1lNQD+JpvMUuRpM4sh
Juw/GRayY3iQ60DmSudqv+xFhRjsMAk=
=+el9
-----END PGP SIGNATURE-----

--K3iCROrs1P5jLO0B--


--===============7671179490535782196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7671179490535782196==--

