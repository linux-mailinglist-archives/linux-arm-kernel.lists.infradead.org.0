Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269791BD833
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbEVcgF2fqxsX4S9ItQrnagjA0fl2klsnOhh+qsOwg4=; b=tacqvhaWxiLO/m
	2AiJshZaIeniq09qAlx9KkSz4XQR+VADxBjMIUpg8WLxbexX7aYIXXtvi6RjCwDWnZUK+ScPUZvvc
	dxK05yC7CLBYy/nGUmbx0f75fgbgxrdoh3KTpt66Akr/3eL2X/AXeleebK1ASphhzNxB6A035MBCE
	NzRohPdAkiTuXEC/2HVcO8SpWaGyFyBVy8GQuzyg2lIt/ruM22MRIuKmoGR4f+LymmNZ38dQzF0MB
	qpxhnn8Mb03ieug2TA9CxUACetsZnN0v8Bm/oGtPzTwerJGe/Y72aX9rwl3VJ/WqIQ0BMm9QcB4MV
	0Fm8ccp1f/RDujIBQn4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTizs-0007W1-HR; Wed, 29 Apr 2020 09:27:16 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTizA-0006xn-Tr
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:26:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/jAyzMGUe4EvUkkeQC8iLS33O+KYoIKCOCYzDl5wno5G9LMpB45lzXWIlRoj3Qoxl4f/0ynQFXa5clF0ieqwdL/IEg+rdn5mwPXQhvN7QBKhMFdQ4U3OWZIwnGmFqzSgGYdkLeFQ6L7sPEsDMEhO6U0q1h8kIOgij1Bn6zpVByH91dwsVfweEkHKYJ3KTw5hkHybjUOfPJtNlmSeoxzAa2rQe5gE5GNY8f8+sb+2v5fSJNiggl4pZdV5fWbwcGl+mjhoyn1JMIpp5ja8RKezVbJrpoYqBV4FM2j7bmYtGuMMXLyqrjrSCBbh+vPPK9thDL7zjDTojQ+qt7IqFcVFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0CMnX4vMzPYzS9g30+XGH16lJIrzgO4jK1RlzhTYEw=;
 b=ISVR4pg7fqXCJjYWBeK9FyHSWzT7XzBsSM08Tifj/cdXkDru4PYlJYIcR9xAL8D6IEUaj/B/Pl8J+QmQB4R1/xIIyUDylh9bTvF7wmf9VFnfAGQ3Mwppat+fMyjjuYxKZp+UdSUHQbHNbpSbdVU9GIom0G9SSB2ENKfhCRM5W6FHV1IQ/ZDH71EHVYI+EsULkPThf2hn1mzmtza0+w9A0nqSjOcYg13EXF3kaltMmBndg2o5mASvukfW3+2LTp2cpGcR44qcOOtt2FkrUEiiDY6FyTvH7S8rqwwXXf9CKlxjA9GVjD9anC0qiHdvLR8GzzbKQjHWquxa8Si4N+6/+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0CMnX4vMzPYzS9g30+XGH16lJIrzgO4jK1RlzhTYEw=;
 b=Ay4DoxoIOaCKLK2wqFc2liW7kfoC501VSX9gEHuEqkd4vNkZzvOM+9ZdlQQCAokskwBRpi6jBMFwtBl1V+lJ9lUI6GoWLcDvr/P2jz8IFagn0FFjeoQF42hY0XrnHDVeDCKrb8uM7+YLVtqjUktQjc1yYXyZYK6KLR+EZMIjeyE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2694.eurprd04.prod.outlook.com (2603:10a6:4:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 09:26:30 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 09:26:30 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V2 2/3] ARM: imx: move cpu definitions into a header
