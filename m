Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36584340C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KR1sJZzSwIZVBvHW90ccTmX+A8BR1rVAO8iGFu7Oydw=; b=KBz/luQSFChcMw
	Cnir8f1FBijBZTr0ayaZNHzwkGU+wF89+/gjzOBmo/Icv+KBeKF2rtIZ9fWRa1GO8TF0OphOhC09d
	Fadj2u2sTH1+9WHvRPZtTe4Wuo7BI5us0SlXCg6lLRM/i4MvT6xn2wOjBe/NJLR+zZXBfD5Xx5ew6
	hTac3XgauTpU7wO1DFtSaqTv+mGSPUnJKgGyRwejzlzYm2Y4In9TnTTXZVUQ3zD2BluxZsGJi5PZz
	AWR5WhJJTCQUAXafGMg+eMRetn2GQpfuIAPqjtjEZkVT2AjDFgQE6uaqNcIhIys4MVC1SHDXlhErg
	7jaTmNNBqHRKDPpryAzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKyk-0000BY-9o; Thu, 13 Jun 2019 08:21:02 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKyP-00009f-1d
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:20:43 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so29894836edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 01:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JlRxJCwiPwkUyH7EE3nyXqgO0XVluxp/0ZdmWf9P5Z0=;
 b=RsNUrK+UEn6zsAOC9w9pM7uhwHxwQMGD+8t/Un0aIPb541XG2VU7OTMQe7tJ/AYugG
 G3FTQ65psDJrM6tPTQKU2rOXirC03jEhQDBtSNCzKL3RlSh+B4h4RysAzf/GD6k/xBvY
 5d4Mj8gKd6ko8kFxspCeqeasrIc8irCflYt1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JlRxJCwiPwkUyH7EE3nyXqgO0XVluxp/0ZdmWf9P5Z0=;
 b=GoEQJJsxZSMiqsV1QsjGyLOMqJLar4Gn3JL9WZw9wlN627v6FPCE1A2Jd8bb7AEoBr
 LhM4AUw48tnjMdje6frMrJwjgs1vjxjfsFSbSG4/ghtwrGOB1/az6TWEgZb2DVcDu7be
 MUX8Y28k7a7tN6WmH2dYih4R5jumP0bt26KcUaH3HY7d9btIybn8LiwuRm+0QY/T1WmL
 EkOMGAp9Lk9SC4UfFUyi7/UXap+LpzLdsW1NFKcLDxlh1F+YFv23AUGGL9jeQf6IdlsQ
 2ntZOPrxAWBzethZP7rrqLMkSfzUbQJT85ubYDp5LEwHRE8xdJQgV84AndgzK52nzmOt
 9OBA==
X-Gm-Message-State: APjAAAWPIYEoim2xO8QEmiWVCII0GnGw6TVMuu3DEgHTgLSGS4ia0zmR
 l4EGlTmsTgemmGZwL12XmiD/BwdDYv47iuvJXmTNPA==
X-Google-Smtp-Source: APXvYqxy4qqaJLhUmiQHMs45thTIqa/dGytvJgClVC9B5jpzBc/xWQ86XsED1JEqZnHBmphRLW0uSlK+Ywh5heGNQts=
X-Received: by 2002:a50:b561:: with SMTP id z30mr38225104edd.87.1560414039622; 
 Thu, 13 Jun 2019 01:20:39 -0700 (PDT)
MIME-Version: 1.0
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-17-git-send-email-yong.wu@mediatek.com>
In-Reply-To: <1560169080-27134-17-git-send-email-yong.wu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Thu, 13 Jun 2019 16:20:03 +0800
Message-ID: <CANdKZ0emRPcTcL7Yq5nLH5z2_9fBuuczKehA8oEi0b+je15RPg@mail.gmail.com>
Subject: Re: [PATCH v7 16/21] memory: mtk-smi: Add bus_sel for mt8183
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_012041_219692_2E7F1C44 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: youlin.pei@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(Sorry for the possibly double-posting, my last mail got rejected by
some mailing lists.)

