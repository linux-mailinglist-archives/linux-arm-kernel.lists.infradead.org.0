Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6551A505B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 14:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWlmot13SQFjKilHCYUqE9J98DSrUqB59InQMMDjwIk=; b=bPSpwsCYG0AyZ/
	vae0jLKrX+rZgJS5QIRpM+t43K6fw3f077HQ/GY1yMvcHsqQI0qDmhoz5OoeIKCfk1n40jvCP5AM/
	X1AXMIMjAxoOUGdPZvmEmiNVXPeUdoFR3uNlpPPpdSvfu0xC7q+IE8N91iY6EcHVj+TlwKqHyT0U2
	yaI39o6yacQjz701EJrXlg8WuO6c5KgOE/82HBsEohFh8sfrg9T5ceTywPGhlyOaaio58xzpkVggF
	LYz003/EZLZrjWeCmP9IWY4pm2hZB+bJWOFkeGW5RDkyj+tOAUMzIwDSC2s8Dr/QIjljL44mH9c43
	A6GYgtHsejkP/D+E7DCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNF4C-00009e-9d; Sat, 11 Apr 2020 12:16:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNF42-0008Oe-5h
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 12:16:48 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2AAC2DD93474802C528B;
 Sat, 11 Apr 2020 20:16:30 +0800 (CST)
Received: from huawei.com (10.151.151.243) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Sat, 11 Apr 2020
 20:16:20 +0800
From: Dongjiu Geng <gengdongjiu@huawei.com>
To: <maz@kernel.org>, <james.morse@arm.com>, <julien.thierry.kdev@gmail.com>, 
 <suzuki.poulose@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] KVM: handle the right RAS SEA(Synchronous External Abort) type
Date: Sat, 11 Apr 2020 20:17:40 +0800
Message-ID: <20200411121740.37615-1-gengdongjiu@huawei.com>
X-Mailer: git-send-email 2.18.0.huawei.25
MIME-Version: 1.0
X-Originating-IP: [10.151.151.243]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_051646_390389_B45B49FE 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhengxiang9@huawei.com, tanxiaofei@huawei.com, linuxarm@huawei.com,
 gengdongjiu@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the RAS Extension is implemented, b0b011000, 0b011100,
0b011101, 0b011110, and 0b011111, are not used and reserved
to the DFSC[5:0] of ESR_ELx, but the code still checks these
unused bits, so remove them.

If the handling of guest ras data error fails, it should
inject data instead of SError to let the guest recover as
much as possible.

CC: Xiang Zheng <zhengxiang9@huawei.com>
CC: Xiaofei Tan <tanxiaofei@huawei.com>
CC: James Morse <james.morse@arm.com>
Signed-off-by: Dongjiu Geng <gengdongjiu@huawei.com>
---
Abort DFSC of ESR_EL2, below web site[1] has clarified:
"When the RAS Extension is implemented, 0b011000, 0b011100, 0b011101, 0b011110, and 0b011111, are reserved."

[1]: https://developer.arm.com/docs/ddi0595/b/aarch64-system-registers/esr_el2
---
 arch/arm64/include/asm/kvm_emulate.h | 5 -----
 virt/kvm/arm/mmu.c                   | 2 +-
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index a30b4eec7cb4..857fbc79d678 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -380,11 +380,6 @@ static __always_inline bool kvm_vcpu_dabt_isextabt(const struct kvm_vcpu *vcpu)
 	case FSC_SEA_TTW1:
 	case FSC_SEA_TTW2:
 	case FSC_SEA_TTW3:
-	case FSC_SECC:
-	case FSC_SECC_TTW0:
-	case FSC_SECC_TTW1:
-	case FSC_SECC_TTW2:
-	case FSC_SECC_TTW3:
 		return true;
 	default:
 		return false;
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..3c7972ed7fc5 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1926,7 +1926,7 @@ int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
 			return 1;
 
 		if (unlikely(!is_iabt)) {
-			kvm_inject_vabt(vcpu);
+			kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
 			return 1;
 		}
 	}
-- 
2.18.0.huawei.25


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
