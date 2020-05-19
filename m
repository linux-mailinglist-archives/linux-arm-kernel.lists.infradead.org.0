Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7631D9611
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Oi96UNohufOg2P1yUOFasIUWJXLBqWpC9BtQm2rAN0=; b=F7MSJNXg45qw8X
	D7CKFwgxGWsTQWQQTuHIrUWSj1xHVfheoShZK7jiV2fh5krO5PWny+BiDRmmHjfbhJaMGdwijcios
	6INs7PvAyMFYb0ciG05vAMgf8+U95ibmD62u/J/PI0Ae6uPR5L6q4G60hNQw6UUBwXK1aCBAqpAxL
	mxHUq9MwroQPnx62ymgAIkbX2ONi/9clCay8px42qky+UGMQzZIosqY8E1OFmvYeItRBMq4qEMk6H
	a4rtg0htU0H2+O2aaNEJV9Em35NfVL1fckuf6bXISNEVdbQfxueK/qKBVEVkjBdevztgcPsR/BFm2
	8h/d2/gYruYYasliUyAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1Cf-0006PI-0f; Tue, 19 May 2020 12:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1CS-0006Oe-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:18:26 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B10A82081A;
 Tue, 19 May 2020 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589890704;
 bh=q637ZjMpwTbt9Gvx94zZjQ4loemAWCmrffrHk5e7mk0=;
 h=From:To:Cc:Subject:Date:From;
 b=xQLcGKVnr5vGj1ywuEAcDCLnN6IAaPBEZrX9CgDeohmC/AjgDzzhwwNQt84Q0K9Dq
 EKRi4B8CKjCBmAfSSmaBpLr2TI4v7pCIemZtsBa5RWmUQBECI0zEu6xMZXXb89zdtl
 0CYnsq3ihrb7p1iQTg7FNANRBjyoqNrhNh8NPKAU=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64 sigreturn unwinding fixes
Date: Tue, 19 May 2020 13:18:15 +0100
Message-Id: <20200519121818.14511-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051824_971754_75440178 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

Here are a handful of sigreturn unwinding fixes, based on top of for-next/bti.
Note that I haven't confirmed the GDB breakage, I only spotted it by reading
the code.

Daniel, Tamas: please can you confirm that these fix your unwinding issues with
LLVM?

Given that this has always been broken and there's a risk of introducing
a new regression, I plan to queue these for 5.8 so that we can revert
bits if necessary.

Thanks,

Will

Cc: Dave Martin <dave.martin@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com> 
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: <kernel-team@android.com>

--->8

Will Deacon (3):
  arm64: vdso: Don't prefix sigreturn trampoline with a BTI C
    instruction
  arm64: vdso: Add a comment to justify the mysterious NOP in sigreturn
  arm64: vdso: Fix CFI directives in sigreturn trampoline

 arch/arm64/kernel/vdso/sigreturn.S | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
