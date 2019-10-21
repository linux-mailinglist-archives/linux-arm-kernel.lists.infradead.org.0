Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1A8DEA75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V7Hy3giLde9KBxojxEY12GZZ8rsfSc3xtvwZ9OMKzHA=; b=oCCotfmgQmE1F2TfeUVRVqD/O
	7lziJxog1BHWMs8pWHp9/Bfp8p4B02mPQYMotAXu5zd/hBWXMP5sebyez0ektRb5ObGO0lzpe780Z
	7Ch/s8pfsK6cjbqgn/J5FN32mlSKSVcA3W6Ybb4i3e18jIir95uPiO8UQGtjb1Qfs/WG9MxrOIKww
	DNlDzcHfIRye1n/n9cuNBNYpWvhivXzx5nqeJNNCG3i+yb9zzhf3Y1TLRDrbUIv/jze7BG9umjZ4I
	DVCrntqdBQ88HWUuAzrkE03G7uGRjSOCnLD6JF7toZN5rKw7jTdinpJFcQolzqWxz/NlucVaTgr70
	RDR1693rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVZW-0006ua-TA; Mon, 21 Oct 2019 11:09:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVZN-0006tu-LI
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:09:50 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC302206C2;
 Mon, 21 Oct 2019 11:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571656189;
 bh=3tGyLnRu5V+1lH+Ll8Ur/m9/FJeaK074rwaJRpkHO5E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xKoe/9B429mheTKTi5QgSOptvY37IUxuEzhlKdj8OOpRR71TeCPMBzSQVH2wr8tMn
 627KrX1KKFNGqVrWevkhBmp+XildRYXcozhMXLj3DkZhVrzfiobl0vH0tnevaYMwVQ
 pk6FMnIwOZ4pxMtD6AwQZ9FC8rihThFaauVPlIUE=
Date: Mon, 21 Oct 2019 13:09:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH 4/4] arm64: dts: allwinner: orange-pi-3: Enable USB 3.0
 host support
Message-ID: <20191021110946.gxmib3to7n7v2vof@gilmour>
References: <20191020134229.1216351-1-megous@megous.com>
 <20191020134229.1216351-5-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191020134229.1216351-5-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_040949_714736_83487C10 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============6425655246885716724=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6425655246885716724==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w4fbeowpggjvqztj"
Content-Disposition: inline


--w4fbeowpggjvqztj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 20, 2019 at 03:42:29PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> Enable Allwinner's USB 3.0 phy and the host controller. Orange Pi 3
> board has GL3510 USB 3.0 4-port hub connected to the SoC's USB 3.0
> port. All four ports are exposed via USB3-A connectors. VBUS is
> always on, since it's powered directly from DCIN (VCC-5V) and
> not switchable.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Those last two patches are fine with me, I'll merge them once the phy
driver will be merged.

Maxime

--w4fbeowpggjvqztj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXa2R+gAKCRDj7w1vZxhR
xfNsAQCCC1sgS5gZhICtsezIsL40SwcFqJ7uiTtlTkak8UZExgEAq65tLkT+Xmn6
J12MqeTnjfEE6VZ7LKlcv3VYjv3TCQA=
=1SeF
-----END PGP SIGNATURE-----

--w4fbeowpggjvqztj--


--===============6425655246885716724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6425655246885716724==--

