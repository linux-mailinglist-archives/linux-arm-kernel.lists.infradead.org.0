Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC1216B8D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QD9TeuxDYix9NVub6zRCXx4mb7dMae+3sBssDL1rREk=; b=E1SoDOrHrO8zw/
	qPR6gpMrXvz7C6elntByc4IbSYhGI7CR8ekZNmXjM3c/qtX98xk/xlMs1OeOg9AJQedPmPA9pFrdO
	kcfJeOTi1qHmWzi3RcP/UcfNmITfgHGnSikzUQJDvZvL10vkNSGkEQAU9mJy/7JSmdWfRKTAwOpig
	TFAUxclwcoQXOUZ+M4gwCRixSUmqSJ9WmV71wZshiCSETjuv225y69eHgFmSw4SlZ0V9ZAVmMnLKM
	/qSDuFikGWp+jh7hfpQqxgGqX9EEOaPIlqk14PacG+sjEAswMweYea70FFCBV9BtseCpSI44UJ3Pz
	qoMerNgntbDiNJocoRUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SXU-0006mY-3J; Tue, 25 Feb 2020 05:13:48 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWw-0006Zu-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so766634pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CQB4rWAgQlshK2jar7JtwK95ipRQeMQdrfjF9c60b3Q=;
 b=LFrOdVRmnVadjqGd8oJrAQjMoolYjWN9vYwc3EwXw87IXTST26Jz+ZUqqf3Cwz9CoS
 8nvpcKutc2DDmK9larltPBH0crdkmid8hDBB1a3PpJF4ipvEpIkrP1nwnZd6QtbZKUqw
 THv95WvZqUUgZ2hYd5vk1iRfZrXdVhQeyUBzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CQB4rWAgQlshK2jar7JtwK95ipRQeMQdrfjF9c60b3Q=;
 b=pNzxrVwJXph++/L+3KBdD5YVyyTfQoYru5FHiP0VG1Ya5uqtYBNXLKIgSm5svP5RPu
 nCHqNU6zOgsYc8Z5K8XNjeAJdiy/f7I9B7NH+gvPolBehYCEVYR13frDpVfj6RJZCq+K
 EC5MMxQMJUGIoJ7HIyXaPBS75JuB86yTrfjc/VxIuj10EoEM2LuJ/G6Gwih1SbQsOlq5
 Xted7jVljeT9AGOVnyfeV8rhKzu8t1+M05oT58Pvn+4IFK0ewK5Gf/sSr1k3ZkQDbcuQ
 LmU9uEikEbO19MF4dhXQdzYf5PJ7pLSSVkLNr8FWNDyhp5KGlKfz32Pj8N0rPT4fccBp
 QwuA==
X-Gm-Message-State: APjAAAXiXfTAdrlJizwc+cySHVtJO46gITEWLW5iY6sLhsoBstFqG04D
 fVVgqiUdPSAxoz37KofqDWPxYA==
X-Google-Smtp-Source: APXvYqyEp2DduArcsAfDzCxBtvCjTHJyL0Kka4MDfFR/IyZ8Q21kRRLDuvjt0qN6ORbpfkkeenKrsA==
X-Received: by 2002:a17:90a:da03:: with SMTP id
 e3mr3139897pjv.57.1582607592644; 
 Mon, 24 Feb 2020 21:13:12 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h13sm1274471pjc.9.2020.02.24.21.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:11 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 0/6] binfmt_elf: Update READ_IMPLIES_EXEC logic for modern
 CPUs
Date: Mon, 24 Feb 2020 21:13:01 -0800
Message-Id: <20200225051307.6401-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211314_690437_9BDC01AF 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This is a refresh of my earlier attempt to fix READ_IMPLIES_EXEC. I
think it incorporates the feedback from v2 (there are no code changes
between v3 and v4; I've just added Reviews/Acks and directed at Boris,
as it seems Ingo is busy). The selftest from v3 has been remove from v4,
as I will land it separately via Shuah's selftest tree.

This series is for x86, arm, and arm64; I'd like it to go via -tip,
though, just to keep this change together with the selftest. To
that end, I'd like to collect Acks from the respective architecture
maintainers. (Note that most other architectures don't suffer from this
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


-Kees


v4:
 - split selftest into separate series to go via Shuah's tree
 - add Reviews/Acks
v3: https://lore.kernel.org/lkml/20200210193049.64362-1-keescook@chromium.org
v2: https://lore.kernel.org/lkml/20190424203408.GA11386@beast/
v1: https://lore.kernel.org/lkml/20190423181210.GA2443@beast/

Kees Cook (6):
  x86/elf: Add table to document READ_IMPLIES_EXEC
  x86/elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
  x86/elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
  arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
  arm32/64, elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
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
