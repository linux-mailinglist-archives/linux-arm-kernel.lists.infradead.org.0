Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555BD59916
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLqFgiisvgISK3HaTbk00wZTJOpMd2+Yswo9Wk4E6PE=; b=hp0Hwns2HRWDRF
	2EEN8dC6nTbuJhd0b/eQ48c0lKgMkpwO/uAeYYl72nmUK7hTMt6LdUn6F/C6h6HYM6fd0zhFtBEdJ
	IxuOn9ctEMEtGBZ3rYSTtTa2/iAeOOdiJpJJQrCBolAOfpXF6af1TsYcpyRVh9PXkOQQV8c6Hp4xv
	zgSW7uBqXxgXOy2hQTNjgXm7VUgJOR/pERi3NmpMfrylHCLzlT3D4Nf2r9aAfsB+gSylPIraljKQo
	s33s6fzoisAhAnqBCV6eb1gc7ukqeEwdoYUea1Oul3+F6cgEFLwoZ1oIgXYVIAzCrg4R2mN5pryYc
	Ga6PXLXQVAiQlXFwH26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgos3-0007it-Lh; Fri, 28 Jun 2019 11:16:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgorN-0007Uo-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:16:07 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F423FB8F5F2F43676CB0;
 Fri, 28 Jun 2019 19:15:55 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Jun 2019 19:15:49 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
Subject: [PATCH RFC 1/3] ACPI / scan: evaluate _STA for processors declared
 via ASL Device statement
Date: Fri, 28 Jun 2019 19:13:10 +0800
Message-ID: <1561720392-45907-2-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_041606_041840_DAA50A31 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we scan all the acpi namespace node in
acpi_scan_init()->acpi_bus_scan(), we evaluate '_STA' method for processor
type node to determine whether the device is present. But processors can
also be declared via ASL Device statement. ACPI 6.3 spec specifically
says that the Processor statement is deprecated and a Device statement
should be used for processors. In that case, acpi_object_type is
ACPI_TYPE_DEVICE rather than ACPI_TYPE_PROCESSOR.

Current code doesn't evaluate '_STA' for nodes with ACPI_TYPE_DEVICE, and
the device status is set to 'present' as default. This patch get the
device status from '_STA' method for processors declared via ASL Device
statement if it does have a '_STA' method.

Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>

---
I am not sure if I should set 'type' as ACPI_BUS_TYPE_PROCESSOR rather than
ACPI_BUS_TYPE_DEVICE for processors declared via ASL Device statement.
---
 drivers/acpi/scan.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index e1b6231..ad50904 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -15,6 +15,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/platform_data/x86/apple.h>
 
+#include <acpi/processor.h>
 #include <asm/pgtable.h>
 
 #include "internal.h"
@@ -1691,6 +1692,7 @@ static int acpi_bus_type_and_status(acpi_handle handle, int *type,
 {
 	acpi_status status;
 	acpi_object_type acpi_type;
+	struct acpi_device_info *info;
 
 	status = acpi_get_type(handle, &acpi_type);
 	if (ACPI_FAILURE(status))
@@ -1703,6 +1705,16 @@ static int acpi_bus_type_and_status(acpi_handle handle, int *type,
 			return -ENODEV;
 
 		*type = ACPI_BUS_TYPE_DEVICE;
+
+		status = acpi_get_object_info(handle, &info);
+		if (ACPI_SUCCESS(status) && info->valid & ACPI_VALID_HID &&
+		    !strcmp(info->hardware_id.string,
+					ACPI_PROCESSOR_DEVICE_HID)) {
+			status = acpi_bus_get_status_handle(handle, sta);
+			if (ACPI_SUCCESS(status))
+				break;
+		}
+
 		/*
 		 * acpi_add_single_object updates this once we've an acpi_device
 		 * so that acpi_bus_get_status' quirk handling can be used.
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
