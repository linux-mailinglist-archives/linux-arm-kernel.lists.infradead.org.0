Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF675117E80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 04:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiHPN9Y/I1HsMl/uM/6vYBsDITcTSx5FZvI0LPIbgMU=; b=kLiV3pGID/azhwla+iFjYlfecg
	aoBD1r8wq4Fv1QREKH+2O2hdq7rI+kGQJwuVbFJyB8vvxgQ5KY06d0mUNpKcJhvyFNRx41MvXx+vX
	IztkHqBCmWdNOfLHUIrwSsGZmKdh73OH77D/FxCWjvPV/SnEs7YBSpgPpA3vb5NJqIlr7A+lsGj56
	aiUg632mRrWwQwM0z+JA2Wnucu/QTolmPFlPWTdvIf0iB+cS529N1I8zMx75+w9rehd+A29TBjRnM
	O83mBALR0cPOPmHTcsOndzFBH+rVdr1vJkfjqsxZQCfL14IryMpY70Ol5lKaHm0K+VQc9KcvxfHOL
	ketUftaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWQM-0007bc-RF; Tue, 10 Dec 2019 03:42:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWOr-0006Gd-6R
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 03:41:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B3B51FB;
 Mon,  9 Dec 2019 19:41:24 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 51CEA3F52E;
 Mon,  9 Dec 2019 19:41:19 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v9 8/8] kvm: arm64: Add capability check extension for
 ptp_kvm
Date: Tue, 10 Dec 2019 11:40:26 +0800
Message-Id: <20191210034026.45229-9-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210034026.45229-1-jianyong.wu@arm.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_194125_299310_239F96FF 
X-CRM114-Status: UNSURE (   9.17  )
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
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
