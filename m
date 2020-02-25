Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED6116F3E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZb94M7aCjDYPbhOn3auw5palkfEsWwa0AfL2q73M/8=; b=EecHwrDQZBjUlS
	WWAeUZQgo0P1ZvkjTuq5Cnbog+OqxxQ7J7a5Fb1auna+cPtbR+wJ9YAjuk1BPRO50lIJm5Bfimhwm
	fCJ7g32lLuki6NL4xAUukHt/IBxhqemUdclJktlaxAQaTkEDA4ehijRMMBGwTVWOiDLlxN4/6F5ph
	ZeWr6V46DaZEJKnBdGr+eJy1wZwijUvyuARuFoY/yRNYs2mPdadaW1eTUKtAMVzAXeYtVp2rDumCh
	eI0QM7RKRQhAzap5FmCTAQAfi02lN/biTKgHpu3KQVZ+CGEf2mcmpN5QsVbKWOK4JFgriXEGgCnfO
	yPO1EKRyt4/N5YPsJWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k0Y-0004OF-EY; Tue, 25 Feb 2020 23:52:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k0J-0004Lq-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:52:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35496222C2;
 Tue, 25 Feb 2020 23:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582674763;
 bh=k1TPMHWNq5SiOIEoz51vIjGyJR8ZNRKE3TEEJhii4II=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ZRQmzDIbGdbdEtv08Vxzwaw4rkbVSD2nUTOueA1LuHk894qesi8oasnPk399zm5z
 9uViSjTR+Zf3V6rzPcGb9aZtS/VUmYbMVq2Ix8i7eB3S2vEYH7EhhKzSBmdN4Qd4yn
 mFIQEHbi2GpEtqbHGwFnU89+WHVveP0hBSO4mBSE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6k0H-007xuY-EA; Tue, 25 Feb 2020 23:52:41 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 1/5] KVM: arm/arm64: Fix up includes for trace.h
Date: Tue, 25 Feb 2020 23:52:19 +0000
Message-Id: <20200225235223.12839-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225235223.12839-1-maz@kernel.org>
References: <20200225235223.12839-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, james.morse@arm.com, jcline@redhat.com,
 mark.rutland@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_155244_004126_A03CD6F5 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jeremy Cline <jcline@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Cline <jcline@redhat.com>

Fedora kernel builds on armv7hl began failing recently because
kvm_arm_exception_type and kvm_arm_exception_class were undeclared in
trace.h. Add the missing include.

Fixes: 0e20f5e25556 ("KVM: arm/arm64: Cleanup MMIO handling")
Signed-off-by: Jeremy Cline <jcline@redhat.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200205134146.82678-1-jcline@redhat.com
---
 virt/kvm/arm/trace.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
index 204d210d01c2..cc94ccc68821 100644
--- a/virt/kvm/arm/trace.h
+++ b/virt/kvm/arm/trace.h
@@ -4,6 +4,7 @@
 
 #include <kvm/arm_arch_timer.h>
 #include <linux/tracepoint.h>
+#include <asm/kvm_arm.h>
 
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM kvm
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
