Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC61FACD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhyIEDNbfvZelpxxIDpVfgXLVPwlgxuatqS2eZQz9fE=; b=aGcPrm/ObYw7fI
	eH6/Kc0Jxl+wtUtMQT8O3UGTleJ5JnvygbI/737JOk/Q0EEYKKMuV9lpskKuAN6f8svco47qC+25C
	EqSkPICgcTl7BZf0T8YMR0/wGinVccVwlM3KF+B3x/tFMyqAY6R9ERR9jpUf2fMEEkFYCK683eFQJ
	ZkYKOpuXAwpDAI2zGhEE61ZTtiEEwrjDhsQOl2/QpiSsHaG8dPcgT47NbN+8Yz2FhgRzDozf7BriY
	vhBfBl5TQnAcR8DtUvqPF31MyMSXf+9MXlj/pRa2+eEt2bEA5JdDX6MqsSIY5b8JeFQuOs8nWEz74
	SMh2yrw5aLUPIPleoG/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl82k-00037Y-O0; Tue, 16 Jun 2020 09:38:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl810-0001m4-Pr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:29 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A7F67EB29739727ABAE9;
 Tue, 16 Jun 2020 17:36:13 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:07 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 05/12] KVM: arm64: Add KVM_CAP_ARM_HW_DIRTY_LOG capability
Date: Tue, 16 Jun 2020 17:35:46 +0800
Message-ID: <20200616093553.27512-6-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023623_030349_A8F92703 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Suzuki K
 Poulose <suzuki.poulose@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>, liangpeng10@huawei.com,
 Alexios Zavras <alexios.zavras@intel.com>, zhengxiang9@huawei.com,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, wanghaibin.wang@huawei.com, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For that using arm64 DBM to log dirty pages has the side effect
of long time dirty log sync, we should give userspace opportunity
to enable or disable this feature, to realize some policy.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 arch/arm64/include/asm/kvm_host.h |  7 +++++++
 arch/arm64/kvm/arm.c              | 10 ++++++++++
 arch/arm64/kvm/reset.c            |  5 +++++
 include/uapi/linux/kvm.h          |  1 +
 tools/include/uapi/linux/kvm.h    |  1 +
 5 files changed, 24 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 9ea2dcfd609c..2bc3256759e3 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -95,6 +95,13 @@ struct kvm_arch {
 	 * supported.
 	 */
 	bool return_nisv_io_abort_to_user;
+
+	/*
+	 * Use hardware management of dirty status (DBM) to log dirty pages.
+	 * Userspace can enable this feature if KVM_CAP_ARM_HW_DIRTY_LOG is
+	 * supported.
+	 */
+	bool hw_dirty_log;
 };
 
 #define KVM_NR_MEM_OBJS     40
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 90cb90561446..850cc5cbc6f0 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -87,6 +87,16 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
 		r = 0;
 		kvm->arch.return_nisv_io_abort_to_user = true;
 		break;
+#ifdef CONFIG_ARM64_HW_AFDBM
+	case KVM_CAP_ARM_HW_DIRTY_LOG:
+		if ((cap->args[0] & ~1) || !kvm_hw_dbm_enabled()) {
+			r = -EINVAL;
+		} else {
+			r = 0;
+			kvm->arch.hw_dirty_log = cap->args[0];
+		}
+		break;
+#endif
 	default:
 		r = -EINVAL;
 		break;
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index d3b209023727..52bb801c9b2c 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -83,6 +83,11 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 		r = has_vhe() && system_supports_address_auth() &&
 				 system_supports_generic_auth();
 		break;
+#ifdef CONFIG_ARM64_HW_AFDBM
+	case KVM_CAP_ARM_HW_DIRTY_LOG:
+		r = kvm_hw_dbm_enabled();
+		break;
+#endif /* CONFIG_ARM64_HW_AFDBM */
 	default:
 		r = 0;
 	}
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 4fdf30316582..e0b12c43397b 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1031,6 +1031,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_PPC_SECURE_GUEST 181
 #define KVM_CAP_HALT_POLL 182
 #define KVM_CAP_ASYNC_PF_INT 183
+#define KVM_CAP_ARM_HW_DIRTY_LOG 184
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
diff --git a/tools/include/uapi/linux/kvm.h b/tools/include/uapi/linux/kvm.h
index fdd632c833b4..53908a8881a4 100644
--- a/tools/include/uapi/linux/kvm.h
+++ b/tools/include/uapi/linux/kvm.h
@@ -1017,6 +1017,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_S390_VCPU_RESETS 179
 #define KVM_CAP_S390_PROTECTED 180
 #define KVM_CAP_PPC_SECURE_GUEST 181
+#define KVM_CAP_ARM_HW_DIRTY_LOG 184
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
