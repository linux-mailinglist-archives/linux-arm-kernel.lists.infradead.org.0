Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FE410324B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zeZNWxyu+R0NDGOQEqR2PIkPn3uUpZuX5PR/ht5ahU=; b=Nyj+/rxQi02ZqU
	EmBku0J1kBufYp41KqOIfvqgXd0qiddhgxMhnJgNlXGoIna1uYh4HUZq1FECcFkF3RzNaonzuICaV
	AXvT71KUgRq4oGq64Ox9X1vQpi8K0JO0aTP9X0FtV//+nDM2x60urptLjnN/0CmBPHTyyguZO9XG/
	TT36Z8lLs9AOQwguGO8bMF5e4uNgpzLfbiJbnEqVR9NymYJ1VolTSIHCqTwxRP0ljDsqW+dIa7zpX
	PAqZnz/a4Gmylfjl4NtfvCyM7E6cg69CP8Yxp+CcGCYeZG749GGdI9pm3oLVNO/aV6bCfJFQGgV/9
	mkH/VYgMfiEDNBc5G3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGxf-0000PO-8D; Wed, 20 Nov 2019 03:47:23 +0000
Received: from mail-he1eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::616]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGwP-0007og-E7
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:46:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KY9rjpACUdYrAAIEJPP9lVN41kJyqNnZdCdR896ERpFGc89LoD6k3RA07ZZ8PB6WR8n1eXBIW7pCoDXU67JpL5WpidTK3x2J6MU0kl8VHyAjeUpsHgvvrym4Bl58FnF8+aASGKz3EFkwqTX9/CIe+ahvHazTaB+IcaJuD/f5CxXphaaFfpI4rKkP7MW59X2Jy/GRg+GDrF9ciLmCbP9YDqCSoFDxDZa972gSIFu5N2raV2nlvwziwXkYsaWCKDmdZM8+Q7cko2V5Q+99BwPccHFV31Epx5D9204HS0N/vwhaWnNbR22ZpT58Ypjmxm5WRzi4GzWMogUn5txfCttZLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gqX0XvRVWWe4Y3WCqJlyxS57G6b+STrGGDYyrKEoqM8=;
 b=C3z8hKzJhYI3qTXmoN8pil+jVRkYNQt/Qt9XFiQa89iq7/mq4XH+5LR03ClC209WMLYyqmiTd2uGnhUnpLjYYb+BMsP8Dq+W3rdyLEGOYlgYTQr8RcxDnKU6iC3a60/Gzu28mkAsjL4MYiDp0pUcP2MJIsT3NThJ2jxwp9Nd+pqZej/7QuYoaBwoEPz5ZZXMYW6nFf16Sc5IJ8GlPJpm7zfKunNMtUr6sQUslaWx/y5rDGkdZZgZ3+NOdpS/A4r+MJi7mFa8Bx+CwErQGkJ7vkRCcjmikl+ha+2mjfs6drOec+kIgu/YPNtH+az1bdjdsJCsbwdCz1NyYhxOfkJi7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gqX0XvRVWWe4Y3WCqJlyxS57G6b+STrGGDYyrKEoqM8=;
 b=NPbKFIeHtdx5c+3NUN1l/s19A8LLqH4cKKR5lmctY6HBiXsc14BNfIlpyzAuqBcKb1aLn4Bg1EHf5aKEzeMx29QpFoTWocuQQz3662v97mGF46THPxgFKglmpnbMNEM93tkL6HuOn+xFgOFVQ0h+/0dIjzN5epCA4+GS2PrUwHc=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:46:03 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:46:03 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>
Subject: [PATCHv9 07/12] PCI: mobiveil: Make mobiveil_host_init() can be used
 to re-init host
Thread-Topic: [PATCHv9 07/12] PCI: mobiveil: Make mobiveil_host_init() can be
 used to re-init host
Thread-Index: AQHVn1UI5X66mCiBEUKLNXyo0B8tkA==
Date: Wed, 20 Nov 2019 03:46:03 +0000
Message-ID: <20191120034451.30102-8-Zhiqiang.Hou@nxp.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d858cc01-d02d-4e23-6b18-08d76d6c2a90
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB56576BF874C7719ECA7B8124844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(14444005)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(11346002)(446003)(76176011)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vUBhc8YyNALQNXwhgX1fO53iPFzoURGVmnFLD1ppN9pkws4SjM1Go2fXgDT1fqKQWtmo1wlrmqKXZ/Z9UEVIyS3nQXLveliF0jwZNek3bWiIEZDxbsi9UVqbZkD2Vj8ASJ7BVwILG2ONZN8WZD4yMU3bmNIehTTvzLQIQ5HqUeFGvEzhV9DPJ71lMtz6ONcUWU/gRDeamqlpUhKnzlnJFZBGYS/xGon4FyuLS+rKrgSMqfVCp9NABg2ZSElAKeibbTxv8NcMU6qtirWXEfhBlQrrHKA0smBzbkB/impMrtZi8UYIvoTW0iGChwLPUfvCcdw6N7s1ehOOkrePDY6N62pbxMNn/XaVzxMA1J4WuBKqU4lk3KlHDx58T+t+9O/LPGOuQubKW9NsZYdDt4vuKoK+FWyIvQtioml84bO4j1I9yo4dr0mBEWi78t9O3azG
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d858cc01-d02d-4e23-6b18-08d76d6c2a90
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:46:03.7136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CE2EUxwHjwZk6khm+RetSy76fwRwvB4GMVuI7CbwD87R6kKol57I9IUvs8jBd9l0dsq/AKgL08klH61U5ERwKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194605_586770_22527F77 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:616 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Make the mobiveil_host_init() function can be used to re-init
host controller's PAB and GPEX CSR register block, as NXP
integrated Mobiveil IP has to reset and then re-init the PAB
and GPEX CSR registers upon hot-reset.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V9:
 - No change

 .../controller/mobiveil/pcie-mobiveil-host.c  | 19 ++++++++++++-------
 .../pci/controller/mobiveil/pcie-mobiveil.h   |  1 +
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 3cd93df6fe6e..9bc3da036720 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -221,18 +221,23 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
 }
 
-static int mobiveil_host_init(struct mobiveil_pcie *pcie)
+int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit)
 {
 	struct root_port *rp = &pcie->rp;
 	struct pci_host_bridge *bridge = rp->bridge;
 	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
 
-	/* setup bus numbers */
-	value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
-	value &= 0xff000000;
-	value |= 0x00ff0100;
-	mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
+	pcie->ib_wins_configured = 0;
+	pcie->ob_wins_configured = 0;
+
+	if (!reinit) {
+		/* setup bus numbers */
+		value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
+		value &= 0xff000000;
+		value |= 0x00ff0100;
+		mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
+	}
 
 	/*
 	 * program Bus Master Enable Bit in Command Register in PAB Config
@@ -569,7 +574,7 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 	 * configure all inbound and outbound windows and prepare the RC for
 	 * config access
 	 */
-	ret = mobiveil_host_init(pcie);
+	ret = mobiveil_host_init(pcie, false);
 	if (ret) {
 		dev_err(dev, "Failed to initialize host\n");
 		return ret;
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index 95d2e7c809b8..37116c2a19fe 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -166,6 +166,7 @@ struct mobiveil_pcie {
 };
 
 int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
+int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit);
 bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
 int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
 void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
