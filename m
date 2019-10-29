Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28783E9192
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3nrVS6eWqBFXkQAUe9bv6EHkAI0Y5Mt0gkD94UPOhMw=; b=G6I
	zh88cyB12xEt1X6lEHwQ9eu9Fx3wtoq4tYPNyg02jA9YxXVQOeBRvejLsGyv4gJmSZAOfZB91+//y
	9SABeGnSjTHC+nExW4mjWcnnsr/XRjsAEeJt1RzqabsdIuUNNqvm/P5yNAwMX2zmNFtTiN6NXYtxe
	lORt8xGou0s8tvY3R8UPulzgP3k3H68DsBRos3djJmlYaf2g4IRxTVFNNcntxOEp3QJX4f68RzVqN
	lf5gj9WYsWtc7iqIEPIvCMTmoXfmPfqCm0uHeW6dNjxZEGp6JcraHmePyY9czjK26wS/SrXIV/YAG
	R5p2LU7igmJIUsIKbToat6tkdFiWrXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYps-0005Wr-78; Tue, 29 Oct 2019 21:15:28 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoV-0004Nq-TG
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:05 +0000
Received: by mail-pg1-x535.google.com with SMTP id 15so10509422pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tvuo3Ns0E4Fiim71b6F+/V34tv+uW7W3PecAxYDk1kI=;
 b=kjmJ2PRco2QbnnQ6/Lb5HykXKFCW8bMSMkr+JBAd0YCZqAHZUBgyl2XlQchiLsBsZA
 VWyGFqzEFLvF5puyLHdyKCM+5hmQj5PuueBjIKUK8Jn2QPWeJZWfexDjBm6I6dRaBLQj
 uENAgaybqP2QWV47BGcYFOi14iqWSDuRPGxb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tvuo3Ns0E4Fiim71b6F+/V34tv+uW7W3PecAxYDk1kI=;
 b=hoHmWHF0wWC5TyZ5aNDo8K7dOIr53Qzgk7f/McRMXqWInxqsjD63BlHsHYLvSXJX2O
 U3dkEkbeb9REfYwAiJKC2CCDyVG5vu6DKyTPC1cESV3z59zQqqSGSj6oEX2pxDasNh8J
 lgY3Q40MvaRZtSu0BGU+HlT5JsZf9Zdgia0j+aJJenhwa5yOsJQV0dJX0QhpHO910XBT
 umjGfj0yruZefb4iw/wBI9NIlLT8MqPMIMSyS2KStfu8Vs5mdfcPaK/60S3wZXU2iUd4
 v6Vztimt9lMc3Y2G2uTqzLTNa3xi0huW4Ivq6GabLOFdmCzado3929lPvb16YacmjZu1
 I9mg==
X-Gm-Message-State: APjAAAWXghnT1W4jLdw1ps1XX3XHTM3f19vagHksHpcyZWcD5QwXK8DM
 A+dh1tzI0LCwNQTYO6MaVJ/wMA==
X-Google-Smtp-Source: APXvYqxG6K5OnJmD5FS0dzSHIwPfA6+/IkLP3MyheBThwDhBc+0h1IEDuELusvnpNyG3iWLjyHi91w==
X-Received: by 2002:a63:471b:: with SMTP id u27mr28891174pga.96.1572383642989; 
 Tue, 29 Oct 2019 14:14:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x7sm51799pff.0.2019.10.29.14.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 00/29] vmlinux.lds.h: Refactor EXCEPTION_TABLE and NOTES
Date: Tue, 29 Oct 2019 14:13:22 -0700
Message-Id: <20191029211351.13243-1-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141403_947857_0D7725EF 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Segher Boessenkool <segher@kernel.crashing.org>, linuxppc-dev@lists.ozlabs.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Andy Lutomirski <luto@kernel.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arch maintainers: please send Acks (if you haven't already) for your
respective linker script changes; the intention is for this series to land
via -tip. See patch #1 for an extended rationale for the "note" vs "notes"
naming. If "notes" is strongly desired, we can perform that change on
top of this series. For now, I prefer to leave things as they were in v2.

v3: Add new Acks, clarify "note" vs "notes" renaming
v2: https://lore.kernel.org/lkml/20191011000609.29728-1-keescook@chromium.org
v1: https://lore.kernel.org/lkml/20190926175602.33098-1-keescook@chromium.org


This series works to move the linker sections for NOTES and
EXCEPTION_TABLE into the RO_DATA area, where they belong on most
(all?) architectures. The problem being addressed was the discovery
by Rick Edgecombe that the exception table was accidentally marked
executable while he was developing his execute-only-memory series. When
permissions were flipped from readable-and-executable to only-executable,
the exception table became unreadable, causing things to explode rather
badly. :)

Roughly speaking, the steps are:

- regularize the linker names for PT_NOTE and PT_LOAD program headers
  (to "note" and "text" respectively)
- regularize restoration of linker section to program header assignment
  (when PT_NOTE exists)
