Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D1510323A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9OKEdAvR11dEBClDRI9WPXAXfFi2PeSCPONktWzhvU=; b=a6HdX08QNeGsgE
	GZp93eS7ih+JJh4tjpClKQ+Y3VT8EuC6pibkCoidVgmyoLj8SdIRioqjfrBl9HsjeHfDCJ0TMY2YD
	PzmsPLq5UYScW85vUDddt84yQHVNMC2m2ClHcdq4U2bIRh2zmrequS7maniyRUJYYy8u2urXs+6Rt
	ajzm+Vp9yF58+TMaPe/UOt+qrzR4NCbZ7+GSKX0VCxHVVs324YvJQbjGAM38UA39zdtsvdw5NLIjg
	C/+RtXdjEZ3cTWIXkMMv+f8ZN2OgLeSSF9RnWIvoPmeEB+mBa7SJbu58wkaWXGMdOPXKUTF2WziDK
	4xnx0GjPAcNmsQQgK9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGx6-0008Dk-2h; Wed, 20 Nov 2019 03:46:48 +0000
Received: from mail-he1eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::60f]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGwB-0007dk-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:45:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQCgzIwsgltzbGNvp34eOEQlYDqhlvQFB1IpSCybCoCkuUken826daO0chp7fgI5DV3Gq8JVdMD37ZZ+PdXUwd+W8/k+aqKoDBRdUmavXo6+YDcgxFoAsbf4EN7aWwCg7HknvsHu7lP7laLg+ZVFYZK/chnZLqssgk9xxA5Yuk1P7GvxFbYb7QuamQyF/W51P2LoGIXn11wJsmKfM1c2Pc42L9u7LTzettqzc5jzmK9pkq8tEubU3vIoUEso2Kvrazp+wI9ym3enPeoQ6HiHW06VXeLNm2e+LpVfprGPq+nd+12BpvteCQTTWgq1OunlCtQEno/v/k7i0dTrKQb3ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yemu+fnb4jC5+1a7gjyOWhbaVLFHeudVHEUWh2NJ63Q=;
 b=nogsWejvvHrNBNeW8NDUM7VKmIdWMelez10bL2bsrhJ1fVNVLFCzt65dWEzrcn0tYajQaNE9mSRliMEzzUobLh3StACfdBM9wrL6liPCTkPQVxB0Pd2/kLf5fBUkP390a9R6JrCaErRcESCa5NAq5c4uYQ4qCY0h6UCyUKTRppUpM7mpKxbxEykHY5yPrUSooOFCChzK+q3n1vRf1jZSDIjozBRAE6yvV8/TYfN7whV3n6kOIEYLWPuOowgJ0K20vVVlDTIq6AaLAH0y9OvGz+rosl4qkTkIt3bz0GXj5mZ1Mpjw0tdiEiC5dcTkG90CapX2IY8mskue9N+JlL2d5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yemu+fnb4jC5+1a7gjyOWhbaVLFHeudVHEUWh2NJ63Q=;
 b=stS00CF/OwEjuj68tNN0yrfO8l3ntMcy2Z9pUIPqOpHKFYHQdegtVUpmELRKNJqTahahUxa9l7q9vCBHHcm7/eLTtuTy9WQpdrFow5Akf9Iwyax29e9nPGgZTY7B1qUMzjWmTtpZGR5LsHp94FfEKFI+Bi80Y0M6ZlH/KiurP1A=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:45:50 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:45:50 +0000
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
Subject: [PATCHv9 05/12] PCI: mobiveil: Add callback function for interrupt
 initialization
Thread-Topic: [PATCHv9 05/12] PCI: mobiveil: Add callback function for
 interrupt initialization
Thread-Index: AQHVn1UA2UYxNg2IeEqKBDKnWsGYwg==
Date: Wed, 20 Nov 2019 03:45:50 +0000
Message-ID: <20191120034451.30102-6-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: 3a0b90ff-af0e-4f1e-1070-08d76d6c22ae
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB565768287C718F48EDE282B4844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(14444005)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(11346002)(446003)(76176011)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M7WA6pqSjriMg7rTgpd5k3sXt0lWuJGspQEBV4xN+SocufYZny7pPt+0N6D5tb1oN6ZH4Na/nhR4ersI7BtDz0iz52Qtq+kJ18LWVHW+6NTfDRems8zMnlf7Tut4lE2S+THzlBye9nAg/LJC57vkzueoMmub2nDwBfQ0U1TWaUlnOQI1nwPQKaCVKhHz8Ls6Q97L03bg7ohaQ6fQ8UKzdeZwvbMcJNi5bi1sgpoyCT/t+iWuvtdcOpOwhLUbZ++7gzGGjRfJVl4RIvjTE00GfAITYo5RyQjxFS8YQVoRcQ3DU25SZVH149gLnhNb1CYS/dVxdqaXtV5tz+DcgB7NCWK7pALqpt0Y+o6M2f2N3deKCCwL8c2pk1HI5zUkgGvHaM0JElssaufD90mBYT6VFLE5utYJUps9o6emL9Qwp0CJheC6cOkdlFzBiLSugFUD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0b90ff-af0e-4f1e-1070-08d76d6c22ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:45:50.4611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T+CamStsRsr9UVaStuY2G2x8J+qRaq/UerRT+wNBPtkGUgs1ZOSMcnzVkTWLPZ+7jEXxTIL8ItqTPUMq+aZ/SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194551_822640_81A3B498 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:60f listed in]
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

The Mobiveil GPEX internal MSI/INTx controller may not be used
by other platforms in which the Mobiveil GPEX is integrated.
This patch is to allow these platforms to implement their
specific interrupt initialization.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V9:
 - New patch splited from the #1 of V8 patches to make it easy to review.

 drivers/pci/controller/mobiveil/pcie-mobiveil-host.c | 3 +++
 drivers/pci/controller/mobiveil/pcie-mobiveil.h      | 7 +++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 2cc424e78d33..3cd93df6fe6e 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -507,6 +507,9 @@ static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
 	struct resource *res;
 	int ret;
 
+	if (rp->ops->interrupt_init)
+		return rp->ops->interrupt_init(pcie);
+
 	/* map MSI config resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
 	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index e3148078e9dd..18d85806a7fc 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -130,10 +130,17 @@ struct mobiveil_msi {			/* MSI information */
 	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
 };
 
+struct mobiveil_pcie;
+
+struct mobiveil_rp_ops {
+	int (*interrupt_init)(struct mobiveil_pcie *pcie);
+};
+
 struct root_port {
 	char root_bus_nr;
 	void __iomem *config_axi_slave_base;	/* endpoint config base */
 	struct resource *ob_io_res;
+	struct mobiveil_rp_ops *ops;
 	int irq;
 	raw_spinlock_t intx_mask_lock;
 	struct irq_domain *intx_domain;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
