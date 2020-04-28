Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42FC1BBCC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=35SWL5dwGJFiubYf4NfQry0vtG0YDHYYzAVaYwjYb58=; b=cUNjd5no9sfUCkSpkUASXiTGT
	r6wSUPk63dvuoB9m1D2UkrzVmFOi+Bg6CXxQFghGYmzQgitVTlVZCGRe4qVfFjBGbp5e1VDfLbyL6
	KcK8OjYAuOkJiKVA8iv62TjsGeM8GtPJqHxveVw0rVdyX0Cf32wWwUAU1OcyaPnlBf6HsvBMyicwL
	CYGP3VrDdTeP+xO0uXDoiGwgCZMtulXX4dhsZ2S8jwSEgQTatZKxZmoHj5csjpGtBWAPWwOHOEBLj
	4okzsdUdOktnaKBOoKB32ATuqaN0ozzaLnexVQC4adu3awPpms8Y2LqEQGQNhEbIso6lDCjybNr6f
	CPJH4GsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOgv-0008Na-2p; Tue, 28 Apr 2020 11:46:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOgi-0008LT-F8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:46:09 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jTOgf-0003kY-1Q; Tue, 28 Apr 2020 13:46:05 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jTOgd-0006Bj-7O; Tue, 28 Apr 2020 13:46:03 +0200
Date: Tue, 28 Apr 2020 13:46:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Bin Liu <b-liu@ti.com>
Subject: Re: [PATCH v1] usb: musb: dsps: set MUSB_DA8XX quirk for AM335x
Message-ID: <20200428114603.55a5xj2o3fupt57a@pengutronix.de>
References: <20200327053849.5348-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200327053849.5348-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:45:35 up 165 days,  3:04, 179 users,  load average: 0.00, 0.01,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_044608_507149_E3490180 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>, fercerpav@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, russell@personaltelco.net,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7206155378160313993=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7206155378160313993==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vi2ejj65ibafjw3l"
Content-Disposition: inline


--vi2ejj65ibafjw3l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

ping

