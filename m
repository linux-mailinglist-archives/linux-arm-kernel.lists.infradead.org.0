Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2C71C8CE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FhNytG1xZALrWmYBx3I5F8z+9RiBYOrcpe9dYMA+Zy8=; b=m4WFq7M3QomNsU
	n2Zvf90g/UUUuukK1DVZuE0O7eq0O8/MfmXxHFgdlSOBZrQOT9EK6hJujwJZZHJV8z3sgWY46ziNO
	EPr9NzHliYoBukR0e1gyCGgxbSlcknX1aC6ABo54rFSBq5duXcM2Hyn3HV+uNw4LNlVGfMqAOqDlK
	g9WzehEEhVcx/0Pjs+9Gvdo+dEwfNxGp2px8z1IGmzHqO4yRfwGKLPcQJa54+E8wP/3tsr6mSSZ1d
	zK45HtRPQYhrC75cbrqZDXDc10kxrDmxRa6tyUFBSGd8Jf6NLLKo2YnOUTOBzFEnzS4cTIR6AMfIM
	AniG39QYmz3bMtRXUB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgsB-0003au-57; Thu, 07 May 2020 13:47:35 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgs0-0003ZA-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:47:26 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1F1899D09F94E6F0C063;
 Thu,  7 May 2020 21:47:18 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 21:47:11 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ardb@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Sudeep Holla" <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
Date: Thu, 7 May 2020 21:41:08 +0800
Message-ID: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_064724_674438_A73C0D7C 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

As we already applied a workaround for the off-by-1 issue,
it's good to add extra message "applying workaround" to
make people less uneasy to see such message in the boot log.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---

Based on top of for-next/acpi branch of ARM64 repo

 drivers/acpi/arm64/iort.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index b011d25..f3d492a 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -328,7 +328,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		 * Otherwise, things are *really* broken, and we just disregard
 		 * duplicate matches entirely to retain compatibility.
 		 */
-		pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
+		pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x, applying workaround\n",
 		       map, rid_in);
 		if (rid_in != map->input_base)
 			return -ENXIO;
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
