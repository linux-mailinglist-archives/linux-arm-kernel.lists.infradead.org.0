Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6641BAF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wn5MaVcTntPiVyPQdVxj9xhzPxKTYiXywdokjAIpds=; b=Vs0CxpbtDdVzXi
	NLCjbdu/G4OifFyE+uqVz/qk346eoGcKQsqj4gmc+RD6n2mu3lzGI/7e6IVuQIQt5UD2QXUEBIQq4
	TsGPdmHvS/P95ZI67v+rKP374xLlpwijdG+pzOuIh+yCH7p3dqhDzMrBcseu/zlm7UiaWRa9VfJU/
	2E4MwJ+8oPtKHaaz8eXH94kquXc2wL48+aMgu/s0wjHm1nVgLsarNgfjRC4yXDxfpK76otP6dqVKQ
	w2j0kCXlIMgJr3PFEiEpryoSzsH03NvzVC4JYz8i2avSmkPU0995my7WhFw0vPiOkI13T7dcbQ8E/
	FCOp5Xu/tc5dn0VXGqbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDjZ-0003Mb-Nu; Mon, 13 May 2019 16:23:25 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDXM-0003gl-C6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h7tGXlk44VrCEk3lRk5Ndm/wkqw/Ho00CM9OQoJGhKE=;
 b=FZ8bAXQ17fYOQ3m9dD0/kkbG6U8eSIA5/NCe6wvpbEA3MgRCdXqt+9FLn5fn4k4t279AUFhktvORFANZ0HhDh+KYB3Rb2RB9rEibGq5PYSxhUuodhxlRGBU0vX0ptv0ZjefqoBAumM1gkcRzZlhQ8H92CgM0pXEDLWwdtqsRFnA=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:53 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:53 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 8/8] soc/fsl/qbman: Update device tree with reserved memory
Thread-Topic: [PATCH v1 8/8] soc/fsl/qbman: Update device tree with reserved
 memory
Thread-Index: AQHVCaZMC9A3JXjA7EWmSckX0C+ZXA==
Date: Mon, 13 May 2019 16:09:53 +0000
Message-ID: <1557763756-24118-9-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: 895fd7e1-08a3-4e64-1402-08d6d7bd6f49
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB27097A864EC2E63BF980CC67860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JKPa05CMRwVDQ/WgwqE15na9WAqApSNqjZ+MaOE0u0kr6I4E9p9x0A9JCJbO0CZ+Dg1VvJxdv51Uhx5MKx5wQBK50MU3112XCfrIAfEr5LVEmC0HZxp4MQGePlNu+fx6HjEi/wsXCvHOgtZNTV1jNbyWlk04iASCI1v2OOCEF5q6IYibItfFwSmQ0M5Qxn1Djz4dmrREByf7CTaS4jtzKw4Zb6dXXouGgP8daITzImlJaBeOtjtp6/2jcRxV2qDnehkv0VbTZYMpdhHBgEzvdZ56qUTl5DEkSiENFHpXhVE4Uo4eZ0uX7SQ9lk7qC+yN5/udGzGAeQMWOdZQeXx8TW8L7IjknpKPl8qTiMbnXGU9c6/q2ad2ZAUxbesjbnsIodICVkk3+eaiHP4OC//rURKRGelTzkyjIVoezV+DCmo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 895fd7e1-08a3-4e64-1402-08d6d7bd6f49
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:53.8227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091049_006566_F7FEA006 
X-CRM114-Status: GOOD (  18.21  )
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

When using the reserved memory node in the device tree there are
two options - dynamic or static. If a dynamic allocation was
selected (where the kernel selects the address for the allocation)
convert it to a static allocation by inserting the reg property.
This will ensure the same memory is reused after a kexec()

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/dpaa_sys.c | 58 ++++++++++++++++++++++++----------------
 1 file changed, 35 insertions(+), 23 deletions(-)

diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
index 0b901a8..9dd8bb5 100644
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
 	mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
-	if (mem_node) {
-		ret = of_property_read_u64(mem_node, "size", &size64);
-		if (ret) {
-			dev_err(dev, "of_address_to_resource fails 0x%x\n",
-			        ret);
-			return -ENODEV;
-		}
-		*size = size64;
-	} else {
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
