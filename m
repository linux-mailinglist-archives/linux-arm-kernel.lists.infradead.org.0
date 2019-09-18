Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD9B5EC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiHPN9Y/I1HsMl/uM/6vYBsDITcTSx5FZvI0LPIbgMU=; b=k40B/E0ZJEVaEa3SO1XH4hjbJY
	t9ueBWC44u/EIEHX2r5KJJmz0Y2qZ6PVUcLKTikrvL43szHeDeBRpjcAsm0HS+lfDzO4VyVXaJmuX
	SofzflBfZoY4Z3WIwOyxUrPHNh2r5TQliXKg4sPq8FtOyfbA+6zO1YpUxXRZB5nk1zc0p48w62HI7
	0Ymqn+9WJkDk3lNn+d0KubSb63w4W8K37CszBYwXALvdR2RIZFUEOBY0USe8fh8/8uXgvtbyaJ8z8
	lb6YHMUQcm5plmOoH2UCfcD0cn2fi9V+BvfXbhvB63xQUNRTwU8V6GcsPH96Y1KZv7miq7kSctUeh
	FweXX0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAV2q-0006m9-02; Wed, 18 Sep 2019 08:10:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAV0N-0003DO-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:08:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5C8228;
 Wed, 18 Sep 2019 01:08:02 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1DAAF3F59C;
 Wed, 18 Sep 2019 01:07:57 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 Will.Deacon@arm.com, suzuki.poulose@arm.com
Subject: [RFC PATCH v3 6/6] kvm: arm64: Add capability check extension for
 ptp_kvm
Date: Wed, 18 Sep 2019 04:07:16 -0400
Message-Id: <20190918080716.64242-7-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918080716.64242-1-jianyong.wu@arm.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_010803_923484_8AF11697 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let userspace check if there is kvm ptp service in host.
before VMs migrate to a another host, VMM may check if this
cap is available to determine the migration behaviour.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
Suggested-by: Marc Zyngier <maz@kernel.org>
---
 include/uapi/linux/kvm.h | 1 +
 virt/kvm/arm/arm.c       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 2fe12b40d503..a0bff6002bd9 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -993,6 +993,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_ARM_SVE 170
 #define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
 #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
+#define KVM_CAP_ARM_KVM_PTP 173
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index bd5c55916d0d..80999985160b 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -201,6 +201,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	case KVM_CAP_MP_STATE:
 	case KVM_CAP_IMMEDIATE_EXIT:
 	case KVM_CAP_VCPU_EVENTS:
+	case KVM_CAP_ARM_KVM_PTP:
 		r = 1;
 		break;
 	case KVM_CAP_ARM_SET_DEVICE_ADDR:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
