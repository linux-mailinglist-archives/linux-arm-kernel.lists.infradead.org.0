Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152442062
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmcTsOBYlyOhNuHx7Y0BEJVdElR4LnhranuCapPxvxI=; b=kr0qALXbwNx/4/
	CwVZK3rqYJplx00jQIBSaZJreFRbynQlazOuwclPGOuNHtR6YLfJ+F7hR1c83ChCS7N6NMBu72iqu
	JDQ4HuLqQL6FakNqsjXOx2TF6wYMXtUwFnwL+WGy3b0Z5kxVgjOo4E3o6AzxyX38eYVEna8tHmnvm
	jKOwEyWc55DgRsxWSHcGqefEkr2C6ew6KDjY+jj6CYsa9v37XI1qOmfH9GTR+UvG4DAVmcv3PUpjQ
	wSU83QX8hhNsG8wKrEyRZj6dWNlDlm+8ul+Kpdk5ncdTg9uevwtzDs8atZu3/WVC26zey+k3XSaWY
	zqU+y7TadR/LMyDWfPYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazLl-0001Ps-V6; Wed, 12 Jun 2019 09:15:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLR-0001C8-78
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:15:02 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0785F7029CD80C359046;
 Wed, 12 Jun 2019 17:11:51 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 12 Jun 2019 17:11:44 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-perf-users@vger.kernel.org>
Subject: [PATCH v1 1/5] KVM: arm/arm64: Remove kvm_mmio_emulate tracepoint
Date: Wed, 12 Jun 2019 09:08:42 +0000
Message-ID: <1560330526-15468-2-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021501_484070_C6F738A7 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, acme@kernel.org,
 linuxarm@huawei.com, acme@redhat.com, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 Zenghui Yu <yuzenghui@huawei.com>, namhyung@kernel.org, jolsa@redhat.com,
 xiexiangyou@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In current KVM/ARM code, no one will invoke trace_kvm_mmio_emulate().
Remove this TRACE_EVENT definition.

Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/trace.h | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
index 204d210..8b7dff2 100644
--- a/virt/kvm/arm/trace.h
+++ b/virt/kvm/arm/trace.h
@@ -114,27 +114,6 @@
 		  __entry->type, __entry->vcpu_idx, __entry->irq_num, __entry->level)
 );
 
-TRACE_EVENT(kvm_mmio_emulate,
-	TP_PROTO(unsigned long vcpu_pc, unsigned long instr,
-		 unsigned long cpsr),
-	TP_ARGS(vcpu_pc, instr, cpsr),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	vcpu_pc		)
-		__field(	unsigned long,	instr		)
-		__field(	unsigned long,	cpsr		)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc		= vcpu_pc;
-		__entry->instr			= instr;
-		__entry->cpsr			= cpsr;
-	),
-
-	TP_printk("Emulate MMIO at: 0x%08lx (instr: %08lx, cpsr: %08lx)",
-		  __entry->vcpu_pc, __entry->instr, __entry->cpsr)
-);
-
 TRACE_EVENT(kvm_unmap_hva_range,
 	TP_PROTO(unsigned long start, unsigned long end),
 	TP_ARGS(start, end),
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
