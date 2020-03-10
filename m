Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353A9180930
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 21:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiVifB3IAbwYi7XpSlmShP42spEkWIUybkZqlb3FT6s=; b=I1LREkdk9En3qq
	rew2nNbvvEjUrtcfz+4sFQo5k4EDaLQBhTmSIgp4k8zh2iZv2dOjqlLKBPb24aVy9A4zZGE1qyQsq
	a5lpJ+aObzFmbCAKBlVbE6tUszX8I4GhE7+trT9pF0lxqBW8dluvRuhxI8dPm2y8hYYPKG53CrM1Z
	FjmP0GrjopGRSnntWKVrkOM+Gp1WRwz3xQ2MKWqAda3Wo9tmEvRX64ofmtcDNFSdgnk4XD5DJwcMp
	OzK9/1wgLCWrdI5pE8hPnX0hUwpdVnV2HM6Z30JcuEdWauZ5ShRmF5i2Q5Q9oRUbZybJeg5hPbDuc
	o0swB4NyyE9OGjoD3dSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlWA-0000hk-Cc; Tue, 10 Mar 2020 20:30:22 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlW3-0000hN-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 20:30:17 +0000
Received: by mail-oi1-f196.google.com with SMTP id d62so15290066oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 13:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tF7x8Aibti92fovkYnnZZKnXJErpPthfEAyaWN2U91o=;
 b=hXwgSdv9ZT5KJczWrlC45HLjMSMYINNAPar91eJMkWY/gNJQ6DP0pNv+WPZdrdnmti
 26jVySJLAB+7Qxn4FuNY3aPkKsOHO/piH1RuywFqu9Okl8RG5yy1XpZp6hIJ2q1WQiHW
 2v9ZgAnLORztrPjAB7T1kPvW5aJ3nFPYT+QJ2UYhHpbQKFLkeUWMSN1GEHF8oD+C/DTs
 UdWnFVDVKiFcviK8XJx6+QYih8RcAC9zhC9GtkVI7GKneMmeQRxtJONXSTj/xwPBeOSK
 h7binAoZquI7rR91gT4+eKRMzouqp9CPPagBDQI+NRVIAhzYCcz79o8Ofpkd/StupvTK
 a9lg==
X-Gm-Message-State: ANhLgQ2TzLzAY/Kp4I/Ht8Nhnb8S06dWiziZYH4T26+v7HREwkIbUGZo
 sp5cTF+B1k8FjyY2R9qlzIMbuJxV
X-Google-Smtp-Source: ADFU+vuLUz4vcd+neeWBXLrMWe7xH1dhbhi/49D7ZqHrxZNYK3POUiHYCbUxArUUV9egaxaRsGQxwA==
X-Received: by 2002:aca:4d86:: with SMTP id a128mr2118419oib.96.1583872214509; 
 Tue, 10 Mar 2020 13:30:14 -0700 (PDT)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com.
 [209.85.167.175])
 by smtp.gmail.com with ESMTPSA id s128sm4589449oia.4.2020.03.10.13.30.13
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 13:30:14 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id k21so8420354oij.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 13:30:13 -0700 (PDT)
X-Received: by 2002:aca:c488:: with SMTP id u130mr2551679oif.154.1583872211277; 
 Tue, 10 Mar 2020 13:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200310120719.2480-1-laurentiu.tudor@nxp.com>
In-Reply-To: <20200310120719.2480-1-laurentiu.tudor@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 10 Mar 2020 15:30:00 -0500
X-Gmail-Original-Message-ID: <CADRPPNT4diVa3gYv=t174=vmZZ3qRX2QmtXto9hLEnjQvv5SwQ@mail.gmail.com>
Message-ID: <CADRPPNT4diVa3gYv=t174=vmZZ3qRX2QmtXto9hLEnjQvv5SwQ@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: dpio: register dpio irq handlers after dpio
 create
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_133015_787419_7FC621D6 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>, lkml <linux-kernel@vger.kernel.org>,
 Youri Querry <youri.querry_1@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Grigore Popescu <grigore.popescu@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 7:09 AM Laurentiu Tudor <laurentiu.tudor@nxp.com> wrote:
