Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210D92038
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9f/3r4RYJ44zK2d+VQlCx1kL203BI1+Moo0jjP5Bwmw=; b=aRtxRQsDeGp1WCIgTr0vYda4U
	7PR0o3LVNTnqc3B6wsKJVGy+OHWQ7HcAguD8R6WdOQYWt+47XCDNpKDIHJ+99YBxIftOFIKnPJ1Zi
	C5984zcdobmntgQOqUDgp0nGMurireycH5H3Ju2UAtIueBlnQ6OPefMvG+7te3PMmrkoPI5wrf6W5
	JOzxAGz4Ol94js2khz9Fxoja5uzPOFsgrQhpJJYE4mNMiTm28RqrmDlfJ5+qi/gvUamM/54w2miDm
	TrQVn0nYvQr8cuc/9RW5nZc0nvORqD3Si7Ynum1oXJfUDApbpvyL+gKRhfBw993/Cj9Oank5o1M3k
	I/1/ck6mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdtv-0006iY-Qs; Mon, 19 Aug 2019 09:24:31 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdtg-0006iC-0D
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:24:17 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id B65278043B; Mon, 19 Aug 2019 11:24:01 +0200 (CEST)
Date: Mon, 19 Aug 2019 11:24:14 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
Message-ID: <20190819092414.GB21072@amd>
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
 <20190818114332.GA32205@amd>
 <CAOf5uwncAHQ-nfFzQhv=T+pyXJ+60_QNT4F11VJg+25GjFFkxQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOf5uwncAHQ-nfFzQhv=T+pyXJ+60_QNT4F11VJg+25GjFFkxQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022416_353571_D414F70D 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mpartap@gmx.net, Tony Lindgren <tony@atomide.com>,
 Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8568476540708029932=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8568476540708029932==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IiVenqGWf+H9Y6IX"
Content-Disposition: inline


--IiVenqGWf+H9Y6IX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > [   13.653778] panel-dsi-cm 58004000.encoder:display: using lookup
> > tables for GPIO lookup
> > [   13.661834] panel-dsi-cm 58004000.encoder:display: No GPIO consumer
> > te found
> > [   14.756622] ------------[ cut here ]------------
> > [   14.761352] WARNING: CPU: 0 PID: 20 at
> > /data/fast/l/k/drivers/net/wireless/ti/wlcore/sdio.c:86
> > wl12xx_sdio_raw_read+0xa8/0x128
> > [   14.772888] Modules linked in:
> > [   14.776062] CPU: 0 PID: 20 Comm: kworker/0:1 Tainted: G        W
> > 5.3.0-rc4-58571-gdbaece1 #85
> > [   14.783630] Hardware name: Generic OMAP4 (Flattened Device Tree)
> > [   14.791381] Workqueue: events request_firmware_work_func
>=20
> You have a timeout here. Can be that your reset sequence of the wifi
> is not optimal because
> is not responding?

I tried delays and printks... WL12XX_REG_FUSE_BD_ADDR_1 read fails,
and retrying does not really help. If you have idea how to debug/fix
this, let me know...

Best regards,
								Pavel

diff --git a/drivers/net/wireless/ti/wl12xx/main.c b/drivers/net/wireless/t=
i/wl12xx/main.c
index 3c9c623..afb294a 100644
--- a/drivers/net/wireless/ti/wl12xx/main.c
+++ b/drivers/net/wireless/ti/wl12xx/main.c
@@ -1505,24 +1505,40 @@ static int wl12xx_get_fuse_mac(struct wl1271 *wl)
 {
 	u32 mac1, mac2;
 	int ret;
-
+=09
+	mdelay(1);
+	printk("get_fuse_mac: %d\n", __LINE__);
 	ret =3D wlcore_set_partition(wl, &wl->ptable[PART_DRPW]);
 	if (ret < 0)
 		goto out;
=20
+	mdelay(1);
+	printk("get_fuse_mac: %d\n", __LINE__);
+	ret =3D wlcore_read32(wl, WL12XX_REG_FUSE_BD_ADDR_1, &mac1);
+	if (ret < 0) {
+	printk("get_fuse_mac: X %d\n", __LINE__);
+	ret =3D wlcore_read32(wl, WL12XX_REG_FUSE_BD_ADDR_1, &mac1);
+	if (ret < 0) {
+	printk("get_fuse_mac: XX %d\n", __LINE__);
 	ret =3D wlcore_read32(wl, WL12XX_REG_FUSE_BD_ADDR_1, &mac1);
 	if (ret < 0)
 		goto out;
+	}
+	}
+=09
=20
+	printk("get_fuse_mac: %d\n", __LINE__);
 	ret =3D wlcore_read32(wl, WL12XX_REG_FUSE_BD_ADDR_2, &mac2);
 	if (ret < 0)
 		goto out;
=20
+	printk("get_fuse_mac: %d\n", __LINE__);
 	/* these are the two parts of the BD_ADDR */
 	wl->fuse_oui_addr =3D ((mac2 & 0xffff) << 8) +
 		((mac1 & 0xff000000) >> 24);
 	wl->fuse_nic_addr =3D mac1 & 0xffffff;
=20
+	printk("get_fuse_mac: %d\n", __LINE__);
 	ret =3D wlcore_set_partition(wl, &wl->ptable[PART_DOWN]);
=20
 out:

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--IiVenqGWf+H9Y6IX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1aar4ACgkQMOfwapXb+vJb9wCdEMS4069vsm0A0Ev1TelvVMac
tEUAoMRMPsW6X4ytZQOHwh1J6znBX4KV
=Zu6g
-----END PGP SIGNATURE-----

--IiVenqGWf+H9Y6IX--


--===============8568476540708029932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8568476540708029932==--

