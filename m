Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E287E3D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rW/iw5VpLmjIRw3zXHq0k0dOLgthhg6D1IEkZr16ayU=; b=ATFakSxq1OWyJ5
	vNB5/X1LmL7OBVpB+pX3cwYFBQG2obZfB2pwcJ7SlUgu0bs0ZYwJI/6fsvqFXje3fEZPi32NyPOCT
	sKssfUBlAkA9imBKvpvs1nqRlvwW6m1mTZ79z0Mj+Pr8XNHCInyX4RcUidmofmlIZ49mTmBPIBQZH
	2wyPepmLWCBpToGUY79fQm+itZS2pD/udU007W9rxaQfXHzc2SVgqS5Q8SKpM78FhwAqxj1V1NKes
	lsDLilKOKwVDCp1J5alx/VYgy9tioPrRaL1HDyI8/xfNA929NJ9BJ1bA39moFmqCK3/TKhWjwTCyf
	+Q7nO9mZcygpn3Pxbp4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHVw-0004iR-LS; Thu, 01 Aug 2019 20:17:28 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVU-0004EZ-ME
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fy78kcop2n0chceBy1H/uVD8LNhJ1ql6z//K82UGimUt/quLnn2mq9PLZkbJ1b6NZZUjfUbCmrL3D7891Gjtnr6gRlw1XnsnFoMXgskK1eAilte9ZgHY9wCrC5JhK40XAJ34qNPpwrQkbIymUhMfaqXnzsKmx+R0nVoFtVzx6jyhRYKOidUA2r84D0FPUL7lwoLNcuWvHquayyIHlA6ll3mAnPhdZM/7EkiwevfmqL5pqcvv80D4bIPoTyz1DEjekuG/2cKo+6vsZhETgsfk7TTvA6WdamCORSKCtNnppJbBTi7Uf91n0IXg6knU+nTJyU1d756hjKHbLTtWjOsPJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luj+G3Y26CleTSE5ajWP3D8q1SrKXpByCXPS52hsVfA=;
 b=kr6jxIB3fR1RLuI/BYXAai1Jynvi/f4Ts/Dk23mKk6j+GWibSGPXHfcjo6a4VeoouqBrnkXXR32Yp3L+rurUqRvsYZkDduUXD04avDc0dR/zMq/9f55XkkWOF6a5v1A1Un/KAtUmFkJp+0W7yM+xubvw1cDZ9T0PSxE+77d2YzYK84yPFfTRDESKb0c9UAIYgEDxE/xOfsABMibBTh0x6r781sYNs0gIAM1oKyWh9qvlVAFVCQOGPZKcCMlXulsq4aJfNN4/GBZiowDXU+QPf/93Tg4NBaJCXjHUmlzqzCGPvxBJ0IpeUVepkuUg7kzAA7pN/FzgotEJZxGxCShWmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luj+G3Y26CleTSE5ajWP3D8q1SrKXpByCXPS52hsVfA=;
 b=rKvrzp3SJ5i86elNCrhTKoDDvGao0tMq2mwtEP1bzJzA/UfRjWP9pvSorN3ug6fp3QzI3D6rRNVK4uya39+bMBdRm5qWf/Rs8dgnR7bNoi65kWSXT7EpjjAgsiFyH7JpLHv209I3RoTvADU6ECuvw/YfxIl4AT/HRT2nPAPvkBk=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:16:53 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:16:53 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 1/7] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Topic: [PATCH v3 1/7] soc/fsl/qbman: Rework QBMan private memory setup
Thread-Index: AQHVSKYPJmyUpSA7bEOHwoc9Zbz4tQ==
Date: Thu, 1 Aug 2019 20:16:53 +0000
Message-ID: <1564690599-29713-2-git-send-email-roy.pledge@nxp.com>
References: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN4PR0501CA0130.namprd05.prod.outlook.com
 (2603:10b6:803:42::47) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbfc0647-e0cb-4d13-739b-08d716bd3199
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB66565E47C49086E52BFBCC8286DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(14444005)(446003)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(11346002)(76176011)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3rOswdnOFs2jQYIdCTjBaYAzFc0g/LLJDwoq83h7IF/RSfQRK+2c4ZePVJQbR4lVJ+ETjvTRZioOXucIQzjjbNxkNfyWw63JIsuT/ALHpjGYcKX6Ywjsr9RVEyGXwj06FcNGnO6pkxk64ylq1WbnloR6qXZPUlw7xcxp7uWMLBgrpUem5In3Fp3CVb5bdrdRg8o+dvXzmBDiolXG8VEIMLibe7tRdUc9YqIcE4KIrOJOTbbU5yxaR4H/FKOZb7Hek9+iedcgdmlVuG2J77nGRz+1lEed3z39TwvYhyJRkzTET/1o7Fbv/mcEodpPI+IW1kitBCrmHxnPdIkt8lMHSabkav4Ji1KsPTtwY/FYwxkWhQ817YH5X47veKCypuaFRrLEtFdGdL5x2Jq1NWKXTCXeBJIw+NnVZmOBO52XbQk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbfc0647-e0cb-4d13-739b-08d716bd3199
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:16:53.4863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131700_727068_16A7AAAF 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/soc/fsl/qbman/bman_ccsr.c | 26 +++++++++++++++++--
 drivers/soc/fsl/qbman/dpaa_sys.c  |  7 +++--
 drivers/soc/fsl/qbman/qman_ccsr.c | 54 +++++++++++++++++++++++++++++++++++----
 3 files changed, 76 insertions(+), 11 deletions(-)

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
index a6bb430..a3edefa 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -274,6 +274,7 @@ static u32 __iomem *qm_ccsr_start;
 /* A SDQCR mask comprising all the available/visible pool channels */
 static u32 qm_pools_sdqcr;
 static int __qman_probed;
+static int  __qman_requires_cleanup;
 
 static inline u32 qm_ccsr_in(u32 offset)
 {
@@ -340,19 +341,55 @@ static void qm_get_version(u16 *id, u8 *major, u8 *minor)
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
+
+#ifdef CONFIG_PPC
+	/*
+	 * PPC doesn't appear to flush the cache on memunmap() but the
+	 * cache must be flushed since QMan does non coherent accesses
+	 * to this memory
+	 */
+	flush_dcache_range((unsigned long) ptr, (unsigned long) ptr+size);
+#endif
+	memunmap(ptr);
+
 	qm_ccsr_out(offset, upper_32_bits(ba));
 	qm_ccsr_out(offset + REG_offset_BAR, lower_32_bits(ba));
 	qm_ccsr_out(offset + REG_offset_AR, PFDR_AR_EN | (exp - 1));
+	return 0;
 }
 
 static void qm_set_pfdr_threshold(u32 th, u8 k)
@@ -571,12 +608,19 @@ static int qman_init_ccsr(struct device *dev)
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
