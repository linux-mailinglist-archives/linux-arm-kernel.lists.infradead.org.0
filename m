Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA051CA1CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLPk86J7oxEmIn67pYD9m697rfLf0xKbCLmrEUv+cK0=; b=O6YJA7NXO1vcHR
	XzTVCDyTF0mXBhaKhqLQoYpkjSq8Thag4SUwVvSNQAvbKzhuljS6w+kq3ud1dQrDXrpVoFa3hNJVh
	rZ5zO/kVjqvi6Betj+GmMUWV1WgxLU4zxLF8C87VcZXzx/VZyFaJjTuNVpUzMagivYgDOxQsBNzkE
	cP5lwu14gonGVgwWnpJIQZ21HDkptoS/K4RkSuCPc8OJjLpoy+ppQX1I/HUTT8ri5RIAkzUv5Fo9T
	YrkLVXouQhsM7mIYKTSa7Y0a07B1g/sCy7ZFOupT11Lke/PbCfGdRnc6YpPMjTLfDZsx8F89Zi3/d
	8gBq5a0Ih6Xx0XmKZHJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuN4-0005eU-Hy; Fri, 08 May 2020 04:12:22 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuMx-0005dg-Ns
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:12:17 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7DA261CDD37E0367DED5;
 Fri,  8 May 2020 12:12:13 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 12:12:03 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>, Sudeep Holla <sudeep.holla@arm.com>, Will Deacon
 <will@kernel.org>
Subject: [PATCH 2/2] ACPI: IORT: Add comments for not calling acpi_put_table()
Date: Fri, 8 May 2020 12:05:53 +0800
Message-ID: <1588910753-18543-2-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1588910753-18543-1-git-send-email-guohanjun@huawei.com>
References: <1588910753-18543-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211215_930931_D82FBA89 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The iort_table will be used at runtime after acpi_iort_init(),
so add some comments to clarify this to make it less confusing.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 drivers/acpi/arm64/iort.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 6e445bc..619a3e5 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1667,6 +1667,10 @@ void __init acpi_iort_init(void)
 {
 	acpi_status status;
 
+	/* iort_table will be used at runtime after the iort init,
+	 * so we don't need to call acpi_put_table() to release
+	 * the IORT table mapping.
+	 */
 	status = acpi_get_table(ACPI_SIG_IORT, 0, &iort_table);
 	if (ACPI_FAILURE(status)) {
 		if (status != AE_NOT_FOUND) {
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
