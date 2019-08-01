Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5139B7E3DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN8o/r9lORN07av4QoQlZXEWnRDh7ifzmwWkCiGuQlI=; b=iLbyGggybXdSK9
	2QKKklVjyHRhsPfYgqQvQVfWS+LlzRj2goa+vDuYdK/boazZqnOC8co9Oz0aMYvMFAmlRJHh/uyH2
	L0w/zZS2mYmFAyEHJk7fcUo3Qx11ehW+rBO1IFZpD6i9HdnxK63mPYDTiXnXIM4xfoDyaLNY2lRns
	qy/WKbSiOPi+t9a1Dx3Add8th0Vwdq2ytrDvicxmtI6tbm42ibeyyaoi+eye4dJLmBiNrl8LOT8rY
	1QcDIbIY4r0LqAtmvCCmuafAOViPZWpys0LoW1zrHPG7YwqF7bV/Zs7Wdi7zv18xi+Ks42ZrSJrSY
	BpOI697HRKkjLgCCbVgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHX3-0006Hu-Vq; Thu, 01 Aug 2019 20:18:37 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVf-0004EZ-Eo
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+iZMAOXulcpq5ZWWg4BPE8m2CFGlrgvPBbwt0jVgsRpnlPjWGV7tq0IZTaxWYnKPALH3+/jkGOQCj4NxoKH6piDkc9yfS1o5pw6HlOE9z94+R5FloMj4ZN6Afe3DzMkPfuZdH1bcOan+I97ZYtTvHhpPJvZz8vdBIHnmhXN90hhX0vJJA1PSaegn8FTwoYZuQhoXO8JEc4dPgpgGWXL74xqvxSB7VevOyk9nmGnY14HypDWo2fiu6c5P/iJs3lMy4GfEPDm4QxC4xoyIEcCSKDIgnwdGbC/4zMcZ2WYQFzQxmpleE29BXckmqE29CvAUjzpNT8Ps1xZ+yd2nh6hHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l34xPK1ENwFo+vU3ZrImWB+9FvYzYicyTDcI7YCSPQ=;
 b=RfrR4BysL5h9W1ys3el3pgPqflFSeR+8Db0I4cEEt6R2Vp8bpfVju3S8H7spnhogXA1kx8ct/gl7c/BR7HRzShoQ5uQrAkVh1yU0L8ws7wbiKXSzMAQAdPSG2MCYuvjbB1yrrrUYDfU2QZqbvuqD1QXKEBdx+JOseKDWhGUwpOvuMcG9u5OA4N8UuCmJM030DMR20O+ed8BSBXzStP66beev3ojjK49uUlYo/ndOBhuGtRwHHT8FPKzzmUxfSf0YgkMw4qHwsP+hIwg+BnE/VT8snbuR41mIjfWKNRsYlu6d6h2qirxWAX1aBKq/EKspmq3yS234LLLL5tWFz3HZsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8l34xPK1ENwFo+vU3ZrImWB+9FvYzYicyTDcI7YCSPQ=;
 b=fqsg+Hq5VP5DcbijzEExqXMcA5Dgbgf8BQ5Jz0m23BIsJWo8NKxXJldkjJl5RXuWdafsbM+JcYmYn7yXwKDH+lKu+L2W80w6zxRaButiT+YxfgrgjE4tvCvnFRNvMKpi7+TmkuC99L7yo4DY8ZS11Jx76i3gukwO5fSUXFjTO24=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:17:06 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:17:06 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 7/7] soc/fsl/qbman: Update device tree with reserved memory
Thread-Topic: [PATCH v3 7/7] soc/fsl/qbman: Update device tree with reserved
 memory
Thread-Index: AQHVSKYWuFTHmQqu20aQz2C6qV8lvQ==
Date: Thu, 1 Aug 2019 20:17:05 +0000
Message-ID: <1564690599-29713-8-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: 0c32efdc-14b3-4f66-4356-08d716bd38f7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB665633A5747F901C5A84F0BA86DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(446003)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(11346002)(76176011)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g+PqbCWxYxijpCcvCbWuXQNwXY/vHK1rIW+U7dH5/Eskp33jFSwWh7hh/XerixsKr9eP6PLC5MdPYuxkXhwCS+AdpnAxYv+CB280HbkN6gD9nhGbxxFi8cb1I1QoksiDB5/7IzFZTipNFXg5rHKHVO33oxsFNjB6Carbbu9Jt6Jnfq2o3/qL/O/9/mMrWjRc9P98ZFZP0n0fmFMTlwgOrkM94JQf3oQlOhzpM7PU7Kfkm4+wZFVqj3JXBL/245dNC5tOZW0yo/gLdP6chxHk/Y2+hS83c+pcxjQdcoUkTGJW2JeUk8MWKkFUHnnAk7e9Qeemqg+vOXkGLfg9j0VCfTNjXyb1OeckXxt5PhiZxfFryW98mMNMWaMqNXu+YjyMs2t0FZrfqckz+jW5Ge/Wpx3lbzhAozk7hf4+XuOYJ+I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c32efdc-14b3-4f66-4356-08d716bd38f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:17:05.8861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131711_565497_FFAC47E3 
X-CRM114-Status: GOOD (  16.55  )
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
