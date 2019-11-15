Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ED4FDC25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8MeFVNyMivhBgGKnaZDhLB91E0YsHNrPNFUQgw7/7c=; b=TROxRENksdM3OI
	mpdP6gRuDAQ64Q6Fpul9UrMcQQpQJZnZNzrEesBSfshO0Q6eFVCqCuAcbmKQqoZ0T+ufMJec4ejS4
	f+YcQF6rspGvWYtP7SbBd/pig479DbWrFe7JwMMO5POjH9OfIXnWFI6/OUMNJfxlgDierD7zIo6V6
	iurPTdvHlRmJeJJhvj6ErNyWApS0YWTYS7vzVK36f6G/uj6aZRgFtRQf+WNue3t6peoRgmQI5qADb
	yExpoJNTg36Vqp7NMMrY17n4bARZp8zM/rcCfc0FeADhDxhgO02LNCH21F4oSiTbUcRXw4MaBRDK+
	AbyNWGSufp4S0/JbWNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZds-0008N5-VG; Fri, 15 Nov 2019 11:19:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZdf-0008Ia-0A; Fri, 15 Nov 2019 11:19:45 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVZdC-0008IT-Uf; Fri, 15 Nov 2019 12:19:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
Date: Fri, 15 Nov 2019 12:19:13 +0100
Message-ID: <3460135.SDF8zhHPq4@diego>
In-Reply-To: <69472c06-8b21-c3d8-acad-1a0a292c0fa2@fivetechno.de>
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <2766673.iMURPl8gB5@phil>
 <69472c06-8b21-c3d8-acad-1a0a292c0fa2@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_031943_198039_0C198C58 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jeffy Chen <jeffy.chen@rock-chips.com>, robh+dt@kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 shawn.lin@rock-chips.com, Brian Norris <briannorris@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Randy Li <ayaka@soulik.info>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Freitag, 15. November 2019, 11:37:58 CET schrieb Markus Reichl:
> Am 14.11.19 um 14:10 schrieb Heiko Stuebner:
> > $subject is missing the [PATCH] prefix
> will fix.

no need to resend just for this ... just to keep in mind for future patches=
 ;-)


> > Am Montag, 11. November 2019, 10:51:04 CET schrieb Markus Reichl:
> >> Working with rootfs on two 128GB mmcs on rk3399-roc-pc.
> >> =

> >> One (mmc name 128G72, one screw hole) works fine in HS400 mode.
> >> Other (mmc name DJNB4R, firefly on pcb, two screw holes) gets lots of
> >> mmc1: "running CQE recovery", even hangs with damaged fs,
> >> when running under heavy load, e.g. compiling kernel.
> >> Both run fine with HS200.
> >> =

> >> Disabling CQ with patch mmc: core: Add MMC Command Queue Support kerne=
l parameter [0] did not help.
> >> [0] https://gitlab.com/ayufan-repos/rock64/linux-mainline-kernel/commi=
t/54e264154b87dfe32a8359b2726e2d5611adbaf3
> > =

> > I'm hoping for some input from other people in Cc but your mail headers
> > also referenced the drive-impendance series from Christoph [0], which
> > it seems we need to poke the phy maintainer again.
> > =

> > Did you check if changing the impedance helped (like the signal dampeni=
ng
> > Philipp described in one of the replies there).
> =

> checked with
> =

> &emmc_phy {
> +       drive-impedance-ohm =3D <33>;
> =

> gives no improvement:

That is sad ... I guess we really should disable hs400 then ...
that may give others more incentive to dive deeper ;-)


Heiko


> [    1.688590] mmc1: CQHCI version 5.10
> [    1.714157] mmc1: SDHCI controller on fe330000.sdhci [fe330000.sdhci] =
using ADMA
> [    1.797822] mmc1: Command Queue Engine enabled
> [    1.798259] mmc1: new HS400 Enhanced strobe MMC card at address 0001
> [    1.800034] mmcblk1: mmc1:0001 DJNB4R 116 GiB =

> [    1.800643] mmcblk1boot0: mmc1:0001 DJNB4R partition 1 4.00 MiB
> [    1.801408] mmcblk1boot1: mmc1:0001 DJNB4R partition 2 4.00 MiB
> [    1.802886] mmcblk1rpmb: mmc1:0001 DJNB4R partition 3 4.00 MiB, charde=
v (246:0)
> ...
> [  100.118020] mmc1: running CQE recovery
> [  100.120890] ------------[ cut here ]------------
> [  100.121310] mmc1: cqhci: spurious TCN for tag 2
> [  100.121802] WARNING: CPU: 0 PID: 232 at drivers/mmc/host/cqhci.c:729 c=
qhci_irq+0x30c/0x480
> [  100.122530] Modules linked in: rfkill snd_soc_hdmi_codec dw_hdmi_i2s_a=
udio dw_hdmi_cec rockchipdrm crct10dif_ce analogix_dp dw_mipi_dsi snd_soc_s=
imple_card dw_hdmi cec snd_soc_rockchip_i2s snd_soc_simple_card_utils panfr=
ost snd_soc_rockchip_pcm drm_kms_helper snd_soc_core gpu_sched snd_pcm_dmae=
ngine syscopyarea sysfillrect sysimgblt snd_pcm fb_sys_fops snd_timer snd d=
rm soundcore fusb302 tcpm typec rockchip_saradc drm_panel_orientation_quirk=
s ipv6
> [  100.126097] CPU: 0 PID: 232 Comm: kworker/0:2H Not tainted 5.4.0-rc7-n=
ext-20191112-00007-g2ad177c77749 #44
> [  100.126946] Hardware name: Firefly ROC-RK3399-PC Board (DT)
> [  100.127454] Workqueue: kblockd blk_mq_run_work_fn
> [  100.127885] pstate: 20000085 (nzCv daIf -PAN -UAO)
> [  100.128318] pc : cqhci_irq+0x30c/0x480
> [  100.128660] lr : cqhci_irq+0x30c/0x480
> [  100.128997] sp : ffff800010003d10
> [  100.129298] x29: ffff800010003d10 x28: 0000000000000000 =

