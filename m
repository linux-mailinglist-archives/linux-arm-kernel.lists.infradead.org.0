Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21CF1B7BC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DfQqNLP+6LkQmrxZgZNRm5UJYJHKYnPN/uH0EqmuK+0=; b=H0KpvdrU2xuMRL
	ZMdx81Cpd5+5VphxXJO0w71T2tnlWOU3fP4mkmCaclET+fq0H9Fk3QS2ieisMwfZhvxjXhpuN2WwJ
	FGt/NKtMec0F2PeEfOkpcZXrwaiR4pJyYnpDkTfZI7XbI+NVeSS8c9WrdOzjzuvvjNvk09skRoHBX
	yDCVzlDm2OuPIdmf4EZEsAbjvXj6c+MDkmz5VchjovVwMj37Bpa06+h4MMZIvXsrgmhOAbY5bfnyC
	EuVZPfysQ4PysbkN/ozwD/htUZ+q1HfDY8nmZFzBLYnl4b6r/XZaleD6dU31JCmN3sJjStRFF8C8V
	9hQh54IRzJee7q9svu7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1LO-0007jN-Eq; Fri, 24 Apr 2020 16:38:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1LG-0007iM-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:38:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0955B31B;
 Fri, 24 Apr 2020 09:38:16 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E85B3F68F;
 Fri, 24 Apr 2020 09:38:15 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 0/4 v5.4] arm64: Workaround Neoverse-N1 #1542419
Date: Fri, 24 Apr 2020 17:38:01 +0100
Message-Id: <20200424163805.4087-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093818_511233_DFE6A9C3 
X-CRM114-Status: UNSURE (   8.08  )
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
to v5.4.35. The series was originally merged in v5.5.

These patches handle user-space. The kernel change was:
commit dd8a1f134884 ("arm64: ftrace: Ensure synchronisation in PLT setup
for Neoverse-N1 #1542419"), which was taken as a fix for v5.4.

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

 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 16 +++++++++++++
 arch/arm64/include/asm/cache.h         |  3 ++-
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 32 +++++++++++++++++++++++++-
 arch/arm64/kernel/sys_compat.c         | 11 +++++++++
 arch/arm64/kernel/traps.c              |  9 ++++++++
 7 files changed, 73 insertions(+), 3 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
