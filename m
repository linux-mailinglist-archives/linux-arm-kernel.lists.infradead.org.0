Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E737F1A7305
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 07:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fT1NZGHZb7LfGNfdZBFzgSVrLZOwNnHzPiTsUr1GdFk=; b=LQG
	q2YWPPRQehqjYOcTLFKtwCnU/U5UjnS/FgbD8NF4ZW6wVuN0IkQ3gTJWl+PDe6uQjychSQpLPr3b1
	2HlycVsbYI5OCgCxClAQ7erumxDi1WulnchU1aWv0nLBNyTO1XsgiJGDVFShH2VGwtxCe1N7Qk6Eg
	l5mXI8vDTNGgjwIZZZK71M4Q7oCbphcRC/zMso6R8aeundYJQVjbv4rv8Q01FVAgJc1p0k+HI6xPK
	PvYoFsIB6DMDefwG/8sSJPzhoRXlGGoDYu5uq+8ZiQ2IOF+ZnBZP7cKJomnOOfHO4kH8qbZUh5C7f
	kLokaGUasSnw7lwBLBzePAFRFYX3zAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEBQ-0001OO-C4; Tue, 14 Apr 2020 05:32:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEBC-0001M2-Ig
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 05:32:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CE6230E;
 Mon, 13 Apr 2020 22:32:09 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 490DA3F68F;
 Mon, 13 Apr 2020 22:36:21 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] arm64: add Armv8.6 pointer authentication
Date: Tue, 14 Apr 2020 11:01:50 +0530
Message-Id: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_223214_667747_403343FB 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

These patch series adds support for Armv8.6 pointer authentication
enhanced mandatory features. These features are,

 * Enhanced PAC generation algorithm.
 * Generate fault when authenticate instruction fails.

For the first feature no code change is done and for the second feature
a ptrauth fault handler is added.
More details can be found here [1].

Changes since v1:
* Patch 1 is newly added and fixes a meta cpucapability check.
* Patch 3 is forked out from earlier patch 1 ("arm64: ptrauth: add pointer
  authentication Armv8.6 enhanced feature"). This was suggested by Will
  [2].

This series is based on kernel version v5.7-rc1.

Note: patch 4 may need some changes with Mark Brown's work on whitelisting
of hint instructions [3].

Regards,
Amit

[1]: https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/arm-architecture-developments-armv8-6-a
[2]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-March/715443.html
[3]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-March/720280.html

Amit Daniel Kachhap (4):
  arm64: cpufeature: Extract meta-capability scope from list
  arm64: ptrauth: add pointer authentication Armv8.6 enhanced feature
  arm64: cpufeature: Modify address authentication cpufeature to exact
  arm64: kprobe: disable probe of fault prone ptrauth instruction

 arch/arm64/include/asm/esr.h           |  4 +++-
 arch/arm64/include/asm/exception.h     |  1 +
 arch/arm64/include/asm/insn.h          | 13 +++++++------
 arch/arm64/include/asm/sysreg.h        | 24 ++++++++++++++++--------
 arch/arm64/kernel/cpufeature.c         | 22 +++++++++++-----------
 arch/arm64/kernel/entry-common.c       | 25 +++++++++++++++++++++++++
 arch/arm64/kernel/insn.c               |  1 +
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 arch/arm64/kernel/traps.c              | 18 ++++++++++++++++++
 9 files changed, 83 insertions(+), 27 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
