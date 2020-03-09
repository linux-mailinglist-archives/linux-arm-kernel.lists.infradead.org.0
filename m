Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B4617E08B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cuch5PPg28LqvwjZoeAQCM0T6MaxI/M2vtnxlePek9w=; b=hDcnMAU2+/kik8
	dJZFrOWERuI6D3kR6TTF3vuv1vHgdDxAtL9mYhwCYNlWd2Dk+12CGwXCaNWn+lRnjePT/iHT8vUQ2
	gWxcRycSxYXMHJhhjYgnWIPKE1SHzIaU4oj09xTJsGShMN+uNeO1+GMt9pmWVfsTyRTev9nOQm7WR
	LaZ8lncxgQFDo2z7yJv24Iq+XihujDPx4tywdPocO11VhyEojt2CosDhAHnGAQam0YzrCOhW7plqF
	MLfUMnINSUDO2YjjwiEh32K5s6IBKQABerZV/RDG/XnbIf++PYmUyMkYqj4JR83mV/svQNAGw/FS7
	rP+oE6F94PwFysq5yoTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHqd-00079w-Dn; Mon, 09 Mar 2020 12:49:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHpt-0006jE-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:48:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43F6E20866;
 Mon,  9 Mar 2020 12:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583758125;
 bh=9sTOwmipWBkuYFmW99E2qokfucw21rAYEF30PetE1g0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cBIlgajuyPyHGJ3OqQGtTRH52t71yuBMuSl+M2Q2eK9Acs9oQT3hlFH4OHvLcYrCY
 FciEI5Orm5TKpYqgvAgLIWtuZuEqcjAWF275KEf4LXdbAQ6b5ztMM6bMMPwVwSalXT
 NxWstij5W48OAe8LjrObuJXiKDitQ5hDIjtO1paQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBHpr-00BHiN-Hv; Mon, 09 Mar 2020 12:48:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 2/2] KVM: arm64: Document PMU filtering API
Date: Mon,  9 Mar 2020 12:48:37 +0000
Message-Id: <20200309124837.19908-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309124837.19908-1-maz@kernel.org>
References: <20200309124837.19908-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, robin.murphy@arm.com,
 mark.rutland@arm.com, eric.auger@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_054845_789970_5244DDD3 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a small blurb describing how the event filtering API gets used.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/virt/kvm/devices/vcpu.rst | 40 +++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/virt/kvm/devices/vcpu.rst b/Documentation/virt/kvm/devices/vcpu.rst
index 9963e680770a..7262c0469856 100644
--- a/Documentation/virt/kvm/devices/vcpu.rst
+++ b/Documentation/virt/kvm/devices/vcpu.rst
@@ -55,6 +55,46 @@ Request the initialization of the PMUv3.  If using the PMUv3 with an in-kernel
 virtual GIC implementation, this must be done after initializing the in-kernel
 irqchip.
 
+1.3 ATTRIBUTE: KVM_ARM_VCPU_PMU_V3_FILTER
+---------------------------------------
+
+:Parameters: in kvm_device_attr.addr the address for a PMU event filter is a
+             pointer to a struct kvm_pmu_event_filter
+
+:Returns:
+
+	 =======  ======================================================
+	 -ENODEV: PMUv3 not supported or GIC not initialized
+	 -ENXIO:  PMUv3 not properly configured or in-kernel irqchip not
+	 	  configured as required prior to calling this attribute
+	 -EBUSY:  PMUv3 already initialized
+	 =======  ======================================================
+
+Request the installation of a PMU event filter describe as follows:
+
+struct kvm_pmu_event_filter {
+	__u16	base_event;
+	__u16	nevents;
+
+#define KVM_PMU_EVENT_ALLOW	0
+#define KVM_PMU_EVENT_DENY	1
+
+	__u8	action;
+	__u8	pad[3];
+};
+
+A filter range is defined as the range [@base_event, @base_event + @nevents[,
+together with an @action (KVM_PMU_EVENT_ALLOW or KVM_PMU_EVENT_DENY). The
+first registered range defines the global policy (global ALLOW if the first
+@action is DENY, global DENY if the first @action is ALLOW). Multiple ranges
+can be programmed, and must fit within the 16bit space defined by the ARMv8.1
+PMU architecture.
+
+Restrictions: Event 0 (SW_INCR) is never filtered, as it doesn't count a
+hardware event. Filtering event 0x1E (CHAIN) has no effect either, as it
+isn't strictly speaking an event. Filtering the cycle counter is possible
+using event 0x11 (CPU_CYCLES).
+
 
 2. GROUP: KVM_ARM_VCPU_TIMER_CTRL
 =================================
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
