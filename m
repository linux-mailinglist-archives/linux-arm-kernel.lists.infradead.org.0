Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA291644E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZStNMoo6MXw6H4NuOru/UwDhz8PoY1O8dOMbYJs2WtQ=; b=BBW
	/dFVzOfIQTVY3HWakg3TcIQgBQVMS0drvfk44uBHxxdZy1fMs0ehJ1Y7t7M/1b4PhmWHi2mCXApXK
	4C/ckQcKeBBvrH+WgrQamEaAnOo4LaXSDHZLzPYNtvhQX77P2SJui9mJq18lY/YoTKigPnKlUDuyn
	AKmOc+hXXSKvrN+UMtf94iIWmF//3sH+luGkvr8yELVtqLg2vCIiV7AWJq6VDOQcblWeLK3jVcyIN
	M7Z77TLsiDDjWV5uPHpxp4jZq3seDnSUTjJPTEktTL2G/ORafRXR2ihi8uNux4tPZvhcQ4HlYrsjK
	cly3b8ysG1FKWw4Kt6q5QJk22o5BT7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OzN-00023f-F5; Wed, 19 Feb 2020 13:02:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OyM-0001AS-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:01:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE7FDFEC;
 Wed, 19 Feb 2020 05:00:59 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A76523F68F;
 Wed, 19 Feb 2020 05:00:56 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: add Armv8.6 pointer authentication
Date: Wed, 19 Feb 2020 18:30:38 +0530
Message-Id: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050102_521080_DBC273B5 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

For the first feature no code change is needed and for the second feature
a ptrauth fault handler is added.

More details can be found here [1].

This series is based on kernel version v5.6-rc2 and on recent in-kernel
ptrauth posted patches [2].

Regards,
Amit

[1]: https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/arm-architecture-developments-armv8-6-a
[2]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/711699.html

Amit Daniel Kachhap (2):
  arm64: ptrauth: add pointer authentication Armv8.6 enhanced feature
  arm64: kprobe: disable probe of fault prone ptrauth instruction

 arch/arm64/include/asm/esr.h           |  4 +++-
 arch/arm64/include/asm/exception.h     |  1 +
 arch/arm64/include/asm/insn.h          | 13 +++++++------
 arch/arm64/include/asm/sysreg.h        | 24 ++++++++++++++++--------
 arch/arm64/kernel/cpufeature.c         |  4 ++--
 arch/arm64/kernel/entry-common.c       | 25 +++++++++++++++++++++++++
 arch/arm64/kernel/insn.c               |  1 +
 arch/arm64/kernel/probes/decode-insn.c |  2 +-
 arch/arm64/kernel/traps.c              | 18 ++++++++++++++++++
 9 files changed, 74 insertions(+), 18 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
