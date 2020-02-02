Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A129150000
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 00:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yROGqxELv/bfK/kCQ+at7moyOaEWNcFvQ1uphgzWPrw=; b=DyQ6G31B6gswZc
	yhaeLLCg8PCpF2jONrB1s2sihJ3jhha9V5z/0RYfNpdbEeO49ypfqgkNpMXO5VNMThnt2F+Rr45Q3
	/77yKFBfMhtNOgd/v30SpQOx5jp3n4wLeEThvHaeD6aLCRUpuBCfHT4OvPuAEYWF4cQJaYaU96h7Y
	DVboTv7cIaJxtRvzS/cuGj23feRofYoeQbdhaUbR+DvL5lrxRDOB+c9miwm7r641l9nb6k9vDe4uf
	4Wx8ZOYmL2M7E1Amw0QlEevJ6dz9aj7wV+1woffCTgt0yju3hyDKC2fvL5TATtacJhT+f0dJ1UJUK
	k2ZMV+dh1Ye+BMzPATgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyObs-0001dX-RQ; Sun, 02 Feb 2020 23:25:00 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyObk-0001cu-2A
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 23:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580685890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=J+coPInJKB/ZK83E2rv0xKYdopET9tZ0sSZsSRcXGHY=;
 b=eO7C/MnIkn8sscClrmAmLtqWjPgGhthtkKWchfWxNMzrORw9E1MxbnabYwLxHOgI0X302G
 XPrL8nyDGfRPaNPoEP/Oejc+rYJWp6Bcknc/X9XBKYRNKCmRoxBGRGzn0JcO/ZTXxMK5Iu
 TdXQRk4ytBqa4s9GiqtVyazxHLQhiYo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-KUcXm6ndNlqFBsCXqT3xVg-1; Sun, 02 Feb 2020 18:24:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 899D2107ACC9;
 Sun,  2 Feb 2020 23:24:47 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-57.bne.redhat.com
 [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 057E25C1D6;
 Sun,  2 Feb 2020 23:24:44 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] arm64: Declare ACPI parking protocol CPU operation if
 needed
Date: Mon,  3 Feb 2020 10:24:34 +1100
Message-Id: <20200202232437.7626-2-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: KUcXm6ndNlqFBsCXqT3xVg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_152452_212426_D70E92E9 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 will@kernel.org, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's obvious we needn't declare the corresponding CPU operation when
CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled.

Signed-off-by: Gavin Shan <gshan@redhat.com>
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
