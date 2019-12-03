Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67DE10FB8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oBWvUayWMTNgD0DwaG0GxXRrPdps7Xw+4TGFTKVU+Y=; b=eTiMJvMPCXwW0M
	nRGJQNOs63K0p2idxw6vnzlqQp4LnZWgkPJvFOPt2FVY7xbmtMXHTA1zyAImOfvlvjrvi1mfS88OD
	RkH4E9oyAzjZwUszzER73NUSUy2Xza8y1QY2Ahr23aJ9SFMzxUPWOtlghZ7NY6bPrQ2wwhkhw2om/
	Cwt6GS3BVboKM9fwcoHW9gl3t4hNJF4lsGcGghMDaFtVJHNQzDGV+cMSZCiXN0D7VvHaOeLnQge8s
	ew3/MQjNaG2qCIDjIw+DtnBFBcd/TaDbj3cBpXvnfRyOCDurlRHl1uPJjGdgOGTgjXeO7GYHJK2oi
	BCz9z0s8jYUMu8YleScQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5DK-0000Pe-Oz; Tue, 03 Dec 2019 10:15:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5DD-0000P7-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 10:15:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ic5D7-0006Qc-Ml; Tue, 03 Dec 2019 11:15:13 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ic5D3-0002Xv-TN; Tue, 03 Dec 2019 11:15:09 +0100
Date: Tue, 3 Dec 2019 11:15:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Igor Plyatov <plyatov@gmail.com>
Subject: Re: Issue with imx_get_temp()
Message-ID: <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:11:20 up 18 days,  1:29, 28 users,  load average: 0.10, 0.03, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_021519_411131_B6BC8FD3 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor,

On 19-12-02 16:45, Igor Plyatov wrote:
> Dear all,
> =

> please=A0 look at back-trace below. It happens on Freescale i.MX6 Quad.
> =

> Found a few of those during power on/off stress test in the climate chamb=
er:
> =

> [    0.657596] ------------[ cut here ]------------
> [    0.657626] WARNING: CPU: 3 PID: 150 at /home/geosig/development/oe-co=
re-toradex-cr7/build/tmp-glibc/work-shared/cr7/kernel-source/kernel/irq/chi=
p.c:242 __irq_startup+0x94/0xa8
> [    0.657630] Modules linked in:
> [    0.657643] CPU: 3 PID: 150 Comm: kworker/3:1 Not tainted 5.1.1 #1
> [    0.657648] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [    0.657660] Workqueue: events deferred_probe_work_func
> [    0.657691] [<8011005c>] (unwind_backtrace) from [<8010b8c8>] (show_st=
ack+0x10/0x14)
> [    0.657709] [<8010b8c8>] (show_stack) from [<80857b04>] (dump_stack+0x=
88/0x9c)
> [    0.657727] [<80857b04>] (dump_stack) from [<8011f308>] (__warn+0xdc/0=
xf4)
> [    0.657741] [<8011f308>] (__warn) from [<8011f438>] (warn_slowpath_nul=
l+0x40/0x48)
> [    0.657752] [<8011f438>] (warn_slowpath_null) from [<8016d1a8>] (__irq=
_startup+0x94/0xa8)
> [    0.657762] [<8016d1a8>] (__irq_startup) from [<8016d208>] (irq_startu=
p+0x4c/0x130)
> [    0.657772] [<8016d208>] (irq_startup) from [<8016a6dc>] (enable_irq+0=
x44/0x90)
> [    0.657790] [<8016a6dc>] (enable_irq) from [<8066f05c>] (imx_get_temp+=
0x1bc/0x1fc)
> [    0.657804] [<8066f05c>] (imx_get_temp) from [<8066cd78>] (thermal_zon=
e_get_temp+0x48/0x68)
> [    0.657816] [<8066cd78>] (thermal_zone_get_temp) from [<8066a3e4>] (th=
ermal_zone_device_update.part.3+0x28/0xcc)
> [    0.657827] [<8066a3e4>] (thermal_zone_device_update.part.3) from [<80=
66afc4>] (thermal_zone_device_register+0x4ac/0x5ec)
> [    0.657837] [<8066afc4>] (thermal_zone_device_register) from [<8066f58=
0>] (imx_thermal_probe+0x3a8/0x61c)
> [    0.657853] [<8066f580>] (imx_thermal_probe) from [<8054ae90>] (platfo=
rm_drv_probe+0x48/0x98)
> [    0.657864] [<8054ae90>] (platform_drv_probe) from [<805492a4>] (reall=
y_probe+0x228/0x2d0)
> [    0.657875] [<805492a4>] (really_probe) from [<805494ac>] (driver_prob=
e_device+0x60/0x174)
> [    0.657892] [<805494ac>] (driver_probe_device) from [<805476f4>] (bus_=
for_each_drv+0x58/0xb8)
> [    0.657903] [<805476f4>] (bus_for_each_drv) from [<80549008>] (__devic=
e_attach+0xd0/0x13c)
> [    0.657914] [<80549008>] (__device_attach) from [<80548404>] (bus_prob=
e_device+0x84/0x8c)
> [    0.657923] [<80548404>] (bus_probe_device) from [<8054889c>] (deferre=
d_probe_work_func+0x64/0x90)
> [    0.657938] [<8054889c>] (deferred_probe_work_func) from [<80136fd0>] =
(process_one_work+0x204/0x420)
> [    0.657952] [<80136fd0>] (process_one_work) from [<80137ddc>] (worker_=
thread+0x44/0x5bc)
> [    0.657966] [<80137ddc>] (worker_thread) from [<8013cab0>] (kthread+0x=
144/0x14c)
> [    0.657978] [<8013cab0>] (kthread) from [<801010e8>] (ret_from_fork+0x=
14/0x2c)
> [    0.657984] Exception stack(0xd0ae1fb0 to 0xd0ae1ff8)
> [    0.657992] 1fa0:                                     00000000 0000000=
0 00000000 00000000
> [    0.658002] 1fc0: 00000000 00000000 00000000 00000000 00000000 0000000=
0 00000000 00000000
> [    0.658010] 1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> [    0.658016] ---[ end trace 6bb553a60c0886bd ]---
> =

> Can somebody recommend, how to debug/resolve this issue?

Mh.. it seems that the irq gets enabled before a irq-handler is
registered. As your backlog shows the thermal_zone_device_register()
triggers a imx_get_temp() and during boot the irq_enabled is false and
it seems that your temperature is below the alarm_temp. So in such a
case the enable_irq() is executed. I don't know what happens if we
enable a irq without a irq-handler.

Regards,
  Marco =


> Best wishes.
> --
> Igor Plyatov
> =

> =

> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
