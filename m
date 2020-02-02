Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEB014FFF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 00:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f1DMM/LCurwzbuBkXcHAFuKXeO3lt4hiuuFYKi3OhBY=; b=qM5mcvvCoIQ4cL
	DmqXw8++L6JP8EN4DLAiymuIVLYQyfHOFiYdSrl67f45V1EpIP+NAsb6RPtT3d9aWEOpUIqAoY3mP
	Gd/upZIg/7SNyogYgBnn8OJmojfDSLxZI1IEVrTNskrN1KO2o4LxsOCQZpZEqjG81dBmLevW2fvfw
	8pMSu2S9tyTMyDDsijYZQ4jG/qB1ExBSc0RF8cUhHASdaJfFQcKKndYuSJqz+ZG233vdIJ6WJzXZC
	hhGwmF0xA4v8QH9jpy0a7Htm6pZTFVtN3gHyKRq0ezQ+Aq+3zahmVmXZTCUgbHF0Xt8cqzE94rvgX
	YiGeI7NQMnmtyx2Qan6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyOKH-0005gH-0Q; Sun, 02 Feb 2020 23:06:49 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyOKB-0005fn-72
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 23:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580684799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mQurqlWk85JcUw/kKLHqSeJsMdYCfsruOIngsMGfvFg=;
 b=aTJWVVJK3sOXCd10hKA18GpsRc2IlyFACwgd7SlosiS/U/mQDzPhuQNqPLRon2yLzo7RNf
 tfeWXxaKjTKoG8aPx+4RLOrJS+w7CRNbfIMG21QYXZHbtdsmJWu2rkZGlaCvnEJJUUnOZa
 tDvk7CUfm9NUQu5QCiQEtxlaGsf9QZQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-6aypAsNYO96ITAPB7Jh_SQ-1; Sun, 02 Feb 2020 18:06:35 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75224182B8EF;
 Sun,  2 Feb 2020 23:06:34 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-57.bne.redhat.com
 [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9CDCA87ECB;
 Sun,  2 Feb 2020 23:06:32 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drivers/firmware/psci: Hide ACPI state during initialization
Date: Mon,  3 Feb 2020 10:06:26 +1100
Message-Id: <20200202230626.6598-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 6aypAsNYO96ITAPB7Jh_SQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_150643_334615_EA92AB36 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Either psci_dt_init() or psci_acpi_init() s called depends on ACPI
enablement state, which isn't so nice. In this case, two functions
have to be exported from PSCI module.

This hides the ACPI enablement state insides PSCI module so that we
only need to export a function, to make the code a bit simplified.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/setup.c    |  7 +------
 drivers/firmware/psci/psci.c | 20 +++++++++++++++++---
 include/linux/psci.h         |  8 +++-----
 3 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index a34890bf309f..9fce20bec720 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -338,12 +338,7 @@ void __init setup_arch(char **cmdline_p)
 	request_standard_resources();
 
 	early_ioremap_reset();
-
-	if (acpi_disabled)
-		psci_dt_init();
-	else
-		psci_acpi_init();
-
+	psci_init();
 	cpu_read_bootcpu_ops();
 	smp_init_cpus();
 	smp_build_mpidr_hash();
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index b3b6c15e7b36..f2f5db35d896 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -557,7 +557,7 @@ static const struct of_device_id psci_of_match[] __initconst = {
 	{},
 };
 
-int __init psci_dt_init(void)
+static int __init psci_dt_init(void)
 {
 	struct device_node *np;
 	const struct of_device_id *matched_np;
@@ -581,7 +581,7 @@ int __init psci_dt_init(void)
  * We use PSCI 0.2+ when ACPI is deployed on ARM64 and it's
  * explicitly clarified in SBBR
  */
-int __init psci_acpi_init(void)
+static int __init psci_acpi_init(void)
 {
 	if (!acpi_psci_present()) {
 		pr_info("is not implemented in ACPI.\n");
@@ -597,4 +597,18 @@ int __init psci_acpi_init(void)
 
 	return psci_probe();
 }
-#endif
+
+#else
+static inline int psci_acpi_init(void)
+{
+	return 0;
+}
+#endif /* CONFIG_ACPI */
+
+int __init psci_init(void)
+{
+	if (acpi_disabled)
+		return psci_dt_init();
+
+	return psci_acpi_init();
+}
diff --git a/include/linux/psci.h b/include/linux/psci.h
index ebe0a881d13d..64af884a8d96 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -39,18 +39,16 @@ struct psci_operations {
 
 extern struct psci_operations psci_ops;
 
-#if defined(CONFIG_ARM_PSCI_FW)
-int __init psci_dt_init(void);
+#ifdef CONFIG_ARM_PSCI_FW
+int __init psci_init(void);
 #else
-static inline int psci_dt_init(void) { return 0; }
+static inline int psci_init(void) { return 0; }
 #endif
 
 #if defined(CONFIG_ARM_PSCI_FW) && defined(CONFIG_ACPI)
-int __init psci_acpi_init(void);
 bool __init acpi_psci_present(void);
 bool acpi_psci_use_hvc(void);
 #else
-static inline int psci_acpi_init(void) { return 0; }
 static inline bool acpi_psci_present(void) { return false; }
 static inline bool acpi_psci_use_hvc(void) {return false; }
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
