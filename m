Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48443117310
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHMuKb/pXV4N4eVshQNpYTd/Y9NKYmYKnWRmuanbUJs=; b=aIWHxxA69zzAzz
	VA4JBpHDNJycyThDV/HD0FQxkSHwsWlA8tBEVMgqLwunapHY12DMwnnoSYzQUaOCY/b86XyhXcEyU
	WcKcoeNIS4mYPTj3o3e3hLAeGjuVEEGyQohNi4BCpbk5L1cPqTNSKd3/GiNgTfYktklcvcwp6VZ/5
	mDJ/JEsTbWcRuBkvcy1dyZuTj2uT4RZjV0C+CpU6AzEeKNLlSotL/jIw33kIEOonqqf0sioA353Dg
	m7x6j5shwI4bQw0bPHohPC6D5in7G+i7NDpoizCVRQD186jaf6kqaijIkML35PMC/jJUHJKPWuRT3
	/7U1SHoFzRR4TN+jDOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieN6C-0001eW-Uc; Mon, 09 Dec 2019 17:45:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieN65-0001dr-74
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:45:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id u7so15695300iop.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 09:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QAJ1Vw8HE02dYf6sQbXG/6aB2iF07v1KJiO657GCsLk=;
 b=LYy/j19TUmllvt8z6fjO3GajnwvBpq3AXDpYNZFzI8jqqaYbJbDRHN3Sot7WrEMqVX
 LHpBvv3shG0kc/FVNRmNMnkjH5tonPCEv/e2IG1ZNNKRuJJAuP2mickgt0GVbp1q6EEi
 Cby13DSkaYw49aO55eIWIG8ylPvaL055XKmBtCcPV/QHW4iv/y9yJl3cclnoy+Fkmgq5
 N5dyv4VS/ZhfKP8MZv32WfTUs2ncQd9VKUZ/d/+cMVZXPWDVgdSczTWZrUOn516+/gyv
 orDInd5Cd2b+tf15mnu+r8z8VegMBOBTa4KpnpCdxbmHrE1bSyCUVDxqAcZn3MPJ167D
 3CFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QAJ1Vw8HE02dYf6sQbXG/6aB2iF07v1KJiO657GCsLk=;
 b=dLghAAiNzB689+dpm9SwdOVo2aDK6uHYcgUdjaeDBsGaOGmgidqakubufeywouBVbN
 +6teCWUm+3xxHEkuEYkTajXLZa6hpztvp3ZBCcfVIeXtKCITePLj5m6tSHqaYmne3cKY
 R30uEdESVr5t3pa3RNaWyLNwCHQ5NtYNVuWLSexpka4kzDE+LFn+e3tQCoMjzAGu8RNM
 rMJ2l4hEwzEcxEwHcGgwsdhZV9LQjDBxluyMz9p3LJitHnXp5jDxkZdozgdMuTZ2AhXM
 zyptmpwSbxuEXPr1V88hi+5xXm/5bbg4pVkc2vqUIaTQoT3Pp8GQZ7FIooMXNeTL2G//
 +S5A==
X-Gm-Message-State: APjAAAU+8Dp9xwE6jSQrqSmIMu/TSfxA8Kl/f2A/u9YVp5s6pxGL6mhb
 En8+H3W17QdLue+/PGEvXyYwCGyQBDo8DxTRSDd1kA==
X-Google-Smtp-Source: APXvYqwUgBnvd+rwHY/s5qaQtiTjjiqC+neHS7lfvu+7bB13pOzsyKqqMPGOKQ88fhkyE7jLD0/R23n44PXsnYnQEw0=
X-Received: by 2002:a6b:3a8a:: with SMTP id
 h132mr17290510ioa.207.1575913524002; 
 Mon, 09 Dec 2019 09:45:24 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25@eucas1p1.samsung.com>
 <20191206125112.11006-1-m.szyprowski@samsung.com>
 <CAMuHMdUsRa2QTDw4oM8SGUqfmsGt3-Mc=AnZoPV8RSqehUxyrg@mail.gmail.com>
In-Reply-To: <CAMuHMdUsRa2QTDw4oM8SGUqfmsGt3-Mc=AnZoPV8RSqehUxyrg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 9 Dec 2019 09:45:12 -0800
Message-ID: <CAOesGMiC+_ouDdFecV-2DvVzmBkeE=JjrwNyTgcr81=cBhhoAw@mail.gmail.com>
Subject: Re: [PATCH] arm: multi_v7_config: Restore debugfs support
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_094525_259452_E8C4F0D7 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Krzysztof Kozlowski <krzk@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Kevin, since this seems like something ideally we would see some
coverage of from Kernel CI at some point.


On Mon, Dec 9, 2019 at 1:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Marek,
>
> On Fri, Dec 6, 2019 at 1:51 PM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
> > Commit fd7d58f0dbc3 ("ARM: multi_v7_defconfig: renormalize based on recent
> > additions") removed explicit enable line for CONFIG_DEBUG_FS, because
> > that feature has been selected by other enabled options: CONFIG_TRACING,
> > which were enabled by CONFIG_PERF_EVENTS.
> >
> > In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
> > dependency") removed the dependency between CONFIG_DEBUG_FS and
> > CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.
> >
> > Enable it again explicitly, as debugfs support is essential for various
> > automated testing tools.
>
> ... and for systemd :-(
>
> E.g. with Debian 9 nfsroot:
>
>     [FAILED] Failed to mount /sys/kernel/debug.
>     See 'systemctl status sys-kernel-debug.mount' for details.
>     [DEPEND] Dependency failed for Local File Systems.
>     ...
>     You are in emergGive root password for maintenance
>     (or press Control-D to continue):
>
> > Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>
> Thank you!
>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> This is gonna bite lots of people (and defconfigs)...

Looks like the in-tree affected defconfigs are:

olof@quad:~/work/arm-soc/arch/arm/configs (for-next) $ fgrep -L
CONFIG_DEBUG_FS $(fgrep -l CONFIG_PERF_EVENTS *)
aspeed_g4_defconfig
aspeed_g5_defconfig
exynos_defconfig
imx_v6_v7_defconfig
milbeaut_m10v_defconfig
mvebu_v7_defconfig
mxs_defconfig
oxnas_v6_defconfig
shmobile_defconfig
tegra_defconfig
olof@quad:~/work/arm-soc/arch/arm/configs (for-next) $

I'll revisit with patches for those later today.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
