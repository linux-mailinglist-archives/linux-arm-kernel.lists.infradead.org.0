Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E157C1C97CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJ8PJDue2pM7oWa4ntbRxyg0+DwPNltN8BcZL1mvtOk=; b=i7kRtwxTd3my4v
	zsE/tVjAuBQvT6VBSr0KjceN7PcN1Fq9V15a4J8UGtqiPGutCKg3vkgjGptUG/fCXssZ6wn5NYrH3
	OG5ydGj7rIG8g+v2gKYpAC2/4tiQuvTIenThLZnf7nyxmCsw450X2xqEgd5+1jKLKSFuxfqjNCH2w
	bLAZjo4/IvXXXXYgbEao0F/LiKv4lx0HIvNV7egJkc0Jw2GY8TrWOKFKbnjL6+tas/oswfe95Gyq/
	v5b8uyM1ttIuWyAU7n8J1JpOitF9e1XLoNTCKA7Inex7kUK+gmNoIM6RvTclBIGWWzW5Q16O0/Ejj
	eTHLZF0pIj/1wq0p2p0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkLF-0001O0-3X; Thu, 07 May 2020 17:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkKs-0001Jk-2d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:29:27 +0000
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E206221F7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  7 May 2020 17:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588872565;
 bh=wH0Js+/P9yxX2QAKs0zx1LbaHJxT8ilUnIp7C8r1VW4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DPBq0A572Li+tIAMlJncrG3B4d7knAEsW+CyVugok3JBTgptUGK4lnDlOslmW3Hfv
 1++pgWOz4by0nkyvJon20RjbUSJ+OwBZajIvjY3kD67oAIE31ILJtHWGMvkLjowiE1
 Ollmb8JTh5Pf8giHsp9w8oumJRbIXyQYy5l/TCAQ=
Received: by mail-io1-f46.google.com with SMTP id z2so5210093iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:29:25 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ2lV68T8CoIPUzw29tkWKQWvaGtGuAidKlVSdgAR++U5446jAj
 sKlQa8+5fsSHUslvl0WRm9kc9XHvgU40hwhLB0U=
X-Google-Smtp-Source: APiQypKj6bF+/dqcRP2ZfNatH41vkZW1/gFBfZgEHLobRL0ubbVRauMvyPoQgoyA5CD09B8e1DK6IaWtYUAyHO/dYR0=
X-Received: by 2002:a6b:ef03:: with SMTP id k3mr15086288ioh.203.1588872564636; 
 Thu, 07 May 2020 10:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200507124522.171323-1-linus.walleij@linaro.org>
In-Reply-To: <20200507124522.171323-1-linus.walleij@linaro.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 7 May 2020 19:29:13 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGT1WhX=A2q3yH=rOpBcTvXv1-mCujrt_5AAaoATwh9Sw@mail.gmail.com>
Message-ID: <CAMj1kXGT1WhX=A2q3yH=rOpBcTvXv1-mCujrt_5AAaoATwh9Sw@mail.gmail.com>
Subject: Re: [PATCH 0/5 v8] KASan for Arm
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102926_164382_14ABF1A8 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 at 14:47, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> It's time to repost this, now that I got it into better shape.
>
> Main changes:
> - Restore the series number to v8 following my previous
>   "v1" which was actually v7, following Florians versions.
>   What was I thinking. :(
> - Doesn't crash randomly in QEMU etc. This was because
>   mmu.c was instrumented, and when we were lucky this did
>   not poke around in memory that crashed us.
> - Handle the undefined symbols better (like suggested by
>   Ard)
> - Fix up documentation.
> - Better patch split in logical chunks.
>
> Remaining issues:
> - Does it work for you?
> - Crash on ARMv5/v5 in v4wbi_flush_user_tlb_range+0x10/0x4c.
>   I wonder why. If you know, please tell me, I naturally
>   have to fix this.
> - The code in kasan_init.c to first back up TTBR0 and then
>   restore it looks *fragile* even if it is working. I think
>   we need to do something better in a per-proc file such
>   as is done in cpu_v7_switch_mm() and other well organized
>   MMU manipulation, I certainly feel this should be done
>   like that.
>
> Abbott Liu (1):
>   ARM: Define the virtual space of KASan's shadow region
>
> Andrey Ryabinin (4):
>   ARM: Disable KASan instrumentation for some code
>   ARM: Replace string mem* functions for KASan
>   ARM: Initialize the mapping of KASan shadow memory
>   ARM: Enable KASan for ARM
>

For the series,

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org> # QEMU/KVM/mach-virt/LPAE/8G

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
