Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616B76C8D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NtoShFjz5V7yNfs01pnESqsuFwiRJcYrv8iuMZzWNtc=; b=U3ylIkN6v/Hb7y
	P8YmrD/sFQ9Vk0ZTZT1P6racMTPu2j203KscMRqakppoeAZipTrwg+qeKrHUdzyAeMvQVjee3dib+
	FWssQV+myIM0I80mU3B/uZTam3KiGNn3cWRysEqHi43Pta6FCSCnsiZ4NV/1sTYa18JFmAAsUOD/F
	b2852Yyl3TdUhhSX9u8e167Oh6ibp5smTXwsJfLlz/7DHq9jzMmSaG69mUI3KMuRzM0xRPXmHKEMJ
	cxfd85wdhaVfdCxbA7SDfLq6J7C6rJV2oE21VumIEq0oVbK1OKV6xqOyK/WgUNYderA/2quLHcWVQ
	nyGKxrpWtiTa243+/aQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzCq-00077S-OZ; Thu, 18 Jul 2019 05:43:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzCW-000779-9L
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:43:33 +0000
Received: from localhost.localdomain (115.42.148.210.bf.2iij.net
 [210.148.42.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7AE02077C;
 Thu, 18 Jul 2019 05:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563428611;
 bh=gYp2Jk6FjA6u7NGwZZNab0rCjKuuYEFKcurXDzkIhwE=;
 h=From:To:Cc:Subject:Date:From;
 b=i8+x9a3I1RvHmXRr3SUKazCSVfaecwBSIoOOyiemH7yoHRKB3Xb9K823fNu85p0hu
 W2Gsyt7djBUsjiUTiu01xIg8L4NPOvUg38/WJf3Ygcm2XHoo14/A/WVFVah73KhZ2Z
 qU7k+O+JZNCsDbnvr2d/fZ7VB5kXkQHpBHLaw82I=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH 0/3] arm64: kprobes: Fix some bugs in arm64 kprobes 
Date: Thu, 18 Jul 2019 14:43:26 +0900
Message-Id: <156342860634.8565.14804606041960884732.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_224332_349058_14CDE48D 
X-CRM114-Status: GOOD (  11.10  )
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

Here are the patches which fixes kprobe bugs on arm64.

Naresh reported that recently ftracetest crashes kernel, and I found
there are 3 different bugs around the crash.

- Kprobes on arm64 doesn't recover pstate.D mask even if probed
  context masks pstate.D. This causes a real kernel crash if a
  kprobe is nested.
- Some symbols which are called from blacklisted function, are not
  blacklisted.
- Debug exception handlers on arm64 is using rcu_read_lock(). This
  doesn't crashes kernel, but kicks suspicious RCU usage warning if
  we put kprobes on the function which is called in idle context.

This series includes fixes for above bugs.

Thank you,

---

Masami Hiramatsu (3):
      arm64: kprobes: Recover pstate.D in single-step exception handler
      arm64: unwind: Prohibit probing on return_address()
      arm64: debug: Remove rcu_read_lock from debug exception


 arch/arm64/kernel/debug-monitors.c |   14 ++++++++------
 arch/arm64/kernel/probes/kprobes.c |    9 ++++++---
 arch/arm64/kernel/return_address.c |    4 +++-
 arch/arm64/kernel/stacktrace.c     |    3 +++
 4 files changed, 20 insertions(+), 10 deletions(-)

--
Masami Hiramatsu (Linaro) <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
