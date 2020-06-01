Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF51EA061
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGpwyQfPRIUpO2OSUC26ECkoB+N9cB0t4po8IFywVZ4=; b=ZHN5F7BdUKw/kM
	Z8nlix+6MQ4U5C/YF7BhK6vlc2IIkphRvR90xp97ul8JNSrO05LypcuYp9086o+KW6YVe3yAaYK8G
	+k8cGe0xw0hR//ngks1k+IxwisyuzehgOU4xIsp4B/Acum0Yrje+BI/xteC2Gu8Od13b53hWCXfvK
	/8ZGkMbJgExearn4DKmrPkBrPOh9naiumgfWiEeeBeKBkh86dZJK0k6AI6aqoyzcPQYJcCMtYe/at
	mqCMUm5xMcsSIST3euEf3JY7e0/Okf8nevqRHuQFW4diBvbNyGctToUEm+ltgcZ87M65r0Nbj+D3h
	zeAc2djLzDjU/eoxspgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgEa-0000wx-AT; Mon, 01 Jun 2020 08:55:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgET-0000vq-H3
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:55:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id o9so7144741ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 01:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zv97Dj2xP5lwMjP1z+CMCFwCRkUUvLX7k3UWYmnMz5o=;
 b=aLLJ8xo8F4tWnWgFeKdV8UFslbd4gDPW0h0e4YXK8kPXZ21I21kngMqFyQ8FLK1JJV
 K5N60bX2RUz9mPBjlxhayHGnWLsxS1lFVZiCcnhul1bdCP2+ncp5oS8InH4kxVVkAWBz
 k0HzJ0CCNsXoGla98HTMKKEcrSyP6eCdvTStU3ShmNl/XP1Dl57+IELuv3KF/utlXK3p
 0eftZgwnh+lxtH3wJVniqhuWG6dnRPL1NYCaRxStUbp8um7ttiiWyC+TPr8BRp0ywOdz
 nE72O1ZOaJ7P1OUlOWNJLzzZ4A/T3rBbX+ITG4K1MFbIzsu5qPOO9sOzTunptTFOEs2n
 GHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zv97Dj2xP5lwMjP1z+CMCFwCRkUUvLX7k3UWYmnMz5o=;
 b=CYw/oSDDqUJMwzZE5Hzv9ap0dnnrcdKbNFKgpA5lC1GkERv7OzRvORIB6U9KXCJ6dk
 YfU5xcMN5+0b3UiEx9fEIguMo8R7xczrWSLZOOHXPHAF/8kEtQnoF5tsLfan2sVu+P0P
 CchgseQKpTqk2ZMAa2HV+txngoMjh9v7CAn7ITgryufAz11BxczKpgHyfwoPXtQVYTJ1
 63TK/dwpkNe6KgQshTLj/91eP/CVXvub2JG+QPc/DPhu7mtvSQCx9buzJ75ah5bjeHAE
 5F6bMqOJxDbeB93INVJBe7WBi+DL1FNTS753gyRjCU6VZAypitBQYd+C6gEOAgCMBAgU
 CzWA==
X-Gm-Message-State: AOAM532WEgZkGhoYS4FjAGzzp9hXkqbn543wOa4YW642uL+2gsbJJOOl
 se8T5Bc4OsVf+V8tAINdpn+dRHCI7dh0RAXcdAEMpg==
X-Google-Smtp-Source: ABdhPJxlAjBqSz24byXdpSULO/VfWViNc0PVj2B3A0filtPgnQkDR4pNt+upbY9GXCON0ND2GAhJ0Jcl0rHD3SeCFIc=
X-Received: by 2002:a2e:8703:: with SMTP id m3mr10886953lji.286.1591001741571; 
 Mon, 01 Jun 2020 01:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
In-Reply-To: <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 1 Jun 2020 10:55:29 +0200
Message-ID: <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_015545_572332_2D13D291 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abbott Liu <liuwenliang@huawei.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 6:00 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> Since this patch series has had many people trying to push it forward,
> how about we try to get it merged as-is (minus bugs, see below) with the
> caveat that TTRB0-less CPUs are not going to be supported for now and
> later on, this gets lifted if we find a champion who can get that working?

Oh I fixed most issues in the v9 patch set, we ironed out the actual problem
with ARMv4 and ARMv5 with some help from Ard, Catalin and then Russell
suggested how to also improve the way we get taskinfo from sp in the
assembly.

> I tested this on an ARMv8 system (Brahma-B53 CPU) and an ARMv7-A system
> (Brahma-B15 CPU) with and without ARM_LPAE enabled and neither were able
> to boot unless KASAN was turned off (outline instrumentation), I don't
> even get to the point where earlyprintk is giving me anything which is
> odd. Have not looked at the differences between this version and the one
> I had sent before and have not hooked a debugger to find out where we
> are hung.
>
> If you have a Raspberry Pi 4 you could use it as a test system for ARM_LPAE.

Did you try to use the v9 patch set on top of v5.7:
https://lore.kernel.org/linux-arm-kernel/20200515114028.135674-1-linus.walleij@linaro.org/

I need to rebase this on v5.8-rc1 once it is out but it is working on all my
targets now, there is also this git branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
