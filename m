Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F3C1DA860
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLsy9zHE/XJqo+2kEFetaowWCkoOUhK06Q8tSLsoTf4=; b=Z6MxfkQ8Bz6cjc
	u09QqSrfBqQvjRVCLbviyQXKn3ExKHYCB2TCWaGfT7oY2NbnCd9/B91xPvoqF9ATNbnk71GBF7wa4
	Ua+3Yp049AhxXWzVtQ0sKneT8l16+J9CaPftrnSytqIHO0HfoRb+hwDqZxe8vlhlH5+3OyWrlfKsZ
	N+ylWHRKUYlnl/UeSL1uVrqoDnctZqAmruv9PaIdbRuc3jOiPhjLPSBtHbmVOt8mLHV9mb+gnZTvJ
	iiJEnMqv1himK9vPgfrRRmqihxp5N1beUmrEKwPa5NPkkXuo4QozQDoCWjTvU4GoOQ1cbPerKoRKb
	ga7DxBCy7MwkKtoDK18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbExT-0006OE-3Q; Wed, 20 May 2020 02:59:51 +0000
Received: from mail-eopbgr10058.outbound.protection.outlook.com ([40.107.1.58]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEx5-0006Dt-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:59:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCQZXWiAC2encWoW6kEE3SSP7gXDApDczZLX16LeLLQGxTH+ktNR+NJl9Nio/EIbC2VY5wQcoiJMuph10LC01S8k9QtzhFCRmvt5qj7egBA9oL1n/xv8h/csnKDWst6tB1Tsl9kxKHTRgLLQu5tJWatO+Gn8/aQwBFSCkvY08lko3H62ccKzknC4qcBsorgMaGzBTspTWt6I1nXTc0gymg+JnbgMTOc59k8JgR72edB/0nLzgYxVAuyR+PLepD7MYzlX7bpTHpP82lmJN2Cbj0IpaBq8nNmFpREikYPQEz0RwlgslU63AnsLS5dRd+Mp24n7HTaMYhMWbYa7zGhpBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hl4S+04bc6DbOXLWVetB/25GFzyJXGpsiMIx/PI21XM=;
 b=T8VCIgQZIwcRWofV+cq8is5PWtqvbvWheMRn0d0IXdxDCEPYk++pL+cbhE24KQLOyH/FEkUP/a/grXUPRj6sAxhYx1PKelx1cgJkDnD/HqIQbbKz9EfofPOduwx+ODD//xqn/1xRPmSUj+gFSReyJLyXysdZGmrkOvbyP7GGJfr9CPQhz97ND8Ug5bEWLsDTyQn8K1z6j6OtQjli4p86Y7Ll7+C/rD9OIDMEz7WlAo0lJiNQF26r4Q+nJO26lhDMKybQo2FaQUuL0fuUXS9fY3CzZ1/crJMLYxPIcB6O7c68wF3jZbV3logllI4QBDMFhhEfbjYGFaoxU5eSTwWSgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hl4S+04bc6DbOXLWVetB/25GFzyJXGpsiMIx/PI21XM=;
 b=ZxaJmg9W/qFfLLTwA5ANbao1gGp8f2MCv/E/Dy4356k5tdy7o1LQaSyA4OhFTr603VA7Hv0LxIoFdaIuYxENG3eVJmBiEElPD5+A0X+1ydWWNxs8/YGWN2xYNlZyLV2GLWK1iuuJKEIFdkH7orjQ2+kqNeffNN2nkclQtYJlqCY=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6634.eurprd04.prod.outlook.com (2603:10a6:10:10e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 02:59:24 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 02:59:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH V2 1/3] bindings: perf: imx8_ddr: add identifier property
Date: Wed, 20 May 2020 10:56:17 +0800
Message-Id: <20200520025619.687-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520025619.687-1-qiangqing.zhang@nxp.com>
References: <20200520025619.687-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR01CA0142.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::22) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR01CA0142.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 02:59:21 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7e58eb3c-2529-4ac4-64d8-08d7fc69cd50
X-MS-TrafficTypeDiagnostic: DB8PR04MB6634:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB6634AFDB76EC7651A5EE1BBFE6B60@DB8PR04MB6634.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fnolzcD8rYeAh480wBF+Nb/FLvRc/5vprIIQVAtww3qPpJc5d8yUBJnGIcI4YJQ4ViLl4hR81Lv1jH2fTRWoZIZ2WlA4KEUMHd1UGG6RZiwrxbQI6jiZf6dxM2v/85ZHotorwu7xsj9GiUT+Ev5EV9Ew68ViCjrWRFTbtXGf9MTf1ISpg3lnAFbeosBMDWr7VBikWhAv3d/BtvcDHhEuy+fwj40Aq0uboCOvccOB72xJKiKIvhhD8dLYTqXDbX5KU0TqJ0AeYpvq1pBKTCRSAFQvS9QsIOckA+UQEH91nX6q7PueSYWb0xVytZ00S5A2ykJZO2KXJuf3luRVIuwsyguoOSP5WeMve/SQfBbtGCltHRTvD+D0/DLNMUGzVqbmu4vsWtiAMX0GCS5UZi9XSMbxnhTqceLqWV/YQEih17SCJmTKWk4L5XTEnvxchAwJcaAnzoU24eXdQSgxf7MvVbQvcZ+Z0BWa6h4BhKXRxxILn9hI87rO1EzViEKcsXRJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(8676002)(478600001)(2906002)(6486002)(956004)(4744005)(8936002)(6666004)(2616005)(36756003)(6506007)(16526019)(5660300002)(66556008)(66476007)(4326008)(26005)(66946007)(1076003)(6512007)(316002)(86362001)(69590400007)(186003)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: TOKpmF6pVbRqEgJelulXtGjXfHTYuRGK7JOniCEVR5aDCC0VHYXBwA4hWlnrldld7leDRXQTPPsMxLZbfomtN5Oz44FZlhO9qnH+fuTuE6gPTyW1c+jvzd6Zj0WD+7xO/bIAtI5lzDxjGj34FIQ1KG5YuYMIfA/mYe9VM/jAlLALjCYVFf25o4btP26BzoSywcwx7tLkLLUcFZz57Di1APxKFkEdVAimdfb3HtaKX1k8+4VJnj+X85CmaSmIU3U94GPwZZaFIbD6JnaohFpDDVfrmcQ4Vo2QApkh/ltzBxb9paXbPqDKQTzsHuPQrjJcWuQpEIYWHFNBJkjvfjeEVW0Tl/jtG92Smh1tSO/f3F3cG9xlqNcxFnDr6W0ZioeDCEMdU/C0qKjSgqH99Rfr1j5PPQGooEZ905tHHknKIL7989HL0OH/M52Qzep4HGrTlRJXwCx3e23WwAP6kV4ZfWLt8s3DhvUwsXbO6gaEVOQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e58eb3c-2529-4ac4-64d8-08d7fc69cd50
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:59:24.5565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h0DArtWeeOnI/M3bRpO0iRQHA+pQFnngKid0Vcv26MD24aeeko5DhGj1o9D9i83GflOmEfNZDAA8msG3hMiVyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195927_073895_C3CB2A1F 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.58 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "identifier" property for DDR Perf which used to identity system pmu.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
index 7822a806ea0a..ebb9a40094c5 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
@@ -12,6 +12,8 @@ Required properties:
 - interrupts: single interrupt
 	generated by the control block
 
+- identifier: identify system pmu
+
 Example:
 
 	ddr-pmu@5c020000 {
@@ -19,4 +21,5 @@ Example:
 		reg = <0x5c020000 0x10000>;
 		interrupt-parent = <&gic>;
 		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		identifier = "i.mx8mm";
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