- move NOTES into RO_DATA
- finish macro naming conversions for RO_DATA and RW_DATA
- move EXCEPTION_TABLE into RO_DATA on architectures where this is clear
- clean up some x86-specific reporting of kernel memory resources
- switch x86 linker fill byte from x90 (NOP) to 0xcc (INT3), just because
  I finally realized what that trailing ": 0x9090" meant -- and we should
  trap, not slide, if execution lands in section padding

Thanks!

-Kees


Kees Cook (29):
  powerpc: Rename "notes" PT_NOTE to "note"
  powerpc: Remove PT_NOTE workaround
  powerpc: Rename PT_LOAD identifier "kernel" to "text"
  alpha: Rename PT_LOAD identifier "kernel" to "text"
  ia64: Rename PT_LOAD identifier "code" to "text"
  s390: Move RO_DATA into "text" PT_LOAD Program Header
  x86: Restore "text" Program Header with dummy section
  vmlinux.lds.h: Provide EMIT_PT_NOTE to indicate export of .notes
  vmlinux.lds.h: Move Program Header restoration into NOTES macro
  vmlinux.lds.h: Move NOTES into RO_DATA
  vmlinux.lds.h: Replace RODATA with RO_DATA
  vmlinux.lds.h: Replace RO_DATA_SECTION with RO_DATA
  vmlinux.lds.h: Replace RW_DATA_SECTION with RW_DATA
  vmlinux.lds.h: Allow EXCEPTION_TABLE to live in RO_DATA
  x86: Actually use _etext for end of text segment
  x86: Move EXCEPTION_TABLE to RO_DATA segment
  alpha: Move EXCEPTION_TABLE to RO_DATA segment
  arm64: Move EXCEPTION_TABLE to RO_DATA segment
  c6x: Move EXCEPTION_TABLE to RO_DATA segment
  h8300: Move EXCEPTION_TABLE to RO_DATA segment
  ia64: Move EXCEPTION_TABLE to RO_DATA segment
  microblaze: Move EXCEPTION_TABLE to RO_DATA segment
  parisc: Move EXCEPTION_TABLE to RO_DATA segment
  powerpc: Move EXCEPTION_TABLE to RO_DATA segment
  xtensa: Move EXCEPTION_TABLE to RO_DATA segment
  x86/mm: Remove redundant &s on addresses
  x86/mm: Report which part of kernel image is freed
  x86/mm: Report actual image regions in /proc/iomem
  x86: Use INT3 instead of NOP for linker fill bytes

 arch/alpha/kernel/vmlinux.lds.S      | 18 +++++-----
 arch/arc/kernel/vmlinux.lds.S        |  6 ++--
 arch/arm/kernel/vmlinux-xip.lds.S    |  4 +--
 arch/arm/kernel/vmlinux.lds.S        |  4 +--
 arch/arm64/kernel/vmlinux.lds.S      | 10 +++---
 arch/c6x/kernel/vmlinux.lds.S        |  8 ++---
 arch/csky/kernel/vmlinux.lds.S       |  5 ++-
 arch/h8300/kernel/vmlinux.lds.S      |  9 ++---
 arch/hexagon/kernel/vmlinux.lds.S    |  5 ++-
 arch/ia64/kernel/vmlinux.lds.S       | 20 +++++------
 arch/m68k/kernel/vmlinux-nommu.lds   |  4 +--
 arch/m68k/kernel/vmlinux-std.lds     |  2 +-
 arch/m68k/kernel/vmlinux-sun3.lds    |  2 +-
 arch/microblaze/kernel/vmlinux.lds.S |  8 ++---
 arch/mips/kernel/vmlinux.lds.S       | 15 ++++----
 arch/nds32/kernel/vmlinux.lds.S      |  5 ++-
 arch/nios2/kernel/vmlinux.lds.S      |  5 ++-
 arch/openrisc/kernel/vmlinux.lds.S   |  7 ++--
 arch/parisc/kernel/vmlinux.lds.S     | 11 +++---
 arch/powerpc/kernel/vmlinux.lds.S    | 37 ++++---------------
 arch/riscv/kernel/vmlinux.lds.S      |  5 ++-
 arch/s390/kernel/vmlinux.lds.S       | 12 +++----
 arch/sh/kernel/vmlinux.lds.S         |  3 +-
 arch/sparc/kernel/vmlinux.lds.S      |  3 +-
 arch/um/include/asm/common.lds.S     |  3 +-
 arch/unicore32/kernel/vmlinux.lds.S  |  5 ++-
 arch/x86/include/asm/processor.h     |  2 +-
 arch/x86/include/asm/sections.h      |  1 -
 arch/x86/kernel/setup.c              | 12 ++++++-
 arch/x86/kernel/vmlinux.lds.S        | 16 ++++-----
 arch/x86/mm/init.c                   |  8 ++---
 arch/x86/mm/init_64.c                | 16 +++++----
 arch/x86/mm/pti.c                    |  2 +-
 arch/xtensa/kernel/vmlinux.lds.S     |  8 ++---
 include/asm-generic/vmlinux.lds.h    | 53 ++++++++++++++++++++--------
 35 files changed, 159 insertions(+), 175 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