> [  100.129777] x27: 0000000000000001 x26: ffff8000108e0fe8 =

> [  100.130257] x25: ffff0000f5ae5c98 x24: ffff800010b7e1a8 =

> [  100.130737] x23: ffff800010b198c8 x22: ffff0000f5a80000 =

> [  100.131216] x21: 0000000000000002 x20: 0000000000000002 =

> [  100.131694] x19: ffff0000f5ae5c80 x18: 0000000000000010 =

> [  100.132173] x17: 0000000000000000 x16: 0000000000000000 =

> [  100.132653] x15: ffffffffffffffff x14: ffff800010b198c8 =

> [  100.133132] x13: ffff800090003a77 x12: ffff800010003a7f =

> [  100.133612] x11: ffff800010b30000 x10: ffff800010003a00 =

> [  100.134092] x9 : 00000000ffffffd0 x8 : ffff80001045a060 =

> [  100.134571] x7 : 000000000000025f x6 : ffff800010b979e2 =

> [  100.135050] x5 : 0000000000000001 x4 : 0000000000000000 =

> [  100.135529] x3 : 0000000000000000 x2 : 0000000000000000 =

> [  100.136007] x1 : e005989da46f2500 x0 : 0000000000000000 =

> [  100.136486] Call trace:
> [  100.136719]  cqhci_irq+0x30c/0x480
> [  100.137033]  sdhci_arasan_cqhci_irq+0x58/0x80
> [  100.137430]  sdhci_irq+0xb8/0xbb8
> [  100.137742]  __handle_irq_event_percpu+0x6c/0x170
> [  100.138169]  handle_irq_event_percpu+0x34/0x88
> [  100.138575]  handle_irq_event+0x44/0xc8
> [  100.138927]  handle_fasteoi_irq+0xb4/0x160
> [  100.139302]  generic_handle_irq+0x24/0x38
> [  100.139670]  __handle_domain_irq+0x60/0xb8
> [  100.140045]  gic_handle_irq+0xc0/0x158
> [  100.140389]  el1_irq+0xb8/0x180
> [  100.140684]  _raw_spin_unlock_irqrestore+0x20/0x48
> [  100.141119]  sdhci_cqe_enable+0xec/0x108
> [  100.141478]  sdhci_arasan_cqe_enable+0x4c/0x58
> [  100.141880]  cqhci_request+0x2d0/0x500
> [  100.142226]  mmc_cqe_start_req+0x50/0x60
> [  100.142585]  mmc_blk_mq_issue_rq+0x430/0x794
> [  100.142974]  mmc_mq_queue_rq+0x104/0x270
> [  100.143332]  blk_mq_dispatch_rq_list+0xa8/0x580
> [  100.143746]  blk_mq_sched_dispatch_requests+0xf4/0x1d8
> [  100.144210]  __blk_mq_run_hw_queue+0xac/0x120
> [  100.144605]  blk_mq_run_work_fn+0x1c/0x28
> [  100.144974]  process_one_work+0x1e0/0x358
> [  100.145340]  worker_thread+0x40/0x488
> [  100.145679]  kthread+0x118/0x120
> [  100.145977]  ret_from_fork+0x10/0x18
> [  100.146302] ---[ end trace 6277099ad751ed64 ]---
> [  100.213815] mmc1: running CQE recovery
> [  100.413933] mmc1: running CQE recovery
> =

> > =

> > [0] https://patchwork.kernel.org/patch/10835567/
> > most current v2 it seems is https://patchwork.kernel.org/patch/10842421/
> > =

> >> Therefore I propose to disable HS400 mode on roc-pc for now.
> > =

> > Hoping for more input :-)
> =

> Hoping, too.
> =

> =

> Gru=DF,
> > =

> > =

> > Heiko
> > =

> > =

> >> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 --
> >>  1 file changed, 2 deletions(-)
> >> =

> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >> index 29a50a083c42..33df95e384b4 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >> @@ -660,8 +660,6 @@
> >>  =

> >>  &sdhci {
> >>  	bus-width =3D <8>;
> >> -	mmc-hs400-1_8v;
> >> -	mmc-hs400-enhanced-strobe;
> >>  	non-removable;
> >>  	status =3D "okay";
> >>  };
> >> =

> > =

> =

> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
