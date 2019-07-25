Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5AD748E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LsJWdB3qPKYnu8vuo7JXVaGtaLKBQRZxGEpwC9FV3+w=; b=mWaP+PmicjbLHG
	D16y/K6nnokFQHnF7Vhx6UG9ln3IXT+LCS2vOlPDP8qqbnRk2ePRBOPetp9ENICKMC0esf9mH6PDw
	YcTS14vuTUY1Eul8Sir6SUUkvp0Z2LRUxk5vhDNZFeMlDBBo6UCIm0obS0M1qpuOsBepcMDuiYHYA
	Xl5vDuUgnnYAi6uxqqT/DT3rSbrT8O9P0ZzYRAuidH3bCcx1J4bPsvOPvr0Rm1v88G95jLQUPXlh9
	Bq58ssDM5H7xZyZqITsZ2y0WaovldUAF+OBZNZnB6cGk+x1dM1F2JzfGbjGfHs+/lE720nxqKNx+1
	NRyXvOZgxIsCyuvGWgIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYv8-0003ma-OU; Thu, 25 Jul 2019 08:16:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYuk-0003mC-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 08:15:51 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B487322BEF;
 Thu, 25 Jul 2019 08:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564042549;
 bh=uoAtSZJrQlX16jfIHQB3k0UtB6VPqRtrikHODc87HA0=;
 h=From:To:Cc:Subject:Date:From;
 b=TWgihOkdvlV5beZAg9dXWD+REvK4U7QROtCGNlgzoN4k6bkl65mhIE/R0LE9SClGp
 l9fx5+EFHylIdeaatd+v4lvFk1//NlSB4VABecBla5CWxXVhs7yZPezY1fqxtTgBeY
 zcUGM6ZOJg717D8lJPWXWUlPmeL2axadLOfdUyWw=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v3 0/4] arm64: kprobes: Fix some bugs in arm64 kprobes 
Date: Thu, 25 Jul 2019 17:15:44 +0900
Message-Id: <156404254387.2020.886452004489353899.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_011550_593176_1DA8E3EC 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org,
 mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here are the v3 patches which fixes kprobe bugs on arm64.
In this version I fixed some issues pointed by James and add Reviewed-by
and Acked-bys.

Background:
Naresh reported that recently ftracetest crashes kernel, and I found
there are 3 different bugs around the crash. In v1 thread, we found
one another bug of RCU and debug exception.

- Kprobes on arm64 doesn't recover pstate.D mask after single stepping.
  So after hitting kprobes, the debug flag status is changed.
- Some symbols which are called from blacklisted function, are not
  blacklisted.
- Debug exception is not visible to RCU, thus rcu_read_lock() cause
  a warning inside it.
- Debug exception handlers on arm64 is using rcu_read_lock(), but
  that is not needed because interrupts are disabled.

This series includes fixes for above bugs.

Thank you,

---

Masami Hiramatsu (4):
      arm64: kprobes: Recover pstate.D in single-step exception handler
      arm64: unwind: Prohibit probing on return_address()
      arm64: Make debug exception handlers visible from RCU
      arm64: Remove unneeded rcu_read_lock from debug handlers


 arch/arm64/include/asm/daifflags.h |    2 ++
 arch/arm64/kernel/debug-monitors.c |   14 +++++++------
 arch/arm64/kernel/probes/kprobes.c |   39 +++++------------------------------
 arch/arm64/kernel/return_address.c |    3 +++
 arch/arm64/kernel/stacktrace.c     |    3 +++
 arch/arm64/mm/fault.c              |   40 ++++++++++++++++++++++++++++++++++++
 6 files changed, 61 insertions(+), 40 deletions(-)

--
Masami Hiramatsu (Linaro) <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
