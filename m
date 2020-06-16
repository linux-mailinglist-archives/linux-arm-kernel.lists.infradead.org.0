Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790131FAD22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI+nlXnr24dGcaP6r3VkyTmqsJwfmIaLRzujDf003hk=; b=VZ1l2zfbyuiz7I
	+u8lqGNnO9yxlFIfZJz8pj4RWTxrvTHmyPb8W39pQdFxmEzGWKFUtZ/Dr0KAFyjtiQAhIXWTsFsSF
	l90Uy0rzFtza0WaOjP8cO2rTBfd04bTO9eN9OMRQl7E3zUAIoXZak9ZPSR0ElkuHSM9suL0KwBZ+N
	mxiOY3GjyogGvIIvwS/jbl7/Uc6DCz4o8x7UL4oalBLrUaWqQ15PYZcuKTRGAI9szXp//k7gcbxfj
	rUIr4Rq/Zbfu4rtLL7E7hfPw93n9nD+lVSIf6s5s6rcStXur+Bs5EIDzfl4auCOTQjznLXPVKB4cQ
	pm2uJ24WFylphAYqyfnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8GO-0005OD-7z; Tue, 16 Jun 2020 09:52:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8GC-0004nf-UY
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jun 2020 09:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DtVxqmqpPYbHhqDrZlQrL9WsAH7BiciCaEg3bgqF05E=; b=J+hlfqyoxTsUiyyyIlFkllgCHL
 4NniOuTdrKDvJCD/HFoX/0Fxdpyn3AM/N/vgsTO3re4WaX1wVmcw1U0lgWpd98pb0OXMC5zEJkGFC
 BES2tSm5qQLW6nH5kFmAFsPR08HfJa+r+FLQYelDTIKByGx/Gcf+kbryyf/CRZvVwlJmv6tezJJDj
 Mg84ZJKFt0/ArvUoKOgfo4MOT8j4an+UHfALu4XvJx49PxD7TSEPPetCxrGAvDyalIz3hxOofP4OR
 nK3LHxfUDAzjytBYwV8Pwack0rM8bwJq5jjU8QZPdmU+9jkCDk7q+uHQTA6Jr+gQvxmRR8sb0FNry
 W8jv32cA==;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl81G-0005aH-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:40 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B9B15896D93109BC2DD5;
 Tue, 16 Jun 2020 17:36:23 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:13 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 11/12] KVM: arm64: Support disable hw dirty log after enable
Date: Tue, 16 Jun 2020 17:35:52 +0800
Message-ID: <20200616093553.27512-12-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
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

We should clear DBM bit of all PTEs and flush TLB, then sync dirty log,
which promise we won't miss any dirty status set by hardware.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 arch/arm64/kvm/arm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 92f0b40a30fa..76cab4c0b5a6 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -93,6 +93,12 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
 			r = -EINVAL;
 		} else {
 			r = 0;
+			if (kvm->arch.hw_dirty_log && !cap->args[0]) {
+				mutex_lock(&kvm->slots_lock);
+				kvm_mmu_clear_dbm_all(kvm);
+				kvm_mmu_sync_dirty_log_all(kvm);
+				mutex_unlock(&kvm->slots_lock);
+			}
 			kvm->arch.hw_dirty_log = cap->args[0];
 		}
 		break;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
