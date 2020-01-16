Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2715A13DBC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/jYEo17CoeuN59E2+cHxhhcO7fzdKilZGUxwBQ/kiA=; b=Oiy2pVI2xVtLVp
	Wy0+JYl8GF5mbes/U8/zLDUwNeIiE6j5aQhbYAZgtihTShXeKKiBlLELaTUP2Du343Kv2HWOwLiG6
	m9GtwbdPQGD+oszCqlPYgQ1y8UsekRl4btcgRItVdhbR1k5TLL08ch4DhOQkrnFRKNbJxoZXXrVd2
	QGJJesHpnI9T0vT9nYNZUtK1cWoI4DSV6WzPPISAOIHOaPCu+zjL8LK+CXpN99dT6EdHjuJNb1KtI
	MxC8Ife9slbrOZtBv3e+p2QViAMyDby8aFTqMmXiyj//hJoBTl61SnlG+zr0U0V4YgaCNwsf99t4A
	iTR9BuhqaM0mFkbtn5XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Bj-0008GX-Qr; Thu, 16 Jan 2020 13:27:55 +0000
Received: from mail-eopbgr680070.outbound.protection.outlook.com
 ([40.107.68.70] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5BC-000859-Fw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=liFzYMe39aQ428JHsfeR79hE50VP4CmHY31EMPNbaWUlPH1+b1oCZkfyXrV/Wq3ovuz1djndpIwnFeZXjDx36b/CjtjwRQjxHcfx71qQAaywJq1/3/B85LwSxx6IilytmGur7bF5tSH1+DDMy05LEIbPylLxt7xRmK5m/qCu7jq42aGIHGz3moiIIQK6V1fWRPvq4DWOFURAJD1gyyscCEOtvPvs1ygJnQWW0PSxpUt8pEnlkwEdkus78EhPANYXQiz6aeHnme0VOuS6E9F+KZj4xj4yvf1Of7zamIvd2QkIdr+jJ6pSKB0xzo/RpicRxKrDjW+1LEfsNHyjx1g7rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNPqEFkMSI7zbLxHQRO2idHizwtQ/8djBsSNlbSvwOw=;
 b=ELeMtTgyIJ9nvAEJ9FronIUlOAFL5WRFu8ktf66LNSdqUNd5iSFDs+S6zr7iU3Ez5m2Yn+d21wdtMIHcDI50OCRz8I9fnqH1yXwxmLVxqAX9pYm42fST4HaV2VrwOWVbQeORqUb5IR+YMGJK1KyBOvPFzZyAvqQEPd/McXQJ1qrQQ51qxbdaiL+LA1MZCOlUf4i8D5CiACcm6i6y6PyA4xm7pYyprpwKeSuzMHmxV4aqK14LK+e58gjHKlK8W0maVw+jj8/smIPJADrgLf8SAhizIvYYZ9bzq1iE0QUJWxMAxkCmjvvYrf/tzTbIWCTHAjsY3cWqNUjDnxOuvzOq5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNPqEFkMSI7zbLxHQRO2idHizwtQ/8djBsSNlbSvwOw=;
 b=FWdb8OyDfvIwUGnU7ODYIlJtZ+t8gyEx7K+FIfb5RWymmIGXpVqbzoYd7WS7ziMwWoS3cNtDrptQFeQizpAq0wulvtMiOm8OW7Ke5IdEArCyyWoVaBWJKWE7DvLywUAp1KVO3E3h8SVt1U0otyptcFS3cNce7VL479N2zqs8xII=
Received: from SN4PR0201CA0066.namprd02.prod.outlook.com
 (2603:10b6:803:20::28) by BY5PR02MB6019.namprd02.prod.outlook.com
 (2603:10b6:a03:1b0::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18; Thu, 16 Jan
 2020 13:27:19 +0000
Received: from CY1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by SN4PR0201CA0066.outlook.office365.com
 (2603:10b6:803:20::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.21 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT062.mail.protection.outlook.com (10.152.75.60) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Thu, 16 Jan 2020 13:27:18 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B8-0005vB-3E; Thu, 16 Jan 2020 05:27:18 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B2-0001BU-Va; Thu, 16 Jan 2020 05:27:13 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDR629015657; 
 Thu, 16 Jan 2020 05:27:06 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5Aw-00018J-8V; Thu, 16 Jan 2020 05:27:06 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 2/9] watchdog: of_xilinx_wdt: Used BIT macro
Date: Thu, 16 Jan 2020 18:56:50 +0530
Message-Id: <1579181217-31127-3-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(199004)(189003)(316002)(8676002)(8936002)(478600001)(81166006)(44832011)(26005)(6666004)(186003)(7696005)(36756003)(81156014)(356004)(70586007)(336012)(5660300002)(6636002)(70206006)(107886003)(9786002)(2906002)(4326008)(2616005)(426003)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6019; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6200dfeb-fe37-4b0d-5b90-08d79a87cf5f
X-MS-TrafficTypeDiagnostic: BY5PR02MB6019:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6019A994F313BE99F0DAC329AF360@BY5PR02MB6019.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:324;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mPbaHs4EqTAR9Hu3516MTYOeMgyY/jPNlzDddD11Xh82N1qnVQrwvP8TLPR3qm/R3YVWYVjLW8kD4SzBHzVkct/0hjF8XRujb31v13o4CjoxndJDIOBh5HZb1adegnDc5e8Z55YGSY9qiIXzYpUKgZQnVaoUN+/J8i3ozgI+08MqhjnHPqmrkW8Npj7ylSFX1jRNAdMqPlc878gkNr9VfBTag5mpuMQCZmfqwZNOtkUbzu64O79L3h5/Si/R6jSWfEtLJY0hsB3xq72cN4Hz3sFR9HalgUpXkbYH3OwhGwqbjQ0vFef7zUqa7GNHIs7CMF44P6jLBRiYbt9J/BOwxTiaKn1qEpeqnUjpWzKNyN6xFqKfQznnsGO1pgzpAngwYREgp0j2aGMccKI2PukMPSKU1044bOJAyphJx0w1cGEaWxUepKybcMmQTMPbkAmuq6fMT1QGNoa2Y4h72hqmMYhVruJRcqWz41i+DzU2rJA=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:18.5329 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6200dfeb-fe37-4b0d-5b90-08d79a87cf5f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052722_537492_7BF171A5 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Goud <srinivas.goud@xilinx.com>

Used BIT macro instead of mask value.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/watchdog/of_xilinx_wdt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
index 00549164b3d7..0d7df2370db7 100644
--- a/drivers/watchdog/of_xilinx_wdt.c
+++ b/drivers/watchdog/of_xilinx_wdt.c
@@ -24,12 +24,12 @@
 #define XWT_TBR_OFFSET      0x8 /* Timebase Register Offset */
 
 /* Control/Status Register Masks  */
-#define XWT_CSR0_WRS_MASK   0x00000008 /* Reset status */
-#define XWT_CSR0_WDS_MASK   0x00000004 /* Timer state  */
-#define XWT_CSR0_EWDT1_MASK 0x00000002 /* Enable bit 1 */
+#define XWT_CSR0_WRS_MASK	BIT(3) /* Reset status */
+#define XWT_CSR0_WDS_MASK	BIT(2) /* Timer state  */
+#define XWT_CSR0_EWDT1_MASK	BIT(1) /* Enable bit 1 */
 
 /* Control/Status Register 0/1 bits  */
-#define XWT_CSRX_EWDT2_MASK 0x00000001 /* Enable bit 2 */
+#define XWT_CSRX_EWDT2_MASK	BIT(0) /* Enable bit 2 */
 
 /* SelfTest constants */
 #define XWT_MAX_SELFTEST_LOOP_COUNT 0x00010000
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
