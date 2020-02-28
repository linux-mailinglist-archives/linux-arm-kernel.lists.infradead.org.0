Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7C4172D2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ct/pNbN9vuXMW9f5fLnuvxCcEGtuMfipnlUEp7DpIyw=; b=hMRDV7YGCAA6Bt
	xgKILF0JGCdXtxLwjsRm27Jje9hUa5yzC1mMQROOicvTN048YyR2hXCfZ0ALxShoUCC5mMHMtJnbb
	PAQaZ2XV9WlLXC/qGZzMhvrPE36A73XqwjmFnEnbjFLt4RDTNRMot55uFV8VAsFmUHc3+PUlfb2um
	sZY/SXzalGz9A2eJKiSMYP//9v7/fU5JAO6f9+hNJ1Pco84k2HhUfAJqDzOTYTBe45bQSGjiwGIOL
	cV7CC4RNc3BjoSRPf9oNkUt3oSLCcOEccMcrLDDbd7HUb0pyFsUZSCgEL85AZsqACdZfYD8UOE+Ib
	03gFf8lCL/hVwlHNsbdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TRq-0001rF-9d; Fri, 28 Feb 2020 00:24:10 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQa-00010M-B4
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:53 +0000
Received: by mail-pj1-x1042.google.com with SMTP id i11so435813pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QU+opm495Ij9T86I2aM97FnNNq2iPpjTX5kDOiaxevw=;
 b=dsuY0K/AzEQlTogEax9u0QuYhGd3iInRtMRCCHVDUfZVPqfutcASj/542CvykAG/hK
 dGCQ5AEn7pxK7ZI5bQYg1c+3OfcZrdR7UpK04HH66toPaY9cHzA3j5QKSjYXvkovrCdC
 BIU+ETMsBjNTI3hxyTJ0cRGNCu0W3aNuB1aM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QU+opm495Ij9T86I2aM97FnNNq2iPpjTX5kDOiaxevw=;
 b=G4MSn31YeWZk1/qiUj5iqi0I8jUKWbBCOMLUjZqizhCxL8g3770KKStA0YaskyMa53
 nkvT9xSs2d2Bphavy6irVNbahkVtZ7MA76y9Eu6YELFGEQyempLRiVBlivNZZ5Zsq17F
 m84dAmFW/NRYv5sr9qYsyBuX7xO/EcByG4W8CFo4As9JMbS+mQhfMIknphEUKaWzkKwI
 c9NIlxUDXQ+376H3iL5ag3s2T9PxX1MBfxkvH8we1NohXSCwPLv7z274QQYBWcYEaAnj
 B+FPjxOmUm0IYjZJkb96WqbAvIz26gtlaZ0XzY9VI6JkKFfAZ+8lcAwwwkX2TR1tqBKY
 CLcQ==
X-Gm-Message-State: APjAAAW0moz0K+4KcV48vZM3blxLM633yNFXISGWG5+Lu4ZjKpqoxZVf
 xhYuFot/Fblj++5lc+rlzUtHww==
X-Google-Smtp-Source: APXvYqyj2W9u+oIsMgMVrBNeFS6zK1XRVWpal/TY17WYNgn958upMgANb4T2Coh8RuwStB7amyzgBg==
X-Received: by 2002:a17:902:be11:: with SMTP id
 r17mr1434176pls.144.1582849371434; 
 Thu, 27 Feb 2020 16:22:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c19sm9164401pfc.144.2020.02.27.16.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 0/9] Enable orphan section warning
Date: Thu, 27 Feb 2020 16:22:35 -0800
Message-Id: <20200228002244.15240-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162252_378123_1EB727A6 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

A recent bug was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to
the whim of the linker's orphan handling logic. Instead, all desired
sections should be explicitly identified in the linker script (to be
either kept or discarded) with any orphans throwing a warning. The
powerpc architecture actually already does this, so this series seeks
to extend this coverage to x86, arm64, and arm.

This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
landed), and has a minor conflict[4] with the ARM tree (related to
the earlier mentioned bug). As it uses refactorings in the asm-generic
linker script, and makes changes to kbuild, I think the cleanest place
for this series to land would also be through -tip. Once again (like
my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
this can go all together with the least disruption. Splitting it up by
architecture seems needlessly difficult.

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
[3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
[4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1

H.J. Lu (1):
  Add RUNTIME_DISCARD_EXIT to generic DISCARDS

Kees Cook (8):
  scripts/link-vmlinux.sh: Delay orphan handling warnings until final
    link
  vmlinux.lds.h: Add .gnu.version* to DISCARDS
  x86/build: Warn on orphan section placement
  x86/boot: Warn on orphan section placement
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Warn on orphan section placement
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement

 arch/arm/Makefile                             |  4 ++++
 arch/arm/boot/compressed/Makefile             |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
 arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
 arch/arm64/Makefile                           |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
 arch/x86/Makefile                             |  4 ++++
 arch/x86/boot/compressed/Makefile             |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
 arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
 include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
 scripts/link-vmlinux.sh                       |  6 +++++
 14 files changed, 85 insertions(+), 31 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
