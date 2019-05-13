Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9E1BAA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV97PSppSo5xOLno5UQthxOYh6kKUq7Hj1OETRrCAQk=; b=lx11bN8KatjmXH
	oc2kcWyXOGVqmhtse/k5/pBxnOSi/9RovG/9Zf1UK4nBwN6fQPCHsdo/RR4t+uQ4WubTK/iLwHW90
	6PPS1QTd/WKJkM/gMREbL5/KYqe4Vd2imE5J0IbmBaa6pVLfXini0PIwMrBTwOrAhqHMXNfbRhcC/
	FfDgAC/QAa9ztDC1ThjDHKNabQzVXRRplYW4ROTv9hKVkn0IVQl0wGe5Zy9xPojVMBFdO2oKAaSLo
	9qJRNUpzWMQEGgn8eJllx+6mWOMxUXpAVIGLzRBrZN8REb1qVwAV16fP/IAgH2rSVG5iADaDwPLOk
	+HdSfLIkapsxKz36sxxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDWj-0003sq-Bn; Mon, 13 May 2019 16:10:09 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDWN-0003gl-IM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3tDPVaKIKIlPQRhyLSR746hhcJ0XIzk3tRMTpL9Uu8=;
 b=k3B+m2EpEBEaF6MRSZ67e4cwll/By8pLdJODGOSrxsDqPeLX7mnZHBrANESsmv7pn3kMGRXm4QQaE3iYrIcNfFdWw6T3tyKAUIQfalUL+6vPetnVLjMctrg3lcMQWY/9GyigEPw01GxT1n/6Re8zDQO3T9aZAhq95zxGwA+uSbM=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:40 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:40 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 1/8] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Topic: [PATCH v1 1/8] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Index: AQHVCaZFjUNNNQ05uk+bzdAzenpPYA==