>
> From: Grigore Popescu <grigore.popescu@nxp.com>
>
> The dpio irqs must be registered when you can actually
> receive interrupts, ie when the dpios are created.
> Kernel goes through NULL pointer dereference errors
> followed by kernel panic [1] because the dpio irqs are
> enabled before the dpio is created.
>
> [1]
> Unable to handle kernel NULL pointer dereference at virtual address 0040
> fsl_mc_dpio dpio.14: probed
> fsl_mc_dpio dpio.13: Adding to iommu group 11
>   ISV = 0, ISS = 0x00000004
> Unable to handle kernel NULL pointer dereference at virtual address 0040
> Mem abort info:
>   ESR = 0x96000004
>   EC = 0x25: DABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000004
>   CM = 0, WnR = 0
> [0000000000000040] user address but active_mm is swapper
> Internal error: Oops: 96000004 [#1] PREEMPT SMP
> Modules linked in:
> CPU: 2 PID: 151 Comm: kworker/2:1 Not tainted 5.6.0-rc4-next-20200304 #1
> Hardware name: NXP Layerscape LX2160ARDB (DT)
> Workqueue: events deferred_probe_work_func
> pstate: 00000085 (nzcv daIf -PAN -UAO)
> pc : dpaa2_io_irq+0x18/0xe0
> lr : dpio_irq_handler+0x1c/0x28
> sp : ffff800010013e20
> x29: ffff800010013e20 x28: ffff0026d9b4c140
> x27: ffffa1d38a142018 x26: ffff0026d2953400
> x25: ffffa1d38a142018 x24: ffffa1d38a7ba1d8
> x23: ffff800010013f24 x22: 0000000000000000
> x21: 0000000000000072 x20: ffff0026d2953400
> x19: ffff0026d2a68b80 x18: 0000000000000001
> x17: 000000002fb37f3d x16: 0000000035eafadd
> x15: ffff0026d9b4c5b8 x14: ffffffffffffffff
> x13: ff00000000000000 x12: 0000000000000038
> x11: 0101010101010101 x10: 0000000000000040
> x9 : ffffa1d388db11e4 x8 : ffffa1d38a7e40f0
> x7 : ffff0026da414f38 x6 : 0000000000000000
> x5 : ffff0026da414d80 x4 : ffff5e5353d0c000
> x3 : ffff800010013f60 x2 : ffffa1d388db11c8
> x1 : ffff0026d2a67c00 x0 : 0000000000000000
> Call trace:
>  dpaa2_io_irq+0x18/0xe0
>  dpio_irq_handler+0x1c/0x28
>  __handle_irq_event_percpu+0x78/0x2c0
>  handle_irq_event_percpu+0x38/0x90
>  handle_irq_event+0x4c/0xd0
>  handle_fasteoi_irq+0xbc/0x168
>  generic_handle_irq+0x2c/0x40
>  __handle_domain_irq+0x68/0xc0
>  gic_handle_irq+0x64/0x150
>  el1_irq+0xb8/0x180
>  _raw_spin_unlock_irqrestore+0x14/0x48
>  irq_set_affinity_hint+0x6c/0xa0
>  dpaa2_dpio_probe+0x2a4/0x518
>  fsl_mc_driver_probe+0x28/0x70
>  really_probe+0xdc/0x320
>  driver_probe_device+0x5c/0xf0
>  __device_attach_driver+0x88/0xc0
>  bus_for_each_drv+0x7c/0xc8
>  __device_attach+0xe4/0x140
>  device_initial_probe+0x18/0x20
>  bus_probe_device+0x98/0xa0
>  device_add+0x41c/0x758
>  fsl_mc_device_add+0x184/0x530
>  dprc_scan_objects+0x280/0x370
>  dprc_probe+0x124/0x3b0
>  fsl_mc_driver_probe+0x28/0x70
>  really_probe+0xdc/0x320
>  driver_probe_device+0x5c/0xf0
>  __device_attach_driver+0x88/0xc0
>  bus_for_each_drv+0x7c/0xc8
>  __device_attach+0xe4/0x140
>  device_initial_probe+0x18/0x20
>  bus_probe_device+0x98/0xa0
>  deferred_probe_work_func+0x74/0xa8
>  process_one_work+0x1c8/0x470
>  worker_thread+0x1f8/0x428
>  kthread+0x124/0x128
>  ret_from_fork+0x10/0x18
> Code: a9bc7bfd 910003fd a9025bf5 a90363f7 (f9402015)
> ---[ end trace 38298e1a29e7a570 ]---
> Kernel panic - not syncing: Fatal exception in interrupt
> SMP: stopping secondary CPUs
> Mem abort info:
>   ESR = 0x96000004
>   CM = 0, WnR = 0
>   EC = 0x25: DABT (current EL), IL = 32 bits
> [0000000000000040] user address but active_mm is swapper
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000004
>   CM = 0, WnR = 0
> [0000000000000040] user address but active_mm is swapper
> SMP: failed to stop secondary CPUs 0-2
> Kernel Offset: 0x21d378600000 from 0xffff800010000000
> PHYS_OFFSET: 0xffffe92180000000
> CPU features: 0x10002,21806008
> Memory Limit: none
> ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---
>
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Signed-off-by: Grigore Popescu <grigore.popescu@nxp.com>

Applied for fix.  Thanks.  Does this fix apply to stable kernels?

> ---
>  drivers/soc/fsl/dpio/dpio-driver.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/soc/fsl/dpio/dpio-driver.c b/drivers/soc/fsl/dpio/dpio-driver.c
> index 70014ecce2a7..7b642c330977 100644
> --- a/drivers/soc/fsl/dpio/dpio-driver.c
> +++ b/drivers/soc/fsl/dpio/dpio-driver.c
> @@ -233,10 +233,6 @@ static int dpaa2_dpio_probe(struct fsl_mc_device *dpio_dev)
>                 goto err_allocate_irqs;
>         }
>
> -       err = register_dpio_irq_handlers(dpio_dev, desc.cpu);
> -       if (err)
> -               goto err_register_dpio_irq;
> -
>         priv->io = dpaa2_io_create(&desc, dev);
>         if (!priv->io) {
>                 dev_err(dev, "dpaa2_io_create failed\n");
> @@ -244,6 +240,10 @@ static int dpaa2_dpio_probe(struct fsl_mc_device *dpio_dev)
>                 goto err_dpaa2_io_create;
>         }
>
> +       err = register_dpio_irq_handlers(dpio_dev, desc.cpu);
> +       if (err)
> +               goto err_register_dpio_irq;
> +
>         dev_info(dev, "probed\n");
>         dev_dbg(dev, "   receives_notifications = %d\n",
>                 desc.receives_notifications);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
