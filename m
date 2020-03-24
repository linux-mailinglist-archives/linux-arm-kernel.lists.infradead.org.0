Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57329191B1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XuUF3j3sctwQurxVbszuZdNcDvkCRQZ7sleWdQws1+A=; b=WDyvy+m6tUmZzc
	TrA3G74YqcNDf9xNOmQjHXwOmTeegQULa8Qk4dwUAo9egTjl93lpsCr/Q1UWX/x9it4dbgKhlwewR
	OUOW5OApoNk5Du6E2lQqz/YFR2WYsUXRZzfCqq6nJvYCv+xGT2tmB6YW8Fj3BS/Xri/rOJbY0feY0
	NgRktsDOvtxQ40CSIBpnK+a6HnR5QzPnVkqS+EkD8ys0vjGcJTwlt9AuIQFw4wyWI65P8waGNJxLE
	14oR4IIQt7mNZp88iJiGLyM8WCl2+zRmeK/Cv6FO/MFjdFSdONj63dfnIwZ3kimJVzqEoEcYNVQl8
	cuPbl/c2TFvrBNOJedfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGqFG-00032i-7T; Tue, 24 Mar 2020 20:33:54 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGqE5-0001wW-Sn
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:32:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id mj6so36662pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 13:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xoyjnNIvkg+j3q/lUm3mcx/meHvti0L2223SyWgmbLU=;
 b=RCCVIU1gaUOt7SSOHOlSQWbk/wc0LVSYDRbdbvf7vkkrVHHkcc9wzrGS12OmXt54kW
 5eS34P5AROrJupwvYUnpBnA0SF51uAHA8is60V059MtkeksLPUZ0uD4HhT+sfHelhrx7
 6p/n0PbpIF84rBwBLyiZ4/znqUhgn9YMLGiuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xoyjnNIvkg+j3q/lUm3mcx/meHvti0L2223SyWgmbLU=;
 b=uMhCtseS1c0eOv4OFKgvmLhk1unzowimHjsxbd8IgAx5wSReMr9PqWu/0G4thJL+yb
 4mmn9Ck7ZylJaY1ISt7ltqQsEtyOyYrl/MVPoDQHY/6eGRkv9rdDYu4kTe6AJ5Oh0zM+
 qauRwcxSZv1jXIvEY8QykQL9zA2xEwaqmrtBRmKfP6W6uhFMiJYrxxvguEjzAggrytMT
 OTJtlflqg07MR4O585oUSh5dswrScOer+0Vcia/V2aFdqbh/SwkQDL4YIfpO7AsCRZpS
 wFYof3X30IlWoCe+EES/80NUbBE6xqptZucM3iQ8/xPSFK4aUFYWebwR+ffy8iAtPBMv
 RL+Q==
X-Gm-Message-State: ANhLgQ0pM59k1/rv66y/fOdeMHWS+1C2QwQHILTX12ezSlsAOu2JsWrs
 HsMY7QeE3tkWgTW481wpicez8Q==
X-Google-Smtp-Source: ADFU+vsamiDb3vxQG8SScPpA98WBrw9+0joaymji73ZXk2ZhJ8zsjRiNpylOVu8a2158RuDNslMFDQ==
X-Received: by 2002:a17:902:82c5:: with SMTP id
 u5mr12381681plz.254.1585081960653; 
 Tue, 24 Mar 2020 13:32:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t60sm3175485pjb.9.2020.03.24.13.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 13:32:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v2 0/5] Optionally randomize kernel stack offset each syscall
Date: Tue, 24 Mar 2020 13:32:26 -0700
Message-Id: <20200324203231.64324-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_133241_927673_81340AB3 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is a continuation and refactoring of Elena's earlier effort to add
kernel stack base offset randomization. In the time since the previous
discussions, two attacks[1][2] were made public that depended on stack
determinism, so we're no longer in the position of "this is a good idea
but we have no examples of attacks". :)

Earlier discussions also devolved into debates on entropy sources, which
is mostly a red herring, given the already low entropy available due
to stack size. Regardless, entropy can be changed/improved separately
from this series as needed.

Earlier discussions also got stuck debating how much syscall overhead
was too much, but this is also a red herring since the feature itself
needs to be selectable at boot with no cost for those that don't want it:
this is solved here with static branches.

So, here is an improved version, made as arch-agnostic as possible,
with usage added for x86 and arm64. It also includes some small static
branch clean ups.

-Kees

[1] https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html
[2] https://repositorio-aberto.up.pt/bitstream/10216/125357/2/374717.pdf

v2:
- move to per-cpu rdtsc() saved on syscall exit
- add static branches for zero-cost dynamic enabling
- Kconfig just selects the default state of static branch
- __builtin_alloca() produces ugly asm without -fno-stack-clash-protection
- made arch agnostic
rfc: https://lore.kernel.org/kernel-hardening/20190329081358.30497-1-elena.reshetova@intel.com/

Kees Cook (5):
  jump_label: Provide CONFIG-driven build state defaults
  init_on_alloc: Unpessimize default-on builds
  stack: Optionally randomize kernel stack offset each syscall
  x86/entry: Enable random_kstack_offset support
  arm64: entry: Enable random_kstack_offset support

 Makefile                         |  4 ++++
 arch/Kconfig                     | 19 +++++++++++++++
 arch/arm64/Kconfig               |  1 +
 arch/arm64/kernel/syscall.c      | 10 ++++++++
 arch/x86/Kconfig                 |  1 +
 arch/x86/entry/common.c          | 12 +++++++++-
 include/linux/jump_label.h       | 19 +++++++++++++++
 include/linux/mm.h               | 18 +++++---------
 include/linux/randomize_kstack.h | 40 ++++++++++++++++++++++++++++++++
 init/main.c                      | 23 ++++++++++++++++++
 mm/page_alloc.c                  | 12 ++--------
 11 files changed, 136 insertions(+), 23 deletions(-)
 create mode 100644 include/linux/randomize_kstack.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
