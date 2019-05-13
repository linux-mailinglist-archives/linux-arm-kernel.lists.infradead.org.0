Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0752C1B05C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HvBwSvH5ZyYh7zelfKhxzaIcCcWZs0FwqXTmmlQ/fLQ=; b=NsOZ4mMH6qnVgQ
	h6FILuy+2gXe0qVOdOmjBXpzOhrK9aBoq1M8pTZVtDX7NmPFMJ0WDj3xlbpf727e8cVLxtWtuVM8Z
	Tyuut7zshir7wa8z7TAnuWAGKJTqOjpAMRBLQZrDpbvehYYbVqzklzAh+pdF0SPv75ZLMxeDYY0tT
	jCvJinU9ONStar5YUjQI1nEf4oBwzIyC4r0IF2UFTByPOvglKW2mFv2FuWgGQYFDYo4hAN7eCmgws
	aNT36OCbUfTBm4DUKfJASTDcFHygUBjc2goHBRuF581gjFf2vtYZmqjK0FSp0veh1AQ2hA7CIAQMi
	lvrUWWsMxkHjBQjkGkfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4Vg-0005Df-Ne; Mon, 13 May 2019 06:32:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4VZ-0005Cl-8o
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 06:32:23 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4339F9940403AE8FA378;
 Mon, 13 May 2019 14:32:09 +0800 (CST)
Received: from ros.huawei.com (10.143.28.118) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Mon, 13 May 2019 14:32:00 +0800
From: Dongjiu Geng <gengdongjiu@huawei.com>
To: <christoffer.dall@arm.com>, <marc.zyngier@arm.com>,
 <peter.maydell@linaro.org>, <james.morse@arm.com>, <rkrcmar@redhat.com>,
 <corbet@lwn.net>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <kvm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>
Subject: [RFC PATCH V2] kvm: arm64: export memory error recovery capability to
 user space
Date: Sun, 12 May 2019 23:28:37 -0700
Message-ID: <1557728917-49079-1-git-send-email-gengdongjiu@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.143.28.118]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_233221_541692_6749C594 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhengxiang9@huawei.com, gengdongjiu@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When user space do memory recovery, it will check whether KVM and
guest support the error recovery, only when both of them support,
user space will do the error recovery. This patch exports this
capability of KVM to user space.

Cc: Peter Maydell <peter.maydell@linaro.org>
Signed-off-by: Dongjiu Geng <gengdongjiu@huawei.com>
---
v1->v2:
1. check whether host support memory failure instead of RAS capability
   https://patchwork.kernel.org/patch/10730827/

v1:
1. User space needs to check this capability of host is suggested by Peter[1],
this patch as RFC tag because user space patches are still under review,
so this kernel patch is firstly sent out for review.

[1]: https://patchwork.codeaurora.org/patch/652261/
---
 Documentation/virtual/kvm/api.txt | 9 +++++++++
 arch/arm64/kvm/reset.c            | 3 +++
 include/uapi/linux/kvm.h          | 1 +
 3 files changed, 13 insertions(+)

diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virtual/kvm/api.txt
index cd209f7..822a57b 100644
--- a/Documentation/virtual/kvm/api.txt
+++ b/Documentation/virtual/kvm/api.txt
@@ -4895,3 +4895,12 @@ Architectures: x86
 This capability indicates that KVM supports paravirtualized Hyper-V IPI send
 hypercalls:
 HvCallSendSyntheticClusterIpi, HvCallSendSyntheticClusterIpiEx.
+
+8.21 KVM_CAP_ARM_MEMORY_ERROR_RECOVERY
+
+Architectures: arm, arm64
+
+This capability indicates that guest memory error can be detected by the host which
+supports the error recovery. When user space do recovery, such as QEMU, it will
+check whether host and guest all support memory error recovery, only when both of them
+support, user space will do the error recovery.
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index b72a3dd..b6e3986 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -84,6 +84,9 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	case KVM_CAP_ARM_INJECT_SERROR_ESR:
 		r = cpus_have_const_cap(ARM64_HAS_RAS_EXTN);
 		break;
+	case KVM_CAP_ARM_MEMORY_ERROR_RECOVERY:
+		r= IS_ENABLED(CONFIG_MEMORY_FAILURE);
+		break;
 	case KVM_CAP_SET_GUEST_DEBUG:
 	case KVM_CAP_VCPU_ATTRIBUTES:
 		r = 1;
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 2b7a652..3b19580 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -975,6 +975,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_HYPERV_ENLIGHTENED_VMCS 163
 #define KVM_CAP_EXCEPTION_PAYLOAD 164
 #define KVM_CAP_ARM_VM_IPA_SIZE 165
+#define KVM_CAP_ARM_MEMORY_ERROR_RECOVERY 166
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