Hi,
When I tested this patch series (Based on linux 5.2.0-rc2, and with
various other patch series about MT8183) with lockdep enabled, and I'm
seeing the following lockdep warning on boot.

By bisecting the commits, the first commit that introduce this warning
is this patch. The warning also doesn't appear if
https://lore.kernel.org/patchwork/patch/1086582/ and
https://lore.kernel.org/patchwork/patch/1086583/ are not applied.

Do anyone have idea on why this is happening, or any suggestion on
which part I should be digging into to figure this out? Thanks.

[    4.664194] ======================================================
[    4.670368] WARNING: possible circular locking dependency detected
[    4.676545] 5.2.0-rc2-next-20190528-44527-g6c94b6475c04 #20 Tainted: G S
[    4.684539] ------------------------------------------------------
[    4.690714] kworker/4:1/51 is trying to acquire lock:
[    4.695760] (____ptrval____) (regulator_list_mutex){+.+.},
at:regulator_lock_dependent+0xdc/0x6c4
[    4.704732]
[    4.704732] but task is already holding lock:
[    4.710556] (____ptrval____) (&genpd->mlock/1){+.+.},
at:genpd_lock_nested_mtx+0x24/0x30
[    4.718740]
[    4.718740] which lock already depends on the new lock.
[    4.718740]
[    4.726908]
[    4.726908] the existing dependency chain (in reverse order) is:
[    4.734382]
[    4.734382] -> #4 (&genpd->mlock/1){+.+.}:
[    4.739963]        __mutex_lock_common+0x1a0/0x1fe8
[    4.744836]        mutex_lock_nested+0x40/0x50
[    4.749275]        genpd_lock_nested_mtx+0x24/0x30
[    4.754063]        genpd_add_subdomain+0x150/0x524
[    4.758850]        pm_genpd_add_subdomain+0x3c/0x5c
[    4.763723]        scpsys_probe+0x520/0xe78
[    4.767902]        platform_drv_probe+0xf4/0x134
[    4.772517]        really_probe+0x214/0x4dc
[    4.776696]        driver_probe_device+0xcc/0x1d4
[    4.781396]        __device_attach_driver+0x10c/0x180
[    4.786442]        bus_for_each_drv+0x124/0x184
[    4.790968]        __device_attach+0x1c0/0x2d8
[    4.795407]        device_initial_probe+0x20/0x2c
[    4.800106]        bus_probe_device+0x80/0x16c
[    4.804546]        deferred_probe_work_func+0x120/0x168
[    4.809767]        process_one_work+0x858/0x1208
[    4.814379]        worker_thread+0x9ec/0xcb8
[    4.818644]        kthread+0x2b8/0x2d0
[    4.822391]        ret_from_fork+0x10/0x18
[    4.826480]
[    4.826480] -> #3 (&genpd->mlock){+.+.}:
[    4.831880]        __mutex_lock_common+0x1a0/0x1fe8
[    4.836752]        mutex_lock_nested+0x40/0x50
[    4.841190]        genpd_lock_mtx+0x20/0x2c
[    4.845369]        genpd_runtime_resume+0x140/0x434
[    4.850241]        __rpm_callback+0xb0/0x1e4
[    4.854506]        rpm_callback+0x54/0x1a8
[    4.858597]        rpm_resume+0xc6c/0x10c4
[    4.862689]        __pm_runtime_resume+0xb4/0x124
[    4.867387]        device_link_add+0x598/0x8d0
[    4.871829]        mtk_smi_larb_probe+0x2b0/0x340
[    4.876528]        platform_drv_probe+0xf4/0x134
[    4.881141]        really_probe+0x214/0x4dc
[    4.885320]        driver_probe_device+0xcc/0x1d4
[    4.890020]        __device_attach_driver+0x10c/0x180
[    4.895066]        bus_for_each_drv+0x124/0x184
[    4.899591]        __device_attach+0x1c0/0x2d8
[    4.904031]        device_initial_probe+0x20/0x2c
[    4.908730]        bus_probe_device+0x80/0x16c
[    4.913169]        deferred_probe_work_func+0x120/0x168
[    4.918387]        process_one_work+0x858/0x1208
[    4.923000]        worker_thread+0x9ec/0xcb8
[    4.927264]        kthread+0x2b8/0x2d0
[    4.931009]        ret_from_fork+0x10/0x18
[    4.935098]
[    4.935098] -> #2 (dpm_list_mtx){+.+.}:
[    4.940412]        __mutex_lock_common+0x1a0/0x1fe8
[    4.945284]        mutex_lock_nested+0x40/0x50
[    4.949722]        device_pm_lock+0x1c/0x24
[    4.953900]        device_link_add+0x98/0x8d0
[    4.958252]        _regulator_get+0x3f0/0x504
[    4.962606]        _devm_regulator_get+0x58/0xb8
[    4.967218]        devm_regulator_get+0x28/0x34
[    4.971746]        pwm_backlight_probe+0x61c/0x1b90
[    4.976617]        platform_drv_probe+0xf4/0x134
[    4.981230]        really_probe+0x214/0x4dc
[    4.985409]        driver_probe_device+0xcc/0x1d4
[    4.990108]        device_driver_attach+0xe4/0x104
[    4.994894]        __driver_attach+0x134/0x14c
[    4.999333]        bus_for_each_dev+0x120/0x180
[    5.003859]        driver_attach+0x48/0x54
[    5.007950]        bus_add_driver+0x2ac/0x44c
[    5.012303]        driver_register+0x160/0x288
[    5.016742]        __platform_driver_register+0xcc/0xdc
[    5.021964]        pwm_backlight_driver_init+0x1c/0x24
[    5.027097]        do_one_initcall+0x38c/0x994
[    5.031536]        do_initcall_level+0x3a4/0x4b8
[    5.036148]        do_basic_setup+0x84/0xa0
[    5.036153]        kernel_init_freeable+0x23c/0x324
[    5.036158]        kernel_init+0x14/0x110
[    5.036164]        ret_from_fork+0x10/0x18
[    5.036166]
[    5.036166] -> #1 (device_links_lock){+.+.}:
[    5.065905]        __mutex_lock_common+0x1a0/0x1fe8
[    5.070777]        mutex_lock_nested+0x40/0x50
[    5.075215]        device_link_remove+0x40/0xe0
[    5.079740]        _regulator_put+0x104/0x2d8
[    5.084093]        regulator_put+0x30/0x44
[    5.088184]        devm_regulator_release+0x38/0x44
[    5.093056]        release_nodes+0x604/0x670
[    5.097320]        devres_release_all+0x70/0x8c
[    5.101846]        really_probe+0x270/0x4dc
[    5.106024]        driver_probe_device+0xcc/0x1d4
[    5.110724]        device_driver_attach+0xe4/0x104
[    5.115510]        __driver_attach+0x134/0x14c
[    5.119949]        bus_for_each_dev+0x120/0x180
[    5.124474]        driver_attach+0x48/0x54
[    5.128566]        bus_add_driver+0x2ac/0x44c
[    5.132919]        driver_register+0x160/0x288
[    5.137357]        __platform_driver_register+0xcc/0xdc
[    5.142576]        pwm_backlight_driver_init+0x1c/0x24
[    5.147708]        do_one_initcall+0x38c/0x994
[    5.152146]        do_initcall_level+0x3a4/0x4b8
[    5.156758]        do_basic_setup+0x84/0xa0
[    5.160936]        kernel_init_freeable+0x23c/0x324
[    5.165807]        kernel_init+0x14/0x110
[    5.169813]        ret_from_fork+0x10/0x18
[    5.173901]
[    5.173901] -> #0 (regulator_list_mutex){+.+.}:
[    5.179910]        lock_acquire+0x350/0x4d4
[    5.184088]        __mutex_lock_common+0x1a0/0x1fe8
[    5.184095]        mutex_lock_nested+0x40/0x50
[    5.197475]        regulator_lock_dependent+0xdc/0x6c4
[    5.197482]        regulator_disable+0xa0/0x138
[    5.197487]        scpsys_power_off+0x38c/0x4bc
[    5.197495]        genpd_power_off+0x3d8/0x6a0
[    5.209399]        genpd_power_off+0x530/0x6a0
[    5.209406]        genpd_power_off_work_fn+0x74/0xc0
[    5.209411]        process_one_work+0x858/0x1208
[    5.209419]        worker_thread+0x9ec/0xcb8
[    5.219067]        kthread+0x2b8/0x2d0
[    5.219073]        ret_from_fork+0x10/0x18
[    5.219077]
[    5.219077] other info that might help us debug this:
[    5.219077]
[    5.219080] Chain exists of:
[    5.219080]   regulator_list_mutex --> &genpd->mlock --> &genpd->mlock/1
[    5.219080]
[    5.228039]  Possible unsafe locking scenario:
[    5.228039]
[    5.228042]        CPU0                    CPU1
[    5.228046]        ----                    ----
[    5.228048]   lock(&genpd->mlock/1);
[    5.228058]                                lock(&genpd->mlock);
[    5.311647]                                lock(&genpd->mlock/1);
[    5.317736]   lock(regulator_list_mutex);
[    5.321742]
[    5.321742]  *** DEADLOCK ***
[    5.321742]
[    5.327655] 4 locks held by kworker/4:1/51:
[    5.331831]  #0: (____ptrval____) ((wq_completion)pm){+.+.},
at:process_one_work+0x57c/0x1208
[    5.340444]  #1: (____ptrval____)
((work_completion)(&genpd->power_off_work)){+.+.},
at:process_one_work+0x5b8/0x1208
[    5.351139]  #2: (____ptrval____) (&genpd->mlock){+.+.},
at:genpd_lock_mtx+0x20/0x2c
[    5.358970]  #3: (____ptrval____) (&genpd->mlock/1){+.+.},
at:genpd_lock_nested_mtx+0x24/0x30
[    5.367584]
[    5.367584] stack backtrace:
[    5.371939] CPU: 4 PID: 51 Comm: kworker/4:1 Tainted: G S
     5.2.0-rc2-next-20190528-44527-g6c94b6475c04 #20
