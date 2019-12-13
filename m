Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0D611EA4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Yq+UBtIAbONQC7ttUGBhuipJJB9vPUKzME1yhgeNLE=; b=kn1zdRyrC+E0v5
	6cCXsBO/6mvC1Z2CQE18EDNaXqWPCMwGRria8hmNZENhh28dWX5e1SFidP0wiKPw7ywmsqfee/KXg
	X6jZHdCrFSNftViYUYtG2Unwl5JAnZDZqD+GXg/4zVc1TkQEG5ByldapFJW/nKUwIv9vcfMgXE6cn
	WsYT2xeHOZbj+6BbiTnbqMfO5rBunN98Ps6/IzorKHCTe/7bvqj5JxdGnu9f80osz6i0rcJPCNLO5
	Z+dTX3SkDgiuYkbKxzQbehRjhjQwOP8vzIlis/Gu+V2zBcYTris8naELmUEwPAQ+QCZs4bqMtFnOB
	tUSrYpE5YUlcBzo08OqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpgg-0001Fv-Vg; Fri, 13 Dec 2019 18:29:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpfl-0000Zs-0H
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m7GXogmvRuTwfuJicGQ2Zyj36+IZresYnE8Bz7r3uTA=; b=tALDUqsOH7Rrz+g5LRlluJ+GvQ
 YySD44ivVu0UuBebOswwo3J5UYyQKmUMdHY9DoSlv4+lGsz/iSeFpbThOuMF+get36tP9FnaXUCP7
 f868eXmWg26ebvQbnFTED/aJpl7je1IygjgrUmS1VjknGx2J9uHdCJVQ18THK4ssSrRgvDis9ajty
 jESGPLJu6TLZolddYGT/9Jq2CniP7p6NS+MDlmCOuRyJ57ayFVCNch39LmJJZArFN5v1M6VnKSU9B
 4uRjsckw4hmbWM+t08IxCh3ybkDkeVDoautmuq6HZ8w0kZMIRvSos85kLRmwhZ6Zyh+Oox1SyGC0N
 OvHdw8EA==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpg8-0006IG-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:28:45 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdJ-0001O7-JV; Fri, 13 Dec 2019 19:25:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 7/7] KVM: arm/arm64: Elide CMOs when unmapping a range
Date: Fri, 13 Dec 2019 18:25:03 +0000
Message-Id: <20191213182503.14460-8-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213182503.14460-1-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_182840_542536_D0EC4360 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If userspace issues a munmap() on a set of pages, there is no
expectation that the pages are cleaned to the PoC. So let's
not do more work than strictly necessary, and set the magic
flag that avoids CMOs in this case.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index c55022dbac89..6749be33d822 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2056,7 +2056,13 @@ static int handle_hva_to_gpa(struct kvm *kvm,
 
 static int kvm_unmap_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
 {
-	unmap_stage2_range(kvm, gpa, size, 0);
+	struct mmu_notifier_range *range = data;
+	unsigned long flags = 0;
+
+	if (range->event == MMU_NOTIFY_UNMAP)
+		flags = KVM_UNMAP_ELIDE_CMO;
+
+	unmap_stage2_range(kvm, gpa, size, flags);
 	return 0;
 }
 
@@ -2067,7 +2073,7 @@ int kvm_unmap_hva_range(struct kvm *kvm, const struct mmu_notifier_range *range)
 
 	trace_kvm_unmap_hva_range(range->start, range->end);
 	handle_hva_to_gpa(kvm, range->start, range->end,
-			  &kvm_unmap_hva_handler, NULL);
+			  &kvm_unmap_hva_handler, (void *)range);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