Date: Mon, 13 May 2019 16:09:40 +0000
Message-ID: <1557763756-24118-2-git-send-email-roy.pledge@nxp.com>
References: <1557763756-24118-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1557763756-24118-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN4PR0501CA0144.namprd05.prod.outlook.com
 (2603:10b6:803:2c::22) To DB6PR0402MB2727.eurprd04.prod.outlook.com
 (2603:10a6:4:98::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a157450-146b-4661-b9b4-08d6d7bd6756
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB270926B8263FA1154CB7CE33860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(14444005)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mMPZsJO+GDb/rz+GQSqmG+YuDBAtKjGOXjbe8kTeMdrd9f2dkmYGAO6Pi4WaZaaF1m+qbLGEzxihUEN6Pv4nJO9tPmeuPgAV3I6T4zDk62IPALtez4Orrq6Y9KkDkKyKwIntO7bZi5ulLPHDam/i4S618GyYgjQAfo+mWV7WucSRIErklfVaNqK4z4SrOFtoXJds/E2pCybWe4TbkT0CAg05+JrdYLvuYudx22GYM3nYmxUgqRRo5X7IeClW5BVk2v3pPKtNrIYi4bP2SyW2eLiuUystq3o+Njl1bU5VT5R50YmHiQQ7nA8j3PJ8u/ihrSj7H7NsIBukAONuvE5YpyIQEw3RU4T1r03E9quMTr7j/bkKzaPtET7wHWedg+d0Y3ccJ263OHl67muzMHbhr2Anx6UN8tisTim+oZwUQoQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a157450-146b-4661-b9b4-08d6d7bd6756
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:40.8537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090947_604551_8588CBEE 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: Roy Pledge <roy.pledge@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rework QBMan private memory setup so that the areas are not
zeroed if the device was previously initialized

If the QMan private memory was already initialized skip the PFDR
initialization.

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/bman_ccsr.c | 26 ++++++++++++++++++++--
 drivers/soc/fsl/qbman/dpaa_sys.c  |  7 +++---
 drivers/soc/fsl/qbman/qman_ccsr.c | 45 ++++++++++++++++++++++++++++++++++-----
 3 files changed, 67 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qbman/bman_ccsr.c b/drivers/soc/fsl/qbman/bman_ccsr.c
index 7c3cc96..dc6d7e5 100644
--- a/drivers/soc/fsl/qbman/bman_ccsr.c
+++ b/drivers/soc/fsl/qbman/bman_ccsr.c
@@ -97,17 +97,40 @@ static void bm_get_version(u16 *id, u8 *major, u8 *minor)
 /* signal transactions for FBPRs with higher priority */
 #define FBPR_AR_RPRIO_HI BIT(30)
 
-static void bm_set_memory(u64 ba, u32 size)
+/* Track if probe has occurred and if cleanup is required */
+static int __bman_probed;
+static int __bman_requires_cleanup;
+
+
+static int bm_set_memory(u64 ba, u32 size)
 {
+	u32 bar, bare;
 	u32 exp = ilog2(size);
 	/* choke if size isn't within range */
 	DPAA_ASSERT(size >= 4096 && size <= 1024*1024*1024 &&
 		   is_power_of_2(size));
 	/* choke if '[e]ba' has lower-alignment than 'size' */
 	DPAA_ASSERT(!(ba & (size - 1)));
+
+	/* Check to see if BMan has already been initialized */
+	bar = bm_ccsr_in(REG_FBPR_BAR);
+	if (bar) {
+		/* Maker sure ba == what was programmed) */
+		bare = bm_ccsr_in(REG_FBPR_BARE);
+		if (bare != upper_32_bits(ba) || bar != lower_32_bits(ba)) {
+			pr_err("Attempted to reinitialize BMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\n",
+			       ba, bare, bar);
+			return -ENOMEM;
+		}
+		pr_info("BMan BAR already configured\n");
+		__bman_requires_cleanup = 1;
+		return 1;
+	}
+
 	bm_ccsr_out(REG_FBPR_BARE, upper_32_bits(ba));
 	bm_ccsr_out(REG_FBPR_BAR, lower_32_bits(ba));
 	bm_ccsr_out(REG_FBPR_AR, exp - 1);
+	return 0;
 }
 
 /*
@@ -120,7 +143,6 @@ static void bm_set_memory(u64 ba, u32 size)
  */
 static dma_addr_t fbpr_a;
 static size_t fbpr_sz;
-static int __bman_probed;
 
 static int bman_fbpr(struct reserved_mem *rmem)
 {
diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
index e6d48dc..3e0a7f3 100644
--- a/drivers/soc/fsl/qbman/dpaa_sys.c
+++ b/drivers/soc/fsl/qbman/dpaa_sys.c
@@ -40,6 +40,7 @@ int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
 	int ret;
 	struct device_node *mem_node;
 	u64 size64;
+	struct reserved_mem *rmem;
 
 	ret = of_reserved_mem_device_init_by_idx(dev, dev->of_node, idx);
 	if (ret) {
@@ -62,10 +63,8 @@ int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
 		return -ENODEV;
 	}
 
-	if (!dma_alloc_coherent(dev, *size, addr, 0)) {
-		dev_err(dev, "DMA Alloc memory failed\n");
-		return -ENODEV;
-	}
+	rmem = of_reserved_mem_lookup(mem_node);
+	*addr = rmem->base;
 
 	/*
 	 * Disassociate the reserved memory area from the device
diff --git a/drivers/soc/fsl/qbman/qman_ccsr.c b/drivers/soc/fsl/qbman/qman_ccsr.c
index 109b38d..d054e37 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -274,6 +274,7 @@ static u32 __iomem *qm_ccsr_start;
 /* A SDQCR mask comprising all the available/visible pool channels */
 static u32 qm_pools_sdqcr;
 static int __qman_probed;
+static int  __qman_requires_cleanup;
 
 static inline u32 qm_ccsr_in(u32 offset)
 {
@@ -340,19 +341,46 @@ static void qm_get_version(u16 *id, u8 *major, u8 *minor)
 }
 
 #define PFDR_AR_EN		BIT(31)
-static void qm_set_memory(enum qm_memory memory, u64 ba, u32 size)
+static int qm_set_memory(enum qm_memory memory, u64 ba, u32 size)
 {
+	void *ptr;
 	u32 offset = (memory == qm_memory_fqd) ? REG_FQD_BARE : REG_PFDR_BARE;
 	u32 exp = ilog2(size);
+	u32 bar, bare;
 
 	/* choke if size isn't within range */
 	DPAA_ASSERT((size >= 4096) && (size <= 1024*1024*1024) &&
 		    is_power_of_2(size));
 	/* choke if 'ba' has lower-alignment than 'size' */
 	DPAA_ASSERT(!(ba & (size - 1)));
+
+	/* Check to see if QMan has already been initialized */
+	bar = qm_ccsr_in(offset + REG_offset_BAR);
+	if (bar) {
+		/* Maker sure ba == what was programmed) */
+		bare = qm_ccsr_in(offset);
+		if (bare != upper_32_bits(ba) || bar != lower_32_bits(ba)) {
+			pr_err("Attempted to reinitialize QMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\n",
+			       ba, bare, bar);
+			return -ENOMEM;
+		}
+		__qman_requires_cleanup = 1;
+		/* Return 1 to indicate memory was previously programmed */
+		return 1;
+	}
+	/* Need to temporarily map the area to make sure it is zeroed */
+	ptr = memremap(ba, size, MEMREMAP_WB);
+	if (!ptr) {
+		pr_crit("memremap() of QMan private memory failed\n");
+		return -ENOMEM;
+	}
+	memset(ptr, 0, size);
+	memunmap(ptr);
+
 	qm_ccsr_out(offset, upper_32_bits(ba));
 	qm_ccsr_out(offset + REG_offset_BAR, lower_32_bits(ba));
 	qm_ccsr_out(offset + REG_offset_AR, PFDR_AR_EN | (exp - 1));
+	return 0;
 }
 
 static void qm_set_pfdr_threshold(u32 th, u8 k)
@@ -571,12 +599,19 @@ static int qman_init_ccsr(struct device *dev)
 	int i, err;
 
 	/* FQD memory */
-	qm_set_memory(qm_memory_fqd, fqd_a, fqd_sz);
+	err = qm_set_memory(qm_memory_fqd, fqd_a, fqd_sz);
+	if (err < 0)
+		return err;
 	/* PFDR memory */
-	qm_set_memory(qm_memory_pfdr, pfdr_a, pfdr_sz);
-	err = qm_init_pfdr(dev, 8, pfdr_sz / 64 - 8);
-	if (err)
+	err = qm_set_memory(qm_memory_pfdr, pfdr_a, pfdr_sz);
+	if (err < 0)
 		return err;
+	/* Only initialize PFDRs if the QMan was not initialized before */
+	if (err == 0) {
+		err = qm_init_pfdr(dev, 8, pfdr_sz / 64 - 8);
+		if (err)
+			return err;
+	}
 	/* thresholds */
 	qm_set_pfdr_threshold(512, 64);
 	qm_set_sfdr_threshold(128);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
