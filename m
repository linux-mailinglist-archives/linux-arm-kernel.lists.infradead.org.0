Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF41A0179
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 01:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CWe42tUxCuKqSItj+yTyAq2mNAKKOMN29FnnEcpChUA=; b=TnS0z1UWYsvyFf
	wXz3fTjDJLa/oVnaAOrDjmzRAukaRXbw5beRnyHGrGd4lEc0rwWyniLg64IXDdta+aYhGt0kLtKnC
	TWe98yO0+8sZMMp6pmOfGGWDjcVf0wjbEueNWNv4sunFWHeIPmGWBf3weF+VTIKyGF+ooQ4PeD27D
	emeonWcop2TrrPY5GdpLXrwZiXYzwSMX87nkUFb4TyUFNXyNVDSP5pSnnoIPRYqvzPOS0YaqhIs8Z
	hFQ3n2E6r5DmGjQ8gAHZrRMc6qq1VEhivJ1TQMGLqBr16of357Tw0ANxVBbcsGlUl5JKgrB0/gjKe
	r7qmpKb3hWBVfTkqBztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLaz2-00044v-Ub; Mon, 06 Apr 2020 23:16:48 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLayT-0003dS-QG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 23:16:15 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n4so259902pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 16:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kj0fYRHBAuDC6xz5T3+IMY573Uf4TkncfKhylRhRKr8=;
 b=Rnk2RVuDB3re41BD3czt9clTzzC/cySvN48by3vzvbYksd47leEn0+g33oR+D6OVLF
 uXnS/s3ykH8Z394kfgC1rK54rvOztdgYEYgrOrRJV5V3tiF0pL7Q/1fZwsVEAzo0r6Bj
 pI05/jTCAIBznKwWxphMyFNjRNChw4MmGQa1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kj0fYRHBAuDC6xz5T3+IMY573Uf4TkncfKhylRhRKr8=;
 b=R7pe0W+mvhZvD1qwtNCf1Lm7VLgleJs2ByNNbnYE3AWKtmbxXux5eFobcdqU5MVZYw
 7ZErNdK9WYSmo2ErfTr4hX5g/M94MsKAZA3cO7q2bakJkwJw5pMZYNHu4JcQ5DByOpcW
 ko9j1ta3KHgUwgWHjGPqNWPJkvEcTbO4AqDZIYSiKQ7fFiNC79WvnHCz6AwBmKOHHWoN
 Ux2Tz2lOYgOydGw7rWbDkeaKGBwWEZ59qFc6uwx2+LyHNwPZNJ2VzS4ioXYUcZG1lnNa
 G3BNwyxGCPqLE+FOdny/+tuSA1SCBAESwYbHgZyVnKYpGHzCIL2sHjlZZiEd+YyT0+eJ
 6QYA==
X-Gm-Message-State: AGi0PuaIgZShvpwpkYLwaoJc5pXLZdBb+dMbDgvdGbq6HxRc0+gaun3e
 6FsCT5FoiiU5CyrnPVFPrweRRg==
X-Google-Smtp-Source: APiQypLe1NK0ouaCbwea2Ar/mlZdKQ8TmXJhYkOr0ndqJkk1T9pLSfqEkeDLbIKHtYCq5a4S/3PzgQ==
X-Received: by 2002:a17:902:22e:: with SMTP id
 43mr21611580plc.119.1586214972026; 
 Mon, 06 Apr 2020 16:16:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a24sm12522914pfl.115.2020.04.06.16.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 16:16:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v3 0/5] Optionally randomize kernel stack offset each syscall
Date: Mon,  6 Apr 2020 16:16:01 -0700
Message-Id: <20200406231606.37619-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_161613_845538_82C9C705 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v3:
- added review/ack tags (peterz, glider)
- further clarified commit logs and public attack references
- added -fstack-protector downgrades and details
v2: https://lore.kernel.org/lkml/20200324203231.64324-1-keescook@chromium.org/
rfc: https://lore.kernel.org/kernel-hardening/20190329081358.30497-1-elena.reshetova@intel.com/

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
branch clean ups, and addresses some surprise performance issues due to
the stack canary[3].

Thanks!

-Kees

[1] https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html
[2] https://repositorio-aberto.up.pt/bitstream/10216/125357/2/374717.pdf
[3] https://lore.kernel.org/lkml/202003281520.A9BFF461@keescook/

Kees Cook (5):
  jump_label: Provide CONFIG-driven build state defaults
  init_on_alloc: Unpessimize default-on builds
  stack: Optionally randomize kernel stack offset each syscall
  x86/entry: Enable random_kstack_offset support
  arm64: entry: Enable random_kstack_offset support

 Makefile                         |  4 ++++
 arch/Kconfig                     | 23 ++++++++++++++++++
 arch/arm64/Kconfig               |  1 +
 arch/arm64/kernel/Makefile       |  4 ++++
 arch/arm64/kernel/syscall.c      | 10 ++++++++
 arch/x86/Kconfig                 |  1 +
 arch/x86/entry/Makefile          |  9 +++++++
 arch/x86/entry/common.c          | 12 +++++++++-
 include/linux/jump_label.h       | 19 +++++++++++++++
 include/linux/mm.h               | 18 +++++---------
 include/linux/randomize_kstack.h | 40 ++++++++++++++++++++++++++++++++
 init/main.c                      | 23 ++++++++++++++++++
 mm/page_alloc.c                  | 12 ++--------
 13 files changed, 153 insertions(+), 23 deletions(-)
 create mode 100644 include/linux/randomize_kstack.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
