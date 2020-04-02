Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F7E19C6FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 18:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEfeEATBS7PzCC64ZVJtWDK0CDOkyHUHkwM9zfab01o=; b=OLxH69R7X3uxoC
	3/Vop0+es/MCGFp1Uyp/WIYUW0iv4lKRuJUxpX1agSWYSZctHJfmURUvUYQjCQt7dgDZ7AIHUC+sD
	d+QfP/46DyQwQqjPDtEYo/qRcJMythA0lXmkb75DiGxupZ07+wv8oZaV4vqS/Zze3qUetN778eHnu
	8Cx6iF71TZRzsB0Le/8hAqkl8awXIyp+8RZqAc8sBXUYfLh1STHwmxv9oE7XkgKU1q0uCEfqMUFDi
	A8BksazGjOEVG5Mv0NqwWLjB8nZlsW4qduZL99KxOk6cYCIaxMHNTiwG7SjjIroMCs2R9LC2Y24jC
	uvhBt9fd9AJgZ37RGY/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2aR-0005iA-Kt; Thu, 02 Apr 2020 16:20:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2aK-0005hU-MB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 16:20:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id e9so4330544wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 09:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=M0qIKEE/jPMCSL2VsYtN2C2Vz0+dVANDDtua/KUa0Wk=;
 b=J06tr+PDUUN0IuhiAKpC+JkPY8VyKtaIEVjjLgKOrK9s0Lgl7OAV2j9iM0iy52w24n
 6dWnSzs8jK0HUWqS8ELNCbmtvITkrSQi8Fbz+QXKVEg8wTxsvSJzP1HAvRppPpmLDZUv
 zWPeFfZNTNCgd4FjcJJddVmDR1Tn/3iz1z2UHrJTP4fF3lbtaW8wkEQTCcORfER94HoW
 YnUoQn90b8mUWIHdd2dp6rV9wWOIgKOa8gcKXO65WKz1zY8raCBr/mNZLQQILksnvan/
 s7800d80UPo046XvmJ6sl+ewPWq9fnkenr/FUti1D0iSnvkxe+pYTF8IbkeN40uPMq9k
 b/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=M0qIKEE/jPMCSL2VsYtN2C2Vz0+dVANDDtua/KUa0Wk=;
 b=froLTNndbRmN08zO3sRqnGanJm+VKv1ZPzlDbLlXPAUe7MmN96uEeYHcJHvNGNzLwW
 mAgLlf8wUSS3hl6u1GhCtyTzzrHXSyI83foG+SnCn8IbM0ETT2NwLyiXPHvQf7wzyyup
 IIE7ZkSikkFucXyhA5KYF4muNHn9LeDdsTcI7bUztQFV0iD1nH8zTV+p8UgUSROgR86j
 ArhI6XCI2RgmFiUhcrvIoq9Cp+vO+9541n4PAaO3L0W2xguuR4R0w8+D0ITEn4bd7wJb
 M9O1DTDAFYV85QLaFnkOoeKzvqOcc4NsxfMg7saqvlYNcM3HnF9Tllq2FQOuEgumGKp+
 fnWw==
X-Gm-Message-State: AGi0Puaog/JyxIW8c5dFPpukbNqvGMaLsis2+PaG74MsHyk1uJH4mvYR
 uCg1uzc0XoypzxhAEren3LJxRKXA1km7oU6HFbsnQnN6
X-Google-Smtp-Source: APiQypLQKCLfKaI9g7CDIQB0Dt1MIKvoDGOCHMQ5uuabLjQMqtvD8ITI3S55KR8iAO4oibBgm83EghWn2uGq6sjdu14=
X-Received: by 2002:a1c:4e11:: with SMTP id g17mr4310690wmh.80.1585844450712; 
 Thu, 02 Apr 2020 09:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 2 Apr 2020 18:20:57 +0200
Message-ID: <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_092052_748592_FFC448DE 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Kees,

what is the status of this patchset?
Looks like it is not in tip or linux-next Git.

Thanks.

Regards,
- Sedat -

> -Kees
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/282
> [2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
> [3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
> [4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1
>
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
