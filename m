Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067DE1CD534
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkDmLmGC1zXo4bw+HsUWaJe1Nu/W9YwXsmN/igPJ+v4=; b=sKICqOGc08Tiyt
	3oxnrgOPnQTeWB6beAzx9kGBbvZun40LWxRoZR2Tvd3PHAhF7NYfT9F6ddEhBrSlb+eMyoJQbNe+4
	pYEqbYA0cQ+EBt36K8bF0rOjcdZ3ZLc3AuL0PrSpuLnVeP+VDQtGwd0PONysypaZLmjISQZB3OfA1
	QkQmV2gbqMZml+F8a6P8/sxYv7BK3hbfSReB8qfR/HfPJuTPTUyLJAQLPtC5oJd392Jmet+pD3fPU
	F9EpTAZKQZb/PxYplgS6EGg9Ny0SeMxjp17F64IaQYwNcsTj7g37DBCovHK/TdhVeU0Fn74RJV3c0
	9ej+Ji7gdjcySO04iJzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4pT-00042c-8C; Mon, 11 May 2020 09:34:31 +0000
Received: from mail-eopbgr00057.outbound.protection.outlook.com ([40.107.0.57]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4nu-0002lH-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwlSZMU+o9EzMPl7UdP+UuIrp9qYmUcLUuOHlrqzyqs4IEVk3VYsP+QhUQLKgGn8loUkNVBJ8dkQdDVYGmstZkvp1DXcKdxLWoVE80EzxBoEzX6Gi5/5l5ikOjpcteVWBmr221D/K9tMjVtO3oBt2fRkv7OQNw0g5S+puPOwaPDSNk0K3ZS8YSnVjZs2T/46ssG51TR6mbK0bcxQra9FQbstKP8LCs/RSs5iIaYyrp0vBMRdOapxX4VweLUt1Z+MA4walJe3+bywJK2DHZSqa6lnNooXP+Pxv2m97dLuewKQkxj3W6U15ZpJcrAloX0q7O5QNLPDOMSDMyYetC1P8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZVGY7HSfJlKI0KpbP6KFaPYGNl35gy4W2Hb3NamZjY=;
 b=enjz+HI7cheetYXI8W9oMyVWbw8dRlU/WreGeSIZ9xL1WdNeqqnupPwtYy55mYo862uJj5YYXlf8zGQufky1idTQ9r7cXoEOvp08/3NZmg5OdVW0GeoWggWBQz2Wt1lC2kIqRtDTcOoN8JW2sI2SHSmV5YXMZEOlSbInUuXN5b4nJsCNwaqyTiihjSyhCUWbpuXU0WT2nVOx/62AKdhqfmnF4QB48RE0uRLzp5gy/VADFieM/uGcENQi+OeW5A81QQf9r5ZtlqoFhJMFwN2GGhBiG00Vnz+0o2kl7rIoRqt8jQc41GlKPgIFQvTlMU4DL9lTAhkwFZeiILefzbFdxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZVGY7HSfJlKI0KpbP6KFaPYGNl35gy4W2Hb3NamZjY=;
 b=XgolxBPHL1W3fk4J4CWTu6uDpoBOJK0m35Cbp3RcndredJdcoHPGfqcSWkfjDPX4wo2OCP15sfDXOQWtIDaAdpINekk4RnVb5ZSFkXBFXCWPX8gEdQ1OoA7gragbh8PYDS761G/nhzRQ2i+xkbUOqlAmbsy7E01LXTNzNze4SlI=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:51 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:51 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 06/13] dmaengine: imx-sdma: add mcu_2_ecspi script
Date: Tue, 12 May 2020 01:32:29 +0800
Message-Id: <1589218356-17475-7-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:46 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8270c7c9-7e49-466a-6e3a-08d7f58e4696
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6637526D1D446EBBFA7BE0A789A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6NzsFOG296kQ1RCxW79YVHpchPhy7Kkwb0D8meld8scRUDb8FHM87cbUJ5KdxtNz4Zt+vH3v9+Mk5UX18hcle3tIBRXHi9F9c8UIIdojnfaGT3gwLLe4HQs5tzi+euKZS4HCM9EjHA62B2kc4foCJBcNmdteRDRpNszzNvSAm5rhKdxhgZdeEfIVovYAyhnCzyDoakrAp2U34Gtthv3DmuwtC3ncyYnaFdxJFlD77V9lbWfSJacxqq9ep/PPJMZHLERmkrXK4dYIMJSvO4V6dMd0q+Ch8ySSWxJeu3Gw7QgXt5DOd/ed2jCJw4Ozu9fxgkLsPqSN/2FyBvzBHvjUN5YMkrfRVgCRnDHjdntGUI7+uEUrsK5s6yHdG1RxnL3jRfWMj6pdYdqxied6UZVKpPog6l039rJ+jLJafcUX2WrV7o3oFPtDa6zOrk4yx4Rb7/kUBkmZKaaz1NuZ+JxSdBCxvjLWndjwllhheTkHN6n+phgDA7B0iWR1iKpdQ4kfB76Mr992XCoYjFKCVKB5yg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(4744005)(66946007)(66556008)(478600001)(86362001)(316002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 5mW/A4pqNddUB6r/dhf6OaLp0i6qRV/hJzybr/M+YTH0dv1UJF9OplBA/cf00uYZKC1rLZjM7/QaGNRTSjX1I3yHUo/SLIFq6nGJUu0inASPeBrzFImLhu/t7lm7uNPOAPmmDcQCKOt/Q+LcPpa8lzSiospuBnbPftnfG2eq0qb+aDXE78yzFE7BbtRrYOS0P3ymxgu3hdtWkKB47TU4HMJxkE6GDMFzdYTHFG2XnUuLF/rSox+HhA7deoNOi7qScPA1hT/KRRKnHCCGaT1I3BUqSWgSGslg4HjgGIkVe7yO/is5ow2PuK2ThBu3v2afgXpYcHQayQudpjC+mwMHxNDP54uiQo45hT3THcmPsLLWDBRKR+T6Vwv8YpZw5IMj+Rk4COJUuHYtcxjlPY6x/0zkX45ZSrbKc9r2M+q9TuCuMTqv6TluHl1LV3GO8aT25cyJuIkcmRF/cpSFrKyfKKbFaHpaL9GEIia3X5WjpWQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8270c7c9-7e49-466a-6e3a-08d7f58e4696
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:51.7417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TeD863tDW7rrcHXe+KL9/RteiZdQeikgIB1gsYZBv8/w16XwqKtYgsx0a9COJIPCtOPk+uNqpRsm5ReWYtwLQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023254_294231_C0EB607B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.57 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.57 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mcu_2_ecspi script to fix ecspi errata ERR009165.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 69ea44d..e034375 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -920,6 +920,9 @@ static void sdma_get_pc(struct sdma_channel *sdmac,
 		emi_2_per = sdma->script_addrs->mcu_2_ata_addr;
 		break;
 	case IMX_DMATYPE_CSPI:
+		per_2_emi = sdma->script_addrs->app_2_mcu_addr;
+		emi_2_per = sdma->script_addrs->mcu_2_ecspi_addr;
+		break;
 	case IMX_DMATYPE_EXT:
 	case IMX_DMATYPE_SSI:
 	case IMX_DMATYPE_SAI:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
