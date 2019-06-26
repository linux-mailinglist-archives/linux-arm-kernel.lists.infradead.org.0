Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD655F7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 05:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTzL3+il6rx0q9QKN52c8YRGntGQ8wD63gfWoQ1wuAI=; b=kqlwevfbtLVZ9h
	xBlkD0N+zT58zxKgdm4liwC5RHWUbHry0e0WsNRFZXcZtAa7snS79oO4dwiwXs7sQcYiedMj/Vwxp
	bXjVzUYSkIA4uq4mSqFO1U9/P5t+Lu4ifEDmTLvGR/oZDjAjy/wZInELTXKt06sgqPQsK+cUYzUed
	grSqwfxriXaTQaT8PntGnZzYkqYb0nYgiCDeY7kI6Lmca53j/NCr56HePGUW8yWUgcPRHfWr7/Zod
	xoD7rrXyf45lo5eKBUpdr+I0p0FC28qa2WG3OUy+CvDo2OMpFCCp7GFRaf7qiZhvvQGBRL1yBw5Ke
	vS+knl3z8wlaQAKCXrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfyc2-0008JH-TP; Wed, 26 Jun 2019 03:28:47 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfybS-0008Hd-47
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 03:28:12 +0000
Received: by mail-qk1-x742.google.com with SMTP id c11so483488qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 20:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vlIkKY0VE4UqMnVtVIxb3XZhsV7CFBjXdZOzFNVmjwQ=;
 b=PBgGri57J+namPVw3UWYzE6Xn3Dn4Ve5NzK5s+f2/+otN6oz+Lv7izvt9X6CGprg2u
 EAvaiOpedaPFTWKF/xLLPTqZ3e8FqT84R/uUWio2yl3OJLA6roHARWyphg/OlcSMYxr/
 I4PnptxsppenIonUS6g27n26BFSNZaz2a29Js=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vlIkKY0VE4UqMnVtVIxb3XZhsV7CFBjXdZOzFNVmjwQ=;
 b=QOopbBbGEG6KAlH+pC/wDJ/6UKvxSP6vBi6sMCKjWeSx06JIgJkOOrXQJTM3hVDGmY
 XZZu1Y1wCeVurr6C8g+FMG1eFtWetoQK6ApqEFQD/O0v+xrHrQiwsGjca/tFOGYKcnld
 /d2B0quV8GoI9YE8UP/hZt7CHO2+dyHzZP+5GhvzFN2Zp6iIgXt1IKAZa4S3KPHPx/Li
 eLkRP16rWwWO9eW5Zhv/kt3Ch5O98mpUcRNvO+sqy+eDEC+AqhbP50PAFj88/incpO1R
 uThW1TmrGcOQKHsigKWCILllRH6dthnVpmQEtgIC76TqLoJalXts3Dzpw8ZmqeQYM081
 yhhg==
X-Gm-Message-State: APjAAAXYtZayjmfb49R2T2H/KPGvZqIFvd2qY1Kyjf7RMXFDT0jFENHC
 x/6hw+wQYylpbqLTZsaE39d+wZN3Kqytqj9UBNGryw==
X-Google-Smtp-Source: APXvYqwDKogS8o5rvv6VsMtBInKsGCSOaLrukp/+xNnyXzXpIK8IkDIKd8ynvgJG18juR7dfr4SeXzcpeEPLQvmJLqk=
X-Received: by 2002:a37:660b:: with SMTP id a11mr1810032qkc.342.1561519686671; 
 Tue, 25 Jun 2019 20:28:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190624060343.62451-1-jitao.shi@mediatek.com>
 <20190624060343.62451-3-jitao.shi@mediatek.com>
