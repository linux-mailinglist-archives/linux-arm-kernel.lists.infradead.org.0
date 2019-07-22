Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF516FAA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XraNed675hnoKorqj2JjkGCGOT7YHdqGuCNSYEpVt/U=; b=L80UFg8H/ndqdI
	9+kJI+lxjzJSMpVPYgSS6wjNHsq269wD+ESM0oolGctFbCn/S5aToOXe6N4H8dXnPRdNdLNs9ynTp
	9UTLQS8Q/6gK8HIO3eAvCze8WYiAXm+hloOgtjirgmYztoZmgruTYHyh5a43tQyJEmNLjvOPtRgMR
	tdfNi+r3c6XLljILudS3pwmWq0eCM3sDyozWMxyATs610+S/hIeImO6Hn+S0BhvT7eiOKpLMHr48a
	EweUXr4Gbbuf5D7bGSm/7/jrhluXAO8VWZCnmmgQ5XFi+mS8o8qGQ8UHoqyKRS2bOTHEl4h2BqUvz
	FqjPTQiW2MMee9l2m2Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT3s-0008Vt-FO; Mon, 22 Jul 2019 07:48:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT3e-0008VT-IL
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:48:31 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B96182199C;
 Mon, 22 Jul 2019 07:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563781710;
 bh=fCm+twhupd0sfoMKl3+oPJY6FX4/EFcymfZefTFmLO8=;
 h=From:To:Cc:Subject:Date:From;
 b=F8zFyZIrS/zpZQrHnC9mXaN0J0K7HeaiyybgnJ9mwyxw3fFiCElwLVA8qUy2OEfe+
 OzJ+k34UT+jduVM2DYe4wVtgUGWd03QtNcjydt4XV7KxaZFh3kF2LOK6k2XcgI7cRj
 37ibeZlJlREutUvtOi0ttksrQWxTXenUeUZysu+4=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 0/4] arm64: kprobes: Fix some bugs in arm64 kprobes 
Date: Mon, 22 Jul 2019 16:48:24 +0900
Message-Id: <156378170297.12011.17385386326930403235.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_004830_629839_DA8912FE 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Here are the v2 patches which fixes kprobe bugs on arm64.

Naresh reported that recently ftracetest crashes kernel, and I found
there are 3 different bugs around the crash. In v1 thread, we found
one another bug of RCU and debug exception.

- Kprobes on arm64 doesn't recover pstate.D mask after single stepping.
  This causes a real kernel crash if a kprobe is unexpectedly nested.
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


 arch/arm64/kernel/debug-monitors.c |   14 +++++++-----
 arch/arm64/kernel/probes/kprobes.c |   41 ++++++------------------------------
 arch/arm64/kernel/return_address.c |    4 +++-
 arch/arm64/kernel/stacktrace.c     |    3 +++
 arch/arm64/mm/fault.c              |   40 +++++++++++++++++++++++++++++++++++
 5 files changed, 61 insertions(+), 41 deletions(-)

--
Masami Hiramatsu (Linaro) <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
