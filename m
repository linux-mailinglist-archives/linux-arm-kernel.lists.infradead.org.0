Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D26217315F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pm+FxmGmX0Q8aVccx5tpq6xZjIoBpPX0MGPjjmNA5Jk=; b=UzsnlGx1Za6G3J
	DrPiQ2dtP6B4A1p8GTuCY62qjCVVHWiiYSl8eIlPpYTsmSoLbNoeZg+cA332RpH7G6pYNswMKHXZ9
	eTQ4w81wklY4mPylI5tyY4F0rrytR7u3e8HMQX8fieqheDPux3NvCDxf8xOzw6NXYWS2XbOc1hTnH
	n+xkRqv+VRWnEU9o1Wp53mxG98TdP9cZjRyXYdANo+wmDElIkULBTWCmGCfHTM2hZe1Rfe5dhR4Ss
	P/xj0oRfjbw6e7N6lAysH18XJDYyoH/sEGch4VE2ZqnoVrtWXjeeAUHFbQ5HRVQvUkqWU37QCb4Xo
	vSXTHoyPRVSRQgVas8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZUx-0006q7-2G; Fri, 28 Feb 2020 06:51:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZUl-0006pP-3C
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 06:51:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id j16so1706292wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 22:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=avF1EF6lpJLVVsTfVWBjTe/8KtvDZSIsmNvBiNuGKMg=;
 b=THDt18G/FXoJ1iM+KNQB/v0hI6yvWK8bMDHDcfQSKeziHQIqYblvqJmEftpLKrhco2
 SFveE9Xs3bCIREUxBls+XpZ5opNASmRCLv3D66hN1WEbzNxO90PCG4cSn+mVp+I8scI7
 76mmSNwWiM+r92MlP+IZooSJ68GqKRUU2EDFk3sGPFzTdUcFLgdjFTp/wJQycrbHQfbs
 U7iwR6po+Ej26juHt0u7x5m8iNe+0c+7Vrq61sMfAtTT3Ig+HMKFng3edsIIBv6W5Bm7
 eRP0damzsRhWhiMonIWppR7VoRP6tfA6gyqPyfWwtTUofME3qfkNfJnrFUpozKjdx9Mn
 7nig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=avF1EF6lpJLVVsTfVWBjTe/8KtvDZSIsmNvBiNuGKMg=;
 b=YSHwph4D4ZCzmrEz/napCu4dH2snbDR+A+c+hFiakuhaPLH4LX9r0D6Ud0iKbpXYmB
 0fbknHSWfIZ05dikqNThkzSwo+VX6EiOYaOkanWp6+oY/capIniHWLJOt7oewCZGjqvR
 /aXiQMBOAZ5U7063/hpa8mP1x+uNEqMP7yUti6USupjazAk8Rnl6lHv/3EQIcd7kuRjl
 5VRPhmTlmLTDUDzClgiHvjyFrdpyz0qjlZIUhyH9uXMjbmmdL4Tw96fN9GMJqE82FLTK
 mArr5kkyfA5vtmrikDeRW9ZeFaoe3jitlv85xCdjLi/B8rhMR9pA/p4jY7jLfD0ioUyE
 rWeg==
X-Gm-Message-State: APjAAAXk6sDCPKVeg2hl+S6UsO8Qd+1FjAv8ga5wjciPgavR4nh5ebIA
 My9u4ncCjsa+HSiX4mhnaVBnDocM3CRP6xXcaCE=
X-Google-Smtp-Source: APXvYqwvp4piUvF/SYce0tbofShEvKkPpBAb2O8nmlEOvn8MBRHMN7izLp5juCXAuFJGAECrBbht8pmjEp8qcymSoVM=
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr3205209wrv.197.1582872693018; 
 Thu, 27 Feb 2020 22:51:33 -0800 (PST)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 28 Feb 2020 07:51:21 +0100
Message-ID: <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_225135_166626_43265712 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: sedat.dilek@gmail.com
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
 Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
>
> Hi!
>
> A recent bug was solved for builds linked with ld.lld, and tracking
> it down took way longer than it needed to (a year). Ultimately, it
> boiled down to differences between ld.bfd and ld.lld's handling of
> orphan sections. Similarly, the recent FGKASLR series brough up orphan
> section handling too[2]. In both cases, it would have been nice if the
> linker was running with --orphan-handling=warn so that surprise sections
> wouldn't silently get mapped into the kernel image at locations up to
> the whim of the linker's orphan handling logic. Instead, all desired
> sections should be explicitly identified in the linker script (to be
> either kept or discarded) with any orphans throwing a warning. The
> powerpc architecture actually already does this, so this series seeks
> to extend this coverage to x86, arm64, and arm.
>
> This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> landed), and has a minor conflict[4] with the ARM tree (related to
> the earlier mentioned bug). As it uses refactorings in the asm-generic
> linker script, and makes changes to kbuild, I think the cleanest place
> for this series to land would also be through -tip. Once again (like
> my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> this can go all together with the least disruption. Splitting it up by
> architecture seems needlessly difficult.
>
> Thanks!
>
> -Kees
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/282
> [2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
> [3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
> [4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1
>

Hi Kees,

is this an updated version of what you have in your
kees/linux.git#linker/orphans/x86-arm Git branch?

Especially, I saw a difference in [2] and "[PATCH 4/9] x86/boot: Warn
on orphan section placement"

[ arch/x86/boot/compressed/Makefile ]

+KBUILD_LDFLAGS += --no-ld-generated-unwind-info

Can you comment on why this KBUILD_LDFLAGS was added/needed?

I like when people offer their work in a Git branch.
Do you plan to do that?

Thanks.

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
[2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=linker/orphans/x86-arm&id=e43aa77956c40b9b6db0b37b3780423aa2e661ad



> H.J. Lu (1):
>   Add RUNTIME_DISCARD_EXIT to generic DISCARDS
>
> Kees Cook (8):
>   scripts/link-vmlinux.sh: Delay orphan handling warnings until final
>     link
>   vmlinux.lds.h: Add .gnu.version* to DISCARDS
>   x86/build: Warn on orphan section placement
>   x86/boot: Warn on orphan section placement
>   arm64/build: Use common DISCARDS in linker script
>   arm64/build: Warn on orphan section placement
>   arm/build: Warn on orphan section placement
>   arm/boot: Warn on orphan section placement
>
>  arch/arm/Makefile                             |  4 ++++
>  arch/arm/boot/compressed/Makefile             |  2 ++
>  arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
>  .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
>  arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
>  arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
>  arch/arm64/Makefile                           |  4 ++++
>  arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
>  arch/x86/Makefile                             |  4 ++++
>  arch/x86/boot/compressed/Makefile             |  3 ++-
>  arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
>  arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
>  include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
>  scripts/link-vmlinux.sh                       |  6 +++++
>  14 files changed, 85 insertions(+), 31 deletions(-)
>  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-1-keescook%40chromium.org.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
