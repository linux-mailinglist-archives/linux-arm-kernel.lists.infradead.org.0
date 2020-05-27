Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D1E1E4FFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6Aeb755ModYED8M8m8FC4Q4gq9U9csHjhxkcsad3E3w=; b=a/s
	tHCbXvZMbkmzIf4JDSFCnC6faBWvJOWITgzrIJjGJWr2vc2wMqWsKacz55y59izvJOGBqFmR8jA80
	JrULhsgFBwvP6fJ3lRtg69UU0VrjuN4R9sL8RYl0orI75mnuTxjDGhqtMpL7X9r6Ub+RWg5x9QfBF
	FA7tfLC0HXANNH3Mg/23Psm7AFsrDIs20qSb2HRqCKi5Tm6CUNFBNICPPOBAVjT0zYIFeXbtVyGhS
	9lEVh3C/tB64sXJ9cRXWY6LmfTZMaS30SRXtCjZcF6KKBSq0FxzDs19R8lz38WKpu9h2koQQ83Ny+
	Ndf6NixHNsOtpZ0fXaVjoZ6b5Jlj9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3RJ-00012z-VY; Wed, 27 May 2020 21:18:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3Qo-0000rK-Cz
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:17:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5206E31B;
 Wed, 27 May 2020 14:17:45 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 76D0B3F52E;
 Wed, 27 May 2020 14:17:43 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2 0/6] prctl.2 man page updates for Linux 5.6
Date: Wed, 27 May 2020 22:17:32 +0100
Message-Id: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141746_486941_CE6C014D 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Waiman Long <longman@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Tim Chen <tim.c.chen@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bunch of updates to the prctl(2) man page to fill in missing
prctls (mostly) up to Linux 5.6 (along with a few other tweaks and
fixes).

Patches from the v1 series [1] that have been applied or rejected
already have been dropped.

People not Cc'd on the whole series can find the whole series at
https://lore.kernel.org/linux-man/ .

Patches:

 * Patch 1 is a new (but trivial) formatting fix, unrelated to the new
   prctls.

 * Patches 2-3 relate to the speculation control prctls.  These are
   unmodified from v1, but need review.

 * Patches 4-5 relate to the arm64 prctls from v1, with reviewer
   feedback incorporated.  (See notes in the patches.)

 * Patch 6 is *draft* wording for the arm64 address tagging prctls.
   The semantics of address tagging is particularly slippery, so
   this needs discussion before merging.


[1] https://lore.kernel.org/linux-man/29a02b16-dd61-6186-1340-fcc7d5225ad0@gmail.com/T/#t


Dave Martin (6):
  prctl.2: ffix use literal hyphens when referencing kernel docs
  prctl.2: Add PR_SPEC_INDIRECT_BRANCH for SPECULATION_CTRL prctls
  prctl.2: Add PR_SPEC_DISABLE_NOEXEC for SPECULATION_CTRL prctls
  prctl.2: Add SVE prctls (arm64)
  prctl.2: Add PR_PAC_RESET_KEYS (arm64)
  prctl.2: Add tagged address ABI control prctls (arm64)

 man2/prctl.2 | 444 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 435 insertions(+), 9 deletions(-)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
