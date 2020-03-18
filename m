Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45ED1892E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aRQBTfWm80hs1Nef36Vv7la5R4RHKFQb9tRLf5xO+pw=; b=GzUAGboe30YpeN
	L7x/7O9JbgaKSatQIH7eCoTZP9TRc+X/kx8aXfRIYas+xW1LRC6DWzjaWx4jKGH0udX5L2kCKfqS0
	toUmzfh6SRztV1ohxyYSpxKYL57pegil/8Aw5FlBHi5mYj6qbHsoonURKKCgrEgT6uIOFkf2pPfP6
	gmwfSaL6uSkZxFXXbX4x9AmDklor6XzAKDAWjJDryF5khXCqD2bFLea4D2cBo20m4p0FY97bVDwQX
	/GTq/KgNPZgbRcaILa5UXWZx21r8rBrQictMF06NTzOozvf0ANA7cw0NLTTf++WZQgJcPG6DHh4sc
	Anh7CFtC65qM1uE9V03Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMYJ-00084a-8K; Wed, 18 Mar 2020 00:27:19 +0000
Received: from mail-eopbgr770092.outbound.protection.outlook.com
 ([40.107.77.92] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMYB-00083g-Mt
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:27:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0Drd8JKgsw7B9QoP2hijJTnVo9tWRXRMmGMLsIm0YKFr+FXH37DuHcSx/t9BfTgI8aaNq0yns3C1GZAy2iTaEnYOtKLp0zBiBeCb+QaQcJSnvtZGAhbWBZpqWNXltEzWFUv6Df0d3OJW6tKkAyQ8FGTwF0Nef+9HMC1IWiD5tumpQs7SrcVVgqYIDhPx54SaMRAiaPLu4MtooFSboYX11oZk8CkoeFXtmh22XIhqNM+9bjJ1cGQ7aO67YQK7vUYWfvrvxs1EmE3d7sc6NbroHcGLeAXppZkxEvhzpwMAVEx6s8wKcsnktVD9zhHiVqJOB2J59tjA/YAJECsdmuqEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5WsIjoykrLE9Q/cz4sELP6Y7dOKs5qTZE23AAvhhKx4=;
 b=GaMGO2S3y1Ymrr8JTKgrGRCzirWZsa5p6nbaKwlUZWg9FvEc279g/OtkJvevoiAwHmyT6cedspmVfs9QmiuCsbmX/byqro1B7qaG5ab6+X//9SEQcZIeL5CsLpaOrd5SEzV8fln1nJcrrQ6Ho+nit0AiIzWHokPiS/pKB3qhBXyp7nPOZtZDcfAbQTjna2dyLT7z6iLOI7usNVNBUlA8cf1273esCazvaCdIzE+bNMaGUoXCkvrLGYQhfS4hDLLVsusvio8+WuHZSQ3ea0c8vZ8T8g5VF/EiwwX0fQsLFapSHxxzEjlgv9N+M6Q1LLUCWHCYOIhYASHumSMJ7vH7Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5WsIjoykrLE9Q/cz4sELP6Y7dOKs5qTZE23AAvhhKx4=;
 b=ZF1wbRC9pns6YjDDffJlfWGJUuEdYx8kA8R8kC3Z3UaH4zkOlNyggMr3Ps/fwyKGSmu3DC288bpAwlJKk/wSLT+SVjanVPpjhNv4Mv6eD9ledsYk88++fFDo0rQw/KCMhizS0/P1VE7tZdppNFOuLNmTibSzqnjxuLk/VU7fQxY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=tuanphan@os.amperecomputing.com; 
Received: from MWHPR01MB2317.prod.exchangelabs.com (2603:10b6:300:28::16) by
 MWHPR01MB3232.prod.exchangelabs.com (2603:10b6:300:fc::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Wed, 18 Mar 2020 00:27:05 +0000
Received: from MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c]) by MWHPR01MB2317.prod.exchangelabs.com
 ([fe80::5151:bb2b:8ed2:b53c%12]) with mapi id 15.20.2814.021; Wed, 18 Mar
 2020 00:27:05 +0000
