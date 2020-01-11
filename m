Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A5D137BDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 07:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wyh+zcpMWIePWTUMzY0kQY+3PkIAA8qs1c3obKS1PzE=; b=tNQtSE5w26pj5j
	zVjiTRzBfMmhIUHTDBImWUGuuX7Ntlxago4KIUW/MzGw/gMmgqJA2V/ZV1+Ija7jvZwA+q/Oszuqm
	hJ4U1UdmgOESggCA+dvow9ntaxxZRqfkRTAtyrgztiXQnqW5NRJK5qMYrPtaNVdm3rRk5Z2vrgxO7
	RkBzx8C2jaVHwS1SYiFJX02pTH4YHaR/0atMTiqtkD+e6cCns3W9lxBRXOBiMTtehBuuazOKWqpxZ
	ODrHWPeDk1hxTLnTA1SAiN52xEuX0Qg3O9LNN0igl6kIZoDmKuqrS74AKNhBhvAWRFE4L5sihGvVD
	BAayfy1mHJFKqBxa9bMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqAGJ-0004d9-Je; Sat, 11 Jan 2020 06:28:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqAGB-0004cX-Pm
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 06:28:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id z22so4419862ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 22:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8iu5ym5sr3AOgcd1wcHEoi/idPhE3U2NroKtHu8vm/g=;
 b=Bj+UISFu5njRYCt1RyXQyZmlWNkNCjDiuwYAQlgwfZu18jQagW3WmpqVsOHJdXAEZY
 KRmfUmm7fj4Hb7TJtBdsQIbazZz+KstWG32EwRw4ro3e3Ej8NXdvz27rYmz9kyD5Hdgz
 Dzan+zz3mHW6k/opp7CpPbGEUbjfON7KAmJiTNq14QR64ERPn806T8OqdoaBTF4FWGL0
 7rRACcr8nbbvhWbVb9zRedrImZqt8bdR8WEPleBadXdNNjK9NZdVmFXupefqehL1v8EC
 4WQ15ka23Dt3G5lGca5fKo2Sk/E90urqtJ5fHElZbmJ5cTRFbX/r+XGFc5iprk1+EdwI
 kDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8iu5ym5sr3AOgcd1wcHEoi/idPhE3U2NroKtHu8vm/g=;
 b=b9pros7QUf2o0HuBst4dVxw0+bJUq10mkMbn1OKXNqfXfbsebb39bBFEjZCbdQVTAB
 4DASQxYKcMoBXUc+n62lhg+0PpBXhPDYgTGRZ1qgyrF2PMe+ggawyEKPmxOzZuNSOaXs
 nFzNaVDelUic5Alhlrub0eXuPglUaCaV++I5FluJLjewuyW8BYf+swvn8AdUztRVKSEV
 NVGxEo/ppu83R93ErG3jEiL9ZDeo2rW+vVu1pbGlDPBJRINPfWiFFAP1G53R727+rSRD
 g6tWagKfyo1EIb68j+FaKeo1OmmACPX8Hz6Bl9k61i4VslN7+YSSqSBOQELahiPSRvSM
 +EQA==
X-Gm-Message-State: APjAAAWmCSubEz2IyOjzYfAwgoDBNMScdpeIWmlq7F5KhEVxGtIrmS6u
 a07N+O3GJ+CJ6QBpEMjKsvsB6Xim7z+ogWwaXDkV3A==
X-Google-Smtp-Source: APXvYqwnzVhFzOxc2Xax5HKLnQAPb6f7KI8aJHzuxybDifjnyToU9z+4jMk2cz2QtnzOyUVfchd6w00e5aAA7C0cafY=
X-Received: by 2002:a2e:3504:: with SMTP id z4mr2722195ljz.273.1578724113269; 
 Fri, 10 Jan 2020 22:28:33 -0800 (PST)
MIME-Version: 1.0
References: <20200106203700.21009-1-tony@atomide.com>
In-Reply-To: <20200106203700.21009-1-tony@atomide.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Sat, 11 Jan 2020 11:58:22 +0530
Message-ID: <CA+G9fYvRNiFK54oiGt9hYP=RTfazf2E7rmnnkwP+ELMUYtJ7bQ@mail.gmail.com>
Subject: Re: [PATCH] clocksource: timer-ti-dm: Fix regression
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_222836_029951_9118F251 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 open list <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 02:07, Tony Lindgren <tony@atomide.com> wrote:
>
> Clean-up commit 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to
> platform_get_irq") caused a regression where we now try to access
> uninitialized data for timer:
>
> drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
> drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may be used
> uninitialized in this function [-Wmaybe-uninitialized]
>
> On boot we now get:
>
> Unable to handle kernel NULL pointer dereference at virtual address
> 00000004
> ...
> (omap_dm_timer_probe) from [<c061ac7c>] (platform_drv_probe+0x48/0x98)
> (platform_drv_probe) from [<c0618c04>] (really_probe+0x1dc/0x348)
> (really_probe) from [<c0618ef4>] (driver_probe_device+0x5c/0x160)
>
> Let's fix the issue by moving platform_get_irq to happen after timer has
> been allocated.
>
> Fixes: 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to platform_get_irq")

Thanks for fixing this issue.
I have noticed arm BeagleBoard-X15 boot failed on linux next tree
(5.5.0-rc5-next-20200110).

[    6.157822] 8<--- cut here ---
[    6.160911] Unable to handle kernel NULL pointer dereference at
virtual address 00000004
[    6.169120] pgd = 25d83e32
[    6.171903] [00000004] *pgd=80000080204003, *pmd=00000000
[    6.177358] Internal error: Oops: a06 [#1] SMP ARM
[    6.182179] Modules linked in:
[    6.185260] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.5.0-rc5-next-20200110 #1
[    6.192694] Hardware name: Generic DRA74X (Flattened Device Tree)
[    6.198832] PC is at omap_dm_timer_probe+0x48/0x310

- Naresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