On Fri, Mar 27, 2020 at 06:38:49AM +0100, Oleksij Rempel wrote:
> Beagle Bone Black has different memory corruptions if kernel is
> configured with USB_TI_CPPI41_DMA=3Dy. This issue is reproducible with
> ath9k-htc driver (ar9271 based wifi usb controller):
>=20
> root@AccessBox:~ iw dev wlan0 set monitor  fcsfail otherbss
> root@AccessBox:~ ip l s dev wlan0 up
> kmemleak: Cannot insert 0xda577e40 into the object search tree (overlaps =
existing)
> CPU: 0 PID: 176 Comm: ip Not tainted 5.5.0 #7
> Hardware name: Generic AM33XX (Flattened Device Tree)
> [<c0112c14>] (unwind_backtrace) from [<c010dc98>] (show_stack+0x18/0x1c)
> [<c010dc98>] (show_stack) from [<c08c7c2c>] (dump_stack+0x84/0x98)
> [<c08c7c2c>] (dump_stack) from [<c02c75a8>] (create_object+0x2f8/0x324)
> [<c02c75a8>] (create_object) from [<c02b8928>] (kmem_cache_alloc+0x1a8/0x=
39c)
> [<c02b8928>] (kmem_cache_alloc) from [<c072fb68>] (__alloc_skb+0x60/0x174)
> [<c072fb68>] (__alloc_skb) from [<bf0c5c58>] (ath9k_wmi_cmd+0x50/0x184 [a=
th9k_htc])
> [<bf0c5c58>] (ath9k_wmi_cmd [ath9k_htc]) from [<bf0cb410>] (ath9k_regwrit=
e_multi+0x54/0x84 [ath9k_htc])
> [<bf0cb410>] (ath9k_regwrite_multi [ath9k_htc]) from [<bf0cb7fc>] (ath9k_=
regwrite+0xf0/0xfc [ath9k_htc])
> [<bf0cb7fc>] (ath9k_regwrite [ath9k_htc]) from [<bf1aca78>] (ar5008_hw_pr=
ocess_ini+0x280/0x6c0 [ath9k_hw])
> [<bf1aca78>] (ar5008_hw_process_ini [ath9k_hw]) from [<bf1a66ac>] (ath9k_=
hw_reset+0x270/0x1458 [ath9k_hw])
> [<bf1a66ac>] (ath9k_hw_reset [ath9k_hw]) from [<bf0c9588>] (ath9k_htc_sta=
rt+0xb0/0x22c [ath9k_htc])
> [<bf0c9588>] (ath9k_htc_start [ath9k_htc]) from [<bf0eb3c0>] (drv_start+0=
x4c/0x1e8 [mac80211])
> [<bf0eb3c0>] (drv_start [mac80211]) from [<bf104a84>] (ieee80211_do_open+=
0x480/0x954 [mac80211])
> [<bf104a84>] (ieee80211_do_open [mac80211]) from [<c075127c>] (__dev_open=
+0xdc/0x160)
> [<c075127c>] (__dev_open) from [<c07516a8>] (__dev_change_flags+0x1a4/0x2=
04)
> [<c07516a8>] (__dev_change_flags) from [<c0751728>] (dev_change_flags+0x2=
0/0x50)
> [<c0751728>] (dev_change_flags) from [<c076971c>] (do_setlink+0x2ac/0x978)
>=20
> After applying this patch, the system is running in monitor mode without
> noticeable issues.
>=20
> Suggested-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/usb/musb/musb_dsps.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
> index 88923175f71e..c01f9e9e69f5 100644
> --- a/drivers/usb/musb/musb_dsps.c
> +++ b/drivers/usb/musb/musb_dsps.c
> @@ -690,7 +690,7 @@ static void dsps_dma_controller_resume(struct dsps_gl=
ue *glue) {}
>  #endif /* CONFIG_USB_TI_CPPI41_DMA */
> =20
>  static struct musb_platform_ops dsps_ops =3D {
> -	.quirks		=3D MUSB_DMA_CPPI41 | MUSB_INDEXED_EP,
> +	.quirks		=3D MUSB_DMA_CPPI41 | MUSB_INDEXED_EP | MUSB_DA8XX,
>  	.init		=3D dsps_musb_init,
>  	.exit		=3D dsps_musb_exit,
> =20
> --=20
> 2.26.0.rc2
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--vi2ejj65ibafjw3l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6oF3YACgkQ4omh9DUa
UbNxxw//X9YdZtPal7XffaLiNDXV1lnFi/NLXSUeEj0TCUjUivG7zjpXh2AdXzql
+a6YO08MWiXAvUt+4iQUg3RD6gxXQVvp4s5aQ3s5Izw/fUMU+EUf5Ert5omGZsds
ppVx25gB0MO2DBwtpE/eQlUT6g8r0buVeTnsSHEipHHA4cWnxGbroQsqSGhYAtMp
Sr0ssZB1qIqi9RuJjBCTRP4A9cX4Pytz0f5vrvN8+aJqAH3D1U/rlqyPOv+uk4S/
JoVCfGB2SnqgtdkuksyIiDeXnpmh32HR5bD5AyhG5zmEU86t0ZFlFPQB2lEBGYK9
ojkE4FbsHRQBRGAVV5zaty69jPW2rrwCHjDG0TnVi7Qh6HeyMdDQtdhGr1GcMJku
t21FH5KF0r8d0UESSXSl30zsJgvAARq7/QPcxC6OmLwW4i2JEWnu4BgL6bIfDJRa
narw0yq8us19iV00rlp/xFwDA1tHnOZrrAt+t7xbWT/LAeUBhtQXJzlO4f9oWNap
8fLu8UDTyVwStSVPHNzmDoSR2z9Rj2RUfy0zdNYkELvfmMZ06T6cjVLTIYVahOIw
R63PuvZu0yeZ6Ue9WbgLjme+6rWjLehigZrH8e6YbM5ZX0fBJZcZCjgYgWgpQRkn
YVSHhmCYtn7CxacmRbRQ2kNNCOTZc6ClZ4oq3t1MsTRJtdYGMBo=
=GvdV
-----END PGP SIGNATURE-----

--vi2ejj65ibafjw3l--


--===============7206155378160313993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7206155378160313993==--

