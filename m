Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46001B7BD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGpqhpS9r1XXwM9fSV/GaZUwM5AcaU7G6rGj+joXC4I=; b=WyuwzKTE9bTfDC
	OgMMKt5Jle9Xo/8hxDuor/deLyElLbFKjgoFcdYyMQFXT/H/Zex94ulw89BgLVY0hXdcYzsT6Es0y
	5fXCEJUCvPKLNUzIuM2PqBqug+zH5ur1/1GGRIN6rckrTlpO/dujcVT7HUt8g1pMdEvnIxAnzu55r
	Do2cjewGHlGRc4OxRoJPDefKzEPbsaCCIuZh4cqxUybj5+otxnrq1anZJWQCpUwjEJHi3QzvEn0KP
	DSBmiTbqUWGEHlE5rXTj9hkMslllmWLPEMBbMB1+1OJYOoeZsHwso2kxIGrG4ok5Z8VRkvjDyqUqW
	DvSMgYqC8N0iA/tyHSyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Mv-0000cQ-4p; Fri, 24 Apr 2020 16:40:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Lr-0008Fb-Eu
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:38:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75B7331B;
 Fri, 24 Apr 2020 09:38:54 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 07C933F68F;
 Fri, 24 Apr 2020 09:38:53 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 0/5 v4.19] arm64: Workaround Neoverse-N1 #1542419
Date: Fri, 24 Apr 2020 17:38:40 +0100
Message-Id: <20200424163845.4141-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093855_572609_94A6BA58 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series backports the Neoverse-N1 #1542419 erratum workaround
to v4.19.116. The series was originally merged in v5.5.

These patches handle user-space. The kernel change was:
commit dd8a1f134884 ("arm64: ftrace: Ensure synchronisation in PLT setup
for Neoverse-N1 #1542419"), which has already been picked up by stable.
(magic!)

Backporting this stuff past v4.19 isn't straight-forward as the kernel
change depends on the work done in:
https://lore.kernel.org/linux-arm-kernel/1529656278-878-1-git-send-email-will.deacon@arm.com/
which was merged for v4.19.

Thanks,

James


Catalin Marinas (1):
  arm64: Silence clang warning on mismatched value/register sizes

James Morse (3):
  arm64: errata: Hide CTR_EL0.DIC on systems affected by Neoverse-N1
    #1542419
  arm64: Fake the IminLine size on systems affected by Neoverse-N1
    #1542419
  arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space

Marc Zyngier (1):
  arm64: Add part number for Neoverse N1

 Documentation/arm64/silicon-errata.txt |  1 +
 arch/arm64/Kconfig                     | 16 ++++++++++++++++
 arch/arm64/include/asm/cache.h         |  3 ++-
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/cputype.h       |  2 ++
 arch/arm64/kernel/cpu_errata.c         | 22 ++++++++++++++++++++++
 arch/arm64/kernel/sys_compat.c         | 11 +++++++++++
 arch/arm64/kernel/traps.c              |  9 +++++++++
 8 files changed, 65 insertions(+), 2 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
