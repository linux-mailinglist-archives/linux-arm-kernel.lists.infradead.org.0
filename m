Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C476719518F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D9csHh6G18T2h/vECCnpNdpj1vtH+OXPSCVDXxkKby4=; b=C1ni7/pdB58Fp4
	IUn6OTPgLAjGRWtndMO4HxNAoUC8p5on2iNFEwIs4HvVbdl4XUwFY4Hpk2R4u1Cf9ZOUTPvYNFvvV
	jxNzTbk1RuVXrTMrpJ4B32Obu2LZx4evfeqf/P7UU8mEVDcDKONF0KMv2yGR3OUXpwdSUmdSd8uaf
	0ql0hexcOqHaBjc0aEf7AYIDCyIwuMgVzdx4jOlp6QDOEO3aPEYVGGdo+ojXNVu7WNerW1q+/dAnt
	CxK0Yd/japXXLOifPQ7/JuZjrWLjXimLBm9wUdA/Xrdlrry5j+SQTffX6sB5G76u9Rdid16/TuToX
	t9RFcIMltcwT3zMvCgjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHinu-0001Zk-E6; Fri, 27 Mar 2020 06:49:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin4-000132-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id e1so3098115plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e2pldkrhAni9nq8EyiG2WO78f/APBgebCGeZjhrmshQ=;
 b=I5pLNO+fPogPHiacztpG1HxVvtnTLCdqXJT+PYXFAYy2wxLIwXNdmFqAS1I1f0M/jk
 i7aiI8cdZcbouxeLQbQqZcLjULDiMw3oqCK7zfUVhtO0VEAHkOFMQ2tOJkveDwz0wuv6
 pOsphc56mqYDnuZStj5ScZg0AFgtI8LBlfI3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e2pldkrhAni9nq8EyiG2WO78f/APBgebCGeZjhrmshQ=;
 b=m78v6f9oqPOMI+jDSMmkQ/JXIJYpEJ0L1zHkTcNaSvrBc2iitpqkI9gKV19iY9gij6
 NE7hzxlUXLmZCpuzqOqGaGwbw2OaSttO7APWHGhoec4tBTE6pLn20ejZxDy4Deas6HT0
 zLkuW9eM78VjslpmcZRxTY7n+eL1z21Peo05nX5utRSvOjbAxK/KB8DbOsxpfUzO1LmS
 rUb2bl7Q+qMzw2IX3rqqRcRcwNu4K5XzjNvWXs0o/66LzDX+dOTjzuM6ZQsB/8Ppl8ex
 4Gy9R/unJc91TX4l4ToPmgjElY3FLfz5Swvl82MBAXQfBaHWDcUMtKp2cxINwAOmHA4a
 R6lQ==
X-Gm-Message-State: ANhLgQ1Hxo7XuhOsAOLqojZn3ZaP2/EteZ8Loyf2FOgNonJ1IeYpgczA
 L1NEcSETbCJRTBMbtpkd6v0NlA==
X-Google-Smtp-Source: ADFU+vu33/tER7UbAE9saaXS5jjv8U5NDlXNrJgfePpmE/SLJRv4FbdKQSggX0D5kcr6Hk9V6uB9jw==
X-Received: by 2002:a17:90a:bf18:: with SMTP id
 c24mr4158631pjs.125.1585291706174; 
 Thu, 26 Mar 2020 23:48:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d7sm3308989pfa.106.2020.03.26.23.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 0/6] binfmt_elf: Update READ_IMPLIES_EXEC logic for modern
 CPUs
Date: Thu, 26 Mar 2020 23:48:14 -0700
Message-Id: <20200327064820.12602-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234826_763173_DC266D24 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 kernel-hardening@lists.openwall.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This continues my attempt to fix READ_IMPLIES_EXEC. :)

This series is for x86, arm, and arm64; I'd like it to go via
-tip, though, just to keep these changes together, as they're
related. (Note that most other architectures don't suffer from this
problem. e.g. powerpc's behavior appears to already be correct. MIPS may
need adjusting but the history of CPU features and toolchain behavior
is very unclear to me.)

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


Thanks!

-Kees

v5:
 - re-align tables and use full name of PT_GNU_STACK (bp)
v4: https://lore.kernel.org/lkml/20200225051307.6401-1-keescook@chromium.org
v3: https://lore.kernel.org/lkml/20200210193049.64362-1-keescook@chromium.org
v2: https://lore.kernel.org/lkml/20190424203408.GA11386@beast/
v1: https://lore.kernel.org/lkml/20190423181210.GA2443@beast/

Kees Cook (6):
  x86/elf: Add table to document READ_IMPLIES_EXEC
  x86/elf: Split READ_IMPLIES_EXEC from executable PT_GNU_STACK
  x86/elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
  arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
  arm32/64, elf: Split READ_IMPLIES_EXEC from executable PT_GNU_STACK
  arm64, elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address
    spaces

 arch/arm/kernel/elf.c        | 27 +++++++++++++++++++++++----
 arch/arm64/include/asm/elf.h | 23 ++++++++++++++++++++++-
 arch/x86/include/asm/elf.h   | 22 +++++++++++++++++++++-
 fs/compat_binfmt_elf.c       |  5 +++++
 4 files changed, 71 insertions(+), 6 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
