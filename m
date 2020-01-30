Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095B314DBF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:32:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwjSt958eRxJ+cBwQVzzyV9Ala+W8qd24L4h3UCmLv4=; b=t/wEVWJ4Mu/Bk7
	F+EcNHG0c+BGVUXYz9c2/HcfelTaXy6weVdYuERafkkI7j5VvEpGPtj6a5ehtIPXkz3TFPthARx7b
	edHY4RTOs2D62SmVPVNtRwnBEhXEVKsNxj3i63472aedBIlGo7T5MEJv0YLxteXSKf7kilMLv4+Ni
	wI2gLIPVZ3Tp7m7v2Ky5G5omgYQjdjbxsMhUpq7AHlXp9/EPMeqFrUK89vlPJWe4wSPmqzPZL8Otb
	11ebeNOg8EoaIGl0D0JSqX8jTil3ctBkh0r083FCUaymDewywbYJ82baeEMCJIoHr6Hr2epeSd8Jz
	utpFGv0bGy9IVWBYCWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9vb-0002GQ-R2; Thu, 30 Jan 2020 13:32:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9st-0007Pe-VR
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:29:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 326CC217BA;
 Thu, 30 Jan 2020 13:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390967;
 bh=JDdi5H6y9oYJHPQRhe1DKLwTvdhQqHtercYpr+kJ/kg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KaJgpOn4y6FwW4ncPwQBJsCOLNvWabqhFzFDNhUUK0Z6BIkYiY2IYqk0x2ZHUKzni
 IWGbhl6/GgDtUEtK3eDgPjlNfipzqY8DNMFZN132m709++PuFfBVnYX0zsT/X4mRf5
 MsjPzcnm7d+h6ymLVAPK2dNJ5w0w8Vq9pjXeu0KY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9px-002BmW-Em; Thu, 30 Jan 2020 13:26:25 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 15/23] arm64: KVM: Annotate guest entry/exit as a single
 function
Date: Thu, 30 Jan 2020 13:25:50 +0000
Message-Id: <20200130132558.10201-16-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052928_090054_7E573528 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Brown <broonie@kernel.org>

In an effort to clarify and simplify the annotations of assembly
functions in the kernel new macros have been introduced replacing ENTRY
and ENDPROC. There are separate annotations SYM_FUNC_ for normal C
functions and SYM_CODE_ for other code. Currently __guest_enter and
__guest_exit are annotated as standard functions but this is not
entirely correct as the former doesn't do a normal return and the latter
is not entered in a normal fashion. From the point of view of the
hypervisor the guest entry/exit may be viewed as a single
function which happens to have an eret in the middle of it so let's
annotate it as such.

Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Link: https://lore.kernel.org/r/20200120124706.8681-1-broonie@kernel.org
---
 arch/arm64/kvm/hyp/entry.S | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..5b76a89939b1 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -44,7 +44,7 @@
  * u64 __guest_enter(struct kvm_vcpu *vcpu,
  *		     struct kvm_cpu_context *host_ctxt);
  */
-ENTRY(__guest_enter)
+SYM_FUNC_START(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
@@ -96,9 +96,8 @@ alternative_else_nop_endif
 	// Do not touch any register after this!
 	eret
 	sb
-ENDPROC(__guest_enter)
 
-ENTRY(__guest_exit)
+SYM_INNER_LABEL(__guest_exit, SYM_L_GLOBAL)
 	// x0: return code
 	// x1: vcpu
 	// x2-x29,lr: vcpu regs
@@ -192,4 +191,4 @@ abort_guest_exit_end:
 	msr	spsr_el2, x4
 	orr	x0, x0, x5
 1:	ret
-ENDPROC(__guest_exit)
+SYM_FUNC_END(__guest_enter)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
