Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192711F0788
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 17:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tUog8zDu/rVVp4KEh9DUcW+Iz7I0zuPfgbC2DGXHlE=; b=UCEXz7GsxziIMp
	5sB7M/9PNIPR4Dh0ESL+/EC8aPWyGNNQBYIItIz195MoEZpTpIONWl4lVZr/EVxdmAhaYikbatajF
	wME9Ts1gh2E1SbkGb46hs654GDro94GjYHw0OvCKiuEzm3wgoyo1G5XUNGphBpW5iPHFS4fkjJEuJ
	Ba/Y/nSp08XbujelWIZ1elAaVW3qKOvspGP6WGMi+1M4nXY5aqcBuZL8L8/W6WQ7qfQ3eHC3qaIg0
	ZByCto/5IJSStX3eiINU4HW6ool01UZ6evvk3xXHzAYSOA43iYF+FSzjaASgMbz3aOmDintzJOVsG
	LVSGvm8nuzqsPC8VeO3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhafU-0000MS-Tf; Sat, 06 Jun 2020 15:23:32 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhaeC-00079K-0v
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 15:22:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c79UDeMnw6sYC4sdSW1GlcmsRNS2E0gvK8oJIOrFdjEhZIrcIPyez6DyAv4tBybWU8eOSVP6VhQbuyZJpNiQ7zTFQf906RBz+UDttVV8wIjCroiu+z6oVjacHXcs3GtIbUaSyNWAXFaFePUdma3s1BxrBioQlGDvHPRQChHu5+TAKGBVbYpX3V8k+C7jngjQQJXtue0ZZ8ZYO3qx4BcRSDrQZWRFaoRVKFW1G6I1zMPnFpmQvCrIVY33WLcOvdH5t/1j/qsgy+91WhD+BiH10zP/lVKiekb34sqlyqJmcDd1v+qzlTqzLFp0qaJwQ6KU0V5uL/tCO3niBEbVrxSwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=UaBNo8gK6tTDP5DLYNovk91YGtKjgSKlK74fROPoYBiLjI9oCvGkSm5iU26nxRoPpN0r+oliYQBWSDC+xTpvAoL+9MDIhu+qVe0CcL5n1kpGF531/xFcNaxEIuaLLPwcdf84D3oXcRco9yzVMfBmXoxAxVeZ5t2yZ+xANegIlOYjO877jOll4XfH7H8Rk796kNS/AKhpeXwpOn9CVfMKVQdAj4+khqj1qYKg1voJyga6UCGoQyK/34QsIojtolj6LFWsNeAgaxL9oq8SxDdFigwu7nLU7wRzEl25x/VhFiYq0UchdZ/anNlnwTpAGA3AjDgTYP19qa3xfK6tdaBCNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=eoMxN3azQXJeyXHMXVDrxy+kM41r7KbT/ZcJugM8aIVU9wsDqToqawLEuXc5UcVMHqb5vOY9p4ja0ZQCGcwKeWy5DNWRlqNnHcJGpzKDMgRNR68on1KYm2DjiaQ7EZVPnv0jIFBplywfrkICZ9S4tp39uVP4lbQ+lWrofgnWFvQ=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6429.eurprd04.prod.outlook.com (2603:10a6:803:11a::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Sat, 6 Jun
 2020 15:22:08 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Sat, 6 Jun 2020
 15:22:08 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 RESEND 11/13] dma: imx-sdma: add i.mx6ul compatible name
Date: Sun,  7 Jun 2020 07:21:15 +0800
Message-Id: <1591485677-20533-12-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0184.apcprd04.prod.outlook.com
 (2603:1096:4:14::22) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0184.apcprd04.prod.outlook.com (2603:1096:4:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Sat, 6 Jun 2020 15:22:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ef91cb12-216d-4d18-7c4d-08d80a2d6092
X-MS-TrafficTypeDiagnostic: VE1PR04MB6429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6429516C1A1D49ED63B598AD89870@VE1PR04MB6429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-Forefront-PRVS: 04267075BD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: coMAB8/jnmsVkVdSnzzcvKVc1OCbOXn6XU26vcLwfLiZU5puYTZ0ZCJYrZkPCBu9jRbf5+SqPnz+Lppt5v7v4uYbq3n3ZKPFJnfsU1rlIsWnzKf6dsTB1zkvo0xQSjUeh2PTkgbmP5f6J01VTPNYPGQx9cGTRfwuRqa755giIaz9wFtLZD95/tvXqcdlKiqdmvtl/mJHsdphvRDqr2qIMt+/ztKckTkxrli+TKAV71nssxeyZAt/OPnp6+FtlDKInrkcUhKIBFptxihU6fHE8kHVFKdbrd507sR/ptziRyaBH+ZyLGxeRQqN0O5jHNF6iOps8wH+m/5YB/7194/wmxEw8TKJLUuT8OVlhNLHOuw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(136003)(376002)(396003)(39860400002)(66946007)(52116002)(6512007)(66476007)(66556008)(6506007)(186003)(7416002)(16526019)(26005)(2906002)(86362001)(8936002)(956004)(8676002)(2616005)(6486002)(6666004)(316002)(4326008)(36756003)(4744005)(478600001)(5660300002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: /+r2qcIlty4GVYgrJ/lgjcT5L7u5L751XDek/bDvzXVQjr5PtkKHmd6IoD+FyU2zSxSPHejPhqKH6+MGiLqEEcB/nFRRKAc2+FXhjYYO26pa7fI9xtFb8fvcwoSgYlMTuNVYU4fYivzXhPgEKDBI2hz9d+5vLdBsOmN48JQHKF8WqCXEtcbjxFmD/MWLs8qzrjg1dH6x5W0dHCVhveqhfwVd1OIrHTj9g66U3fN25ayFXdSY9Szisf4Y3P9JQfWBAdxqoK9UIW9uM8PgeikkgB6KzTdlOlHVOLPUziOehyhESBhwpL39r9xTNCpPUsM993JaPKa2XVkpLZLR7raXO/r8MRmQN2DD+LupNBNIF56LKn0Xy+kOwM+a7SyO8s1IzWJZ9mhVGUU7BfdNv8WlrjAiioCZzJpGbxa9lT9a2rs9+AcFVph0jcY/qLtIIq9roKZF9oWWsBkEb6xdyzoy/mNVf4MV4rosDTZAfI6eh64=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef91cb12-216d-4d18-7c4d-08d80a2d6092
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2020 15:22:08.6282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QOyKZY7kdyqi4aKrDTOws1ihBPiF5JbYTlr3bVJp/7RU3bZyZYUgKzUbDzpP2DurNdjjZ7x3QUgEYPToOpc2Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_082212_087359_10FE84F9 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
