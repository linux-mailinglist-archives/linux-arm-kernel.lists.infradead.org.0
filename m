Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB6E18A8E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9+uqvT2Xux+4C80GMzf9UCkrHjny3TD4B42v7mPesM=; b=SyznRsUgXm8dMw
	G9B1eArs7EMwEDyjTV9WGumMe3QM3ImCeYbMVDqC6ch6D7kpgh+jTbPNYnntubJ3fjfCoFZ7vKStz
	3ayzZMYQR1Tm39UILmlPi941u+eGYxmwrlmIBgiBueiZ5++B5a+zdu9irGOTTahDllDrX1oh63x3B
	SsAlWoDJIlNgBmtoHUn/vGhTSQ07Iv9RhXNvWlUgyRymYEVC4sDOxb6Ak4odelmvBjxZ7igBoxD2K
	U7Ich0qxgOlbLwE2oRmIL5FaUIDaTx/mBacZRzUUhlpWFqBqSElGhhO3TmD8kwnR/s78qrMiVzD86
	JzAayPUN5cxQvvh5otPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhhp-00084D-T8; Wed, 18 Mar 2020 23:02:33 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhhN-0007wr-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584572524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dJUFkWnfWk58loeJb6TtjwrTLxm64oyRGxDoPnBl+Uc=;
 b=jA/pSHhOV+IlyLg7/eI09KZTYaNHVcvDsO5x/ll0nzaLobQSIYiOsnNyVoVWVE08u4y52y
 rgdhoztRjj9WkZ1iPFNfODYbWZzA4xrdw5yfJi+Twj8FOL8cCVK7FIYuAQiXwnYjVA3PAk
 Cmz7IkbAH1woWIufOMh0wphXguw1wlQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-i8gPVvj0OWWMxTgWPezKdw-1; Wed, 18 Mar 2020 19:02:00 -0400
X-MC-Unique: i8gPVvj0OWWMxTgWPezKdw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B4618017CC;
 Wed, 18 Mar 2020 23:01:58 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B23DE627D8;
 Wed, 18 Mar 2020 23:01:55 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/4] arm64: Declare ACPI parking protocol CPU operation if
 needed
Date: Thu, 19 Mar 2020 10:01:42 +1100
Message-Id: <20200318230145.72097-2-gshan@redhat.com>
In-Reply-To: <20200318230145.72097-1-gshan@redhat.com>
References: <20200318230145.72097-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_160205_964787_4A5B0FC8 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's obvious we needn't declare the corresponding CPU operation when
CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled, even it doesn't cause
any compiling warnings.

Signed-off-by: Gavin Shan <gshan@redhat.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/cpu_ops.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index 7e07072757af..2082cfb1be86 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -15,7 +15,9 @@
 #include <asm/smp_plat.h>
 
 extern const struct cpu_operations smp_spin_table_ops;
+#ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 extern const struct cpu_operations acpi_parking_protocol_ops;
+#endif
 extern const struct cpu_operations cpu_psci_ops;
 
 const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