In-Reply-To: <20190624060343.62451-3-jitao.shi@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 26 Jun 2019 11:27:40 +0800
Message-ID: <CAJMQK-jOgkRzYOTsiuUY4X8hzcGQL0XRiJSs7giiShnRb=nO_A@mail.gmail.com>
Subject: Re: [v2 2/2] drm/panel: support for BOE tv101wum-nl6 wuxga dsi video
 mode panel
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_202810_405320_9EF8071B 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, CK Hu <ck.hu@mediatek.com>,
 yingjoe.chen@mediatek.com, Thierry Reding <treding@nvidia.com>,
 Sean Paul <seanpaul@chromium.org>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 6:03 AM Jitao Shi <jitao.shi@mediatek.com> wrote:

There are some error when unbinding this driver,
`` echo 14014000.dsi.0 >
/sys/bus/mipi-dsi/drivers/panel-boe-tv101wum-nl6/unbind ``

[   40.404393] WARNING: CPU: 1 PID: 2612 at
/mnt/host/source/src/third_party/kernel/v4.19/drivers/regulator/core.c:2054
_regulator_put+0xe4/0xec
[   40.417098] Modules linked in: rfcomm uinput thermal_generic_adc
hci_uart btqca bluetooth ecdh_generic mtk_scp mtk_rpmsg mtk_scp_ipi
bridge rpmsg_core mt6577_auxadc stp llc nf_nat_tftp nv
[   40.471107] CPU: 1 PID: 2612 Comm: bash Tainted: G S
4.19.53 #99
[   40.478410] Hardware name: MediaTek krane rev3 sku16 board (DT)
[   40.484327] pstate: 80000005 (Nzcv daif -PAN -UAO)
[   40.489118] pc : _regulator_put+0xe4/0xec
[   40.493127] lr : regulator_put+0x2c/0x40
[   40.497044] sp : ffffff800cef3b00
[   40.500354] x29: ffffff800cef3b10 x28: fffffff0e7a22a00
[   40.505667] x27: 0000000000000000 x26: fffffff13876fc00
[   40.510979] x25: ffffff800cef3b68 x24: ffffff91f0b92000
[   40.516291] x23: ffffff91f03f2917 x22: ffffff91f0453a1c
[   40.521604] x21: fffffff13876fe00 x20: ffffff91f0a80988
[   40.526916] x19: fffffff13876ff00 x18: 0000000000000000
[   40.532229] x17: 0000000000000000 x16: 0000000000000000
[   40.537541] x15: 0000000000000000 x14: 0000000000000000
[   40.542854] x13: 0000000000000010 x12: 0000000000000000
[   40.548166] x11: 0000000000000000 x10: 0000000000000000
[   40.553478] x9 : fffffff0e7a22a00 x8 : 0000000000000001
[   40.558789] x7 : 0004be4200000000 x6 : 0000000042be0400
[   40.564102] x5 : ffffff91f043a5ef x4 : ffffff91f043a5ef
[   40.569414] x3 : 0000000000000000 x2 : 0000000000000000
[   40.574726] x1 : 00000000000000fe x0 : fffffff13876ff00
[   40.580040] Call trace:
[   40.582488]  _regulator_put+0xe4/0xec
[   40.586148]  regulator_put+0x2c/0x40
[   40.589724]  devm_regulator_release+0x1c/0x28
[   40.594084]  release_nodes+0x1f0/0x244
[   40.597832]  devres_release_all+0x3c/0x54
[   40.601840]  device_release_driver_internal+0x148/0x1ec
[   40.607061]  device_release_driver+0x24/0x30
[   40.611328]  unbind_store+0x90/0xdc
[   40.614814]  drv_attr_store+0x3c/0x54
[   40.618478]  sysfs_kf_write+0x50/0x68
[   40.622137]  kernfs_fop_write+0x12c/0x1c8
[   40.626146]  __vfs_write+0x54/0x15c
[   40.629631]  vfs_write+0xcc/0x188
[   40.632943]  ksys_write+0x78/0xd8
[   40.636255]  __arm64_sys_write+0x20/0x2c
[   40.640181]  el0_svc_common+0xa4/0x154
[   40.643928]  el0_svc_compat_handler+0x2c/0x38
[   40.648283]  el0_svc_compat+0x8/0x18
[   40.651855] ---[ end trace 65d8c8e7436ab6e9 ]---
[   40.656765] panel-boe-tv101wum-nl6 14014000.dsi.0: Dropping the
link to regulator.8
[   40.664649] WARNING: CPU: 6 PID: 2612 at
/mnt/host/source/src/third_party/kernel/v4.19/drivers/regulator/core.c:2054
_regulator_put+0xe4/0xec
[   40.677335] Modules linked in: rfcomm uinput thermal_generic_adc
hci_uart btqca bluetooth ecdh_generic mtk_scp mtk_rpmsg mtk_scp_ipi
bridge rpmsg_core mt6577_auxadc stp llc nf_nat_tftp nv
[   40.731273] CPU: 6 PID: 2612 Comm: bash Tainted: G S      W
4.19.53 #99
[   40.738574] Hardware name: MediaTek krane rev3 sku16 board (DT)
[   40.744488] pstate: 80000005 (Nzcv daif -PAN -UAO)
[   40.749276] pc : _regulator_put+0xe4/0xec
[   40.753282] lr : regulator_put+0x2c/0x40
[   40.757197] sp : ffffff800cef3b00
[   40.760505] x29: ffffff800cef3b10 x28: fffffff0e7a22a00
[   40.765814] x27: 0000000000000000 x26: fffffff13876fa00
[   40.771122] x25: ffffff800cef3b68 x24: ffffff91f0b92000
[   40.776429] x23: ffffff91f03f2917 x22: ffffff91f0453a1c
[   40.781736] x21: fffffff13876fc00 x20: ffffff91f0a80988
[   40.787044] x19: fffffff13876fd00 x18: 0000000000000020
[   40.792351] x17: 0000000000000001 x16: 0000000000000000
[   40.797658] x15: 0000000000000000 x14: 00000000000003f1
[   40.802966] x13: 0000000000000004 x12: 000000001f80c232
[   40.808272] x11: 0000000000000000 x10: 0000000000000001
[   40.813580] x9 : 7ee042d282bebd00 x8 : 0000000000000001
[   40.818887] x7 : fefeff2f2f37306f x6 : 0000000000000000
[   40.824194] x5 : 0000000000000000 x4 : ffffff91f0143fdc
[   40.829501] x3 : 0000000000000000 x2 : 0000000000000000
[   40.834809] x1 : 000000000000038c x0 : fffffff13876fd00
[   40.840116] Call trace:
[   40.842560]  _regulator_put+0xe4/0xec
[   40.846218]  regulator_put+0x2c/0x40
[   40.849791]  devm_regulator_release+0x1c/0x28
[   40.854148]  release_nodes+0x1f0/0x244
[   40.857892]  devres_release_all+0x3c/0x54
[   40.861898]  device_release_driver_internal+0x148/0x1ec
[   40.867116]  device_release_driver+0x24/0x30
[   40.871380]  unbind_store+0x90/0xdc
[   40.874863]  drv_attr_store+0x3c/0x54
[   40.878524]  sysfs_kf_write+0x50/0x68
[   40.882180]  kernfs_fop_write+0x12c/0x1c8
[   40.886186]  __vfs_write+0x54/0x15c
[   40.889668]  vfs_write+0xcc/0x188
[   40.892978]  ksys_write+0x78/0xd8
[   40.896287]  __arm64_sys_write+0x20/0x2c
[   40.900208]  el0_svc_common+0xa4/0x154
[   40.903951]  el0_svc_compat_handler+0x2c/0x38
[   40.908302]  el0_svc_compat+0x8/0x18
[   40.911871] ---[ end trace 65d8c8e7436ab6ea ]---
[   40.916642] panel-boe-tv101wum-nl6 14014000.dsi.0: Dropping the
link to regulator.7
[   40.924511] WARNING: CPU: 6 PID: 2612 at
/mnt/host/source/src/third_party/kernel/v4.19/drivers/regulator/core.c:2054
_regulator_put+0xe4/0xec
[   40.937193] Modules linked in: rfcomm uinput thermal_generic_adc
hci_uart btqca bluetooth ecdh_generic mtk_scp mtk_rpmsg mtk_scp_ipi
bridge rpmsg_core mt6577_auxadc stp llc nf_nat_tftp nv
[   40.991108] CPU: 6 PID: 2612 Comm: bash Tainted: G S      W
4.19.53 #99
[   40.998407] Hardware name: MediaTek krane rev3 sku16 board (DT)
[   41.004320] pstate: 80000005 (Nzcv daif -PAN -UAO)
[   41.009105] pc : _regulator_put+0xe4/0xec
[   41.013109] lr : regulator_put+0x2c/0x40
[   41.017022] sp : ffffff800cef3b00
[   41.020329] x29: ffffff800cef3b10 x28: fffffff0e7a22a00
[   41.025636] x27: 0000000000000000 x26: fffffff13876f900
[   41.030942] x25: ffffff800cef3b68 x24: ffffff91f0b92000
[   41.036248] x23: ffffff91f03f2917 x22: ffffff91f0453a1c
[   41.041554] x21: fffffff13876fa00 x20: ffffff91f0a80988
[   41.046859] x19: fffffff13876fb00 x18: 0000000000000020
[   41.052166] x17: 0000000000000001 x16: 0000000000000000
[   41.057472] x15: 00000000ffffffff x14: 00000000000002e3
[   41.062778] x13: 0000000000000000 x12: 0000000000000000
[   41.068084] x11: 0000000000000000 x10: 00000000ffffffff
[   41.073389] x9 : 7ee042d282bebd00 x8 : 0000000000000001
[   41.078696] x7 : 0000000000000000 x6 : ffffff800cef37f0
[   41.084002] x5 : 0000000000000040 x4 : 0000000000000000
[   41.089307] x3 : 0000000000000000 x2 : fffffff0e7a22ac0
[   41.094613] x1 : 0000000000000000 x0 : fffffff13876fb00
[   41.099918] Call trace:
[   41.102361]  _regulator_put+0xe4/0xec
[   41.106017]  regulator_put+0x2c/0x40
[   41.109587]  devm_regulator_release+0x1c/0x28
[   41.113939]  release_nodes+0x1f0/0x244
[   41.117683]  devres_release_all+0x3c/0x54
[   41.121686]  device_release_driver_internal+0x148/0x1ec
[   41.126904]  device_release_driver+0x24/0x30
[   41.131167]  unbind_store+0x90/0xdc
[   41.134649]  drv_attr_store+0x3c/0x54
[   41.138308]  sysfs_kf_write+0x50/0x68
[   41.141962]  kernfs_fop_write+0x12c/0x1c8
[   41.145965]  __vfs_write+0x54/0x15c
[   41.149446]  vfs_write+0xcc/0x188
[   41.152754]  ksys_write+0x78/0xd8
[   41.156061]  __arm64_sys_write+0x20/0x2c
[   41.159979]  el0_svc_common+0xa4/0x154
[   41.163722]  el0_svc_compat_handler+0x2c/0x38
[   41.168072]  el0_svc_compat+0x8/0x18
[   41.171640] ---[ end trace 65d8c8e7436ab6eb ]---
[   41.176405] panel-boe-tv101wum-nl6 14014000.dsi.0: Dropping the
link to regulator.6

Also, sometimes when rebinding the driver
`` echo 14014000.dsi.0 >
/sys/bus/mipi-dsi/drivers/panel-boe-tv101wum-nl6/bind ``
UI still failed to show up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
