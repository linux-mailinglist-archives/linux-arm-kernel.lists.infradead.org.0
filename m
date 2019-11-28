Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4335F10C40E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 07:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m/LHkc38+ehhmtoYTwS3aO+w/CZF0qRPG/HtOHn07SU=; b=eMz+9BYXcgXIyh
	Xnww8NnBshILTW8afzXfdwCcl9K+VXTtagAwpcc4wbMO1rMTU+CrvohA4SksBKDfUDeulJluSPyAl
	P4Wo0CP7ITH3CYGi3N0lRUT1+QyQxJ5mIrvnL3raSTRtHN6/FkHWaiSj25BGUSblRLwB0wPzB6kaF
	sVQxGL5/B/7mL0ODyhXaP7YSn8Sj8PHue5/hlhDZps3sqhB1OljY+7QG+eOZsxCp8veCcyu1o7t2T
	Y88db/EWNbarAYF6/FOXRppt5FrW9yFZA09mACT7XM+9TH76pXQam0MtzLZgOvzuktJ8ATaO2uZBa
	lzWNAAJQV+MHnX7t/keQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaDSH-0006ml-Rw; Thu, 28 Nov 2019 06:39:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaDS9-0006lb-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 06:39:04 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 697B7D7E59EC32DF0DB2;
 Thu, 28 Nov 2019 14:38:53 +0800 (CST)
Received: from huawei.com (10.175.105.18) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 28 Nov 2019
 14:38:45 +0800
From: linmiaohe <linmiaohe@huawei.com>
To: <maz@kernel.org>, <pbonzini@redhat.com>, <rkrcmar@redhat.com>,
 <james.morse@arm.com>, <julien.thierry.kdev@gmail.com>,
 <suzuki.poulose@arm.com>, <christoffer.dall@arm.com>,
 <catalin.marinas@arm.com>, <eric.auger@redhat.com>,
 <gregkh@linuxfoundation.org>, <will@kernel.org>, <andre.przywara@arm.com>,
 <tglx@linutronix.de>
Subject: [PATCH] KVM: vgic: Fix potential double free dist->spis in
 __kvm_vgic_destroy()
Date: Thu, 28 Nov 2019 14:38:48 +0800
Message-ID: <1574923128-19956-1-git-send-email-linmiaohe@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.105.18]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_223901_697733_9DD5732F 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linmiaohe@huawei.com, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Miaohe Lin <linmiaohe@huawei.com>

In kvm_vgic_dist_init() called from kvm_vgic_map_resources(), if
dist->vgic_model is invalid, dist->spis will be freed without set
dist->spis = NULL. And in vgicv2 resources clean up path,
__kvm_vgic_destroy() will be called to free allocated resources.
And dist->spis will be freed again in clean up chain because we
forget to set dist->spis = NULL in kvm_vgic_dist_init() failed
path. So double free would happen.

Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
---
 virt/kvm/arm/vgic/vgic-init.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index 53e3969dfb52..c17c29beeb72 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -171,6 +171,7 @@ static int kvm_vgic_dist_init(struct kvm *kvm, unsigned int nr_spis)
 			break;
 		default:
 			kfree(dist->spis);
+			dist->spis = NULL;
 			return -EINVAL;
 		}
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
