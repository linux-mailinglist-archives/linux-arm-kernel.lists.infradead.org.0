Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6D1EF95E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWLnlktroJbMKTL48JI4/YflRHnLmixkuHN6XIZjVwk=; b=b4GnWOYNNYoO98
	tG08UukA2q0kKlOjQlWw+XUaMucKzOuW1qdUSfVKIuGctKdgMc2UMoIcDwLUZaWeO3AOEnB/1Ltr7
	DfWwFYUJ4NRjx+HWD5Q6ZaJidTW12lFzQGxEBOlahzMz395gFG3HM668MzjsNxnTAvosp6bJvBRdD
	pLjPPlYNd+AyNosJZmbT3HfcGfQFw8ecwaLYlawTbpULJuvQISOXbvNgdg2rsRAWFsB9V605rxBY3
	ld0P7VIHCdf6e9qMiovY3koEa3qVviOVc1yF4Gvyrj5+PGfr1lPerMTVIJKC+q+6UvwTOQ4+gbiXj
	/g/dHvTaxTGcw3tmYoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCWX-0000jA-5r; Fri, 05 Jun 2020 13:36:41 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCU4-0004wx-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkcdWbsHktT2nreSbfw6qfsWC5h7q2A06FVQT4E2HNx+2sHZ/kTxPuVwo9pgXxiV57Oq77oLRsHi5V22B4vieGr+XWtCakNoRZYN20VQmYOPc4kaCPaJKhl4pAqJUDDnRGmlpcoNeXWgVVqIz9XglA5T/Lq+1DvqFObTnOHbiZkcYuG+AAeBbFr+z0LOFMTIawR6TyYoaNY5r/oaJWJmn3+o/OTEjVcfpZ+FwB46jITxRiAbB/dJOOGQdFnhNv8TJ6pU2UZBQ2Ufclp1DEBSGTjQlUm+/BLHNYiiJJFIeqTqtUQRyeuH5JU0FnWxxi68x/wRQNjVcltHtZyUWepBRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jxJdGqHBF995O2koMhPVubVtg1S3gV8z8tbdE75gTs=;
 b=VN4fj0H6mhXLB8lz9EaTAdw+AJ9e38XQv/lQWV7uw3TuoWDCHGw3wLSJ2xZkhSeWVzN1qIjYS51P+L+J253zY9MyW3JOEKwmrvjuQPALNa2vrpNqrNCTkkx6cnvsgrkY6+ss7Deu5fylf1Y+I08BcyTN5X0G3sa8WK0h/cxOW07ZfWUFGW7Wi+dQ24H9CxKLshsmOJuPZ8OklrV66tDlsV6J1dJHN/sQL3dWlX5B5Qn5svcx1V5de3X5rRydkdv96sQcAcmx8ATejuEJZ4Hi1Typorc6iFCXGo/nbl6Xl5kPi8q8WFOb94DUaOej27ekJxj1L/aYssri2AXvIf+Jnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jxJdGqHBF995O2koMhPVubVtg1S3gV8z8tbdE75gTs=;
 b=UGRnARgyvIMJu+L/qPSdanZwaRm5vtAKGuNplq4Ni70Q/My8lDyx07dcmUpmnVpD9esmH2qE8sbaoU3YLO1BrwkvnH54lP2abSr7nvwpkGVrsxgMdHGxOaY5Qbj11eTL97HDwC2+orEtA6AaPPnMTjlx8uf1T1lSAXfpvgz7wb0=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:24 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:24 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 10/14] spi: imx: add new i.mx6ul compatible name in binding
 doc
Date: Sat,  6 Jun 2020 05:32:31 +0800
Message-Id: <1591392755-19136-11-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6bfe2a3e-d93f-4692-fb16-08d809550585
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702663E035B43E61DDA074389860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: knsDu0T/2E5f+5Snx9q5l/U48ehb6c0MZWUmuFC3sN1PY/V7ENKQyU92ktvrMsASkv5n9W0l9j+m+LazrLKFA2iLeVqB4fwf0Bx3I02v2nFQlZAPt7ZO+85f4NWA0d88aEtlwsoTXaa+dcQQzdNBPmavk5/UqV3JVmHFb1eKbCrELPvtO966ggYpgGpFotb8G2VkQYpnTgc8mwK7tTMyrfMqf7lyySqUF7+8FyVJzd239R/64Ob8GNwllWokAH2qKwLvEXTbKmvm8XeabCqfVdQy4gXiOiKDMkylZrQwI9847VvtjrrIlL00QR0IcE/9PDzpNC9llzC98AS5Gvs90DPCAuz5SE4Ree+Ojsu18tabKEWA3L/nzAAopTWbM+Gz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: VcdvPfeXiL3sBuEHaTZPevRB63ii2MuQbPa+fGFLm5gD/zfQiUJ+O7p0LkQKOzQThKLEhinlb0DDU48XxemdX8xQ2td25uz2vvdaguYx3NvCusCYMWJRWo5N61JSx1KqHBBuIbXQ4zRZ5QTt+nnyvF2abVo3oO+YLlWP6N6Mqh99I4OdBkn/SNO38gbCn4Pylej80VdSMkVbSAf4tkC6skHifm3115Ak7rP37DTIooJK0+HPwRFTMcKmwX06CBknFErxuyfsmRUxs94WiFhJ7m5seepjNj8AXkAqzMPuVyqJtnlKOo3hZjX4QyVhuAS8XeFxCYpxiHGr59InqTfF6IzccJJbpi1+a5p+Fqlf8nW6HwHGVWTrbUlxNyHS1fOR39KATPK3bpiXsD7K4vGWzIrFTM2T3rTmdHsKUXCY4Fo5WmLHtiJuRtGyPkTcfaPn6Ilj99kUVQsUYi40kkCzKtbXUu0GkwjWw/pHADmEqMY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bfe2a3e-d93f-4692-fb16-08d809550585
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:24.6229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2JKqYK278r/2XidpMHeXv2tc7W8tHasazxaBEppX+5lIz8rVjWV2WTq1P+qCLZyfGhaKILTtRpKNAxjLP40Hqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063408_604488_D14FFFF1 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ERR009165 fixed from i.mx6ul, add its compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
index 33bc58f..0a529ba 100644
--- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
+++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
@@ -10,6 +10,7 @@ Required properties:
   - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
   - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
   - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
+  - "fsl,imx6ul-ecspi" for SPI compatible with the one integrated on i.MX6UL and later Soc
   - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
   - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
   - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
