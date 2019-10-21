Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD10DF18D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgGQJmin89/UTOqAqZ+KF4hq5xd459U+IZg1ZtCqsmk=; b=UOlPGiGMAzfr3H
	RGuzuozoyk8YXGWOtdTrqdZTAaslY5MmtncaINnAhf6GiUfx4PIvXh+irGwrgYU+jj0Er2UdiGol9
	wGH6kvw3SfnallpasimYw+utZ+/r1TdSTf/fzjQczR8ukU8KFBYZ04pP53ScwIqJntLw+pjYIG6nm
	i/5GjFlJ4kdEqGJ5Q141N8KTP/UDRd84Y8cu8C/4TJl7qIxt9ZeIcLG8zebrzCwrJJFRzOYmRThjN
	+ll/8wQzuJfli2oUR+NuENcB18X6Lpiux+P7WmNQKU1/hsNcfMdRSYkCLhS9+gXKKBGjoX6FhI1AJ
	FjtZqgETr15cQvy6Pl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZdU-00060L-QO; Mon, 21 Oct 2019 15:30:20 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZc8-0004OJ-K4
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:28:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33E641597;
 Mon, 21 Oct 2019 08:28:47 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15F343F71F;
 Mon, 21 Oct 2019 08:28:44 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v7 06/10] KVM: Allow kvm_device_ops to be const
Date: Mon, 21 Oct 2019 16:28:19 +0100
Message-Id: <20191021152823.14882-7-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021152823.14882-1-steven.price@arm.com>
References: <20191021152823.14882-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082856_766005_1D6ECFCD 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently a kvm_device_ops structure cannot be const without triggering
compiler warnings. However the structure doesn't need to be written to
and, by marking it const, it can be read-only in memory. Add some more
const keywords to allow this.

Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/kvm_host.h | 4 ++--
 virt/kvm/kvm_main.c      | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 9907e45f8875..7a26d5513471 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -1262,7 +1262,7 @@ extern unsigned int halt_poll_ns_grow_start;
 extern unsigned int halt_poll_ns_shrink;
 
 struct kvm_device {
-	struct kvm_device_ops *ops;
+	const struct kvm_device_ops *ops;
 	struct kvm *kvm;
 	void *private;
 	struct list_head vm_node;
@@ -1315,7 +1315,7 @@ struct kvm_device_ops {
 void kvm_device_get(struct kvm_device *dev);
 void kvm_device_put(struct kvm_device *dev);
 struct kvm_device *kvm_device_from_filp(struct file *filp);
-int kvm_register_device_ops(struct kvm_device_ops *ops, u32 type);
+int kvm_register_device_ops(const struct kvm_device_ops *ops, u32 type);
 void kvm_unregister_device_ops(u32 type);
 
 extern struct kvm_device_ops kvm_mpic_ops;
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index fd68fbe0a75d..66a977472a1c 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -3046,14 +3046,14 @@ struct kvm_device *kvm_device_from_filp(struct file *filp)
 	return filp->private_data;
 }
 
-static struct kvm_device_ops *kvm_device_ops_table[KVM_DEV_TYPE_MAX] = {
+static const struct kvm_device_ops *kvm_device_ops_table[KVM_DEV_TYPE_MAX] = {
 #ifdef CONFIG_KVM_MPIC
 	[KVM_DEV_TYPE_FSL_MPIC_20]	= &kvm_mpic_ops,
 	[KVM_DEV_TYPE_FSL_MPIC_42]	= &kvm_mpic_ops,
 #endif
 };
 
-int kvm_register_device_ops(struct kvm_device_ops *ops, u32 type)
+int kvm_register_device_ops(const struct kvm_device_ops *ops, u32 type)
 {
 	if (type >= ARRAY_SIZE(kvm_device_ops_table))
 		return -ENOSPC;
@@ -3074,7 +3074,7 @@ void kvm_unregister_device_ops(u32 type)
 static int kvm_ioctl_create_device(struct kvm *kvm,
 				   struct kvm_create_device *cd)
 {
-	struct kvm_device_ops *ops = NULL;
+	const struct kvm_device_ops *ops = NULL;
 	struct kvm_device *dev;
 	bool test = cd->flags & KVM_CREATE_DEVICE_TEST;
 	int type;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
