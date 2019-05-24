Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056FE29A52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rA9bjOIMkXX8CWmuGoZoFoI198qeRys7dybgJQQSFek=; b=mhnniDtz/c3ww8
	dDNVhPg08ai8xKVgccivRR6LTetfiS1Dyzg8M++gNOFuIS6OLnbAg30lWRrds9T8CCLDWob2ph922
	ZpakMZGywnyyZzQ4FQ9lYM8abc62sH7FRtT3seRP/9UdmrFKzu0AKxv7e0iozV4jVeoVM3/fX1L6Z
	E3VTXaNpq3gQ+Zw8tCIRuTt6Lc7X0SPdwPQ2r4747AQvmAS+KHkF13usd/KvOEkymkypcR4bPs6zy
	2AGcEoSrr2qeGR7YFnUGH7jcoQ7hRaoryhXcJbMrXbRDGAnMkst3vR0eLzO8mViulWOFHSzBjRz52
	UfwIyrxbFSmcDYQff+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBUY-0006PF-8X; Fri, 24 May 2019 14:48:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBUH-0006Bo-RG
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:48:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 717DA15A2;
 Fri, 24 May 2019 07:48:01 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4E623F575;
 Fri, 24 May 2019 07:47:59 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 1/3] MAINTAINERS: KVM: arm/arm64: Remove myself as maintainer
Date: Fri, 24 May 2019 15:47:43 +0100
Message-Id: <20190524144745.227242-2-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524144745.227242-1-marc.zyngier@arm.com>
References: <20190524144745.227242-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074801_957762_431EF414 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

I no longer have time to actively review patches and manage the tree and
it's time to make that official.

Huge thanks to the incredible Linux community and all the contributors
who have put up with me over the past years.

I also take this opportunity to remove the website link to the Columbia
web page, as that information is no longer up to date and I don't know
who manages that anymore.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 MAINTAINERS | 2 --
 1 file changed, 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..4ba271a8e0ef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8611,14 +8611,12 @@ F:	arch/x86/include/asm/svm.h
 F:	arch/x86/kvm/svm.c
 
 KERNEL VIRTUAL MACHINE FOR ARM/ARM64 (KVM/arm, KVM/arm64)
-M:	Christoffer Dall <christoffer.dall@arm.com>
 M:	Marc Zyngier <marc.zyngier@arm.com>
 R:	James Morse <james.morse@arm.com>
 R:	Julien Thierry <julien.thierry@arm.com>
 R:	Suzuki K Pouloze <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	kvmarm@lists.cs.columbia.edu
-W:	http://systems.cs.columbia.edu/projects/kvm-arm
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git
 S:	Maintained
 F:	arch/arm/include/uapi/asm/kvm*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
