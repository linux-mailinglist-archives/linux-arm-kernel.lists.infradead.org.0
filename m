Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3913F48B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ff8oeFIlrLVhF7Wzn4N2dia9/Elu0TlwrvpFXYN/YvE=; b=gk2
	TzZnsOWXOZkLRgS6JKudECEd9yP9YaGGETVgmn8/I4gPnneqdYZJ7Sstm1rEK28XnpGaE+APVb332
	lKEi/EBUVZLLQyA5AdTE7iy56rHabq4IVCwlVR/z+lJCtPboFyCYB4o7oPR5YKKIG7giZ9zVqZR5r
	KjSz1XEj+YkK3f6hylk8qGZO2wS4GT4KEj51eXU4BKu8mKWCSXIQVvbURHI/iiLIthsrm0UMyp1nt
	puMnJ/CtPab8JTgbPhlu5lA5acl2zZjSLBX20/OCEwed6o2TWfosCL1hNSQ9IEWI6dT0ywHBIqM6K
	x/RgpbC3K+u5edrz+uDhrFkwHuMU7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isADv-0005q8-KY; Thu, 16 Jan 2020 18:50:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9zo-0005p4-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:36:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4F7931B;
 Thu, 16 Jan 2020 10:35:53 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF9B13F534;
 Thu, 16 Jan 2020 10:35:52 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH 0/5] arm64: entry: preparatory cleanup
Date: Thu, 16 Jan 2020 18:35:43 +0000
Message-Id: <20200116183548.39411-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103556_978448_7A287635 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, james.morse@arm.com, anshuman.khandual@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While reworking my entry deasmification patches [1], I realised that
there are few bits I'm not quite comfortable with and will require a
little bit more time to make robust. Mostly that has to do with
manipulation of DAIF, irq flags, and the GIC PMR. I'm hoping that I can
have the reworked patches ready around v5.6-rc1.

In the mean time, I've split out these preparatory patches in the hope
that they can be queued now. These are based on v5.5-rc3, and I've
pushed them to my arm64/entry-deasm-prep branch [2,3].

Thanks,
Mark.

[1] https://lore.kernel.org/r/20200108185634.1163-1-mark.rutland@arm.com
[2] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm-prep
[3] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/entry-deasm-prep

Mark Rutland (5):
  arm64: assembler: remove inherit_daif macro
  arm64: assembler: remove smp_dmb macro
  arm64: entry: mark all entry code as notrace
  arm64: entry: cleanup el0 svc handler naming
  arm64: entry: cleanup sp_el0 manipulation

 arch/arm64/include/asm/assembler.h | 13 -------------
 arch/arm64/include/asm/exception.h |  4 ++--
 arch/arm64/kernel/entry-common.c   |  8 ++++----
 arch/arm64/kernel/entry.S          | 17 +++++++----------
 arch/arm64/kernel/syscall.c        |  4 ++--
 5 files changed, 15 insertions(+), 31 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
