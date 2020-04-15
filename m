Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E791AA1CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXlzuqjBbM4Ops99hVmEXvuwul7Q3FeEiPlDjuOE6d0=; b=VWDfq7anvxz01X
	C/3Sdm73BWdkOIFQ3opQon5qTd+NxcIP+dpZjN+f0qVHazjOquCI743mMGKgIQNsCOmhfc6hlqTXu
	LX9kt05g5sUAHNlbc49LImE2KjHH8Oy8SxUZpgnH+MOJN99naxkZ/LPHmvy17prhLVIyvHKFEgSc+
	FoA4RZakYZsEKYVELLPkCoVC7EpWk8PaVwIsWv2HIOHfpnve8e1EQRiOCTloYizIb/gyLAG+iP7qk
	lxErvgDP210sOyfccGCIsKvkHlPyUfX77B9/Ud3ZB3agKxtb/B7qqmev4IPZRVCHBLDHiwcVPl9na
	R9ewmFv0palNeq/6LEzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhUp-0004z7-1E; Wed, 15 Apr 2020 12:50:27 +0000
Received: from mail-vi1eur05on2060.outbound.protection.outlook.com
 ([40.107.21.60] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhTq-0003Nx-U9
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2WLHwCB5T0bDFKllTq8HNtTJW6dMdARXOpg0bYUhtv2+pZKiJRz0KnfN+tBr4EtddIBvYP5+qiu/Wfqr8ssmxNiTVRfnc8BYQGaFbd4eF6SKq4Kjoc2TAj810V1NAsofsSimLY+qMf+L1mGE4qtnWYoO0csgTd+nl0HDxR0blSP/HRfT7NldSPaFSCOA1+AL8TAXogBxnnopI3gTgWSxokwzbNaYpU72yA+TRwQZ6zySbndZNtHwo8Ad5hdO0edyK9365KPJ42cTJZUjPs2Yc1PTUrqGPPUXUPCWyCimWlGzJnsQarZdUxtRSyEZ99+wpzHa33Lu+ZtPp6x1evGPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DybavP3i85ng06H4iREbLPAYZErvJ8NosgtwtwVJi8M=;
 b=nKBLlEXLtKAQAOaUmAWJPyZ2Do0dyEUWGMqmgtapF/Y2od8PZ83DJi9btsCB4aEVdY2y8cLwXjzTpoi8DcUO/9ldQvimZZOMfCxa17nap2fuPZpvo/iKR4wB4IFHooWzusUaJEnH2CdO8I1mocEQ/gIVZtHCu0SiDgmMfbRfvB5J16i7Q9AKueoP18jg8JqQHQ8dDTJxICMOLY7H+FeP2dUmkzrUvAb0xDkS/U9xe1YhzmATIFXoC+1BJd5B+cHRV6TBmz4qAhUC3T7iU5U2t5DCjfZYJbG+vusDTTch8Xa92mjvgScxojCIMHZa5oNYwavHH9YzdkXVpDZSiB0ieA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DybavP3i85ng06H4iREbLPAYZErvJ8NosgtwtwVJi8M=;
 b=mlaRJqoAFpYpj44Fj3gTKp1xEKFtvsabuOlH8XY+0nFsInRGBv+Md785RSaGar1EOQapmRKszzuJ8TiiPWas1/xyEtPkahMHJ7rMktOPKILFwnLwhFPat4w1K0PATI2QkT3x0i4/5A3EoZwilLTIBKq8oNgUj1O+dly+IuAvO00=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 12:49:13 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 12:49:13 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V4 2/4] ARM: dts: imx7ulp: add pmc node
Date: Wed, 15 Apr 2020 20:40:47 +0800
Message-Id: <1586954449-17463-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR02CA0098.apcprd02.prod.outlook.com (2603:1096:4:92::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.17 via Frontend Transport; Wed, 15 Apr 2020 12:49:09 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b11ad848-cee1-42a5-72c9-08d7e13b662f
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:|DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2856D913D4142E1BEAE5E8B188DB0@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(6486002)(66946007)(26005)(186003)(52116002)(16526019)(6506007)(956004)(5660300002)(2616005)(6512007)(4326008)(6666004)(2906002)(316002)(8936002)(4744005)(69590400007)(66556008)(9686003)(36756003)(81156014)(8676002)(478600001)(86362001)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4U5DnITwbL1mIxHfSnppgs4n6E4FZDwXzfJjKUOkJPSBtv8nG/CqaVauQ2b8i4dNsgJVo9g5xgeFquCGjXxD27fh8k3IGMjIjuUW5tO5QUdRYvm9iInJDtPIQSJE7yW+dB15Xv0dg4P23tuirxU56co4i3H6TtqggmNrTqFvHQFtgYn3tQgElzrHUesB2OZVdGv072ojFX2uQ57bax8y91QVg1IXx+rGzZ5PTyMQT0j+NJaZ/sw4yOnxOmCgSLi6ZlpoZE6nK+dMDM/AdHomdV0ZS4fhf4IiQg6h/Hx3KxwxN3xP6LMaUeVw+Y1v1wF44DRAz/xgJaUmTVDjjkV9bgIW75hTaqTljivDu2hwAyz+uiLXOn+Ogxu7FbwwyAX0iYPJBRuAC/XnWFeWQH38+GNIWcbQByxXBSJhoaxB49fQHjFlTVUADs7TqxihxVQ1Dxi68F+fOKOFCI0zjgISaObxqvp8QjMZiJDjO20+FRtnXBP/CyGEv5Wmw+ERgpgA
X-MS-Exchange-AntiSpam-MessageData: KoJFaXDWfHCRACEADt8Y+GDklArtp18Or5LsbHuP6sNGxACQhfZldEt3kvrQLepErQ+RuBjAP2kurSc5I7MaI6KhUR4ee26O0AR0mEWHZbdeYzGWbUnUT2nLHvZdWdtsQUvNfgNsnHZFvWrLUqK9bQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b11ad848-cee1-42a5-72c9-08d7e13b662f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 12:49:13.3678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gGxWG+g88dKxgCzXtOo3P/yUqd3PyHaR4fT6HnZME8vi7LeCoJtqqpFP3kX8ZvUgtpzL+jS4BylvLcVNKpd/WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054927_111379_F548072A 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX7ULP pmc0/1 node

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index f7c4878534c8..bc9d692c0530 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -286,6 +286,11 @@
 			assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
 		};
 
+		pmc1: pmc1@40400000 {
+			compatible = "fsl,imx7ulp-pmc1";
+			reg = <0x40400000 0x1000>;
+		};
+
 		smc1: clock-controller@40410000 {
 			compatible = "fsl,imx7ulp-smc1";
 			reg = <0x40410000 0x1000>;
@@ -447,6 +452,11 @@
 		reg = <0x41080000 0x80000>;
 		ranges;
 
+		pmc0: pmc0@410a1000 {
+			compatible = "fsl,imx7ulp-pmc0";
+			reg = <0x410a1000 0x1000>;
+		};
+
 		sim: sim@410a3000 {
 			compatible = "fsl,imx7ulp-sim", "syscon";
 			reg = <0x410a3000 0x1000>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