[    5.382809] Workqueue: pm genpd_power_off_work_fn
[    5.382816] Call trace:
[    5.382822]  dump_backtrace+0x0/0x2c0
[    5.382830]  show_stack+0x20/0x2c
[    5.409174]  dump_stack+0x10c/0x17c
[    5.412659]  print_circular_bug+0x42c/0x4d0
[    5.416838]  __lock_acquire+0x4c88/0x5484
[    5.420843]  lock_acquire+0x350/0x4d4
[    5.424500]  __mutex_lock_common+0x1a0/0x1fe8
[    5.428851]  mutex_lock_nested+0x40/0x50
[    5.432770]  regulator_lock_dependent+0xdc/0x6c4
[    5.437383]  regulator_disable+0xa0/0x138
[    5.441389]  scpsys_power_off+0x38c/0x4bc
[    5.445393]  genpd_power_off+0x3d8/0x6a0
[    5.449310]  genpd_power_off+0x530/0x6a0
[    5.453229]  genpd_power_off_work_fn+0x74/0xc0
[    5.457667]  process_one_work+0x858/0x1208
[    5.461758]  worker_thread+0x9ec/0xcb8
[    5.465503]  kthread+0x2b8/0x2d0
[    5.468727]  ret_from_fork+0x10/0x18

On Mon, Jun 10, 2019 at 8:21 PM Yong Wu <yong.wu@mediatek.com> wrote:
> ...
> +       } else {
> +               res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +               common->base = devm_ioremap_resource(dev, res);
> +               if (IS_ERR(common->base))
> +                       return PTR_ERR(common->base);
>         }
>         pm_runtime_enable(dev);
>         platform_set_drvdata(pdev, common);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
