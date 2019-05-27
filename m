Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787D12AF21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9Vz8zTEiRiWCrJ22ZRwnYefjlYDRf4RXE9QqRdBkVw=; b=KRqo0VkETTcrNM
	9VTStar+hqhwpHf2CHxkubYlYpNwwSOpbXzSqNIrMcqEissX5kZuONLQlgFWSlxUa68rcnLeeq4Y1
	gx3wRxEm84rQHRbpLCiHbfyAkmfhlG1VeFHg6Hly+Vejn9YC4SOOOgTdn8P7hYnM8y6sRSlsxoTCD
	cL77PzJRX0jZQJVzTeV1r/2msOzMIIDW9QrpFxkPULyQkg/Tsc5cRDLpl92PbxCQ97BY2vcSwk2T3
	WckJ8DaogpP2rkHCIvs+KaySn0bXeVrVdWnmxb1OKuttfiJpsL6CGybELXvkQJulfAh0NqNSlB2OI
	80doKFccuFVH6tgXCQ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9f2-0003xB-1d; Mon, 27 May 2019 07:03:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9et-0003vd-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:03:00 +0000
Received: by mail-qk1-x741.google.com with SMTP id m18so16326558qki.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4klAjhyMj3pDesqfbfHy9JnpOrfAt9Rbw9O+NZ+oyR8=;
 b=YTCdyhEkTTb+XfSmUaF+Wr2ShZygzLKSn0Jl9+GYsEqfyYSG63Pn0xUFU4TVyNJhwm
 YDDK8Slg8ih74pBO3yczWhVijhKGYnV3YmvxEcG4cVN8P4qxjolS9w4F22KUSmlHAiA9
 uplCxb9RRIUrPw5oi4Kw4n3TesyQLbBlnsSEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4klAjhyMj3pDesqfbfHy9JnpOrfAt9Rbw9O+NZ+oyR8=;
 b=SON8x83YdJGM68pOItl0hhtODTL2kkdfVUEJOwL50SwEXKKkK83zdfooO4hmvir0b4
 9LdumxryHjLuCMHqj0iXjzUUHatmKFNO8Se3yp64OMP18/keMBW7FnqFpxL7zmClgUTh
 BSrV4vFNcegAvHLBZ9c89TWJ7Yi2ryqnngtKKFrVD+diZOvUe0MG+cQke8rzGYapJWFJ
 46I4PvKVYrR0SQjl090tnmTbJAMCG6Q1iX8HBLEq5iGU7nsyMHSJ45OfAKtIF0EnhQaF
 39B9IVjn1z/utwEU97/E8RGxayNEZd44yoQOpysOcqGr0lUMTRWrFRB3WpnXezPUOMi0
 lgoA==
X-Gm-Message-State: APjAAAXVkeX4lFeu+JusxbzSvDexTMRe5dV59Aww9eYLjiheu/d6TdwL
 9+q8MbUdfzjHUcKyJpjynkHz4I8ZA6EaMLw9z/4SUg==
X-Google-Smtp-Source: APXvYqxQpDPZWhNOSnuQJLc9CTe0oWkb+0Cqhm60NUHHGKbieCA+KLJc7eBSXpQumDQqyyWQgQDoEboMrXnk6DvIO6Q=
X-Received: by 2002:ac8:3f33:: with SMTP id c48mr94820424qtk.347.1558940577990; 
 Mon, 27 May 2019 00:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-8-git-send-email-andrew-sh.cheng@mediatek.com>
In-Reply-To: <1557997725-12178-8-git-send-email-andrew-sh.cheng@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 27 May 2019 15:02:32 +0800
Message-ID: <CAJMQK-j+J4_j7zwKEzAwUBzzPvZ2Q=G_jw=RsW6ZJM6YjVrVfw@mail.gmail.com>
Subject: Re: [PATCH 7/8] cpufreq: mediatek: add opp notification for SVS
 support
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_000259_329731_3C075A0E 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:08 AM Andrew-sh.Cheng
<andrew-sh.cheng@mediatek.com> wrote:
>         bool need_voltage_tracking;
> +       struct mutex lock; /* avoid notify and policy race condition */
> +       struct notifier_block opp_nb;
> +       int opp_cpu;
> +       unsigned long opp_freq;
>  };
>
>  static LIST_HEAD(dvfs_info_list);
> @@ -239,6 +243,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>         vproc = dev_pm_opp_get_voltage(opp);
>         dev_pm_opp_put(opp);
>
> +       mutex_lock(&info->lock);

Should init mutex, otherwise it'll get lockdep warning:
[    0.587055] Call trace:
[    0.587069]  dump_backtrace+0x0/0x168
[    0.587077]  show_stack+0x20/0x2c
[    0.587086]  dump_stack+0xe4/0x134
[    0.587095]  register_lock_class+0x3e8/0x4b0
[    0.587103]  __lock_acquire+0xac/0x14e8
[    0.587110]  lock_acquire+0x1d0/0x208
[    0.587118]  __mutex_lock_common+0xc0/0xb40
[    0.587126]  mutex_lock_nested+0x40/0x50
[    0.587135]  mtk_cpufreq_set_target+0xcc/0x2a8
[    0.587143]  __cpufreq_driver_target+0x438/0x4d8
[    0.587150]  cpufreq_online+0x5b4/0x6e0
[    0.587156]  cpufreq_add_dev+0x4c/0x84
[    0.587164]  subsys_interface_register+0xb8/0x10c
[    0.587171]  cpufreq_register_driver+0x11c/0x1c0
[    0.587178]  mtk_cpufreq_probe+0x378/0x4b8
[    0.587185]  platform_drv_probe+0x80/0xb0
[    0.587192]  really_probe+0x114/0x28c
[    0.587198]  driver_probe_device+0x64/0xfc
[    0.587205]  __device_attach_driver+0xb8/0xd0
[    0.587211]  bus_for_each_drv+0x88/0xd0
[    0.587218]  __device_attach+0xb0/0x134
[    0.587224]  device_initial_probe+0x20/0x2c
[    0.587230]  bus_probe_device+0x34/0x94
[    0.587238]  device_add+0x520/0x5b4
[    0.587245]  platform_device_add+0x17c/0x208
[    0.587252]  platform_device_register_full+0xc0/0x100
[    0.587261]  mtk_cpufreq_driver_init+0x8c/0xdc
[    0.587268]  do_one_initcall+0x1c0/0x3e0
[    0.587276]  do_initcall_level+0x1f4/0x224
[    0.587282]  do_basic_setup+0x34/0x4c
[    0.587288]  kernel_init_freeable+0x10c/0x194
[    0.587295]  kernel_init+0x14/0x100
[    0.587302]  ret_from_fork+0x10/0x18
[    0.587510] cpufreq: cpufreq_online: CPU4: Unlisted initial
frequency changed to: 1248000 KHz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
