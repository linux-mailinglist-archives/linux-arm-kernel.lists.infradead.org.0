Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4653D5EE0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 23:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN8o/r9lORN07av4QoQlZXEWnRDh7ifzmwWkCiGuQlI=; b=QZxE0qEhqP0nK5
	1iBAGOdf5xF1ejyvSbPu1Ujq54YfTbytPDGYhJToRftKbJtk9c8hV1r44dTrQ52b+AygYrgSZqIE0
	GjPPm+KjF59/yP0X2svbiYfPYtsgEdq2WME+nkOfr0Pq4jbGKI+EuK2luUT13CGvBJN6y+pTdbnOn
	oAAw9yBqPG2ZVEovz1jvmNADJmISPOI5GYqX6oYBOEFKCds4ubuAUst8G4xjYhZ0n5T7t2UynQL/T
	g9KWZs6ENEpgTNTJQRd43zKYjrZ9Rh33FEMWszxAUhDUvF7dr/A3MjhsI7ipU1yrQCimKOYt02kMn
	VwMQzWlHjIM50ggzTfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himO8-00011l-Ix; Wed, 03 Jul 2019 21:02:00 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himLu-0006Jq-6S
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l34xPK1ENwFo+vU3ZrImWB+9FvYzYicyTDcI7YCSPQ=;
 b=oV0CsNCG/xhovuKXgCc6V3/QJIECYTuhZ/mI3cIoDw+9hda5z0nsYswoX1zT/XSVMtavq0mV4W1JFFWiW+QkG5PRsp+fjiDrxvf4Ep6/sVPFWgr6OM1vNCpaOS6v35V7suH6rYJD+bYS5urz+UEDBk+UUhHchG2j4W9N9ztPwAI=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 20:59:37 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 20:59:37 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 7/7] soc/fsl/qbman: Update device tree with reserved memory
Thread-Topic: [PATCH v2 7/7] soc/fsl/qbman: Update device tree with reserved
 memory
Thread-Index: AQHVMeI56zAwyfNlCka3bcuWCdBEJA==
Date: Wed, 3 Jul 2019 20:59:37 +0000
Message-ID: <1562187548-32261-8-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: 1974ab8d-a9dd-4a7e-6d1b-08d6fff95bf7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6464; 
x-ms-traffictypediagnostic: VE1PR04MB6464:
x-microsoft-antispam-prvs: <VE1PR04MB646465C46DEC0A8EA8BEF97886FB0@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(14454004)(2501003)(81156014)(81166006)(4326008)(478600001)(305945005)(8676002)(2906002)(7736002)(50226002)(476003)(486006)(2616005)(446003)(25786009)(11346002)(3450700001)(86362001)(2201001)(68736007)(44832011)(36756003)(66946007)(26005)(66476007)(66556008)(64756008)(73956011)(71200400001)(71190400001)(66066001)(53936002)(6116002)(52116002)(386003)(6506007)(66446008)(8936002)(256004)(102836004)(186003)(99286004)(6486002)(5660300002)(110136005)(316002)(3846002)(6436002)(43066004)(6512007)(6636002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bmfwSjLg0I0SAXb5GVXJr7E4v6/Nx12AEwcS9uKBjaKuO/foqlEdfzLkt3IQUGd7Xogkp83N4N8qHZnQ9BfzRISwlQkUtTnCn44NWGf2pT8AEQoixmC+6pOLMKix45oaWNBcTsMAJIZcHDyA/lEiMrsDc6LIeS5buwgScjeThccDfMm9UNRKCak+HpnasfD/vnVLAX/6GRoCYvRoYaX7d3XSJmqNOBiLzgaxSZplZsqnf6cjxs4TpyKkxNmu88LuXLdigyjFrR0IcLnDBYlY+1zfGKGKQRINd/Z7bBlviDAoGtfNMo87qeGaNPFvlp51qGmmWzOtTSKvizarE3iTbA6Hc4ZvWjo47aJ70MJidqNsvAcvH2vpK5tbubY2eVS2NVYLfWMjrrhbaAltO5mKRcFinZFU4eHXchIk4rkSw9g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1974ab8d-a9dd-4a7e-6d1b-08d6fff95bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 20:59:37.8153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135942_276474_D04C3D03 
X-CRM114-Status: GOOD (  16.08  )
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

When using the reserved memory node in the device tree there are
two options - dynamic or static. If a dynamic allocation was
selected (where the kernel selects the address for the allocation)
convert it to a static allocation by inserting the reg property.
This will ensure the same memory is reused after a kexec()

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/dpaa_sys.c | 60 ++++++++++++++++++++++++----------------
 1 file changed, 36 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
index 3e0a7f3..9dd8bb5 100644
--- a/drivers/soc/fsl/qbman/dpaa_sys.c
+++ b/drivers/soc/fsl/qbman/dpaa_sys.c
@@ -37,41 +37,53 @@
 int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
 				size_t *size)
 {
-	int ret;
 	struct device_node *mem_node;
-	u64 size64;
 	struct reserved_mem *rmem;
+	struct property *prop;
+	int len, err;
+	__be32 *res_array;
 
-	ret = of_reserved_mem_device_init_by_idx(dev, dev->of_node, idx);
-	if (ret) {
-		dev_err(dev,
-			"of_reserved_mem_device_init_by_idx(%d) failed 0x%x\n",
-			idx, ret);
-		return -ENODEV;
-	}
-	mem_node = of_parse_phandle(dev->of_node, "memory-region", 0);
-	if (mem_node) {
-		ret = of_property_read_u64(mem_node, "size", &size64);
-		if (ret) {
-			dev_err(dev, "of_address_to_resource fails 0x%x\n",
-			        ret);
-			return -ENODEV;
-		}
-		*size = size64;
-	} else {
+	mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
+	if (!mem_node) {
 		dev_err(dev, "No memory-region found for index %d\n", idx);
 		return -ENODEV;
 	}
 
 	rmem = of_reserved_mem_lookup(mem_node);
+	if (!rmem) {
+		dev_err(dev, "of_reserved_mem_lookup() returned NULL\n");
+		return -ENODEV;
+	}
 	*addr = rmem->base;
+	*size = rmem->size;
 
 	/*
-	 * Disassociate the reserved memory area from the device
-	 * because a device can only have one DMA memory area. This
-	 * should be fine since the memory is allocated and initialized
-	 * and only ever accessed by the QBMan device from now on
+	 * Check if the reg property exists - if not insert the node
+	 * so upon kexec() the same memory region address will be preserved.
+	 * This is needed because QBMan HW does not allow the base address/
+	 * size to be modified once set.
 	 */
-	of_reserved_mem_device_release(dev);
+	prop = of_find_property(mem_node, "reg", &len);
+	if (!prop) {
+		prop = devm_kzalloc(dev, sizeof(*prop), GFP_KERNEL);
+		if (!prop)
+			return -ENOMEM;
+		prop->value = res_array = devm_kzalloc(dev, sizeof(__be32) * 4,
+						       GFP_KERNEL);
+		if (!prop->value)
+			return -ENOMEM;
+		res_array[0] = cpu_to_be32(upper_32_bits(*addr));
+		res_array[1] = cpu_to_be32(lower_32_bits(*addr));
+		res_array[2] = cpu_to_be32(upper_32_bits(*size));
+		res_array[3] = cpu_to_be32(lower_32_bits(*size));
+		prop->length = sizeof(__be32) * 4;
+		prop->name = devm_kstrdup(dev, "reg", GFP_KERNEL);
+		if (!prop->name)
+			return -ENOMEM;
+		err = of_add_property(mem_node, prop);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