Date: Wed, 29 Apr 2020 17:17:22 +0800
Message-Id: <1588151843-2133-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
References: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0165.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::21) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0165.apcprd01.prod.exchangelabs.com (2603:1096:4:28::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.19 via Frontend
 Transport; Wed, 29 Apr 2020 09:26:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 291053bd-8a1d-4cae-7115-08d7ec1f663e
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2694:|DB6PR0402MB2694:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB26944631F242EC0CD47B8CDD88AD0@DB6PR0402MB2694.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(956004)(2616005)(6666004)(8676002)(4326008)(86362001)(6506007)(69590400007)(5660300002)(66556008)(16526019)(66476007)(186003)(36756003)(52116002)(66946007)(9686003)(6486002)(6512007)(8936002)(478600001)(316002)(7416002)(2906002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y5B8w7I31HlI+fJoFbS+CDmcCqBIQpfBtus4GFwGwmWEaGeTXKKoKWWwXtER0V1gWsyiTUrVHMBegM/7rWpak6dpmf1FPDeS4c3dLYN8GJACgLQc5LqTXNHRtJDGBMJaM1jI6yT0YlBN5dGm4mtlS+cSeiJnfxJjnRhYxJUn1UpO+dkYQLnAwN6O7j/85iC3K+uTyWoFBYuWIVsJ86QR2YS7LyUBfbGmtEKhmBfleeKKVE/0UlOSXfsgPtyAxHh3PmNUSgxr1KWPW+gHYQZWqXwMgxu7HJA37dhMC5JUbFMN9joEv+NWBgJxyZ69iw5uadBqBtep9Q8FEVyWDYNn6rGrzIdu1JltNb1qlIDzu3SAL8J5LMu2vEWWmL1mE/MLlWdqptw2NoexUbg5CBL2mAwYJXboanjScKnaKryadpyshxYmyU038R+WdzH0HN1jMjd4ndpBpS8ZdZgpDX6oNFL0c6pccQnUnw98qFye+W+fGv14d783s+6ZdLKlfC6q
X-MS-Exchange-AntiSpam-MessageData: QdnRhlvzMFql97MxSmw5xu/j9ljW1a/7aFWvIoihjZZtysaw1fnhBKirG15xZk7dUKtudwyhv514QfxDscG/Bovrx/qv15/lojRt3oRTuretkHjhMgGb2dAeJNhpoI2C0knYNW9+pTmse0Ju7Rp4R/Wmsqa0N45xLFjGAhHR9+WpbHo5oTGqSqNvbE5U2uE2KavnNoBrdBQsDt8FNqHng7HcC9n8/0t8G/hJvxVcJzYmphubCvDDZePGBjv//E7aRbQzlf+JfXz+XW0Ujo4oPU2aIDgre7QRNDYacK8loFwUd4Q5g4OjW5SkQp7XQQPZpVO8XaTvSheOuDazzMoGVx6bBs26GNjdropYb1/cO0dUOkpA3BEbSR+YdL1MTIWoXGd/sbAWbWQG0lkboOioUOyMlevCjqPVLibcg2vGwvu4AEfHp/a6VnV8ikw9MdSSQAT9v5hpoAqR13WMEt9ybXKq8wJGNwxn7zrDl978mazvbFLqJXk6/4YfpmlcieGOSkevtMcC56ounXdM60uobswzZZHpIKLa+nAoBiiv48UALM95bY8XVi4i7cSTcaryRnstCzOttqRpdmbk4CQ7QEuLkk6XWTVa7+/znBWrj1zDCALSSt4tm0XrhI7520zLIyX+HegIp719k2s7DNXfOkikEzVsHyV05OyNycNE3sUQT8/DXTp12EeXoQH001Z3fXrAP7fKN33ckuWzn0Ht2qnBeBLlVTwVlvKZWPbrtsZzFLgoGsC0FRQH0xqkgaMJvnjt1bAfav7UHE60F5hCOqhvSp8IWIOUqkZU+RCXsPQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 291053bd-8a1d-4cae-7115-08d7ec1f663e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 09:26:30.1963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JIQAdCie+ZCAyHtrGUQ1pm5fLe/U4Za7VNFG4mSvkstiGZ1OOV1gnineDXrVYnOmNzGhZiIEOQFXsp0x3nb0mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2694
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_022633_013762_009B5FB9 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc device register code will be moved to drivers/soc/imx/,
the code needs the cpu type definitions. So let's move the cpu
type definitions to a header.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/mxc.h | 22 +---------------------
 include/soc/imx/cpu.h   | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 21 deletions(-)
 create mode 100644 include/soc/imx/cpu.h

diff --git a/arch/arm/mach-imx/mxc.h b/arch/arm/mach-imx/mxc.h
index 2bfd2d59b4a6..fe2d0f5abfcc 100644
--- a/arch/arm/mach-imx/mxc.h
+++ b/arch/arm/mach-imx/mxc.h
@@ -8,35 +8,15 @@
 #define __ASM_ARCH_MXC_H__
 
 #include <linux/types.h>
+#include <soc/imx/cpu.h>
 
 #ifndef __ASM_ARCH_MXC_HARDWARE_H__
 #error "Do not include directly."
 #endif
 
-#define MXC_CPU_MX1		1
-#define MXC_CPU_MX21		21
-#define MXC_CPU_MX25		25
-#define MXC_CPU_MX27		27
-#define MXC_CPU_MX31		31
-#define MXC_CPU_MX35		35
-#define MXC_CPU_MX51		51
-#define MXC_CPU_MX53		53
-#define MXC_CPU_IMX6SL		0x60
-#define MXC_CPU_IMX6DL		0x61
-#define MXC_CPU_IMX6SX		0x62
-#define MXC_CPU_IMX6Q		0x63
-#define MXC_CPU_IMX6UL		0x64
-#define MXC_CPU_IMX6ULL		0x65
-/* virtual cpu id for i.mx6ulz */
-#define MXC_CPU_IMX6ULZ		0x6b
-#define MXC_CPU_IMX6SLL		0x67
-#define MXC_CPU_IMX7D		0x72
-#define MXC_CPU_IMX7ULP		0xff
-
 #define IMX_DDR_TYPE_LPDDR2		1
 
 #ifndef __ASSEMBLY__
-extern unsigned int __mxc_cpu_type;
 
 #ifdef CONFIG_SOC_IMX6SL
 static inline bool cpu_is_imx6sl(void)
diff --git a/include/soc/imx/cpu.h b/include/soc/imx/cpu.h
new file mode 100644
index 000000000000..0669fc08a501
--- /dev/null
+++ b/include/soc/imx/cpu.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __IMX_CPU_H__
+#define __IMX_CPU_H__
+
+#define MXC_CPU_MX1		1
+#define MXC_CPU_MX21		21
+#define MXC_CPU_MX25		25
+#define MXC_CPU_MX27		27
+#define MXC_CPU_MX31		31
+#define MXC_CPU_MX35		35
+#define MXC_CPU_MX51		51
+#define MXC_CPU_MX53		53
+#define MXC_CPU_IMX6SL		0x60
+#define MXC_CPU_IMX6DL		0x61
+#define MXC_CPU_IMX6SX		0x62
+#define MXC_CPU_IMX6Q		0x63
+#define MXC_CPU_IMX6UL		0x64
+#define MXC_CPU_IMX6ULL		0x65
+/* virtual cpu id for i.mx6ulz */
+#define MXC_CPU_IMX6ULZ		0x6b
+#define MXC_CPU_IMX6SLL		0x67
+#define MXC_CPU_IMX7D		0x72
+#define MXC_CPU_IMX7ULP		0xff
+
+#ifndef __ASSEMBLY__
+extern unsigned int __mxc_cpu_type;
+#endif
+
+#endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
