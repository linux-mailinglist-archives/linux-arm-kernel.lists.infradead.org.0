Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B51DA978
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 06:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mlvZ9YjsPhloF7+nR2/yIzzARh+TZM436cq6puGF06s=; b=A1GK2Nm+RRmANu6OWlgJ5vq2m
	RE0lqJ2kK9GQu17h6YBbovS8eDkN/gUiJJ83F6MU5jfM61mniNRa99dY6QxaVV9ocIaa6Pr3Bzrid
	OtLcN42QV64SUAuWcgxrxrAQu8/31tf7WzCl1slc6ypM+hRfEz5JUtx+I5qQ3Kv/d/NgNUE38ll1e
	ihhD9SGL8HrYqmpMvwpuSyyX9dNhtJuoX4jrwA6g1SaFi1lmuQ2ClCUBNnqHR2rum5Dhgc20o0dRS
	GhI5AY2ymlNfKQMTDBNuV6pqHz0gZO+rkj93w102GSd/u++D5Q4/d0dqUaJCApifmhaeAJbL7Mt2A
	l4E9SJKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbGfu-0003dC-L3; Wed, 20 May 2020 04:49:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbGfk-0003ce-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 04:49:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbGfg-00066a-Fr; Wed, 20 May 2020 06:49:36 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jbGfe-00020E-9b; Wed, 20 May 2020 06:49:34 +0200
Date: Wed, 20 May 2020 06:49:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Bin Liu <b-liu@ti.com>, Michael Grzeschik <m.grzeschik@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, russell@personaltelco.net, fercerpav@gmail.com
Subject: Re: [PATCH v1] usb: musb: dsps: set MUSB_DA8XX quirk for AM335x
Message-ID: <20200520044934.hyngdg774ibqai46@pengutronix.de>
References: <20200327053849.5348-1-o.rempel@pengutronix.de>
 <20200519221851.GA15845@iaqt7>
MIME-Version: 1.0
In-Reply-To: <20200519221851.GA15845@iaqt7>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:31:46 up 186 days, 19:50, 180 users,  load average: 0.20, 0.13,
 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_214940_181394_078A6C86 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: multipart/mixed; boundary="===============6071728549113824433=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6071728549113824433==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2lnvkb6fzyg3lzwg"
Content-Disposition: inline


