Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D612F58565
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A4pCtlE7/xJHvlGfM8Zp+Cjndvh9kjS0G0svsI834aE=; b=q+PsazNgLvQKl6
	8wnMEqjuxzayw+NsQG6FSbA2zbV96B3fiRqHcn0f6sBAIYiJ0TAkVuxwbbvJpZlSYrVJiImX7rwsb
	j+WUdyNdkLkk07xcs4tmRH62JpFI9WLod6PxrhSUn1tZDR2vJw7DC2Yy5pSVEFJmcwGSBtx9g3ftH
	D0Ur9fXjKf2Vnh/yB+XHXVTgyGMyjURfOSdm5bxndZrqkFZ7M9Xbs9NUwAH50/KlDnLOD34m7fYK8
	7Pz7clz8hz4ZKPSQcyF8yQrEWbRCb8yyaQD7piIYU0KnTUUjy8n54ASgtbF+lrUWS9QPlZdMw0lvm
	InsC1DS26sOlnSNSNOSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgW9E-00084U-V6; Thu, 27 Jun 2019 15:17:16 +0000
Received: from mail-eopbgr20058.outbound.protection.outlook.com ([40.107.2.58]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgW93-00083J-Jr
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yBouiMCe0HxcmNbAaeTUbmnGzYQrU3TluQCQL9haies=;
 b=qAagAjoTLeemiK3fyzJ16nluljJAKGcwnFFwA6OMn85/tvNj8x2wp3PYDX8wTsn+NpBlLh9D2WDyjLVH4XAdoSZYHA+UsWPQ2bWk8F/TqhUkD5ZvMFmE6G1r4oSfCHyE1BYVZhszk1BMLOO01xylnqLvMsPg/n3gBbh9gPz661k=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6752.eurprd04.prod.outlook.com (20.179.235.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Thu, 27 Jun 2019 15:17:00 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2008.017; Thu, 27 Jun 2019
 15:17:00 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] soc/fsl/qbman: Use index when accessing device tree properties
Thread-Topic: [PATCH] soc/fsl/qbman: Use index when accessing device tree
 properties
Thread-Index: AQHVLPteklEjY5ksH0SDrbr59mNdSA==
Date: Thu, 27 Jun 2019 15:17:00 +0000
Message-ID: <1561648603-11589-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: DM5PR07CA0062.namprd07.prod.outlook.com
 (2603:10b6:4:ad::27) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc22392e-8121-4655-b9e3-08d6fb12806d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6752; 
x-ms-traffictypediagnostic: VE1PR04MB6752:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VE1PR04MB6752A2121F80C8E9891BB75486FD0@VE1PR04MB6752.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(136003)(346002)(396003)(199004)(189003)(26005)(66446008)(66946007)(73956011)(66556008)(64756008)(52116002)(305945005)(71200400001)(71190400001)(66476007)(2906002)(7736002)(68736007)(44832011)(4326008)(186003)(486006)(110136005)(54906003)(8676002)(3450700001)(6506007)(386003)(8936002)(102836004)(2501003)(81156014)(81166006)(256004)(14444005)(316002)(4744005)(6486002)(5660300002)(43066004)(478600001)(50226002)(3846002)(6116002)(14454004)(53936002)(2201001)(36756003)(66066001)(2616005)(25786009)(86362001)(99286004)(476003)(6436002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6752;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0Db7A368V6OG2KQX9oATZntO4a+X/nGoGeihLCwE8OnGbUYSggfkibQULiAPzgS+jZ3eZRbUAkBJWjEiqM63w2e2gBCvX67PY58FHaJ15kqPQqnk1BggkHu9SS+ldoqo6EVMKpkEDadjVQ6x8pSiKTDMSKc7i6uVjQDYeu8jheylUu4CGYwrLaOIld2309hUIkT+6VFBJmEyxazaGQd/NBNwlIeRb3U6oQFtPYRnL7uU9RisLVxGEMy35+DiFeCBUrUrjZpEKjWchnSuF5m0HKwy91/uLN8phAk8VZxtv0o1Y+XadSJ5WpFPLjXos7mQV1+1hCHoBhDzX2kPv6P7EBoTzeaBtyFV41Q8znQ/ScN8BrWlFJIAfiDPqdHH9Sr2vZGE+7y3sKnmtMT7InbR069GeZXUaVljm4RyTw1tIs8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc22392e-8121-4655-b9e3-08d6fb12806d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 15:17:00.7768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_081705_795643_E3AF1418 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 Roy Pledge <roy.pledge@nxp.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The index value should be passed to the of_parse_phandle()
function to ensure the correct property is read.

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/dpaa_sys.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qbman/dpaa_sys.c b/drivers/soc/fsl/qbman/dpaa_sys.c
index 3e0a7f3..0b901a8 100644
--- a/drivers/soc/fsl/qbman/dpaa_sys.c
+++ b/drivers/soc/fsl/qbman/dpaa_sys.c
@@ -49,7 +49,7 @@ int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
 			idx, ret);
 		return -ENODEV;
 	}
-	mem_node = of_parse_phandle(dev->of_node, "memory-region", 0);
+	mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
 	if (mem_node) {
 		ret = of_property_read_u64(mem_node, "size", &size64);
 		if (ret) {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
