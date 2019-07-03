Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F935EE03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 23:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4NaaRVec73635be3ZJ34SVaw4mW5qYZlBVHu5iN/Yg=; b=ZgrKlC9UAbocK4
	I3dj79/AxZVCkjFHubB8BWTkcbj1kt+1xDk8Qftufn0PcPWMIwOiQRlpfOXi0l9EU4ITVlatI4qXo
	BdvD+GBKCofah1tIQIhGOmtDSpcz5d6qIoO7Xu1I3RoEhtZ/N17nDWHjSB4SGKoLS0cZQG1u8s678
	0WATWi4irDdGB2v+8f1ekxMP/2mysW7Q6YStuqSmwqwiHJsd7faY/9lRSCIe8WGyyuphHsmNHgvOY
	j2NcgHoDXrGoRsCUZ+S2pqzUdn8rz0I8y1gPYYbubT1ACzKDNgRHsDU/Pi/sAzsChcr3h41TbvQGV
	vYAmOX6qAP3UL5Sa6Zjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himMT-0006c1-EQ; Wed, 03 Jul 2019 21:00:17 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himLk-0006Jq-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4XzH04VyMkU/5vIBzhhhxcuTfHUI0O8GFlI+grC5liA=;
 b=pij2suAomTXo9a2Fpv/kWne/ughN1BbYIMcOOgiitqCaJ69u/rUBXH0xeasMYgQrG4Qj45ugY2aKo/oCxH2l3ZjzRtSWsdn7JwNdxUhzTGkmTvai6n8bNR+3V5rKA9HsRDuy9NYThiOW3Z+UAUKwNUUieyQcH6yyCYGLFRW6tl0=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 20:59:26 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 20:59:26 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 1/7] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Topic: [PATCH v2 1/7] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Index: AQHVMeIzPLFPuVfPjE2P/r3d1RtleA==
Date: Wed, 3 Jul 2019 20:59:26 +0000
Message-ID: <1562187548-32261-2-git-send-email-roy.pledge@nxp.com>
References: <1562187548-32261-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1562187548-32261-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN6PR15CA0005.namprd15.prod.outlook.com
 (2603:10b6:805:16::18) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b0a1e33-fb2f-401a-68fe-08d6fff95517
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6464; 
x-ms-traffictypediagnostic: VE1PR04MB6464:
x-microsoft-antispam-prvs: <VE1PR04MB64646761413A117D8564C2F386FB0@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(14454004)(2501003)(81156014)(81166006)(4326008)(478600001)(305945005)(8676002)(14444005)(2906002)(7736002)(50226002)(476003)(486006)(2616005)(446003)(25786009)(11346002)(3450700001)(86362001)(2201001)(68736007)(44832011)(36756003)(66946007)(26005)(66476007)(66556008)(64756008)(73956011)(71200400001)(71190400001)(66066001)(53936002)(6116002)(52116002)(386003)(6506007)(66446008)(8936002)(256004)(102836004)(186003)(99286004)(6486002)(5660300002)(110136005)(316002)(3846002)(6436002)(43066004)(6512007)(6636002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M7QeasEi1Z5CR75593E19ofn71mq7Rj630ZW35mXGxgToMfkJtW7C4T7kbNV2ZQzOcbUnyKaoZl13lj/87U4mP0MZG8EGGEvCt9Eh49ppKdO1uQohvH4MeJrIlLh+yRgp6X/Ud9OD5jZR7dUiaaeBHazaOwZHNBh3HzrB+D17IiZgyxIWOuz45YiF9qVRyrMegBJFtKlyRhRl/VDHL+JDvzBeXkopoiKNhfT607kOEUGcU2L+SlLkKrABbojwK+oyPkVcUBNM7xnlRQ0LQOrDo6U0MQ4etpU1D0phbBNHckGrg9zHs7ehYC4j7XluMX9QJsTSRB74Curv0kt8O4eOksIh7TyskTyOf2Q9VUlY1wXDbAhOc+SNZnI20XpMMjqz1bj16+cQwJ2LasNz2TbKtY3PyuAETdQrZcc0Lxbue4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0a1e33-fb2f-401a-68fe-08d6fff95517
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 20:59:26.6926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135932_523607_A96A566E 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: Roy Pledge <roy.pledge@nxp.com>
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
index a6bb430..39f6fc1 100644
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
