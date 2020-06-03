Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE841EC7E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HPaaMjnC9vFQTmtbJsAAtrTCITi4WTCdUh8uQhkLYOM=; b=aBbBwAaV2XsywR
	60BV0S497NbvyDSTaKXk9hgwycHqeYzl32/MUEhWIncACq0nsDY8Wbt2uR+O1qLw+UQK2Evp5IEGh
	NRjKb6ewowj1/B0AkpJRCgEWyGtJ41U7p1DZ9ijnkbzoyivYX88elrLt7mWRpEPYu5KguAtxFBJgj
	BwlrormmqD0SmRh6OEUisJB20cbyBsaOS0bOITl20f45VB1Pt557smqFRjJ+qRnAI/QpUFG+AM1Rr
	4fIJS7vWj02ISs/Zq1y3eQ5/rSPkhP/S+5MW2gux21tp+7Ltc8ITXmY25w6m5xOtu2u49Y/bN4C11
	D82q66gCHhsSCrkjHYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKMZ-0006UV-Vv; Wed, 03 Jun 2020 03:46:48 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKMS-0006TT-LH
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:46:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i6d84+5rVxeCPoL2r4gOfkJS+QN1q56o3QzEwU8SNU7hou8G3/NZ86uNBz99A0kgNZZ8v1qT35rkSFecdztG+gI6fs33sLzp1r9Y3nH1+w8eLXrSl7QCQBMrYKB0hIvP2fkiscTNo2TMb48LQzYZHOe/E1LmTft3M1aA7oiPTruwJM6T/iSLPoTEKEc1bo6o5826/6EnvugqSgudOo2SyXsVxibIn3nXSgrkfIDyS7yG7LamE/BdmymxkORiP07Ri/3+bhDttE0KU63j4zUmiDD61D1/24wEHuHZleqLZufQf/JAtzE1Z0WwzIFzcS17Nyjj6q1n4Osj+EdifEAOJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qtwbvEnhYQE25RhbM4MZj0UK8cHTGNAzg595crhIx4Y=;
 b=nkBdMoEplHZVfm+hMTYz+M6ejSIffd3fufMOmdFSLI4NVOmS2azuFtfQmcf1T5agy8KB5P4F98IbiXnOYeS+XKwn7lXJ1ZEjCXUixwruKvlUYVigm7mbQzQGk9vK1B3iqPC7H5z0M2Zoho4gaQ2DPWzPznChYAaiok+c7kS0HV1Wut8DKlTMZWAH0QndzUeVDXHu5qHGNR0pIxGx/oWmrDZdJVU25NjJj8ssPfaFARI/0g/jch4DVwAR/GLXcYbaE7zaYsneWlWx64YWg2l9niSCPKJ4T/X2sOuN0TSUllkV++T6z0WFf6AqS08//+y/OifK7SOrK8uf6TgwcxtNWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qtwbvEnhYQE25RhbM4MZj0UK8cHTGNAzg595crhIx4Y=;
 b=lK/PU8IQxCuKM0O80kRgjLkDOECzSoYRAdvqr1A1S0i2oPSdy74HBfz35IAKmGNcnMkwH/LlH4nHWZdKDnrLPjbM19a78VX3uurJXjgJcjkLtHNIidln/Q1+poohNJ6Wjqd41r+aErM8FEMWiSNJNpnzCH2r/aQX5EVHZlD0JKQ=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2870.eurprd04.prod.outlook.com (2603:10a6:4:9a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Wed, 3 Jun
 2020 03:46:36 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:46:36 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de
Subject: [PATCH V4 0/2] imx8m: add mu support
Date: Wed,  3 Jun 2020 11:35:58 +0800
Message-Id: <1591155360-26173-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0113.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::17) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0113.apcprd01.prod.exchangelabs.com (2603:1096:4:40::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3066.18 via Frontend
 Transport; Wed, 3 Jun 2020 03:46:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d635fb0d-58a1-475b-8412-08d80770b70e
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2870:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2870982DB2D883A734ED6B6888880@DB6PR0402MB2870.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AH7yrsQ+wkNR34ppuwG68xLvmFT/SpugRo00HJfTTUBVLjJPXlzTLYEnWKP487OGUiBquYvRmb6z9oKav4gAMLuetVcowyxSsbgzj6pM/xW57VoFSscNbPtAJOCFhHIB+Ui6Q/QnU/5D2vhQLj48LQ7g/6QQgVZSotq/ZjjZPg652vB3RDNzvsgyqWlFXgeKNVPyVPnPCXG7j04/p3ubDxuUuGjhu50Kc3qa5i87OEYbLCiKMKuqqPUEdS8rfnE1R3lDXTgWzD16yIfCxlnU/yyH5C7yCL2Ke/U8vNEHld8Yq7eIpbOM97CFNkWshvumNRDbqoiZiICLiQyAFOpGn+lcu/dvgPkas6aUeFPl9hC2TphlpY6WQDJ8G1RNs8VFN40I69Kk0c1u+UQTPpIzg4Iwia1jNG0ZXJo0bsggN8hUNdczd8RsfeQ8gQIgVFJIHGTe6NVb9NaiP5eGnklSw31UGwtp3AzsaEUt6T33TtI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(6486002)(478600001)(2616005)(6506007)(4326008)(26005)(956004)(6666004)(9686003)(7416002)(6512007)(86362001)(16526019)(186003)(66946007)(36756003)(8676002)(5660300002)(8936002)(2906002)(316002)(69590400007)(4744005)(66556008)(52116002)(66476007)(966005)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: YWyqjMWzS/qNzTA5+XGUa0/6ANlcW98EZqeU76CDdzGH4hz0cSpnzlG7WJboTbfqD7qBTrOqmj1/Pkxqa7h+4VzGiQhqKdxQXFE3SQIvKo4bZ0scTn8Lmvw+pqWt78K6eM4q9KLkse3FESqExIzYOoVB3XAwn/zt1yt2K0E5hNPwyIpPsWoA6Qcj1TUDABzzWyWFBpCE3NB2VD45jFIzf4KJDRq0ftlPVJx9VavjNhDVp+mfBPOBPIk3peQwp39qMGP53L/ZRGdjJrQlkBQ9CceVo63Jl3f+eLs/2e5tp4wpSyZmZiDJ2A2c5aeGt8r7p9kKj5tGXJQNso8E4xbbyjT8WNGtnnmxRKyRuDF9mzoJcj8D0ouxZsqBDKfMnpW1DMyWm+Xnnzl/DBcxW6klFOnppT4bxv+ErM1fmc/wrXmT4BYaIrOHNfltsc7AtwBeMRTL10e2CeTFixetlWB8nXmWda1yckcUb53dbq28EyysbEapyTwx7quf5aHM31yl
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d635fb0d-58a1-475b-8412-08d80770b70e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:46:36.4807 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zf4YO2Kd6Q0vIE3L/3BF1bDSuDyQIn9LWsl8WyrZp7mETDnUUI6jaZYb8/qKuOUI0A6yYptfaWPRjoagJq42dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_204640_699272_8B2C1B3D 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.82 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V4:
 Drop patch 1/3, since https://lkml.org/lkml/2020/6/1/370 already
 has the yaml changes

V3:
 Add R-b tag
 Remove undocumented property

V2:
 Add dt-bindings
 Merge dts changes into one patch, since all is to add mu node

Add mu dt bindings
Add mu node
Add i.MX8MP mu root clk

Peng Fan (2):
  arm64: dts: imx8m: add mu node
  clk: imx8mp: add mu root clk

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 drivers/clk/imx/clk-imx8mp.c              | 1 +
 5 files changed, 33 insertions(+)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
