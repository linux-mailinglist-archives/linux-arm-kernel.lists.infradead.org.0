Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F79A1755CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTrhIm6vpiqwEWgo/KqqLpfdY5E5bHLVRD5xrSkwask=; b=Kkor7MFh4ZO8Nr
	4qKwHBXtEYafHZ0TgZzqpKd0gfY8O3IMhMlGLSKYBrPR88+QjqwFicIbfye2dAKZ+Fo24SQvnS2bi
	GGvzW17mUexXHaZp7/BzPo/n7mfcDw18y9LJ7hAo2nUZZkYaDpvS56E/RPU5L53s5n4D+QecgxBXJ
	1R3UeQy0cDw5VLQhvlZkrVdgiRU/UiYboH4Qzpl2EJkbPwI+ipiTB4690hAah61cIHqyygePXBrmT
	tDEJ6qvECtCOLJnMhDdGH9BFW2ifnw75S0A0URy3PH8dHNN915ouu7qLUinR2pT1tGiFZlgEJMfXb
	g2A6sHWMOFZaTOU1cO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gIO-0007f4-IJ; Mon, 02 Mar 2020 08:19:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gID-0007eE-Jm; Mon, 02 Mar 2020 08:19:15 +0000
Received: by mail-ot1-f68.google.com with SMTP id b3so8853583otp.4;
 Mon, 02 Mar 2020 00:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yqmS1X8qI6/s8cwCJEzUrnvDV3NhuggUO9eO0r27sb0=;
 b=VNOcAGeJ1izxx8M/EbuiC3ezJOiauXS/L8cWae99hoxt7HuFl1vofXJKHyuayk2uzK
 7vWsggcbJQ3Mz/Q6JJ6LQfaJ7r7ap0ay0NxX8HLHpmcp6Xj8Mq1Kj7mfPhcCirEQrw7v
 lN6cxicC3jmSYTNyB1Qpq6LGcy3uYZj1IR0kfe8rJZl1bspPt/S1FghtdJ5Oc0NsmY3n
 y2NuyRHwf1GQOpSoupELkTUUZAhcY0sesnnMmKATs25/yU7/YWXOJo0sh1ekUxhIu2qm
 9ybN4K5hjJO6uN9lEI95efpLqShlOzUS/cDT2o+X6lFd0zpbyaHIgN/HTbmQLtgd9zm7
 Ug+A==
X-Gm-Message-State: APjAAAUfAAH7CPJxJzNuvf0Zl8Y0a07zhlh4hRjRz39l+pgsilNetBYQ
 d1k1EJB4R5ZCMzyLB0HKPljZ1OODO1czVDPC9h0=
X-Google-Smtp-Source: APXvYqxJAsXBEb0up6C6U45pxshI9Ikohe/0ASpQmGQUY7aNow99BqVlQd7sShJKbvufJm9F2NTGKOK92pziLY2199g=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr12398547otk.145.1583137152054; 
 Mon, 02 Mar 2020 00:19:12 -0800 (PST)
MIME-Version: 1.0
References: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1583114190-7678-1-git-send-email-anshuman.khandual@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 09:19:00 +0100
Message-ID: <CAMuHMdXnUeYib2dMALyzrW8LKhTjsnGFsqALoTxVHzPGc+OUTg@mail.gmail.com>
Subject: Re: [PATCH] mm/special: Create generic fallbacks for pte_special()
 and pte_mkspecial()
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_001913_655388_6B30B1E0 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)"
 <linux-xtensa@linux-xtensa.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux <sparclinux@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Paul Burton <paulburton@kernel.org>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Fenghua Yu <fenghua.yu@intel.com>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, alpha <linux-alpha@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

Thanks for your patch!

On Mon, Mar 2, 2020 at 2:56 AM Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
> Currently there are many platforms that dont enable HAVE_ARCH_PTE_SPECIAL

ARCH_HAS_PTE_SPECIAL

> but required to define quite similar fallback stubs for special page table
> entry helpers such as pte_special() and pte_mkspecial(), as they get build
> in generic MM without a config check. This creates two generic fallback
> stub definitions for these helpers, eliminating much code duplication.
>
> mips platform has a special case where pte_special() and pte_mkspecial()
> visibility is wider than what HAVE_ARCH_PTE_SPECIAL enablement requires.

ARCH_HAS_PTE_SPECIAL

> This restricts those symbol visibility in order to avoid redefinitions
> which is now exposed through this new generic stubs and subsequent build
> failure. arm platform set_pte_at() definition needs to be moved into a C
> file just to prevent a build failure.

> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

>  arch/m68k/include/asm/mcf_pgtable.h      | 10 ------
>  arch/m68k/include/asm/motorola_pgtable.h |  2 --
>  arch/m68k/include/asm/sun3_pgtable.h     |  2 --

For m68k:
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
