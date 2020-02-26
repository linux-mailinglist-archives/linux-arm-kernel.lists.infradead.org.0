Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056416F875
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKWH0lB/MbhYcQP+dngWGhwlLEmag4fIqLAc0qn+xLk=; b=ZR18l6Ruv0T4N2
	aND/R91MsjhWGZ7QXU+zVuiM0ogXufNh4tRO8NaU1DVB5ctfi891xz8nILF/l5dTNn4UQiMv6cIMV
	MvIbcJKJp+idFSLWAt/79VEvMEjeX9VseKMi4QMIksK1Qhd3/t4mozVDZrTvCRxBoRUrLVVWVFRzf
	AKW5jSmT/FE7ytA96xESEnn198CAKO/A1rSBdrCdqywWBNY80ZRon+iuQEfcVZO6TljB8bJSeVyTv
	fdDlAptpmnul32CM7RPxtAWun8f7ReK5m1Hy4UhkIrZJvydLySZcVUWMwv+Sbw39tNFaRpeKNdOmP
	5bka+dgz8KRQP6CIQXZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qyi-0006v1-PA; Wed, 26 Feb 2020 07:19:32 +0000
Received: from mail-eopbgr40044.outbound.protection.outlook.com ([40.107.4.44]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qyC-0006DZ-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:19:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+GemtTCpV48les9dpIzt8l2rbgs2Z7MrJB1PaqwHSfiJJEyowk7QDAEla/SD6WvlLcKOwKIf83nAysI2At617sHmlcAto6GU0QXf6PMRi1N7j/Xcaw3yZrja5igNdpdKX1OZbCtitncxoPKOcU1wFoCv9goXIfvDSk/edQ4bQ5LlXKb654E8HtapglYevtrZpbtANOK4759XWgLMV0SzSywb8+z2XwXh/tk7FyZwbxs+ShjLkmJ8AV8qLAahsrnbYdvM8H7fLpPWipJb5bndi2co6cvO8Hd4IKb3Qqjrz7bPaXbPqMQ0S6bw9k93GVTv5B64tdjEYZDJc4TC309Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lTEPRvmDpn0B7HYc7rlzofD9RpOTbggaLCyUpfkZ72g=;
 b=eORRrrHXaPSHmkx506hODvEIBT542Q8SiEeDSli5/LjS9/8QJnP2k1P0aMofEeEBl08nXwPSzOBDgaQxGFoOPo1HL4yWrQf7Mte7bFFnk4pdZz8RDwPI4PfhkTAupMcwoq1bTDXgdzQh2p0X1bZW5tyqg2jbulC1MRcgSSQ7UzfphmLwKKgEnklmPMixpu4Yv02McO+YKtHuoqAhQnLNwyf5KWFNL9pk2FyL+0DePCyOlobRlSOW68FaSwSMS5mVklYdMPWjesqujuXW2W35kZOmYGDqzBBuRQ1i7ISj7Oa7oaf4uheKIpMW8Sim9kqx6FCnIt9uVbkhg5e4VsTaKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lTEPRvmDpn0B7HYc7rlzofD9RpOTbggaLCyUpfkZ72g=;
 b=rdoOvCsqXNqxbCqUcpxX/t+nNCWsZqczKC32NlEBeIDNbb6GEEkd0NIkix1ufI9hX/SgPpEECFBU5M4c4w8SD3MWxg7urvtxJ1oNRSHBblgSNXULQZD/T7n0o5CDLj1sWpJELpmlsaepW49LlVw3h1HKNxbGkXGGGm1ZO9SZ/N0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5506.eurprd04.prod.outlook.com (20.178.115.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Wed, 26 Feb 2020 07:18:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:18:57 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com, robh+dt@kernel.org, mark.rutland@arm.com,
 robh@kernel.org
Subject: [PATCH V3 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transport
Date: Wed, 26 Feb 2020 15:12:50 +0800
Message-Id: <1582701171-26842-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
References: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0131.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::35) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0131.apcprd01.prod.exchangelabs.com (2603:1096:4:40::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Wed, 26 Feb 2020 07:18:54 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5f6e0a74-4130-41f1-7abc-08d7ba8c24fe
X-MS-TrafficTypeDiagnostic: AM0PR04MB5506:|AM0PR04MB5506:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5506608F6452DC54A6272AD888EA0@AM0PR04MB5506.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(2906002)(6512007)(26005)(2616005)(16526019)(478600001)(8676002)(186003)(956004)(9686003)(8936002)(81156014)(6506007)(66946007)(66556008)(81166006)(6486002)(4326008)(7416002)(52116002)(36756003)(316002)(5660300002)(86362001)(66476007)(69590400006)(6666004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5506;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +mw8TOy+u2Ylkxzo5Yfk3piuCr0gPYSrJ66xRc1dAL0LcR5YWXzBR2oLonABjuYlXPDupZBMglGSW/IKnACWREPkPIl+mu99n1mTwFM/g6b/pKIoka9XVKdkyNaVBU7+HS18X5c0uul4v+B2LKl6+MbzMfPQauC+c07w6c7kWXZK+v/vN0CsESyP87qt+iSbS3+P4D5zBAWCJiBHpSbjD/EKSy9dMIuqKM386E2lpimxjBazzc8Hx/nU2dJDE9ypG1SDVHz72E7gvoCPQSxt8p4U9phrQ6bRvKLdqDsHbFh9itvfKx/XQA21Vp5WFMBaPDHL1r8xeRsi1UOJ8dBzE0RP1H9qStukKQKMBTHTsjx25LmVMNggcvghL+txscjIEEkQ5iUgl87c1rClYQVB7bulWeGwrasJhJrNeCIEyZVw1cZTDHpymjIRV0rvzpRVzLgNvD/bDwzEwvs5h/2PMrkyMIw5E6Jf5Wu2lZWpAcK6VvutgicadpomqvIdMVR9H7wnzPhzOpQdswek0mJ1HlrpeHxwlN6d42tuncZ2czw+KZ5Z7J/Zyq7aGFcHb9dg
X-MS-Exchange-AntiSpam-MessageData: X//2Hsq3PPDfofQS+wG8aOvWmBrPh0W4Zmrhh0/oUo1xJATZxJg8Z2BZXc4sE0tINjqUIUUFAu9tz7B5Ap7saiJ4FmfUlt8RRmPQSj0T2C9cSMIa6I+OTZWhCNoE+T8KlqaJwr5XCX7mpfCQ4ntMkw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f6e0a74-4130-41f1-7abc-08d7ba8c24fe
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:18:57.6948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 783LDQMnRApziGLwiaM1VvCEe6V08GA3XtRkwNeJgExFEkICXwTNbRGXpkDj96IjONk1S8ay8QVKkCkIQ6sJfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_231900_511437_423E14F8 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

SCMI could use SMC/HVC as tranports. Since there is no
standardized id, we need to use vendor specific id. So
add into devicetree binding doc.

Also add arm,scmi-smc compatible string for smc/hvc transport

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index f493d69e6194..4ce57b88f84d 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -14,7 +14,7 @@ Required properties:
 
 The scmi node with the following properties shall be under the /firmware/ node.
 
-- compatible : shall be "arm,scmi"
+- compatible : shall be "arm,scmi" or "arm,scmi-smc" for smc/hvc transports
 - mboxes: List of phandle and mailbox channel specifiers. It should contain
 	  exactly one or two mailboxes, one for transmitting messages("tx")
 	  and another optional for receiving the notifications("rx") if
@@ -25,6 +25,7 @@ The scmi node with the following properties shall be under the /firmware/ node.
 	  protocol identifier for a given sub-node.
 - #size-cells : should be '0' as 'reg' property doesn't have any size
 	  associated with it.
+- arm,smc-id : SMC id required when using smc or hvc transports
 
 Optional properties:
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
