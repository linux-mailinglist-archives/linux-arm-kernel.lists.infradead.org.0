Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DFD1B451A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vBs5WLYPfEZIEo04YNLoQ5AdJ5K/eQOWUIw9nC8GrGo=; b=Kum
	ttuDZJiwO7unPYHmIO9svg0MKO5J0u2p9ZSbhu/bDkB85qBBon+3qXcZBQpVOzLCECDl8kJZ2epia
	eVqEd/e1bXSTw8Mn0S/cslWMgohBFlvTmOvG4gyeMa5qZ5AUuQbBq+L8bkJgmGcR8J3aqchfnYWey
	yKLqQIk/bXEn0IOPI3Nj349umNzre9oZecGMYl//xVpm0Z0l9laj760YPQAUtU1z+RnaQxT9XcK6C
	vZuB3ouhRSBgaelZYVtaeYM4MSsQBd2O2CRnmVyj+ybItQoU/fJgj0ylolpFIxjhewkyhTF9l/mHr
	+KYdVHTJ51h159aJuZIfZW6LErq344A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREUj-0004BF-Js; Wed, 22 Apr 2020 12:28:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREUY-00048w-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:28:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2F6431B;
 Wed, 22 Apr 2020 05:28:35 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3FA3D3F6CF;
 Wed, 22 Apr 2020 05:28:35 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	James Morse <james.morse@arm.com>
Subject: [PATCH] firmware: arm_sdei: Drop check for /firmware/ node and always
 register driver
Date: Wed, 22 Apr 2020 13:28:23 +0100
Message-Id: <20200422122823.1390-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_052839_000240_01C21B1A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As with most of the drivers, let us register this driver unconditionally
by dropping the checks for presence of firmware nodes(DT) or entries(ACPI).

Further, as mentioned in the commit acafce48b07b ("firmware: arm_sdei:
Fix DT platform device creation"), the core takes care of creation of
platform device when the appropriate device node is found and probe
is called accordingly.

Let us check only for the presence of ACPI firmware entry before creating
the platform device and flag warning if we fail.

Cc: James Morse <james.morse@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_sdei.c | 37 ++++++++++++-------------------------
 1 file changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 334c8be0c11f..5afd7409e6fa 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1079,26 +1079,9 @@ static struct platform_driver sdei_driver = {
 	.probe		= sdei_probe,
 };
 
-static bool __init sdei_present_dt(void)
-{
-	struct device_node *np, *fw_np;
-
-	fw_np = of_find_node_by_name(NULL, "firmware");
-	if (!fw_np)
-		return false;
-
-	np = of_find_matching_node(fw_np, sdei_of_match);
-	if (!np)
-		return false;
-	of_node_put(np);
-
-	return true;
-}
-
 static bool __init sdei_present_acpi(void)
 {
 	acpi_status status;
-	struct platform_device *pdev;
 	struct acpi_table_header *sdei_table_header;
 
 	if (acpi_disabled)
@@ -1113,20 +1096,24 @@ static bool __init sdei_present_acpi(void)
 	if (ACPI_FAILURE(status))
 		return false;
 
-	pdev = platform_device_register_simple(sdei_driver.driver.name, 0, NULL,
-					       0);
-	if (IS_ERR(pdev))
-		return false;
-
 	return true;
 }
 
 static int __init sdei_init(void)
 {
-	if (sdei_present_dt() || sdei_present_acpi())
-		platform_driver_register(&sdei_driver);
+	int ret = platform_driver_register(&sdei_driver);
 
-	return 0;
+	if (!ret && sdei_present_acpi()) {
+		struct platform_device *pdev;
+
+		pdev = platform_device_register_simple(sdei_driver.driver.name,
+						       0, NULL, 0);
+		if (IS_ERR(pdev))
+			pr_info("Failed to register ACPI:SDEI platform device %ld\n",
+				PTR_ERR(pdev));
+	}
+
+	return ret;
 }
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
