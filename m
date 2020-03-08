Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C490017D3E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 14:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfbqeSlkuvwUoZOACVwHV8gwLW0JQt4rF0K0jJZntIY=; b=SXruhBOC0ePS72
	hOTEFdPCrp4Lk5jkx2Oi+chuIKRZSWpyVrUcq7bVtG768T8F46baTvpDYruYZ81OmhS5c4A53f9J1
	EV0uk7ZntFA48i9grpITC0Dw+vAyvrfis35eFAtUqkoRoEngYhNf8ZWQdRM6L5A70/xAqol5vuNXB
	AYgXzwLoxtywpc+MXkS2g4wCKIgloKJxUovXgYSZm4xs59H3xMCqtD4gH3EY/7RfpeXFvVzYjI760
	MQgPtFqZaE2yrJZVIxybf4AQ9+kwTMEjmfsQq07SD3Q4IbEIrsYnaqhsstZGd/qTg2v007vu5Vz5L
	seR2lieFA7de+fp6/R+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAw1s-0001Ey-Fu; Sun, 08 Mar 2020 13:31:40 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAw1P-00011a-1O
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 13:31:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZV6ehLdTH5qwgQ2/Y485IkOcuG3jCRfdmo6GMQpH2PeZpibk81blyIvHrieW8PRu9DjPVgcVMVSFNksE0nWfiPSPGZ/8xAeTFQA0KO4zH0Tu90XUTp9Uy7j8ApAuAtoEG5sc8wJlqvIrdJp2QeRXbQjhGOxL4a4nOdz7Vcp5WcYhTSqrXApmeDmrpa1b10hGZ9MrjSTZxj0W+LSEhGlkFBYOSZOwUnzbjTOtvVdhPHV96foaCpvnhqkLDqHG6NGFpnzXZvZiuyV1YVmc2csMGzjD/D1OOKqnH3mLbJzQD3m6tEqBLMAnD3aetvwZJqMuDLNAAMk04snyj6arHLjn0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWVRd42hKEs8dz/naK502WbxtO5C9uYAL6Gjqs4cOgI=;
 b=LE12QFwe+x7Yv1mh/pmTwKx7ux8iBdspk8Ura9iJcxipNX7GUZA5yqVyi71LI3YY3ptEawFRuNiuZL2yi9va/vYruWECHBo0VTqu66nS+1wtDgAg1fWOwvS55Y7jSJ97vdfKOjNt3K8NuDSetyF7lTJRvagLPQ38FE9hqy4dYCRX3j8oIdh1yMvVKtov4SdLNjv5hK3qAzJUUuKZRoz6i7fvDh356eyalCVorY+I8GW+DaFeqgaSpo2smY5Y6KdPGCT+nwgUQkKl+X6fHGJA/+5wjg5dLoywQ+Ob1taeTo/E/D4pYwxQ9DUhwGkFVMgPnYq1t//eowzOkV5QI4cd+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWVRd42hKEs8dz/naK502WbxtO5C9uYAL6Gjqs4cOgI=;
 b=pxnSRS0vwx6a+XYnkPLZ7yP8KDgF5DlfaoGw3cB8fnTTi3DVPJEDtsJSRnMWs+bimfpZCrYo8aqUM5Upy6PfIBv2U5SUPxdz7PTzMjoXLYGs44tSUr5nWLygcPNiakvgQUQBseApe+eAC5BSsasYrB2UPrNCuioc05f9gtfP9J8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6275.eurprd04.prod.outlook.com (20.179.36.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Sun, 8 Mar 2020 13:31:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 13:31:06 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org
Subject: [PATCH V5 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transport
Date: Sun,  8 Mar 2020 21:24:38 +0800
Message-Id: <1583673879-20714-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0116.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0116.apcprd01.prod.exchangelabs.com (2603:1096:4:40::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend
 Transport; Sun, 8 Mar 2020 13:31:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c2a557b0-f23a-43dc-b957-08d7c364f49e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6275:|AM0PR04MB6275:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB627558F61F33BE63E287C8C288E10@AM0PR04MB6275.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03361FCC43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(5660300002)(16526019)(186003)(2616005)(956004)(2906002)(4326008)(6506007)(6512007)(6666004)(9686003)(52116002)(66556008)(6486002)(81156014)(81166006)(86362001)(478600001)(8676002)(316002)(66946007)(66476007)(26005)(36756003)(69590400007)(8936002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6275;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pwluFMXTMeskhr9NROLgE3wV72UpjkCvDE477iOKKtdEsraeT/Zo96i+9MqnnsCdy/Ai70fTRwE8qz8mhDc0grozaaMyxs7ZQlgxagOf0yubwY910djpM1ozHlNFZUbCdRUjNQJVtBp/VNoAVo9PdPhQyvaKF4hpbBQ9yfDgf0gh8q+1ysag+mK4a1WA5Wv5ICc7k9sogevr06ZPSRfCLNIoKSOXR0J7d8TXZQKsA8b/aSNfMNJXaQ3IlQ2sHGcBC02oDLjkmFFNd4tw0OgbIiorAdeOU7S1C7B2ok97p49KyicImfY+nTTfxd+x6FeqdqHNrxDrNqOF/VomfZHgFKXzKncFKJ7/hw3VuySTVtcSawCPS4/yk3TATHNOk6P9zukqHudKaWy+0lucQ1EpDo94/ya+BRXTVuw5zAwHc7EDj7XS/DOqVE4Qa8SpAMRqHOSuVvnA9dRWFHIR+vSVCw++ZjBUbF9vwwAFz+SFNQcvLq3gUFi0Wqq4LJoAJ9BRzqXBpihH7//I57K5SR/I+A==
X-MS-Exchange-AntiSpam-MessageData: LnyqRqdDFEpK+dtVBozNbHU1xDOvn8QBkHW3Muu0gZtzpsU6yFDpj2iz+Wc7NxJDY5RSCP+GZwAnKGL29gCD/k0NrbvzWzvOaF3kD5IzZ/Y9FZrqlSLTNDVJdwdrlYPOjJTis6UkkVGyaQa8I633NA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2a557b0-f23a-43dc-b957-08d7c364f49e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2020 13:31:06.7051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OvUQYY8JWaFdd/7bskBIqdaFoy5rVaIyou4MizEcxBBCU3dYkeeOspgMcaF52Z6TccKX7ut+6jwa1qm8qcsjlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_063111_081484_D55BA229 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

SCMI could use SMC/HVC as tranports. Since there is no
standardized id, we need to use vendor specific id. So
add into devicetree binding doc.

Also add arm,scmi-smc compatible string for smc/hvc transport

Reviewed-by: Rob Herring <robh@kernel.org>
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
