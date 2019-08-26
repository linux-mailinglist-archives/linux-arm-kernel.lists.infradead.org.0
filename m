Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCC29CC6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jns82jwb+kqT9UqJMJJ61kdr2ANsTcLUiH2tGHww7A8=; b=Ln1PuKtuOAPiXq
	CJkGWNPMNNApiWHxC2hjmd3LUM64tsfyUvp7cj5K1oS0Z1d1Pb4UCXEuhgEIETr5VITs3jjVsaM3U
	FBT8b990e9eke0jRnmaGyPoCsiFHFe1h1jTGy/W9w8FuUkxNA7sbCYcNnuQ6TNV0Ts+e+pCPcJ4rn
	lgNvYxkOZG30X1MHLRai2b108J8FaYCt4ZYaSVnShCtwmuxPOhgQf7dN6MapstsVNJj2c7/DfR3D2
	omvaTowt695eAAzKtjgFgn+MgoXaXEJ/ahnN9g0E5aUSvxUtpo19QtM0Eo0CP8kl2tFY0R/lzW4/O
	XDvWrwEsb+XPYMWCFpVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2B8s-0003x0-Ok; Mon, 26 Aug 2019 09:18:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2B8h-0003wD-Rx
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:18:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DC111570;
 Mon, 26 Aug 2019 02:18:12 -0700 (PDT)
Received: from big-swifty.misterjones.org (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E865A3F59C;
 Mon, 26 Aug 2019 02:17:27 -0700 (PDT)
Date: Mon, 26 Aug 2019 10:17:22 +0100
Message-ID: <86sgpomgkd.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 1/2] kbuild: change *FLAGS_<basetarget>.o to take the path
 relative to $(obj)
In-Reply-To: <20190825172833.5708-1-yamada.masahiro@socionext.com>
References: <20190825172833.5708-1-yamada.masahiro@socionext.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Organization: Approximate
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_021815_950913_0A6366ED 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: x86@kernel.org, Michal Marek <michal.lkml@markovi.net>,
 linux-kbuild@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 25 Aug 2019 18:28:32 +0100,
Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> 
> Kbuild provides per-file compiler flag addition/removal:
> 
>   CFLAGS_<basetarget>.o
>   CFLAGS_REMOVE_<basetarget>.o
>   AFLAGS_<basetarget>.o
>   AFLAGS_REMOVE_<basetarget>.o
>   CPPFLAGS_<basetarget>
>   HOSTCFLAGS_<basetarget>.o
>   HOSTCXXFLAGS_<basetarget>.o
> 
> The <basetarget> is the filename of the target without its suffix.
> 
> This syntax comes into a trouble when two files with the same name
> appear in one Makefile, for example:
> 
>   obj-y += foo.o
>   obj-y += dir/foo.o
>   CFLAGS_foo.o := <some-flags>
> 
> Here, the <some-flags> applies to both foo.o and dir/foo.o
> 
> The real world problem is:
> 
>   scripts/kconfig/util.c
>   scripts/kconfig/lxdialog/util.c
> 
> Both files are compiled into scripts/kconfig/mconf, but only the
> latter should be given with additional flags for ncurses.
> 
> It is more sensible to use the relative path to the Makefile, like this:
> 
>   obj-y += foo.o
>   CFLAGS_foo.o := <some-flags>
>   obj-y += dir/foo.o
>   CFLAGS_dir/foo.o := <other-flags>
> 
> The $* variable is replaced with the stem ('%') part in a pattern rule.
> In other words, this only works for pattern rules.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm/kvm/Makefile        |  5 +++--
>  arch/x86/entry/vdso/Makefile |  3 ++-
>  scripts/Makefile.host        | 30 +++++++++++++++---------------
>  scripts/Makefile.lib         | 10 +++++-----
>  scripts/kconfig/Makefile     |  8 ++++----
>  5 files changed, 29 insertions(+), 27 deletions(-)

For the KVM/arm part:

Acked-by: Marc Zyngier <maz@kernel.org>

Thanks,

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
