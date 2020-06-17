Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79BE1FCC7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To/D9vmONP2f2kePEBjaNIZLIKYnJLKfEBxUr91fkH8=; b=TECB/ahtdeExCJ
	7bDYfnr+e2Nr1sK3veYunK0XHiSm31+3dVnN2gaa7UBN4aTcjq8J9JAM63F64M2jp1dtJDGhDsIUh
	IKYYW8FekulRO6WtQr6CkRLtwVYk2GhYqycg0VprNVQbNLxmOPKBvjC/0O26PL8egx+aWVFEhrbyg
	fjdnuAm+Hl/z1Cy+jSWsgCZrLQsqls6Y7L4nz+BlW1I9uaF+IVVenYU8BE5Qynx2qD2YvYZBg0nsk
	uzQZWZUjQbgKRDFwaSSlU6HwYbSkFE5TcnYqralQ+mlA0Jeicc8RmXVcpJbLlUpjBzQv2ayhpnNGM
	GkUUtH1BvAgFjbAwHLMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWPm-0002Mr-RV; Wed, 17 Jun 2020 11:39:34 +0000
Received: from mail-bn8nam12on2060.outbound.protection.outlook.com
 ([40.107.237.60] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOA-00017p-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:37:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIRoYX4PPtSI3SvzPZD/Jfosq0UlNu0DsrrOIZrRzl/f4/ZKkoeCvcko/NfxVO22CvK0tbB1cOuQeO/WDCUtHmiw5cEja006ycVBniFdZTD5f8dBGjS77GSGRKYXtKtFrdKOm+AGrlsUhc3j5UtmtKD28SCaGP3Jbw2E2GDSONIXXh9ThwGWHPSQNacQA4nu1rmp5JAhduwVR5IeAVefrLa5FO6u4ggKnziS0S942Sfvt+g5Jxn95bVQ4MBUPTc5yCkjbkbQfJ6sl+mfpPwE5cP6zjichy/fCEdWV9kpfDQfTJNl4s4QLb9euLdEOV/jBthaAVsm8t8OXj9sDHXOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfCAluQT+BkcOujX1CojNyUo+PO4qbrtmhtOI76lcn8=;
 b=TYKeSNQZML9kGanp97g9bbpqXP+m2BoIkkv6umBu0qUtMob3Gbj6zm8aUnhtKO5QA74IUnQwvv0JPxZKvRfzXwVJaTwJHFNVLwgRhDzCo11LhKlkXF0u+ceU/oT7UXd1LyL5p9vgZOCO+nUCOit3f2fchWGENuyUmQBGV8xaotswY4CIGURAfciKsL/uUKez+23ZfyRX4B2+AwJIAc9TOEKFSxdPBM84ZpAxYiZiU1amNYZxSJztFr50sI9pS0eT2E0HtNz1anLv18LljNt7ryKgIjroPjcCvO5I/S1hldi5RIv4MxuTajwyjnXF0hZA5JUKonaSQX/Q6Zavqycopg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfCAluQT+BkcOujX1CojNyUo+PO4qbrtmhtOI76lcn8=;
 b=RmD0g3RrvK8lwczytfZQSnsuZaDOSkL5J3M19A7jGDzHiI3H7bwXvhEEwPyuiQclKTiffqXit93M21jqbg6oeiJWVc9TLfiXw3FjJg4q/KAOYQ6CBGERg+emASF9T54tGctf9caTPLM3bYyQOXi3vJM3tfTPM3FcwT7HNBntCP4=
Received: from SN4PR0501CA0093.namprd05.prod.outlook.com
 (2603:10b6:803:22::31) by BYAPR02MB5032.namprd02.prod.outlook.com
 (2603:10b6:a03:71::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.26; Wed, 17 Jun
 2020 11:37:50 +0000
Received: from SN1NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:22:cafe::a0) by SN4PR0501CA0093.outlook.office365.com
 (2603:10b6:803:22::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.11 via Frontend
 Transport; Wed, 17 Jun 2020 11:37:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT042.mail.protection.outlook.com (10.152.73.149) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:37:50
 +0000
Received: from [149.199.38.66] (port=36166 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWN3-0001I5-Gl; Wed, 17 Jun 2020 04:36:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWO5-0007aG-R6; Wed, 17 Jun 2020 04:37:49 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05HBbdGj032541; 
 Wed, 17 Jun 2020 04:37:39 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWNu-0007TR-PP; Wed, 17 Jun 2020 04:37:39 -0700
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
Subject: [PATCH V4 3/7] devicetree-binding: Add pmc gpio node
Date: Wed, 17 Jun 2020 17:07:23 +0530
Message-Id: <1592393847-1415-4-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39860400002)(136003)(46966005)(9786002)(26005)(316002)(336012)(44832011)(966005)(82310400002)(8676002)(70586007)(356005)(2906002)(8936002)(6666004)(70206006)(7696005)(107886003)(2616005)(5660300002)(186003)(4326008)(47076004)(82740400003)(81166007)(6636002)(478600001)(36756003)(83380400001)(426003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1aa2a848-40f9-4464-3f35-08d812b2dd6e
X-MS-TrafficTypeDiagnostic: BYAPR02MB5032:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5032D9A4F8F3604504A9379AAF9A0@BYAPR02MB5032.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jvxNgKTw5isnXs+neDWsJWiiUFOV+Vp0Inx2V4mHbLrBOdf3fSNMzHit8tiqS6MBZvBnrrOoIsQZ+wxXt1681y6MeAuol02Bz9LYJQP5v0t/SbDvoqg0Pmd55fv3ys3bIIrfFOy50ClbB3CPJUEAVtFmJ6d3Ty/8FvKPAitsTzeO2N0yc5/QxkCz82oAAmiVVsrJxG4nTe1mZqM1h/vM0cGAwpCwhptVw5KjefspTLxslSoD1A9BPQ+sGmQ/XTZAy6GDS65fyY98HxDKikjUNSAllAjwf+dVJTrVrd1+jIQ2P7RJHMHaHnZG9kTQbwwf70D1cxmlHtVlBxOyb8ENvDCtaF2IaqALbuOv8AvJ9ZNN9ZtDmAtFDBYqZqKh+RInd2ovTyZldoMgBQV+INi4J6A/JhZ0gkxX8l9/tI0w2ybzo5veF+Kb4RMarMdi/LvRKCr94lA1FoqBw0fLulYMKBk29iz3iExC13lbt5p1FQo=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:37:50.1293 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa2a848-40f9-4464-3f35-08d812b2dd6e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043754_719312_74C5D79F 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.60 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.60 listed in wl.mailspike.net]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add the pmc gpio node to the device tree.

Versal devices are the industry's first adaptive compute
acceleration platforms.
https://www.xilinx.com/support/documentation/data_sheets/ds950-versal-overview.pdf

On the Versal platform, we are using two customized GPIO controllers(IP)
which were used in Zynq/ZynqMp platform.
One of them present in the Platform Management Controller(PMC) block and
other in Processing System(PS) block.

In PMC_GPIO only Bank0,1,3 & 4 are enabled and in PS_GPIO only
Bank 0 & 3 are enabled.

You can find more details of GPIO IP in ZynqMP TRM General Purpose
I/O(Chapter-27).
https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 Documentation/devicetree/bindings/gpio/gpio-zynq.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
index 4806d846c0fc..f693e82b4c0f 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
@@ -8,6 +8,7 @@ Required properties:
 			    parameters (unused)
 - compatible		: Should be "xlnx,zynq-gpio-1.0" or
 			  "xlnx,zynqmp-gpio-1.0" or "xlnx,versal-gpio-1.0
+			  or "xlnx,pmc-gpio-1.0
 - clocks		: Clock specifier (see clock bindings for details)
 - gpio-controller	: Marks the device node as a GPIO controller.
 - interrupts		: Interrupt specifier (see interrupt bindings for
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
