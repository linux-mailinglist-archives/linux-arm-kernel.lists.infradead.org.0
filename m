Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36A611C3E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZyYzY+MRT0h3OdWRiEkzWZnFhHQ4JQAVD6aR+Vs04g=; b=aI+lSQtrvkPei3
	u7unMn6n/e1LoYfhGpaHPPFydxcCNrm+x/gJIJJgJvcXEd9HoQng7Jw1yTc2W+4WU4oQQooV09Fr4
	XgVfeJtGCBpAePLopvPHqLZTG1LMU2NYQb4W1VLG44dDkEk9cQjP+U0lOsvthEbDVnd83RrDZE3Cc
	oCE47mqOR6jqzLttB7U0tehcgmwc2O96c3BSXiNEcWLV10rJe7dnjTsQnUiDR1Fluxy1+2MCpKLFX
	cIKYH6vLG3Ldmv3NJy4Aqg1XQiJf4ue3B18KqtmC5dE4jwGkOACxT58F94NRvy4FiE4ZgGs03Y5TN
	GxMDUUt6OAW10jiju0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFJZ-0008SV-DN; Thu, 12 Dec 2019 03:38:57 +0000
Received: from mail-eopbgr150082.outbound.protection.outlook.com
 ([40.107.15.82] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFJ1-00088B-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 03:38:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TsbV6CqJ5Xz8kmDgPlmTuJ9ThsghR5dhU09wEgXOPNOZ0EtM91Qvhp/cG7DB16b0unOj+2mnBv8QbTUGn0fNOU21ABrjgD5LDKx63vgl9YdqTWhpA6eW9yQQ+TOi2CJ2Wl/NnGLiyVc3TN1K83mEBlXo6vUWdqmPNoAvwKZY+5wkhWbqCBedoIac60f4nes2hVAUZ4EfSbqotQHce7Ht4LvFCIpoDjCz8IcTJ6YNH7LNofMSqsW+rc2jXYPQN1qiKMZvBhz+ytgJO6w1Pu7jlf2idzwONlIgcjXJbZTzBDSPwFJ9jibwZfag9oL4gHD4T53cnna2fjU54d3BzjQI7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RKrX6ryfsoHTWteG4YWcHdXIXAEYymq1bqNyglJ7oXo=;
 b=EuJvxwfE7aQUDE0qZV+chzTOM19FDYveKeCL1b9ElXlwGJH8Crvb7ckX7Q1PRcZO2onZaBOu2gL6pPXw1WQfoL4KTfOTDvOgjutWZI0HhFEg4fbLcj15dFI/BYZuyFt37tQ+VvN2uWMuL5P7XmEPGxg6w7OJYlywVg9QBPgqyyI5GLkoDOoBTdZ/6vmjm3puYJ6+NO7QL3E8OqnPg0Yvyf5sJHxDX304yjjkac6XkTYZXKsPmNofQmX3Bd36kCfYgUg1tUWe6u8+cK3G9WCtcogLazfIbBKY2F1vT8ukowzW92QTrqrLz+L4ikS9t+VYHF+78ZlLckaE+EujYINwkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RKrX6ryfsoHTWteG4YWcHdXIXAEYymq1bqNyglJ7oXo=;
 b=krUCc7g32i8hZ/9TCTC+5EBdixek/92lSRvBQNRltFJAu3kIgCpjeeHJL35Kwx6UYNDaaEBEdRQIRY0tM1PI7U/de3+uHT5sOC+GjaU2bz6MN6iwfO1Hh3fyEg3IGZQBoUQ4wmQfsahKwb5mBekJpOC8seRYCq1ibETDwf2WsUM=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB3181.eurprd04.prod.outlook.com (10.170.229.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Thu, 12 Dec 2019 03:38:19 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 03:38:19 +0000
From: Peng Ma <peng.ma@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>, Robin Gong
 <yibin.gong@nxp.com>
Subject: [v5 3/3] dt-bindings: dma: fsl-edma: add new fsl,fsl,ls1028a-edma
Thread-Topic: [v5 3/3] dt-bindings: dma: fsl-edma: add new fsl,fsl,ls1028a-edma
Thread-Index: AQHVsJ2Y3HluABJs6U+dHTTAWS2VzA==
Date: Thu, 12 Dec 2019 03:38:19 +0000
Message-ID: <20191212033714.4090-3-peng.ma@nxp.com>
References: <20191212033714.4090-1-peng.ma@nxp.com>
In-Reply-To: <20191212033714.4090-1-peng.ma@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0049.apcprd04.prod.outlook.com
 (2603:1096:202:14::17) To VI1PR04MB4431.eurprd04.prod.outlook.com
 (2603:10a6:803:6f::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 268bf6c8-a945-4f3c-80ce-08d77eb4baf9
x-ms-traffictypediagnostic: VI1PR04MB3181:|VI1PR04MB3181:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3181B07DF42EBBD15073185AED550@VI1PR04MB3181.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(199004)(189003)(1076003)(6512007)(5660300002)(478600001)(6486002)(26005)(71200400001)(6506007)(2906002)(316002)(52116002)(4326008)(186003)(66476007)(110136005)(66946007)(64756008)(66446008)(6636002)(54906003)(8936002)(8676002)(81166006)(81156014)(86362001)(2616005)(44832011)(36756003)(66556008)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3181;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NApVTTCYqkocNgogXz/mPLE4VRbd5fIc715b90n5GfBbHWffJUMtrwdjJHGBVbfa0Vq1SCbYXutB8o0qfXaf9Ef6hUNu1feHJR1+10tbI7uAMngcCW6mXWcQHCTLsYmSuM7yeth2thFMcEuUaUGXKJINn8Z2KVz4zYiBE4caqDbWrk84UWtwh/zCOZkMYPyPKza/x+YM/IOIdgIGjLvXMKmtdfK+JYSa6hF9Okv79PMUD8ofCl0/uCwleYsqPKQ5pKg0DhHNL1MiBv3iZsmS+AFEgmnG7v30ehaAEMoks1DADypKW5YXyAOJjHLZnVYPQlJdh23Az7i9/fUelPzshbX7HfPt/EzBBDTLy5/R+fZalopQGB15hyg75sL0gWCr74MOJt6xR26S0vQvAVHujTQQ5qPkHYAYCWE38jq2NyYssIKSwB4F+O+mj6ctrT72GbZ812nIo8iHftCwbUfBEXMHCSWEreTYgwuQDCGyRFVa8yMMfElD3//5hXWnAn2C
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 268bf6c8-a945-4f3c-80ce-08d77eb4baf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 03:38:19.7261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFbyO9MlOWMSuAQmaxYNqlxCeLGUmVOllqSNuQsV6jml5UAUX7Sxc9YTBIkgBYZm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193823_981223_832F7AC8 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QORIQ LS1028A soc used fsl,vf610-edma, but it has a little bit different
from others, so add new compatible to distinguish them.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
Changed for v5:
	- add new patch 

 Documentation/devicetree/bindings/dma/fsl-edma.txt | 1 +
 1 file changed, 1 insertion(+)

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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
