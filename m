Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C7F11A5A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYAg0X2id7UQml+18qFmuvDrFSBdXcTikboUtL1ac60=; b=swx1RudhfavjaK
	t6N0iUFdZqzulhic2IZRQLKgucWfIgWu8O05VAV+I0i7WrRbgTBn+V+KJjOxS2megbb2lodbeXyM5
	Z8QT9ymF0f+nuejmKGCrS8WIjandxpSC5IvrLS9JCJitsgqUWWOQCHbqoRaV6gVx5t1C0KG8i+IRK
	cKH+72CdWO9isxGM1/o5dg3uDfxFo85I+gKu5bVvkW/cTyVj8th89gtMnyKFsI/e7Soba+uWfcf37
	fRJTdWNlvGaHKp9uCM3h09F1zJrqBGLC17+gY9FjP06i/OKYnu482mxN1bPkZClJH+JauUiAFiAfe
	OLG7fPzNkjJaaDqSd9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iex4Y-0000V7-SS; Wed, 11 Dec 2019 08:10:14 +0000
Received: from mail-eopbgr20087.outbound.protection.outlook.com ([40.107.2.87]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iex41-0000Fg-Ef
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:09:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VhfKxSKaBCL7oTe5WS0EOrzd46MqLnrFz4mmKZrWoyWEvSn6/VgYWXixy3RWBZmrjnfvR/iW+zRw7KeNgbQ0FviWBbdUThskxSAH/Fc7db9QD5XmYFrDk3wqhYehNDYtOdfIZnTgexyFFaSLb4b03rt2It3toMZTF0+9YJfhqoMkVn5tQJ0Ibn/qQBmoeUvsGdd4j4l6f97cHrxqHKu7/InZo4o9OWLgVHctBAIbBzAIs0/LOV51+ylM9qvN7/V8UkMAEGG9qKdxUjl+S1/83whbMnPGZ9MZiq3Mc4LUAvUWV4K6rQLfSl58JiDq9MsUwuhHWH0knRq90AnVTf5XQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CY43+1YJu09T2gmZkR/fFiUsp4P9KFzFb9FUwGAZieQ=;
 b=RdinnvKyBDMcRd5yHGwMGZtvwHXlQaK74MGbCvxAmSwPdLC60ozmfLnHAfM0Qb4W96Y9bK11+AvtbgmENXQmIMf1ZW3hbPRfWwEIB5ZC/RY3iUvkI130cGOuPBs//6cgk8iKz2yRMo2JKxSN8am29W/5CEZacxecUNx9eEeiFQL+sxfqx/uMxRkxZAAPv+PhWmHcX9zerhHrzQUvOJfTJxHgQm4t91PAgTGbZmH5dzROKRwI5kd5f89iDkPBNUfZZNqq/QPRTRLzkF15uDzrWFafZBgS/gknb30/xwqmbUvd+0Fin6ugiqQi3NkgTn8L7cIkyBTFayhqfamvG3xNAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CY43+1YJu09T2gmZkR/fFiUsp4P9KFzFb9FUwGAZieQ=;
 b=hy8zA17VWK3OrP0u96sUXg7IThjqK+mkG1f+phNWi2yQ0YmGHGpB5Do0vO7ZuFI9/zUVzBMjozEwsDi/H8/dO7spZdYbhDOl+MM/UrwT/Mkvnj4y871WS6s3NuifE4O+6L+eOpvqcRIYEINUpWEwJ/UipCtjXiBIFdM5D5xbALE=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB6222.eurprd04.prod.outlook.com (20.179.24.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Wed, 11 Dec 2019 08:09:39 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2516.019; Wed, 11 Dec 2019
 08:09:39 +0000
From: Peng Ma <peng.ma@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>, Robin Gong
 <yibin.gong@nxp.com>
Subject: [v4 2/2] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Thread-Topic: [v4 2/2] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Thread-Index: AQHVr/pVLFcNUBU5x0yRpJwDJ3vngA==
Date: Wed, 11 Dec 2019 08:09:39 +0000
Message-ID: <20191211080749.30751-2-peng.ma@nxp.com>
References: <20191211080749.30751-1-peng.ma@nxp.com>
In-Reply-To: <20191211080749.30751-1-peng.ma@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SGXP274CA0012.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::24)
 To VI1PR04MB4431.eurprd04.prod.outlook.com
 (2603:10a6:803:6f::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0d902cc3-ebce-48ff-61eb-08d77e117818
x-ms-traffictypediagnostic: VI1PR04MB6222:|VI1PR04MB6222:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6222DCC4B6E4C60DDD61CA93ED5A0@VI1PR04MB6222.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(199004)(189003)(8936002)(8676002)(6506007)(5660300002)(44832011)(6512007)(4326008)(2906002)(36756003)(6636002)(66446008)(71200400001)(186003)(81166006)(26005)(2616005)(52116002)(64756008)(110136005)(66556008)(1076003)(66476007)(6486002)(81156014)(478600001)(54906003)(86362001)(316002)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6222;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jsx34WGeCfk63oNUUfhMXqojF7xilNN+fBswtDpBC6EbpLlE0J0dYX3HGQAXEkQbLZodtPbZzcOeTLJi1hqEFiodsab41TUclIxYkurq0l1eF9rZReXneFt/aU7GENg4DTynacQOM2EJRGrtI8eoAUtKGAx2OFPa1HY5zpDClOXDg69F7WhCEMdlhqVhINZvPGcK5MjsmWhxzq1/IPmTToa4HbWxW2o8k/rSxO6H3HRrZj+7CL4mnged4HvHX5beS8WLP2JpTSdgTQIW92jQpLE2oHxoDL08FmZK7vskxL0+NEjk0UrbU1s/G2DWGS3A0TDKI1d1wIHRTwBLyh9QceOgIltpXwOCm+pF7yPRLU2RDi0phPZPHh9pma84d9NVyI1JYPAYBut9AidG6GjbjOa7TuY2lzANnXnM8HROJZEQ6YjSyfG3VmPo7GVel3Ad
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d902cc3-ebce-48ff-61eb-08d77e117818
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 08:09:39.3070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qKfU6odnM+cRP4zHfEBmD+6wPo1I2vZ4ftqUJrxVnAb1uasLGwYhSMJx/KVLvDH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_000942_469152_3B89FE2D 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Ma <peng.ma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The eDMA of LS1028A soc has a little bit different from others, So we
should distinguish them in driver by compatible.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
Changed for v4
	- Add new change patch

 Documentation/devicetree/bindings/dma/fsl-edma.txt | 1 +
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/fsl-edma.txt b/Documentation/devicetree/bindings/dma/fsl-edma.txt
index 29dd3ccb1235..e77b08ebcd06 100644
--- a/Documentation/devicetree/bindings/dma/fsl-edma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-edma.txt
@@ -10,6 +10,7 @@ Required properties:
 - compatible :
 	- "fsl,vf610-edma" for eDMA used similar to that on Vybrid vf610 SoC
 	- "fsl,imx7ulp-edma" for eDMA2 used similar to that on i.mx7ulp
+	- "fsl,fsl,ls1028a-edma" for eDMA used similar to that on Vybrid vf610 SoC
 - reg : Specifies base physical address(s) and size of the eDMA registers.
 	The 1st region is eDMA control register's address and size.
 	The 2nd and the 3rd regions are programmable channel multiplexing
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8e8a77eb596a..b3716a89fa0d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -316,7 +316,7 @@
 
 		edma0: dma-controller@22c0000 {
 			#dma-cells = <2>;
-			compatible = "fsl,vf610-edma";
+			compatible = "fsl,ls1028a-edma";
 			reg = <0x0 0x22c0000 0x0 0x10000>,
 			      <0x0 0x22d0000 0x0 0x10000>,
 			      <0x0 0x22e0000 0x0 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
