Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2AC1CC097
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jqKFpQnwcrbqMDSbbCKNaAtDQrlgNbeQn+xQDALKsJ8=; b=mh/Pj4X7Nnj7cQ
	VZigKv2ZAVEKfv809W6m8ZYkiePDkU7qNJrVbRvtxqN0QbUL3QPWPymzRhr1ene0VglI5gCDqOmpo
	VJhgGFhXJd27VnIpN/rKjWb6Cb3JbVTd2QoM8jk3gQ9c5gt5Hm0aPNOym2LF17lPQ/1We0hJkpptf
	9UWi1/EXuypUh/g11FclYjuc9hBW9NGJDtuWDVyvFQAIbg9rw7ZeI3cyLGPtyc37mmAkUc9McIAvC
	9AkT2dyS5Iuba+dR6TcNM88TVNpj6yRg5SpTkxw3sNbIrjl1JvBRhqfNgS5XK/v9Chzx8W4BYsfkX
	gxoS/yAyKw5iQxJ7ZeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNCT-0004oP-N3; Sat, 09 May 2020 10:59:21 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNCL-0004nh-SD
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:59:15 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B489AAF7CD71397F31CF;
 Sat,  9 May 2020 18:59:03 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 18:58:56 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: James Morse <james.morse@arm.com>
Subject: [PATCH] firmware: arm_sdei: Put the SDEI table after using it
Date: Sat, 9 May 2020 18:52:46 +0800
Message-ID: <1589021566-46373-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_035914_084977_41EB8663 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The acpi_get_table() should be coupled with acpi_put_table() if
the mapped table is not used for runtime after the initialization
to release the table mapping, put the SDEI table after using it.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 drivers/firmware/arm_sdei.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 334c8be..5c42757 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1113,6 +1113,7 @@ static bool __init sdei_present_acpi(void)
 	if (ACPI_FAILURE(status))
 		return false;
 
+	acpi_put_table(sdei_table_header);
 	pdev = platform_device_register_simple(sdei_driver.driver.name, 0, NULL,
 					       0);
 	if (IS_ERR(pdev))
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
