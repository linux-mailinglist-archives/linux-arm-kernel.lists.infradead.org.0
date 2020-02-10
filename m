Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D59F1583A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0kokkKSG3UTSguSPAtd1/fjCMIyPr7Tdn+1ysa0Fhc=; b=PO6Pa/KuTaVSCs
	mSWgM0jBQaHyIm40IFAFuzanNuA6BHAXNypOgnXuC3KFXRM0gulpOWESyqRa7zSmRgus+hVVRQJ7i
	wBF0FA6IYSmXbwzszG/+13+4lHSsM4T27QQ0FlRfXrE88df9ZEvv5Chx7LE7DSaPYWvlx/nrP9uAi
	W2hyqKXBfxH1YQitj3qiGaCfs6denx+7LVMcwAWlydTtEntexNoIg2m7gP69liRwv0ayggQfdmZHi
	ck7r2JSYh7PE/MNRi9HEk8S6DLoPl2pr2D/tPjt60bOwNLoTwiKxGRkkyP9LchHBG5Dax64q2/zSm
	GBYPNYIS7Dy39eQXuv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EmB-0005eK-QD; Mon, 10 Feb 2020 19:31:23 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elo-0005S8-Vv
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:02 +0000
Received: by mail-oi1-x241.google.com with SMTP id a142so10342254oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BxkgltGo3ZM9ZY7Grbu2bcNcn+pz+GDYrC11ZXD2ME=;
 b=BH7Ud+6oFq+7OoIlLBbbMvTBHC4x6G8tRrT4wZScXP2/0BYU5O8AgFFlezKTTpQYMV
 fmiGPa9peDfUrdZdj+9xqS9t7Ua491OZzp4RIZLg3Giw7fhPm1FvIbwzaS9NqQojoCMv
 95B0WHndyisDS9V4XA1xkVEyzq6091EvwvmT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7BxkgltGo3ZM9ZY7Grbu2bcNcn+pz+GDYrC11ZXD2ME=;
 b=gi0fg3WxUpn5aab2H2+Mlo1NZJPmQNWehm7Tv0FR6M8xvi3dprqyymBGHEBypTTkfm
 2I8FeilVKAvhi8SzhnTf7vf0+ZTwtX/DpIzFnEqAWD7E1AGnc6K/CBpuLai2XU0Rvx76
 o4D4qBwWPGjgbwXtXDrtE50sWJrJoXJQh0vnKlUzaaTduSuAwaSjASkkY78mDSDNQtjM
 oQp9PgPMNmu+pfxZaDQuZ1ZdihUSuOuVEPpnC+Jwj84ELbx8/MTUMARJV4A05XDxaXG9
 ycFYgYVm/2HzJE17aVPMYAekEine8zwwXx6jnefn91lxnsgRXjpjm2w+iIwK7ZTgHHEV
 h1yw==
X-Gm-Message-State: APjAAAVWJ1OM/tMFPa+hhRrHXMpSgavVvy3o0WleJm8qvSulT36hPSjv
 FRhkcd7yWVkt6+bYWddG/Qd59g==
X-Google-Smtp-Source: APXvYqzUOzBqZYnuPC5ne0YCYJNkucq+pHiY9zdgP+OtGzcaHv4jX1sC238odS+TkQrM/uoVlWRNEA==
X-Received: by 2002:aca:5a04:: with SMTP id o4mr405786oib.71.1581363059273;
 Mon, 10 Feb 2020 11:30:59 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 67sm354602oid.30.2020.02.10.11.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:30:58 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 0/7] binfmt_elf: Update READ_IMPLIES_EXEC logic for modern
 CPUs
Date: Mon, 10 Feb 2020 11:30:42 -0800
Message-Id: <20200210193049.64362-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113101_025977_05B0C079 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@mellanox.com>, linux-kselftest@vger.kernel.org,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is a refresh of my earlier attempt to fix READ_IMPLIES_EXEC. I think
it incorporates the feedback from v2, and I've now added a selftest. This
series is for x86, arm, and arm64; I'd like it to go via -tip, though,
just to keep this change together with the selftest. To that end, I'd like
to collect Acks from the respective architecture maintainers. (Note that
most other architectures don't suffer from this problem. e.g. powerpc's
behavior appears to already be correct. MIPS may need adjusting but the
history of CPU features and toolchain behavior is very unclear to me.)

Repeating the commit log from later in the series:


The READ_IMPLIES_EXEC work-around was designed for old toolchains that
lacked the ELF PT_GNU_STACK marking under the assumption that toolchains
that couldn't specify executable permission flags for the stack may not
know how to do it correctly for any memory region.

This logic is sensible for having ancient binaries coexist in a system
with possibly NX memory, but was implemented in a way that equated having
a PT_GNU_STACK marked executable as being as "broken" as lacking the
PT_GNU_STACK marking entirely. Things like unmarked assembly and stack
trampolines may cause PT_GNU_STACK to need an executable bit, but they
do not imply all mappings must be executable.

This confusion has led to situations where modern programs with explicitly
marked executable stack are forced into the READ_IMPLIES_EXEC state when
no such thing is needed. (And leads to unexpected failures when mmap()ing
regions of device driver memory that wish to disallow VM_EXEC[1].)

In looking for other reasons for the READ_IMPLIES_EXEC behavior, Jann
Horn noted that glibc thread stacks have always been marked RWX (until
2003 when they started tracking the PT_GNU_STACK flag instead[2]). And
musl doesn't support executable stacks at all[3]. As such, no breakage
for multithreaded applications is expected from this change.

[1] https://lkml.kernel.org/r/20190418055759.GA3155@mellanox.com
[2] https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=54ee14b3882
[3] https://lkml.kernel.org/r/20190423192534.GN23599@brightrain.aerifal.cx


-Kees


v3:
 - split steps in to distinct patches
 - include arm32 and arm64/compat
 - add selftests to validate behavior
v2: https://lore.kernel.org/lkml/20190424203408.GA11386@beast/
v1: https://lore.kernel.org/lkml/20190423181210.GA2443@beast/

Kees Cook (7):
  x86/elf: Add table to document READ_IMPLIES_EXEC
  x86/elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
  x86/elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
  arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
  arm32/64, elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
  arm64, elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address
    spaces
  selftests/exec: Add READ_IMPLIES_EXEC tests

 arch/arm/kernel/elf.c                         |  27 +++-
 arch/arm64/include/asm/elf.h                  |  23 +++-
 arch/x86/include/asm/elf.h                    |  22 +++-
 fs/compat_binfmt_elf.c                        |   5 +
 tools/testing/selftests/exec/Makefile         |  42 +++++-
 .../selftests/exec/read_implies_exec.c        | 121 ++++++++++++++++++
 .../selftests/exec/strip-gnu-stack-bits.c     |  34 +++++
 .../testing/selftests/exec/strip-gnu-stack.c  |  69 ++++++++++
 8 files changed, 336 insertions(+), 7 deletions(-)
 create mode 100644 tools/testing/selftests/exec/read_implies_exec.c
 create mode 100644 tools/testing/selftests/exec/strip-gnu-stack-bits.c
 create mode 100644 tools/testing/selftests/exec/strip-gnu-stack.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
