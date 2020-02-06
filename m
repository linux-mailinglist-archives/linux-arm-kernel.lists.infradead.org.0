Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49B7154491
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEBYuCb5rmTOMsQub/ggVOR31cPo0Kz1N9/RSClDpzY=; b=mct1aLazeMUaSO
	TGnS6FVlD4kQY+W1Ic5QrW0xXpiHIcBEyqa+VpyNWFcmml3K4dekJQcCnl77OSiXl4glYLAafG200
	sqcs5K83H9axKe3gYk7o1goCkT1uuiHXmTQW+T4wpT/yTLSZMkepPLBF/M3YgIiKmqkkOC+HZfdz4
	oAtZzT4P7O61gy2T9W/2COCOnfNvo3u04NlqtzZoo/H7YUu0T0/mzf2SP+wx793RtzsOnWeHlrSQx
	xEzUpCa+ebHizDH+6vKzOD0fFRMJxyd19URh608rFbsbwCeySaRT9KHdPNyexYhux7rcJDB+O8Hay
	lR8uV21Ka1kd33+4d2TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgsJ-0003y6-K8; Thu, 06 Feb 2020 13:07:19 +0000
Received: from mail-db8eur05on2079.outbound.protection.outlook.com
 ([40.107.20.79] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgru-0003om-MK
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:06:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjN6yGBmpuOatDFXBxnFptQKKJC7WlH/tSGz5/2c8Ai/erLy+aeCjVB1Mrq6l5i+x7Q3UN/FMS0kC/CqiZiOd3ihvtcmMyihkb0JUmGHs2bME0Ox0iyoftPVTV52+cbru0dWf7yjxgVlUTIhnKmLk+ABCXFvW4FzCJDBVzzUgmXmdGYcVkzpzMS6fBRTm822CaF3mJWeb0/spZ3hD6wjs1M/GonUe3AQsfk5QnpyZ1gHKZ9lVWI7dQzfeDk+4sE03CWWxqhfFfFr+hqhpfG9z5mwgpCPpsL9tgcg+kQcUP59kNzikTvxoHreOHWErS+yIHYNPzlT3kfg2qAWH7iHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gybqcWbyB5XKzo4YAEC+KJP2BFtg6pi/7ThCLJLO40Y=;
 b=EvMfYuCaEFc4PQIbkREvu0Doic9mC8W4wstQkXyv75C4zjLlxGJ8ThCVdX2tM5x7nXTcVUVi9oIKSFAa9lArVZYWqHR/rJeTichmuXbSqWmQsZeXXh3xhTYzs1MIfLRwOxnXJenZNnnx149C9r2vk/SoLV2BP5GoApOMWGSWx9mMuFyMiRSuR5fMVf4NuIneyzdeUI5vC90m6Y2UyWiM04MMgeEryp18AKrhdxwqUAjSjOQSCN0vBDdLnoEW6C+6rSVDc+Qr3O2EPOisbLHiGPQrb1YV0p9/P9LFH/BmJOD08/3iEHRImFCFUGqm6WGI1UrSd7vDvQwrR4o4Df7kMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gybqcWbyB5XKzo4YAEC+KJP2BFtg6pi/7ThCLJLO40Y=;
 b=D5A9hwfKvyHkWvO4MXc67bVr/xfF8oZK7E4iGeds/WNAMglBJGyz6jJ2pQtUcIO4s4aFZl5p0axiI/bsAKaWR6C8iMKkzZD0dHsidhgHwuwQm1D3FZ5aBSLfbsXa1OnbigN44DPpgUXybNlY9+NUsJ4Rn/D6HCL9OtFlfGFJ8eY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Thu, 6 Feb 2020 13:06:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 13:06:50 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Date: Thu,  6 Feb 2020 21:01:25 +0800
Message-Id: <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR02CA0136.apcprd02.prod.outlook.com
 (2603:1096:202:16::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0136.apcprd02.prod.outlook.com (2603:1096:202:16::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 13:06:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fb9c3bf6-564f-4d92-aae6-08d7ab056dbf
X-MS-TrafficTypeDiagnostic: AM0PR04MB4770:|AM0PR04MB4770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4770C7A647C0A835CB59300A881D0@AM0PR04MB4770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(189003)(199004)(86362001)(2616005)(956004)(36756003)(6486002)(6506007)(4326008)(6666004)(6512007)(9686003)(69590400006)(498600001)(26005)(186003)(16526019)(2906002)(66946007)(5660300002)(66476007)(52116002)(81166006)(81156014)(8676002)(8936002)(66556008)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ugH1DOXlJ7UstDvyzxSOrd3Bboc8/33mCckgK6DGYhD2sBOlghGiq99dl5k5MWk1WEKgfcV2rstdvZboPotGtTgKXgzqEQ7lrRvsodcu0EEctkVFHZcyTTrlEpbzxWrPgTDzmbWynUH9cFTpvhD9oF6eJJAHhDA+1BRVz4NfqRQQt/ZaifeAW0FQmvtUDQzr7OgfABNtAm4F06LubHUG7pHIk6rs7Z3Ead8X/PpRaiuFuxjQCyfNP7vDcaLA1XVOoVghq6zQfcjGJMtf2AMqUMvJzlpilp0svzQtvWQVi/K/fSDGeBQZQ7969IDRpT2QyIE/Eye+/Ht0Ueth5OqcUAzMc9kh4L615rTKhHMnp2BAwKfxkuWdQm4C5isc+kmRmVTnkVTh8chHD0mC1UVrl4hKQWQz/zZA/ileaM+Aqy97FLGXro/DwVW+dVpAn5g2pTvccBi1iiZ1MicGfru+8UGYUH/X6ibLxTnE5/TAAfZv7O+HrIKSmoPSQ2xb1XBhWBrBoRJWh/xwChtI4QI19ZtKFUwK4RYhvBo2sRv/4RFN5REclfGKhJsAMY6Q2GSY
X-MS-Exchange-AntiSpam-MessageData: n0qF5UIaqQLenWlnJx0X1UQXHO5TQ2sy4dcKqkgdv0pO6In+wmaotPntRfLhEVRKg4ys1AcYyMiF7LEycSZhdPbvs5yE8yCNBjwrA1B2dWpPmIu1GwWdPVqUFPZd4YP4XXT/00V3Zi/lXobvKoJVtQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb9c3bf6-564f-4d92-aae6-08d7ab056dbf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 13:06:50.4486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3EXzjzY8EYNk+wDyjYMEOBkH/egebjQuHQM9ir5JphgrjKEuldqgbCx0KuTcIdVT80I+XixcJfwz82vrMOvRRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_050654_725807_920B8B7D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.79 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

SCMI could use SMC/HVC as tranports, so add into devicetree
binding doc.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index f493d69e6194..03cff8b55a93 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -14,7 +14,7 @@ Required properties:
 
 The scmi node with the following properties shall be under the /firmware/ node.
 
-- compatible : shall be "arm,scmi"
+- compatible : shall be "arm,scmi" or "arm,scmi-smc"
 - mboxes: List of phandle and mailbox channel specifiers. It should contain
 	  exactly one or two mailboxes, one for transmitting messages("tx")
 	  and another optional for receiving the notifications("rx") if
@@ -25,6 +25,8 @@ The scmi node with the following properties shall be under the /firmware/ node.
 	  protocol identifier for a given sub-node.
 - #size-cells : should be '0' as 'reg' property doesn't have any size
 	  associated with it.
+- arm,smc-id : SMC id required when using smc transports
+- arm,hvc-id : HVC id required when using hvc transports
 
 Optional properties:
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
