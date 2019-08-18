Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E241391662
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 13:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eT/08rRGqtJRiNxf3WU2OrYiEfrqSIRKj+1fCN4Dmvk=; b=DE8xdXOFJdoFvuHtLmPdn3NGS
	pPnxcdmKdveTi5yzSu7yL6lXNh4ZRSdA9tooZBR0RY18Mlnr+enSp0Wprt0WGP3v8cHPP1v9hMG6A
	11I88YJGrL7syMlJUUhUeoBrJgyyplJ9938ghWb1JKn+KrBLD6bVr6vldmqZSYjXBXc/PBaEAXHQP
	MbM9qdVaWiEVhqyMUg+3g46wMks7aMCS8aSCj3HiqtquxHdILJn3Ih08L4XPr4OCClzeo+sh8A41r
	YlJsNcyVmwBsL7p2eWiSW143EFpVz8b5cNPhlO5OCWHxNuKLqBJ/x9hWnq2dof7so0nZMu1vrcgEe
	NBQqZGNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzJb5-0007k9-HI; Sun, 18 Aug 2019 11:43:43 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzJay-0007jo-A7
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 11:43:38 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 057D68043E; Sun, 18 Aug 2019 13:43:19 +0200 (CEST)
Date: Sun, 18 Aug 2019 13:43:32 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
Message-ID: <20190818114332.GA32205@amd>
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_044336_656746_133A44B8 
X-CRM114-Status: GOOD (  15.24  )
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
Content-Type: multipart/mixed; boundary="===============0452046233699012657=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0452046233699012657==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-08-18 12:53:01, Michael Nazzareno Trimarchi wrote:
> Hi
>=20
> On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
> >
> > Hi!
> >
> > First, I guess I should mention that this is first time I'm attempting
> > to get wifi going on D4.
> >
> > I'm getting this:
> >
> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
> > user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
> > wlan0     Interface doesn't support scanning.
> >
>=20
> Try to use iw command. iwlist use an obsolete interface that you need
> to activate in kernel for back compatibility with old command. Can be
> your problem?

Let me see ... CONFIG_CFG80211_WEXT was not set.

Tried enabling it, and now I got. I remember getting it before,
too... let me try few more boots, perhaps it is random.

Best regards,
								Pavel



[   13.653778] panel-dsi-cm 58004000.encoder:display: using lookup
tables for GPIO lookup
[   13.661834] panel-dsi-cm 58004000.encoder:display: No GPIO consumer
te found
[   14.756622] ------------[ cut here ]------------
[   14.761352] WARNING: CPU: 0 PID: 20 at
/data/fast/l/k/drivers/net/wireless/ti/wlcore/sdio.c:86
wl12xx_sdio_raw_read+0xa8/0x128
[   14.772888] Modules linked in:
[   14.776062] CPU: 0 PID: 20 Comm: kworker/0:1 Tainted: G        W
5.3.0-rc4-58571-gdbaece1 #85
[   14.783630] Hardware name: Generic OMAP4 (Flattened Device Tree)
[   14.791381] Workqueue: events request_firmware_work_func
[   14.796813] [<c010f2b4>] (unwind_backtrace) from [<c010b528>]
(show_stack+0x10/0x14)
[   14.804595] [<c010b528>] (show_stack) from [<c08c1d68>]
(dump_stack+0xa8/0xc8)
[   14.811950] [<c08c1d68>] (dump_stack) from [<c012df4c>]
(__warn+0xe8/0x114)
[   14.816894] [<c012df4c>] (__warn) from [<c012dfb4>]
(warn_slowpath_null+0x3c/0x48)
[   14.826629] [<c012dfb4>] (warn_slowpath_null) from [<c0566674>]
(wl12xx_sdio_raw_read+0xa8/0x128)
[   14.835540] [<c0566674>] (wl12xx_sdio_raw_read) from [<c0567704>]
(wl12xx_get_mac+0x134/0x260)
[   14.844268] [<c0567704>] (wl12xx_get_mac) from [<c05530cc>]
(wlcore_nvs_cb+0x270/0xb64)
[   14.852355] [<c05530cc>] (wlcore_nvs_cb) from [<c04d7264>]
(request_firmware_work_func+0x3c/0x64)
[   14.861267] [<c04d7264>] (request_firmware_work_func) from
[<c01455c0>] (process_one_work+0x140/0x348)
[   14.870697] [<c01455c0>] (process_one_work) from [<c0145964>]
(worker_thread+0x164/0x4b0)
[   14.878906] [<c0145964>] (worker_thread) from [<c014a788>]
(kthread+0x110/0x148)
[   14.883636] [<c014a788>] (kthread) from [<c01010e8>]
(ret_from_fork+0x14/0x2c)
[   14.893615] Exception stack(0xeda0bfb0 to 0xeda0bff8)
[   14.893615] bfa0:                                     00000000
00000000 00000000 00000000
[   14.903625] bfc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[   14.913635] bfe0: 00000000 00000000 00000000 00000000 00000013
00000000
[   14.922058] ---[ end trace b611e5d6e7d5aa92 ]---
[   14.926788] wl1271_sdio mmc4:0001:2: sdio read failed (-110)
[   14.932525] wlcore: ERROR couldn't get hw info


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1ZOeQACgkQMOfwapXb+vIjZwCcD14aTXJEYo9Anifypeh8O5gM
BisAoIrpiP8B2QT4xXLvHSSGXAR7+Wrw
=Zb/u
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--


--===============0452046233699012657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0452046233699012657==--

