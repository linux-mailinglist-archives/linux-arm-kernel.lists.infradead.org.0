Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B516D14A215
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:37:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvxxgqaNpLBHW1JDw+mdBrDqMwv6jkltSMgtX3qnKJQ=; b=EnAh7qeTQLMiNE
	v2WMzorRDT3ChaYBVRdchJFPxfYn7giBFtCLsY9s/sZnBoPmFcWMA9uWXMLSuxg8dD5MaF179cKoc
	e9BEL6c38Te67n2MfUHv9aqnqjUhLNFD6hhxoc/yuv2zwdj/1Olgzn+GLyvQLjBtnOCdsQb3T/X24
	OMWneAJij+2vE2LsqlL8U2tFAD84OvszH5GwfXL/T8K5vPBSYrzD11UiVkQ+AWzwEEdgxCl16pioW
	nKZwQDMn0VVIbjChAvSOlapnc/+x6VqnV2oYHcuhY7XBMnndkDN4xmW5NEKvdQDI+kSiMf42EDdOH
	cBusrM3epUaEzM1w+vug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw1lx-0002Uo-0G; Mon, 27 Jan 2020 10:37:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1lm-0002Tu-6I
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:37:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C23F030E;
 Mon, 27 Jan 2020 02:37:23 -0800 (PST)
Received: from e123195-lin.cambridge.arm.com (e123195-lin.cambridge.arm.com
 [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BE6EB3F52E;
 Mon, 27 Jan 2020 02:37:22 -0800 (PST)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org
Subject: [PATCH] KVM: arm64: Treat emulated TVAL TimerValue as a signed 32-bit
 integer
Date: Mon, 27 Jan 2020 10:36:52 +0000
Message-Id: <20200127103652.2326-1-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_023726_277347_7BADF1B6 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: maz@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the ARM ARM, registers CNT{P,V}_TVAL_EL0 have bits [63:32]
RES0 [1]. When reading the register, the value is truncated to the least
significant 32 bits [2], and on writes, TimerValue is treated as a signed
32-bit integer [1, 2].

When the guest behaves correctly and writes 32-bit values, treating TVAL
as an unsigned 64 bit register works as expected. However, things start
to break down when the guest writes larger values, because
(u64)0x1_ffff_ffff = 8589934591. but (s32)0x1_ffff_ffff = -1, and the
former will cause the timer interrupt to be asserted in the future, but
the latter will cause it to be asserted now.  Let's treat TVAL as a
signed 32-bit register on writes, to match the behaviour described in
the architecture, and the behaviour experimentally exhibited by the
virtual timer on a non-vhe host.

[1] Arm DDI 0487E.a, section D13.8.18
[2] Arm DDI 0487E.a, section D11.2.4

Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 include/kvm/arm_arch_timer.h | 2 ++
 virt/kvm/arm/arch_timer.c    | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index d120e6c323e7..be912176b7a3 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -10,6 +10,8 @@
 #include <linux/clocksource.h>
 #include <linux/hrtimer.h>
 
+#define ARCH_TIMER_TVAL_MASK	((1ULL << 32) - 1)
+
 enum kvm_arch_timers {
 	TIMER_PTIMER,
 	TIMER_VTIMER,
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index f182b2380345..5d40f17f7024 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -805,6 +805,7 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu *vcpu,
 	switch (treg) {
 	case TIMER_REG_TVAL:
 		val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
+		val &= ARCH_TIMER_TVAL_MASK;
 		break;
 
 	case TIMER_REG_CTL:
@@ -850,7 +851,7 @@ static void kvm_arm_timer_write(struct kvm_vcpu *vcpu,
 {
 	switch (treg) {
 	case TIMER_REG_TVAL:
-		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + val;
+		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + (s32)val;
 		break;
 
 	case TIMER_REG_CTL:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
