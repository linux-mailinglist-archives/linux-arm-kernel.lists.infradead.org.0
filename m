Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DFB1B6B79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSHmDby2b170E/m9V0OIiL6YQZrrB25DKzVXujdr4sI=; b=lXOhAlLkbmJKzw
	bAi9yI2JDi2QqT8wI80rP6VvgDXHZRPOTfxu1mGNqLP+BAUusx5H6UtTXpHvIVpaRBt+bSYBG+Eud
	QSJ3iNqSmYuGtP0xCHHU0mmpL6thK0BZ+Uk/vDI32WLzpVwIiAbfsOy1Kyhj4ir8EWOH45BmUFFAS
	cV8dLQ4lmAJnrB1PBi7vGYLRVofd95CwvP0Db+L7u957bj3LTM6MaFdqKlkRjRrfGCaPXjqMdHY07
	B+JJez1ZHG7JMPzfojRtcENmHaIeU0QQnrraO2xJ/msqhKnLQaVeyESewnu7/sAqqezWgGkgSYVKW
	W7zSGrmaHGj76USOozBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoFX-0004KU-Tl; Fri, 24 Apr 2020 02:39:31 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoFK-0004IR-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:39:22 +0000
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 03O2d0x8020645
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Apr 2020 11:39:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 03O2d0x8020645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587695941;
 bh=K0CCqutUEwkhzK4mn2L62I8lFdwRFAH0wGb3WIospz4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ck/myLmrRNZ+S45Ipn0CD50jejBv1AjUxvBn5zmfcEP4GNXa37pzqQOHf/MU7EUMv
 DeDnuNHSx6OJ3F9TpTwGkfCNG1tX/hAnbzkWSgnckcU0UGEzZ1ByFbdpkNZXOThHhM
 Ab8S+RRI10ew3f+WrQImdKP9gr48PkqtYMrFtl7LFNWbZ2pwU2QPuykmdOUq5iLpmC
 H2JVNVulPKgbAFy5ejnSS+EAm5CcdWXRN0C91By1cBAlsHY1zsnJVYJVQp7EaOPF5q
 WEFpPPY0+cFM8+prh+IX5UOGlTZ/fGgJsd9yWDB/v+63CHYTmm/jrfsLsN1UfOuL6F
 CuvUvdU9CkBeQ==
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id y10so8015732uao.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 19:39:01 -0700 (PDT)
X-Gm-Message-State: AGi0PuZWWzMlNT7aWBIeaHLuVKsmRubtXRWQXyL1jK72bKTb9mEo2oLa
 GzHSP9rh1CARCXthHQVW9hAkbyRmzJFeoAZzzt8=
X-Google-Smtp-Source: APiQypJk0Gh5f5oZqDVtQhaq5o+g301yOxcn+U2MXZ7yT9vJGWYvQrdurQcUiyuZoWHIwai292ZEsN79Bjr42VsdtFU=
X-Received: by 2002:a67:6542:: with SMTP id z63mr6187125vsb.179.1587695940134; 
 Thu, 23 Apr 2020 19:39:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200419132142.173861-1-sedat.dilek@gmail.com>
In-Reply-To: <20200419132142.173861-1-sedat.dilek@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 24 Apr 2020 11:38:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNATk1yfHdmGLvS2vwew1MgX2nFupgW7ZqHuk7ragBX5VQA@mail.gmail.com>
Message-ID: <CAK7LNATk1yfHdmGLvS2vwew1MgX2nFupgW7ZqHuk7ragBX5VQA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] kbuild: Rename and use BINUTILS_VERSION where
 needed
To: Sedat Dilek <sedat.dilek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193918_369579_10615ABE 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 10:21 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> In the first patch I introduced LD_IS_BINUTILS Kconfig.
>
> To be consistent in naming convention I renamed from LD_VERSION
> to BINUTILS_VERSION.
>
> So, we have the double "LD_IS_BINUTILS" and "BINUTILS_VERSION"
> like "CC_IS_GCC" and "GCC_VERSION".
>
> For the same reason I renamed the shell script to detect the GNU ld
> linker version.
>
> In Documentation/process/changes.rst we use "binutils" and GNU ld
> binary is part of it (see [3]).
>
> The patches "init/kconfig: Add LD_VERSION Kconfig" (see [1]) and
> "arm64: Kconfig: ptrauth: Add binutils version check to fix mismatch"
> (see [2]) added checks for binutils >=2.23.1 whereas binutils
> version 2.23 is minimum supported version (see [3]).
>
> I have renamed to BINUTILS_VERSION where needed.



I do not think this is the right thing to do.

As the doc implies
https://lore.kernel.org/lkml/20200224174129.2664-1-ndesaulniers@google.com/T/
we support overriding CC, LD, ... etc. individually.
(such a usage might be rare with LLVM=1 syntax supported, though)



I'd rather want to stick to LD_VERSION
instead of the version of the tool suite.



config BINUTILS_VERSION
       int
       default $(shell,$(LD) --version |
$(srctree)/scripts/binutils-version.sh) if LD_IS_BINUTILS


This will leave BINUTILS_VERSION empty when LD=ld.lld,
but it looks strange if binutils is still used for other tools.




>
> [1] https://git.kernel.org/linus/9553d16fa671b9621c5e2847d08bd90d3be3349c
> [2] https://git.kernel.org/linus/15cd0e675f3f76b4d21c313795fe0c23df0ee20f
> [3] https://git.kernel.org/linus/Documentation/process/changes.rst#n79
>
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  arch/arm64/Kconfig                             | 2 +-
>  init/Kconfig                                   | 4 ++--
>  scripts/{ld-version.sh => binutils-version.sh} | 0
>  3 files changed, 3 insertions(+), 3 deletions(-)
>  rename scripts/{ld-version.sh => binutils-version.sh} (100%)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 40fb05d96c60..274ba9b3ac95 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1504,7 +1504,7 @@ config ARM64_PTR_AUTH
>         depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
>         # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
>         # which is only understood by binutils starting with version 2.33.1.
> -       depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> +       depends on !CC_IS_GCC || GCC_VERSION < 90100 || BINUTILS_VERSION >= 233010000
>         depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
> diff --git a/init/Kconfig b/init/Kconfig
> index 520116efea0f..946db4786951 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,9 +19,9 @@ config GCC_VERSION
>  config LD_IS_BINUTILS
>         def_bool $(success,$(LD) -v | head -n 1 | grep -q 'GNU ld')
>
> -config LD_VERSION
> +config BINUTILS_VERSION
>         int
> -       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh) if LD_IS_BINUTILS
> +       default $(shell,$(LD) --version | $(srctree)/scripts/binutils-version.sh) if LD_IS_BINUTILS
>
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> diff --git a/scripts/ld-version.sh b/scripts/binutils-version.sh
> similarity index 100%
> rename from scripts/ld-version.sh
> rename to scripts/binutils-version.sh
> --
> 2.26.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
