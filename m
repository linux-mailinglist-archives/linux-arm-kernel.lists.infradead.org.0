Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2099E16F436
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XtsRq2X96AVnO5POKcgj6G6fbaeQbO39Ty0CZ6/n9w=; b=lITxuMTI9oVju0
	m6uIG6UneaDSefgzX2uC+puAs6FNciYW8BnY0Tu1KkprGpv+YMzGha5yfUC3nb9iU+gNIdZKPXLwB
	stQl0vxQf9jBcUUTqmZIsZcZdo/l8hVOCz43+LbzG8J2klPz39PDFeRXXKiOHVdFmej6vbn3OgpRh
	KEmSkDQmXqKnThfFLuwz127pKLiDpIVkWxEBO8aUE+oTcd+xhP/noSB9WCPmIfoxu5sz3FrivA803
	BoEGyiTV7opZPeGWFL1Suntz8ggPScMOalpIZ9KU2Fh3jbh2bt517X7IpSEY4rvcgbxGu2nqTYXp+
	v9XGOkCpgmozj+t7vBZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kVW-0001Yj-US; Wed, 26 Feb 2020 00:24:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kUt-0001CG-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582676658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xLS3Y9hDyx60/oXsMxVZGXYUWngEqsQwLyUpz8bQoGc=;
 b=KFp1jSzpwA99zImdy1VT07+dz1jY8I4OscgJTbafcb7DtRpYclV6Rmy+CZxHiYnY+/KoTS
 Fi4hdugFaLkE+8fdbud+s8vlr7E2BW49Zo4Qe0DcFMYOskRh6hzTFlQiYtjqpzGTfWjbyM
 fWY08pJaoGWodOqXqD3dJ+RtmXNAUJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-bGsfnqOSMsKitSdFQdIu4w-1; Tue, 25 Feb 2020 19:24:14 -0500
X-MC-Unique: bGsfnqOSMsKitSdFQdIu4w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5664F1857365;
 Wed, 26 Feb 2020 00:24:13 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-83.bne.redhat.com
 [10.64.54.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68FB55C21B;
 Wed, 26 Feb 2020 00:24:10 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/5] arm64: Rename cpu_read_ops() to init_cpu_ops()
Date: Wed, 26 Feb 2020 11:23:53 +1100
Message-Id: <20200226002356.86986-3-gshan@redhat.com>
In-Reply-To: <20200226002356.86986-1-gshan@redhat.com>
References: <20200226002356.86986-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162419_924335_EA3166BE 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 robin.murphy@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This renames cpu_read_ops() to init_cpu_ops() as the function it's only
called in initialization phase. Also, we will introduce get_cpu_ops() in
the subsequent patches, to retireve the CPU operation by the given CPU
index. The usage of cpu_read_ops() and get_cpu_ops() are difficult to be
distinguish from their names.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/cpu_ops.h | 6 +++---
 arch/arm64/kernel/cpu_ops.c      | 2 +-
 arch/arm64/kernel/setup.c        | 2 +-
 arch/arm64/kernel/smp.c          | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
index 86aabf1e0199..baa13b5db2ca 100644
--- a/arch/arm64/include/asm/cpu_ops.h
+++ b/arch/arm64/include/asm/cpu_ops.h
@@ -56,11 +56,11 @@ struct cpu_operations {
 };
 
 extern const struct cpu_operations *cpu_ops[NR_CPUS];
-int __init cpu_read_ops(int cpu);
+int __init init_cpu_ops(int cpu);
 
-static inline void __init cpu_read_bootcpu_ops(void)
+static inline void __init init_bootcpu_ops(void)
 {
-	cpu_read_ops(0);
+	init_cpu_ops(0);
 }
 
 #endif /* ifndef __ASM_CPU_OPS_H */
diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index 2082cfb1be86..a6c3c816b618 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -96,7 +96,7 @@ static const char *__init cpu_read_enable_method(int cpu)
 /*
  * Read a cpu's enable method and record it in cpu_ops.
  */
-int __init cpu_read_ops(int cpu)
+int __init init_cpu_ops(int cpu)
 {
 	const char *enable_method = cpu_read_enable_method(cpu);
 
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index a34890bf309f..f66bd260cce8 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -344,7 +344,7 @@ void __init setup_arch(char **cmdline_p)
 	else
 		psci_acpi_init();
 
-	cpu_read_bootcpu_ops();
+	init_bootcpu_ops();
 	smp_init_cpus();
 	smp_build_mpidr_hash();
 
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d4ed9a19d8fe..6f8477d7f3be 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -488,7 +488,7 @@ static bool __init is_mpidr_duplicate(unsigned int cpu, u64 hwid)
  */
 static int __init smp_cpu_setup(int cpu)
 {
-	if (cpu_read_ops(cpu))
+	if (init_cpu_ops(cpu))
 		return -ENODEV;
 
 	if (cpu_ops[cpu]->cpu_init(cpu))
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
