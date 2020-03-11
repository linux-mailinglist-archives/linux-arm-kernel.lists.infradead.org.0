Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDDE18136E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tUog8zDu/rVVp4KEh9DUcW+Iz7I0zuPfgbC2DGXHlE=; b=LmdJI43FuhZNw/
	MYB5//sqkrpcLESICM51LzNfNZnwY7zTLgZoyDjvOJSXG/M40Cpkl9Y+BDIhANbcD1DkS/et3Hquu
	ABfikBRXkPEn1raBJRLl1jwDk3Z4nS/XuO7SsYS++5t1yuvPGGJGjXu+hYS0lw5jDx3zVt+n11Uv3
	4h/il+Gb37YErXiDRDsWq95xSRiqeNI8pCsamel/ScrZZ9/GiI+M6EUjPPfEIqMBoW1yiqx40REg8
	1b+793bKPB4y3VPQJlRSbYSPfLkD508DoQzok4Gohvc/Tp79so6JkD1rAMkCnjX0IPvGA5kLKngBh
	x0A8EJUDJS/px86GEk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwtd-0007IN-Oy; Wed, 11 Mar 2020 08:39:21 +0000
Received: from mail-vi1eur05on2064.outbound.protection.outlook.com
 ([40.107.21.64] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqj-0004gB-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:36:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GySC8doXZGORfYpE4RsJbWhk9zTH6rC9HAPsh34l/+2r9LHCnLOZoO4UkLBAVHGmn/pcidfJNeqHLwENnAFhV3cRT0E6iyky3IYtoLTAdpDVZicRhoWjw1iR7Ua0ttZTt/0z1S5zKgwZX/1PGTPhigFQQ/vjQOhxQMr79zhhzFwqob79Jy8G8pSBpiRuU6kzh6HRwrver8+DEP07Di7QbeeCIFVEGivw2c4Szpsz9SOrbhAyqledYxxN1P84YHez7DDSXRvxM8j3I/5c7jnDugKvJnJ7ja+zkwIam7Albmhm/5GFCi9R9f5cC8XcJP1aEvhsjYtmCq0FYu5PkZTjwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=M2hunbdEPTnJLfMH0hMY7C0S5Q9k9lzfNHp5fWDZq01QPZ1LzBErOlR5aPgJBdoJAXMKHFw28+h0QS0W8dckUs43k1T1at8I69aG+vXFRqP/ai+L3WG3OfAoMoWqo+VuD60BpsiPvT00SdEOk6TGYK8YyLDLkVYNPbVKFwOk5+gFV7zuoYZbm937kUxNYHjsBaoC5LV0uPArEVpuIPRCZ01y74c/ojvwjy93BGs5CTWcOofl5HquSmUu2SR0ak6EGBIcF4lGteYOwajedyeqKQF8REIFb2Xa1QdoJNQoBIfTmRZZWPQZK8YeBcHi4xb2uUBeSTQ5/qcsRA1r3cHVlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=sr+rBfkfLULJbcv4iJ05Aay4PyiZeUf6xTSKwEihnNBqer7qZrOuoIkvRovFpgv3TADArP7BGgD3lJNZ3NgUBxyrBZd4bJPgNn0gxZiuB/QZJnH6CBxzaefipH0XGBYKzTZs0HZaJ7WREdC3FjrXH0LFhyBd4yhnlTF/Jcj4CEU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6462.eurprd04.prod.outlook.com (20.179.232.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Wed, 11 Mar 2020 08:36:19 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:36:19 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 11/13] dma: imx-sdma: add i.mx6ul compatible name
Date: Thu, 12 Mar 2020 00:36:34 +0800
Message-Id: <1583944596-23410-12-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:36:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0eb12153-e07b-4f6b-c18b-08d7c5974523
X-MS-TrafficTypeDiagnostic: VE1PR04MB6462:|VE1PR04MB6462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6462504DF65F16611901076689FC0@VE1PR04MB6462.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(52116002)(7416002)(36756003)(5660300002)(6506007)(8936002)(478600001)(66556008)(66476007)(66946007)(6666004)(316002)(2906002)(86362001)(2616005)(956004)(4744005)(6486002)(81166006)(16526019)(186003)(81156014)(8676002)(6512007)(26005)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6462;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vCGIbNPiytEedIPdAhSzPM1X0FqO/hg8eK/hrb9ml8W/ZuIcisbTpbIqhQbzi+VUEfbg1khEuC1CQ9dMwmXx5zrkkenJOKBbNNmtIKG6t+og0VnISu14bTqq4jFr9kGdC2IfCeKoeGxjnkYRJRhfKA/KMkTWdKPtZ6L4YzjcnfnjO89dALPhT7a2XcYc20cyw2BgTbN8lHoroQsLcuXpnKxU+ZzBBwPXiLxZFsS24+T2E79GoT22zKR3ZRMePr161ZjLntrhqwfFKigG6syXFE2FoG4BDx2/ojDhC0V5RuR+CqGtrOziO+nve9l8nviLtp/4lDnLT0T7ahFpandg0bK9GM0tNcSEndO+fSKUREy1dyzYp0WCTYhcY8NRtd9S/Lb3vTSZVZkXLCoAbcgxsJBv+8OSaUIU3Hd7J9SfyIAm48nBYJmJxdAjnd4cfF2JjP/T8HRqyEXzolLsQHoWP7umhSfD1+D0xMUbaXKmraNfKw97I4VhNEDwlKEe7E5o
X-MS-Exchange-AntiSpam-MessageData: R70EXTXFaxvoZ3oMdHSYdulSKIEEoxG4oQu4v45e35hMPEd1U3VfDPmdSeiPxV/I+nk6/Vc5Sjui8NOMgrV9tCSp7p0KJGMmPGzH9btYLPBOSDpSWp6DBqRyVxM64p9NIkVpsTfU1tA7vaGBZPVxRQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb12153-e07b-4f6b-c18b-08d7c5974523
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:36:18.9987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U9HDH1xH/oo6TMNoSyoDlT2qxnMYlAMR4xacUX3X8gA1o0j6yrm4N1Oz4pSS44MIcOAPfdQtnEwdJ6ANAJ1gBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013622_550028_B834887A 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.64 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.mx6ul compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
index c9e9740..12c316f 100644
--- a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
@@ -9,6 +9,7 @@ Required properties:
       "fsl,imx53-sdma"
       "fsl,imx6q-sdma"
       "fsl,imx7d-sdma"
+      "fsl,imx6ul-sdma"
       "fsl,imx8mq-sdma"
       "fsl,imx8mm-sdma"
       "fsl,imx8mn-sdma"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
