Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58684157484
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wjWclXAqJUp14bJu+vdqwBlmX+07i7DFyBmF+XDOIkY=; b=Gzh
	vz9RudwUoW28yQeVQUX+kSLujpT7+MZEIgrOUS01lqtusefZ8lNtw5+YEDDOV1fxmtRtqytQGCSrE
	/SVveao2V+nV0UvFhDeM4da6ERSPUjEszC8OaoObNIdBhnfTPjzzTBxADp41g/814uX1XJ9CmZsbI
	10BduBb1VNyOEPo7B9i7Q84gM5B82o50bsb3cld/xcUK7b7rCY7ywKR4rzbe62RsPuP2cr0PzRHom
	VoTrUVJaUJjWt/zUW0FkZNaLV0FhzKSOElVdCwR0VIUMn8+2Aw8Qtx+Um0Ti4Iq/jhW70QJNFkYgW
	l1gS00MzerEsCZg54UvefzKbASHbfSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j189x-0007ri-Ln; Mon, 10 Feb 2020 12:27:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j189q-0007rR-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:27:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5FD51FB;
 Mon, 10 Feb 2020 04:27:21 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A71573F6CF;
 Mon, 10 Feb 2020 04:27:20 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: add finalized cap helper
Date: Mon, 10 Feb 2020 12:27:06 +0000
Message-Id: <20200210122708.38826-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_042722_806261_004D48C8 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Across arm64 we use cpus_have_const_cap() to check for a capability
without a runtime check. Prior to capabilities being finalized
cpus_have_const_cap() falls back to a runtime check of the cpu_hwcaps
array. In some cases we know that code is never invoked prior to the
capabilities being finalized, and the fallback code is redundant (and
unsound if ever executed in hyp context).

So that we can avoid the redundant code and detect when the caps are
unexpectedly checked too early, this series adds a new
cpus_have_final_cap() helper, and migrates the KVM hyp code over to it.

I'm hoping to use this as part of the entry.S -> entry-common.c
conversion, and there are other places in arm64 that could potentially
use this today.

Thanks,
Mark.

Mark Rutland (2):
  arm64: cpufeature: add cpus_have_final_cap()
  arm64: kvm: hyp: use cpus_have_final_cap()

 arch/arm64/include/asm/cpufeature.h | 47 +++++++++++++++++++++++++++++++++----
 arch/arm64/kvm/hyp/switch.c         | 14 +++++------
 arch/arm64/kvm/hyp/sysreg-sr.c      |  8 +++----
 arch/arm64/kvm/hyp/tlb.c            |  8 +++----
 4 files changed, 57 insertions(+), 20 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
