Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852CC117377
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heDoqzXCT3ora0totE4hi3iB4Vsg6PI0LLitilK/f04=; b=ACMII6fC02gi0k
	fW0Edc/f579qVGaaYfXKfU5HGNQqBV8R9XC6Twayygvdzg+dYnPfr+111baT+69pxMq3ojSrPp3Bk
	yvhy1dgzWj54vstNi/y97Gq3ynRaQRien1VAVYhcstprCNZ6saiQIo1PK7Nf+ITEE7klZ4/cgyUj8
	cSCKe3TkInyAkJOkLCslxPZUIsyCXQazfd0YtxnZxLj/IzBY9OpU/dpPqSwDyQklO1zpYnKFcX/Sc
	dYvZOa/EXuHs0XTXusU4H1SHhBUNTwPl0Z2RPShvplXbaF6Fz9QKdeWmwK2ENspdrjq99pjik/fs8
	mcFTqWI3WIiW3i5mcNUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNQ3-0002DA-T5; Mon, 09 Dec 2019 18:06:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNPw-0002CZ-50
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:05:57 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D86024653
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 18:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914755;
 bh=4Tiwn+vOanX6VoEEg918KRKbn6cy8IHjhRhssNZygkE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SFdINz0ynQImL0tk9EB5fi8ytIGSUuDqOOYuA7Rs3thOooTVfWMMD92r6kYTm+141
 9mprDm7Hsz9E04D52FrYRii1lJwQeEZ8XHKT/VTbtNfXkdgv+1t51MwmnqYK1vz15H
 az+0Axd0XwXhTOFq3CEFcupSeMesdBc7Z3Otx3eU=
Received: by mail-lj1-f175.google.com with SMTP id s22so16711803ljs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:05:55 -0800 (PST)
X-Gm-Message-State: APjAAAU3h6V7HDk1Sheo+ixx4AO4zx6eU+9eDeCkPTKt/fdB1rzEqrjH
 jiUOgQgkR99xf/gEfxMX9Fd8xPE5d4oLMVadTFs=
X-Google-Smtp-Source: APXvYqw83XhliSCNEUuMHvHHzMeUdnvH5X4suB7IaLFNC3HKulskeEunmRve/1IH26yOI6m30Pg4bLtY3IujXGJlf0U=
X-Received: by 2002:a2e:9d9a:: with SMTP id c26mr294597ljj.225.1575914753603; 
 Mon, 09 Dec 2019 10:05:53 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25@eucas1p1.samsung.com>
 <20191206125112.11006-1-m.szyprowski@samsung.com>
 <CAMuHMdUsRa2QTDw4oM8SGUqfmsGt3-Mc=AnZoPV8RSqehUxyrg@mail.gmail.com>
 <CAOesGMiC+_ouDdFecV-2DvVzmBkeE=JjrwNyTgcr81=cBhhoAw@mail.gmail.com>
In-Reply-To: <CAOesGMiC+_ouDdFecV-2DvVzmBkeE=JjrwNyTgcr81=cBhhoAw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 9 Dec 2019 19:05:42 +0100
X-Gmail-Original-Message-ID: <CAJKOXPccvtbmvZKdR3OJu4ZVkgBmKhqt1jR36DCZvxWcmt46yQ@mail.gmail.com>
Message-ID: <CAJKOXPccvtbmvZKdR3OJu4ZVkgBmKhqt1jR36DCZvxWcmt46yQ@mail.gmail.com>
Subject: Re: [PATCH] arm: multi_v7_config: Restore debugfs support
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_100556_232170_5A5CAE1C 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kusanagi Kouichi <slash@ac.auone-net.jp>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 at 18:45, Olof Johansson <olof@lixom.net> wrote:
>
> +Kevin, since this seems like something ideally we would see some
> coverage of from Kernel CI at some point.
>
>
> On Mon, Dec 9, 2019 at 1:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > Hi Marek,
> >
> > On Fri, Dec 6, 2019 at 1:51 PM Marek Szyprowski
> > <m.szyprowski@samsung.com> wrote:
> > > Commit fd7d58f0dbc3 ("ARM: multi_v7_defconfig: renormalize based on recent
> > > additions") removed explicit enable line for CONFIG_DEBUG_FS, because
> > > that feature has been selected by other enabled options: CONFIG_TRACING,
> > > which were enabled by CONFIG_PERF_EVENTS.
> > >
> > > In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
> > > dependency") removed the dependency between CONFIG_DEBUG_FS and
> > > CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.
> > >
> > > Enable it again explicitly, as debugfs support is essential for various
> > > automated testing tools.
> >
> > ... and for systemd :-(
> >
> > E.g. with Debian 9 nfsroot:
> >
> >     [FAILED] Failed to mount /sys/kernel/debug.
> >     See 'systemctl status sys-kernel-debug.mount' for details.
> >     [DEPEND] Dependency failed for Local File Systems.
> >     ...
> >     You are in emergGive root password for maintenance
> >     (or press Control-D to continue):
> >
> > > Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> >
> > Thank you!
> >
> > Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > This is gonna bite lots of people (and defconfigs)...
>
> Looks like the in-tree affected defconfigs are:
>
> olof@quad:~/work/arm-soc/arch/arm/configs (for-next) $ fgrep -L
> CONFIG_DEBUG_FS $(fgrep -l CONFIG_PERF_EVENTS *)
> aspeed_g4_defconfig
> aspeed_g5_defconfig
> exynos_defconfig

I picked up already Marek's patch for exynos_defconfig.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