From: Tuan Phan <tuanphan@os.amperecomputing.com>
To: 
Subject: [PATCH 1/2] perf: dsu: Allow multiple devices share same IRQ.
Date: Tue, 17 Mar 2020 17:26:15 -0700
Message-Id: <1584491176-31358-1-git-send-email-tuanphan@os.amperecomputing.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: BYAPR07CA0089.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::30) To MWHPR01MB2317.prod.exchangelabs.com
 (2603:10b6:300:28::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from aptiov-dev-Latitude-E7470.amperecomputing.com (4.28.12.214) by
 BYAPR07CA0089.namprd07.prod.outlook.com (2603:10b6:a03:12b::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2814.21 via Frontend
 Transport; Wed, 18 Mar 2020 00:27:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8920fc1e-25f9-44ff-2dc2-08d7cad31554
X-MS-TrafficTypeDiagnostic: MWHPR01MB3232:|MWHPR01MB3232:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB32327D82E9F3062B7857E025E0F70@MWHPR01MB3232.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:538;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(396003)(136003)(346002)(376002)(199004)(478600001)(8936002)(316002)(16526019)(52116002)(6666004)(186003)(81156014)(54906003)(81166006)(8676002)(26005)(6506007)(66556008)(66476007)(86362001)(66946007)(956004)(2616005)(4744005)(6486002)(5660300002)(2906002)(6512007)(109986005)(4326008)(266003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR01MB3232;
 H:MWHPR01MB2317.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0PirM2wqn83jBczku1fbRYeGu0QAAcV8I5JM59LiFld+JxfV20G3EkHG26ob0L2eTMYv0hhoGdtH6h9VUHoARCsSC8AHQ+uaPLQPvf0K3+FMPSkIzVcUFkuxT/XPjzpSpEOUJVZTSa+IAPNVFnWiineWi6UPKyogXyJmoEY66Ucw9wWSUfIGUzJfk1rjKwft7seuBz3Ov2N9lNkfuHQs9YvHVqQJlcb6SO2GYyq0IakYY6F1jTKd3PXnN63qtk24i1lCemuRE2DUW2maoFwxvQGCI28sy0zO+y1j77Q/zIAqzHiWNpEzPWf08okS05o69iWwTw/njjdlUSFSwDgggrMuCkx4GdUvXTTenQV+r5OPYPfhbEiFqW7V5LYxWyAn3fElwqTQTKh20moJGCS5mpilkrD2Yic5/ZWTjsEsXCHkp8fr9R21ml8iSIeuHaWhhDZRXiqjwsMzqRLEza9EXE6ZqGsX0midzRjvuUBwOC0=
X-MS-Exchange-AntiSpam-MessageData: jLSd6nK3ynuETQGFn+p2GVnfRkEoq/AlD7xAf2EzaKWf9f8XzQWNFc9vJZJP04SkmdjTD/MrQqiV30s6X8cZxO89segWNUGhMCZt7IiHh/+35hHizC2ckGKVT3USvXe19lXB4fkgp7sa12+IIp2wWw==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8920fc1e-25f9-44ff-2dc2-08d7cad31554
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 00:27:04.6700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UOak2g+KCMsaepcmDdBrAhX9RvYZIrY1p8G/5DmWTBtwHE+06+uYdNkj2V3lsDzaHah9JtS2S0Fkh+PDKn2slceNyRqfaBuZog+YYHL1ggwy3wudufmGQgEypZpw3E2n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_172711_807144_7ED5D8D1 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.92 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IRQF_SHARED flag when register IRQ such that multiple dsu
devices can share same IRQ.

Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
---
 drivers/perf/arm_dsu_pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
index 70968c8..2622900 100644
--- a/drivers/perf/arm_dsu_pmu.c
+++ b/drivers/perf/arm_dsu_pmu.c
@@ -700,7 +700,7 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
 	if (!name)
 		return -ENOMEM;
 	rc = devm_request_irq(&pdev->dev, irq, dsu_pmu_handle_irq,
-			      IRQF_NOBALANCING, name, dsu_pmu);
+			      IRQF_NOBALANCING | IRQF_SHARED, name, dsu_pmu);
 	if (rc) {
 		dev_warn(&pdev->dev, "Failed to request IRQ %d\n", irq);
 		return rc;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
