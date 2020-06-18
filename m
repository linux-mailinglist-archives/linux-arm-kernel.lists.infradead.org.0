Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E3D1FEAA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ERFEEdqqPzhGawPXphl1ZVqgjWpMJyGx6j5ndR8S4uA=; b=AY9
	xxuqbE7sceTkqG1G7eqEOMDWwwzosnnvhaWl1w5sQgiLTqTtqNU0KYKLum2nhOY9XqwqKxO2Fxn9B
	YksBHxDnf11iPUQ4xkY/g6pzLmtyeYx6FeKJSZULhZKoqD7GvLZMTfWjbK3kz/QYd5Km9hu8iaW4S
	oVy2gLooq9SkaH1OlBLb4jY6lpC/ZsRgM6nFtqXuzzEPZcVgyI5FfpXfjE874PQza9rXM5P86MKLg
	MOFf3x7g/mKCPEgZcQqFa/MZJnEbVvvR9npZlZ3Hzv+QmTHtS6rpjoZJ+GJ9gMKZAZP75sq0ZJFuX
	+GWxI3R7Z/Cq9O9IyppE8Um/v+noFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmpD-0000TH-KI; Thu, 18 Jun 2020 05:10:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmp5-0000SR-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:10:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FD5A31B;
 Wed, 17 Jun 2020 22:10:42 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2484D3F71F;
 Wed, 17 Jun 2020 22:10:38 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] arm64: add Armv8.6 pointer authentication
Date: Thu, 18 Jun 2020 10:40:26 +0530
Message-Id: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_221047_424972_6EACE315 
X-CRM114-Status: UNSURE (   9.09  )
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

These patch series adds support for Armv8.6 pointer authentication
enhanced mandatory features. These features are,

 * Enhanced PAC generation algorithm.
 * Generate fault when authenticate instruction fails.

For the first feature no code change is done and for the second feature
a ptrauth fault handler is added.
More details can be found here [1].

Changes since v2 [2]:
* Dropped the patch "arm64: cpufeature: Fix the handler for address authentication"
* Added new matching function for address authentication as generic
  matching function has_cpuid_feature is specific for LOWER_SAFE
  features. This was suggested by Suzuki [3].
* Disabled probe of Authenticate ptrauth instructions as per Mark
  Brown's merged changes of whitelisting of hint instructions.

This series is based on kernel version v5.8-rc1.

Regards,
Amit

[1]: https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/arm-architecture-developments-armv8-6-a
[2]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-April/723751.html
[3]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-May/733839.html


Amit Daniel Kachhap (3):arm64: ptrauth: add pointer authentication Armv8.6 enhanced feature
  arm64: cpufeature: Modify address authentication cpufeature to exact
  arm64: kprobe: disable probe of fault prone ptrauth instruction

 arch/arm64/include/asm/esr.h           |  4 +-
 arch/arm64/include/asm/exception.h     |  1 +
 arch/arm64/include/asm/sysreg.h        | 24 +++++++----
 arch/arm64/kernel/cpufeature.c         | 56 +++++++++++++++++++++-----
 arch/arm64/kernel/entry-common.c       | 24 +++++++++++
 arch/arm64/kernel/insn.c               |  6 ---
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 arch/arm64/kernel/traps.c              |  9 +++++
 8 files changed, 101 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
