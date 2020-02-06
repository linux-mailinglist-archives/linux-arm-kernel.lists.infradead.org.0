Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7BF154480
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MFtJmcIMmRqVST3YlUDnBHgsvmdK/8yt9wXYJUJZ2A=; b=OeSxgtu1IQuNMf
	wR+IqZxLg5ljXj9TSLqHN/wSs9r23x1zCNel/cDZMO2/+PYFd5u7j6516nrHNqPNIKETO451hIhhY
	URHIuR3W76gNW5sQlHVx/N633DjGPh/Xl1ucR9W6RBsqPSjFf9wcIZzk5KCLpdJc6zBemYKP/ru7Z
	/9+LIl12r2KhFZxJIfXDPT5iWeZU1ir018NWjJLJzSxYKEYEgvHDvYgpTGo9C3IIWQ8yEKCii2LPp
	vFJpiQ+xPypbay8TaR2+//SG1TQ6r1nnihw4+S9o/oarUaJYVVY7Kqi0ACHXX66pMNjnm5/CQjcZL
	51GzSnF4QVZvY+PZPPhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgqR-0002Kr-RW; Thu, 06 Feb 2020 13:05:23 +0000
Received: from mail-db8eur05on2063.outbound.protection.outlook.com
 ([40.107.20.63] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgpw-0001jo-VD
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:04:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gq1xnb4kN9r/D9rqfB7aBHsywJptSuvsXMjX2VRuaPkHAKQuKqNL1rgixBZV9iXBBaCB7G7QLUbIaiipkpiu8snLPcvhvGcOdrM8AhX/e8qrZlS8XISfpdBlLoDDw3XRXJCpOO5tBp8Z6xiO2iMCf2r/DspBmbWE1BGH2zNMPI8Q5WGrdWoERjFvSkPKAgDYOb3/TdcVuca/KnjRRPHaOKnkxbn7F/lMI5PLnQneQ+lN7kfnbkePYS8Y6Ley/N2OfEFSZJ4kSv5yUzy6KvFgvQ8d2Y294A4RoAq8s+s1aPWrhf4TclwcRL7864Jm/6oBOIyKpyKwgb8j5kzGLetI8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Z8z1cSIYcgQd/PvFzRA6l/PtF6FY1U/dzeHEd7uVeI=;
 b=eQ31ieFSSFNAzvgmcHbkUPiGU09DpZEmRQiZ9KbDi2PWVsk0cCltXRA7cmkdJGxl+J9sq8GbMwHjQGIzlGIJ9JGQGoiZAOycYheFAau7xUZ+cmAYIsvqHSkv3+0m2ervqtCn/pbjtCrFMUw6I6A9YkLTLu2O20tHJIuISBvcFs3ERaqffKS4X4sZTjVin2ZN9ESMI/FQMJC8aSekWHFteW0BepDF4nzCOLYNQuXJZoMPbNhO68RhoQzbUIYbGN4HRTMVwRFvD7N4vehMIxMrqaD3Xr0tR+gEv4ZM1S+WKNYHtO3+N9pnn8zyrUhIgEXvh9nUlIWLrb4pW5oe1mP9cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Z8z1cSIYcgQd/PvFzRA6l/PtF6FY1U/dzeHEd7uVeI=;
 b=PKgXIA6Vy0kIelsXyIRB0poDEHbhIbkqWiJ3F8tqrMl9W5nwcmN48RrkIAIXc9WqboVwsw+YpwCu4xDsJnYvAkqM5CbtlHJm3mJn/VJNfNEw6/x+ryZFz0CFEZScGT8wrHM0Vg1/gFNUBOj8BjK8D6PAeLfdUa6OCRagEp39vHs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Thu, 6 Feb 2020 13:04:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 13:04:45 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com
Subject: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Date: Thu,  6 Feb 2020 20:59:26 +0800
Message-Id: <1580993966-17757-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580993966-17757-1-git-send-email-peng.fan@nxp.com>
References: <1580993966-17757-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 13:04:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3a551167-aa34-4f4d-44ea-08d7ab052365
X-MS-TrafficTypeDiagnostic: AM0PR04MB4770:|AM0PR04MB4770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4770FF8BB9892DE3A05CDD9E881D0@AM0PR04MB4770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(136003)(376002)(189003)(199004)(86362001)(2616005)(956004)(36756003)(6486002)(6506007)(4326008)(6666004)(6512007)(9686003)(69590400006)(26005)(186003)(16526019)(2906002)(6916009)(66946007)(5660300002)(66476007)(52116002)(81166006)(81156014)(8676002)(8936002)(478600001)(316002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: //fOZncKUQCNUQblWstgrDUoB+sU/iwl/a1bxyb5qkHR5Je4rocEQqNLOpQaeZVAxsib99Tk57rGbXIoLeNR5Lpi8G01aN/sMsCb0KqfJjCZ87jMPknwzTlj/KSIrHjnLsKnD3pABvCYwUTojRKb0sQ10Z1TK7k8E8wuNEQ9G2wy3wD1PmYBV4dB1V/3cCYkFRMiCsMsU8vvRS25W7l2Ecz5P932WMoTlkz310gR9HFRaRxjvYeHrrLnfq7Dcw0OGcZr/ri7Bm+WF2oTeZ8NKvzy+XaQbcGK5FAab8Gvkx8goI+1zmivb+bGU7QnRUx4eqQpq2O7eb4ZaUu+rG31/bZE/9tL6KJGDrFgpp3zHK6sxeBqiiYk6LDXo4LkAflAw2Y4VKF9ZmW2HPd5qQqKNhqGNw9NZNLM/V7g8oe63y+mf9+KcOwQTZivja6sKNt6lnxRPKtU8ZKaauNyhrNGc64I2sFDRPw4z1TpespkNbksDoPXu7/D5tCJG69KExlcKEMjvOwpkgJkrMdNYKoqobyK5kQ8rNBGcz+I3fkV25M=
X-MS-Exchange-AntiSpam-MessageData: SCcyMChouHPPUaDqjpr1yc9VOxaaWRzuPwowkJfh0z+BbjygUiq36oMuphfZXrWZ/OPIIQvViiKU/jWR+aODG6VBN6kCFCOEezFHB8krEnpNW/PhwcrY7NDw/7k0Nym7DRs0o6XNdKKDIFjj1yGPtg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a551167-aa34-4f4d-44ea-08d7ab052365
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 13:04:45.5078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SDCCeHeWh02CJbV3vmf9QeK28Cgz0OnbPcoLelIGHfNVgECukldoTV4EonJFtVxxwogtrCK0cZngXSl0cGnCrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_050453_008754_EF340C5D 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, f.fainelli@gmail.com, viresh.kumar@linaro.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The firmware itself might not mark channel free, so let's explicitly 
mark it free when do initialization.

Also move struct scmi_shared_mem to common.h

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/arm_scmi/common.h  | 19 +++++++++++++++++--
 drivers/firmware/arm_scmi/mailbox.c |  2 ++
 drivers/firmware/arm_scmi/shmem.c   | 18 ------------------
 3 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index fd091a4ccbff..5df262a564a4 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -211,8 +211,23 @@ extern const struct scmi_desc scmi_mailbox_desc;
 void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
 void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
 
-/* shmem related declarations */
-struct scmi_shared_mem;
+/*
+ * SCMI specification requires all parameters, message headers, return
+ * arguments or any protocol data to be expressed in little endian
+ * format only.
+ */
+struct scmi_shared_mem {
+	__le32 reserved;
+	__le32 channel_status;
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
+	__le32 reserved1[2];
+	__le32 flags;
+#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
+	__le32 length;
+	__le32 msg_header;
+	u8 msg_payload[0];
+};
 
 void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
 		      struct scmi_xfer *xfer);
diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
index 68ed58e2a47a..2d34bf6e94e2 100644
--- a/drivers/firmware/arm_scmi/mailbox.c
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -104,6 +104,8 @@ static int mailbox_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 	cinfo->transport_info = smbox;
 	smbox->cinfo = cinfo;
 
+	iowrite32(BIT(0), &smbox->shmem->channel_status);
+
 	return 0;
 }
 
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
index 02c6c7540f42..c9e334654ba3 100644
--- a/drivers/firmware/arm_scmi/shmem.c
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -11,24 +11,6 @@
 
 #include "common.h"
 
-/*
- * SCMI specification requires all parameters, message headers, return
- * arguments or any protocol data to be expressed in little endian
- * format only.
- */
-struct scmi_shared_mem {
-	__le32 reserved;
-	__le32 channel_status;
-#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
-#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
-	__le32 reserved1[2];
-	__le32 flags;
-#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
-	__le32 length;
-	__le32 msg_header;
-	u8 msg_payload[0];
-};
-
 void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
 		      struct scmi_xfer *xfer)
 {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
