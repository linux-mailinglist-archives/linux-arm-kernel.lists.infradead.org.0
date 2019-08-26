Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2499CAAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGvcHnYJy0OHrweycO3RWHC/kA/yBnNRXk8IiaUwhCQ=; b=fv3qOzXFrMFrC+
	FhJ//65qk6HLFaDZoWKQleTrVodzuntDJt/z77E7Fea4DA8ragnw91Vncjdc1Gan+1JX7TvLWkJ+E
	ZDTE8ak9oBRtXrc8RYD5bHnrGdt72fx5eWonmGvMSwWs9UN8FFwIP0tulZbASHflDusHN4svGEkF6
	gBCPyy8HihHw/iEsZ9wsNXp53Oss+GY5i5OZFyevjXjbR5nNnHhtNstMhvQqQnBQrTy2dQT13o1FI
	HHo8OU+GXQ+EemoSIzWnUy6nuvI5VzshuNddYn1MM0SylvcAX5Wo/i0gNAGuBFLcCIpo6x+LweyE8
	bTdk1Yvp5NDJLOPnX6Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29X9-0000uG-PS; Mon, 26 Aug 2019 07:35:23 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29WG-0007SQ-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:34:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jyMr6hBq/xBfNkF4d/rZnmCfdwoCTsk+pR9b0s9m80MaPqVhLoz1GwOpyE5tvKJsm8dFoQmfRKhHzcLCkZ0tAFUxO6gN5kjPgEAyyVDnBQoUjPjitXYxTx3O7RkWq9SCxUM66B+i1cRzt/8W3vmyUDYXDG9ZPNM6BJULbxd1SKI8+Cvp69NiYwO4tpQt72gSljBWSDY+NW0W7B0zKGcFONiSdMbZBowqYSPYuVZSK27Xgn3GdYp2Mu+XgSohuQ048lAIFHTQ+NLXpSZYd6tNL+K/etBM1vgLB60OKZwzZx6GccZ8TN6OMnPkAymLNFa3shtS/fql6p+Tu2e8SpOqJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93Dv1UIDWEsG2muKq3cLs/moMybV7L0BabyVR6/YGcY=;
 b=QcdcBRFuw8IgnzdZe2vlxoahxmroVH75MF6ayXV7y0xF4yigKIotfKJqV7rZbj/EmJtdEMIG/XdlT1gu4OH6xNuXb2qzujuyBwIazNzc1TajmSjyaRbO6MMx+uqOuM3EfL0TcKeJV34HZ7fFPqLVZf+uXlYiTZJC9iVfwxsZcrCKuEYDziOD5r8lVj/y8JYDRwzxnS93XS5SrBSO4KNRsp7jTK8OQZEnHtCXdcye6pY1Mm4BwPOLsj4bZ5vZTlKsXiArDwE/SGpDd9grkDK52WW6UuImCH7MUGlD8wh1Y2OzSf1s+rv8kBkwdRwHpjbWFNF7zUuMdeNfjtF/w6xyaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93Dv1UIDWEsG2muKq3cLs/moMybV7L0BabyVR6/YGcY=;
 b=axMlUUYkol8scGCugLmD39uKJNkG2GXco44Y6W0dKstGGXjduSPu5E06byGORrvx55okZ63SMmeHfphFMAtBfxhwSK2Ujvau14fgNeg17T7jZRE3BILBNr2TmB8Od7RtBkInc1xesH9wa3hSkUbQfwmgWX99ar6WYCoqW5w6JVo=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5418.eurprd04.prod.outlook.com (20.178.104.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Mon, 26 Aug 2019 07:34:22 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 07:34:22 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V6 3/3] MAINTAINERS: add imx8 ddr perf admin-guide maintainer
 information
Thread-Topic: [PATCH V6 3/3] MAINTAINERS: add imx8 ddr perf admin-guide
 maintainer information
Thread-Index: AQHVW+Cu+dJP8Vac2EWccSiHwsq2Wg==
Date: Mon, 26 Aug 2019 07:34:22 +0000
Message-ID: <20190826073128.10052-4-qiangqing.zhang@nxp.com>
References: <20190826073128.10052-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190826073128.10052-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR03CA0087.apcprd03.prod.outlook.com
 (2603:1096:4:7c::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef81c79a-9459-4db5-e3d9-08d729f7d046
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5418; 
x-ms-traffictypediagnostic: DB7PR04MB5418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB541883F30A595E11FD159860E6A10@DB7PR04MB5418.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(54534003)(189003)(66946007)(5660300002)(25786009)(8936002)(53936002)(66446008)(64756008)(66476007)(66556008)(4326008)(1076003)(14454004)(6486002)(486006)(86362001)(66066001)(2201001)(6436002)(50226002)(476003)(2501003)(11346002)(110136005)(2616005)(71200400001)(478600001)(6512007)(446003)(316002)(54906003)(2906002)(4744005)(81156014)(256004)(6506007)(386003)(186003)(99286004)(76176011)(26005)(305945005)(36756003)(81166006)(102836004)(52116002)(6116002)(3846002)(71190400001)(7736002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5418;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kmftZDO7QmI2g0WuDpsOrdtLIQCttnWl2lp2exEAPy/X/1dHTZp0o6YDLi6tw+ZrmhKqx8zu74ixMEIHZZcjg/wc5d2luEB7efndCc9oMTMFbCc5pEU1beXrEwy+CbM+8dxiy5V/e+Sd0nT/s1a8PboE1TP87Ys9Imcueda8fdHNzh2XyrMV/vWwmQlZTixhdh0Vi6uKR0CYGbMArAbiSkQmWmrcRxfkEa/BgfU8wVJW0/SDLVgRt3gKqdhP2gC7VrhKybysiLEiaqtiSRPyE+I4dQFG/VMRzNx4s+2Psx5U5zpHmB7sm8lxPpzN5uWe4Fhgmz3smPSlbaV2ak+ylPHKuM7ZdrFc1C7rNTvv8EZm6Sk7tX+bF8tXFU7nSpcUAP3PtcFFfJpM6e0WPnLAFCbmOkD+beMkL8Gtb2g0Hxg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef81c79a-9459-4db5-e3d9-08d729f7d046
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 07:34:22.7969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 89rqO6iJj8JiPODbWdkAfPMDquixUH22Oyg1EfxwpjLd2FjSztctu+0GXX2Dm5anWAe9/iBLIo4rcQCpKiaKuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003428_626182_7BDA3642 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx8 ddr perf admin-guide maintainer information.

ChangeLog:
V1 -> V5:
	* new add in V5.
V5 -> V6:
	* no change

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e60f5c361969..2ba378e806c7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6462,6 +6462,7 @@ M:	Frank Li <Frank.li@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	drivers/perf/fsl_imx8_ddr_perf.c
+F:	Documentation/admin-guide/perf/imx-ddr.rst
 F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
 
 FREESCALE IMX LPI2C DRIVER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