--2lnvkb6fzyg3lzwg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2020 at 05:18:51PM -0500, Bin Liu wrote:
> Hi,
>=20
> On Fri, Mar 27, 2020 at 06:38:49AM +0100, Oleksij Rempel wrote:
> > Beagle Bone Black has different memory corruptions if kernel is
> > configured with USB_TI_CPPI41_DMA=3Dy. This issue is reproducible with
> > ath9k-htc driver (ar9271 based wifi usb controller):
> >=20
> > root@AccessBox:~ iw dev wlan0 set monitor  fcsfail otherbss
> > root@AccessBox:~ ip l s dev wlan0 up
> > kmemleak: Cannot insert 0xda577e40 into the object search tree (overlap=
s existing)
> > CPU: 0 PID: 176 Comm: ip Not tainted 5.5.0 #7
> > Hardware name: Generic AM33XX (Flattened Device Tree)
> > [<c0112c14>] (unwind_backtrace) from [<c010dc98>] (show_stack+0x18/0x1c)
> > [<c010dc98>] (show_stack) from [<c08c7c2c>] (dump_stack+0x84/0x98)
> > [<c08c7c2c>] (dump_stack) from [<c02c75a8>] (create_object+0x2f8/0x324)
> > [<c02c75a8>] (create_object) from [<c02b8928>] (kmem_cache_alloc+0x1a8/=
0x39c)
> > [<c02b8928>] (kmem_cache_alloc) from [<c072fb68>] (__alloc_skb+0x60/0x1=
74)
> > [<c072fb68>] (__alloc_skb) from [<bf0c5c58>] (ath9k_wmi_cmd+0x50/0x184 =
[ath9k_htc])
> > [<bf0c5c58>] (ath9k_wmi_cmd [ath9k_htc]) from [<bf0cb410>] (ath9k_regwr=
ite_multi+0x54/0x84 [ath9k_htc])
> > [<bf0cb410>] (ath9k_regwrite_multi [ath9k_htc]) from [<bf0cb7fc>] (ath9=
k_regwrite+0xf0/0xfc [ath9k_htc])
> > [<bf0cb7fc>] (ath9k_regwrite [ath9k_htc]) from [<bf1aca78>] (ar5008_hw_=
process_ini+0x280/0x6c0 [ath9k_hw])
> > [<bf1aca78>] (ar5008_hw_process_ini [ath9k_hw]) from [<bf1a66ac>] (ath9=
k_hw_reset+0x270/0x1458 [ath9k_hw])
> > [<bf1a66ac>] (ath9k_hw_reset [ath9k_hw]) from [<bf0c9588>] (ath9k_htc_s=
tart+0xb0/0x22c [ath9k_htc])
> > [<bf0c9588>] (ath9k_htc_start [ath9k_htc]) from [<bf0eb3c0>] (drv_start=
+0x4c/0x1e8 [mac80211])
> > [<bf0eb3c0>] (drv_start [mac80211]) from [<bf104a84>] (ieee80211_do_ope=
n+0x480/0x954 [mac80211])
> > [<bf104a84>] (ieee80211_do_open [mac80211]) from [<c075127c>] (__dev_op=
en+0xdc/0x160)
> > [<c075127c>] (__dev_open) from [<c07516a8>] (__dev_change_flags+0x1a4/0=
x204)
> > [<c07516a8>] (__dev_change_flags) from [<c0751728>] (dev_change_flags+0=
x20/0x50)
> > [<c0751728>] (dev_change_flags) from [<c076971c>] (do_setlink+0x2ac/0x9=
78)
> >=20
> > After applying this patch, the system is running in monitor mode without
> > noticeable issues.
> >=20
> > Suggested-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/usb/musb/musb_dsps.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
> > index 88923175f71e..c01f9e9e69f5 100644
> > --- a/drivers/usb/musb/musb_dsps.c
> > +++ b/drivers/usb/musb/musb_dsps.c
> > @@ -690,7 +690,7 @@ static void dsps_dma_controller_resume(struct dsps_=
glue *glue) {}
> >  #endif /* CONFIG_USB_TI_CPPI41_DMA */
> > =20
> >  static struct musb_platform_ops dsps_ops =3D {
> > -	.quirks		=3D MUSB_DMA_CPPI41 | MUSB_INDEXED_EP,
> > +	.quirks		=3D MUSB_DMA_CPPI41 | MUSB_INDEXED_EP | MUSB_DA8XX,
>=20
> The MUSB_DA8XX flag cannot be simply applied to MUSB_DSPS, at least the
> teardown and autoreq register offsets are different as show in
> cppi41_dma_controller_create().

ok

> Do you understand what exactly caused the issue?

No.

Disabling DMA support "solve" this issue as well.

Beside, with DMA support, there remains one more crash with different sympt=
oms.
I can workaround it by disabling CPU Freq governor, or setting it to perfor=
mance.

> The kernel trace above doesn't provide enuough information.

Do you have any suggestions how to instrument the kernel to get needed
information? Or, should I try to capture USB traffic before the crash?=20

If it helps, ath9k_htc is a usb wifi adapter. It generates a lot of
USB traffic on multiple endpoints. Bulk with data packets and Interrupt
with register accesses, LED blinking... etc.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--2lnvkb6fzyg3lzwg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7EttkACgkQ4omh9DUa
UbPN6A/+NEoLiqEpSJSwhbJJZtm3Id6TZVhx45kidQFEpsUBKr2DrpvKL1QhSXDf
6qgL976h7vHDKvEFi2CO8OrGeetNp9339/x9jxn8o7d2B3mWMUIN8peklF3rvZEk
a4oZoHPRWXcGrg9U7vpotOvVO4OTriBma8/EUHLkup6N10sXgi6l1KFqNHn4DsVA
cIMp+gGwKBw3CaRXG1UJt+XbrPIPWGbVrW8v72neibXYGDXfGAgMeuV3TEXfHi1l
XWGycKvMCi0heMfmwaGUdS+vKCf+4Ozhc4vSg1w3OwH2Bkr9+6QWHOOVWLt04Hc3
5OkoYdYanGrDHmcaFpe+n+a5A8KFMeWrDM7X+Z4W5/Cn5XNr2KsZLOWDazhzQVTn
39foAps4y4cYY69e/N6Qzu9pNIf9awTC9b585hBOnMbazECOkitMPTMMS2G+eMOa
jyZjEqPuvpn/5uYTpSep+sXwfKxvECL3MreOvYgamH9MinT70nndT0j3+k7FgLIi
mHUbyJe9fM0QG9QbkgrabpYHFWyXFMPYEmIhYTjprTwtmtj9L3P4Bj1ZSCvDZQ/7
gousGwmAgXjSTPzfeZgXs8kIgfcv1a3TlAYbclcKnx8jsYOmiYdn39ll+FKCsSp+
4USHimXsK9HKZOO6gAwMvljmKZF+uUYh1smdOpbF2dF5wQlLaqI=
=YE6Q
-----END PGP SIGNATURE-----

--2lnvkb6fzyg3lzwg--


--===============6071728549113824433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6071728549113824433==--

