Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AF6FE6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UFELu/1QA/ay0+KX0A2zNOtg++QpRaKen4z/v71nVNg=; b=K+8
	D+ivMzgRmbUvrRGPvR2FRb27vk+iDvOTJTM4v/l9RsbVbBO8H8Hl2r3msZXh9fjfxwvB9Hw2S+53J
	My3lG8GeQKZn2qyzVYo2OnrKP5aAyB036F/eW1h1VCTrPS7/uBpjOSGwcLTMNMWMi6JQKZecwikMW
	7w8xEix15QVmBDmbj3WDUqn62ej8nfHLTj3i8WW0X1Ls89PLXSvOOeBDX8UjtfV3sSr5SifYFagn1
	/n5pxK6WcbmzVYRK1MzuewuJdjnQlCMExM4DIMdNwmG4TZ3rT9gc+quTw6EyriQrVL2W9pmCj18K1
	0dxcCFyRIos5gJCAWLOd4BYqsgEM0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWCJ-0005JS-8r; Tue, 30 Apr 2019 17:05:39 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWC9-0005IO-Cx
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:05:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4319374;
 Tue, 30 Apr 2019 10:05:28 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8655C3F5C1;
 Tue, 30 Apr 2019 10:05:26 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] ptrace: cleanup PTRACE_SYSEMU handling and add support
 for arm64
Date: Tue, 30 Apr 2019 18:05:16 +0100
Message-Id: <20190430170520.29470-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100531_224745_2ECE0C3D 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will.deacon@arm.com>,
 Oleg Nesterov <oleg@redhat.com>, Bin Lu <bin.lu@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset evolved from the discussion in the thread[0][1]. When we
wanted to add PTRACE_SYSEMU support to ARM64, we thought instead of
duplicating what other architectures like x86 and powerpc have done,
let consolidate the existing support and move it to the core as there's
nothing arch specific in it.

v2->v3:
	- moved clearing of TIF_SYSCALL_EMU to __ptrace_unlink as Oleg
	  suggested
	- x86 cleanup as per Oleg's suggestion and dropped adding new
	  ptrace_syscall_enter for SYSEMU handling
	  (tested using tools/testing/selftests/x86/ptrace_syscall.c)
	- Updated arm64 handling accordingly

v1->v2:
	- added comment for empty statement after tracehook_report_syscall_entry
	- dropped x86 change in syscall_slow_exit_work as I had ended
	  up changing logic unintentionally
	- removed spurious change in powerpc moving user_exit()

Regards,
Sudeep

[0] https://patchwork.kernel.org/patch/10585505/
[1] https://patchwork.kernel.org/patch/10675237/

Sudeep Holla (4):
  ptrace: move clearing of TIF_SYSCALL_EMU flag to core
  x86: simplify _TIF_SYSCALL_EMU handling
  arm64: add PTRACE_SYSEMU{,SINGLESTEP} definations to uapi headers
  arm64: ptrace: add support for syscall emulation

 arch/arm64/include/asm/thread_info.h |  5 ++++-
 arch/arm64/include/uapi/asm/ptrace.h |  3 +++
 arch/arm64/kernel/ptrace.c           |  6 +++++-
 arch/powerpc/kernel/ptrace.c         |  1 -
 arch/x86/entry/common.c              | 17 ++++++-----------
 arch/x86/kernel/ptrace.c             |  3 ---
 kernel/ptrace.c                      |  3 +++
 7 files changed, 21 insertions(+), 17 deletions(-)

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
