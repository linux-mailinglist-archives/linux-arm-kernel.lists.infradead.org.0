Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3829F116954
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpeQwKq9NqXKplGU6cfeK6xqOA0P7VIDMsm3/mb6kTE=; b=tuCiJ2Zwoficwb
	nw8YSfQX+WzkIPAypM5X0g27PU+jKsgPaxJFfCemBhEidUwQyL5sVBQlAOeA5odsI9IQALbM7h1yW
	CELsamCwevuX2tTaD8pQZlGqZe54T+pl+hKSFlMxtcTMca+sigufUeiAZi8BmNOIiFUZnGx9aNu5t
	AbHSnuI1pjbgR1AVUQxH92fevZXSQSueJ72iRagWHoVWpB/iRgyvEagygsMteYGE7DKnTRCULqabZ
	6Hzwg7z8JMpPKDiy5mlrdI4a801iPK91t0JJWQR/FKjoK1ADzIvyANRwYCVDHNH3UwNI6i2pexXzk
	1bhMYxKiXE59fM9jCG9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFMl-0004pr-9S; Mon, 09 Dec 2019 09:30:07 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFMS-0004oh-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:29:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id x14so5692247oic.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 01:29:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1gULj/UHb6CAUs/AsGazsmlKOk9MdWHJvdvd6WmLJ/U=;
 b=OiQ7fBpXgm3esSzMXfLbStzfpV31i1Yni7IVUjYd9/OHqGhMFc+67PThbxtZEZGslv
 agURnej8z5RR49VwuPj4D0CCeca2c5MgauqQKY2mr7KnLW9vAhK5r4x5uPGHOjppTi1f
 d4ggPfFo9kd4fNWLSu5LmNVIUhdc9m7Xx1Oqm1MzICAPxtdWWp3RYeO359SgH49o50PH
 cf8z+O1diRbXxie/JxiUQlaxh9MBp7Oj585rl+ABOIRWWQ47N/5hnZmGIev0rZMsliX1
 52/GRjRuZOBruZFT+dm/5CusDyHG1D7B1lvfVz2wzLYsUsYtgewm6PNfd3z1aPAxkJLk
 sZHA==
X-Gm-Message-State: APjAAAWzvDp2VO1aYR7YGaqoclqbJIN7jiyS15/C5U1reS0rYE1AhO9x
 oWE0XIIw/meFyxgulPmTpo7gf64NOLPZUYMHQ5Q=
X-Google-Smtp-Source: APXvYqwhw1FYzw4YPddtUo6DIlvGABZ3x2lom006suf84ck1j4ZXpOiChOtD0P3hN28a/6SGLQerqc9J9q3hGAiDOu8=
X-Received: by 2002:aca:4e87:: with SMTP id
 c129mr22496549oib.153.1575883784546; 
 Mon, 09 Dec 2019 01:29:44 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25@eucas1p1.samsung.com>
 <20191206125112.11006-1-m.szyprowski@samsung.com>
In-Reply-To: <20191206125112.11006-1-m.szyprowski@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Dec 2019 10:29:32 +0100
Message-ID: <CAMuHMdUsRa2QTDw4oM8SGUqfmsGt3-Mc=AnZoPV8RSqehUxyrg@mail.gmail.com>
Subject: Re: [PATCH] arm: multi_v7_config: Restore debugfs support
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_012952_370385_80DF80E7 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kusanagi Kouichi <slash@ac.auone-net.jp>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Fri, Dec 6, 2019 at 1:51 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
> Commit fd7d58f0dbc3 ("ARM: multi_v7_defconfig: renormalize based on recent
> additions") removed explicit enable line for CONFIG_DEBUG_FS, because
> that feature has been selected by other enabled options: CONFIG_TRACING,
> which were enabled by CONFIG_PERF_EVENTS.
>
> In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
> dependency") removed the dependency between CONFIG_DEBUG_FS and
> CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.
>
> Enable it again explicitly, as debugfs support is essential for various
> automated testing tools.

... and for systemd :-(

E.g. with Debian 9 nfsroot:

    [FAILED] Failed to mount /sys/kernel/debug.
    See 'systemctl status sys-kernel-debug.mount' for details.
    [DEPEND] Dependency failed for Local File Systems.
    ...
    You are in emergGive root password for maintenance
    (or press Control-D to continue):

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Thank you!

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

This is gonna bite lots of people (and defconfigs)...

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
