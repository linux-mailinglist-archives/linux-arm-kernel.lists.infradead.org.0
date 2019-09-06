Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD21AB3FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2aVXffaPbU9khur6aPQ1jb+DcoFBggwDt8Xsf7hHLU=; b=TTeOuate+GjvaM
	XAHRF/FsuFlVDHcbuW5gWXZHHgTZYHBcEhnh0ovZ8d6iOrC7YXPzv1LZtYWOLfOVqySOnj4kPpl4Z
	o95525U4f9eqj8Dqxt6ikiRPPrI4xSYuAG8FEXKbr8mbkWl//K/vNmVVq5IKKMPNR5m8SwzOs75gA
	psG4soAxMRag/WND3coNdsA9BEMGGoEvmUkEJCajvXk426SxYTtFGRqudv+cVVIFCGu8FszM9/CkG
	bCBah3hE4eJNlG3Nj390TAVS+Unpqyv5G/IPYkihcuxZJ42UZeyzTI3mdlPBW7muSPez0ISBsZbHg
	k2Fq+783cQ5z/8/M0E6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69ac-0007rw-0z; Fri, 06 Sep 2019 08:27:30 +0000
Received: from mail-eopbgr20083.outbound.protection.outlook.com ([40.107.2.83]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69aC-0007ig-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:27:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNQ8qx3uXhWAkrGtrcIS0Is3igRciujRD92Nkd2kTrl2nEkufNkMg7Z0PplZrO6S1dlaheAKKIn+SiruKyrWHXguV4RwjFih90BAPGDDN7r59OX2a0ujVOR5xU/QRgdJHcQNNN6c1bxYgPVMSzdUuiK2yBoyAsmVtpx7fq8L/nZjtnjwJRFO7qaqL/pzHuFRV4sWQ+FuNUSbTh3bONZuavtBOcIXh8cl5atX96/05VDKnaddLJfOcUUOKkX56iIG4W3MPmg5BHv5tUHfGdgwwhzYFB56hvuMXYhsHNgWW75Lh5TRt4fGhZIY/KzJvduQN0kw5Pvd9CyWw4Wcpfo22Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Sdo3S9gc3fVSM+XeFPIl07PyAg5eXccrzQ5Mz8Fvw=;
 b=dePF7Pl2Q8EN7NXlFlnBiGLF63gkohNASW17muZYzuaxDoWWQeNM3dVhwTdZMr5/e56rhftAugWuS+A20snlDscMdfFFWmFZppmtr/g8UkpnvHT+qbtXOBeugcNlCht6bvpqQ8gwKB5gIZ0lw6dw1eTpbs0gQ8rhufGA4nM61+r6E6TYbWi2+HVbsAnNurrdhGPad7vCvXujiBftVPDMEA+/2G74G94ZyTD0TCR7YB6mnyMGy7CSATQdLCdbd7b3ARMsVv8jJse3TR3g2BSXU4ulmKyK/CD3iP55AK8HaynE5lVThQd/aFVbZTWSc0p3DOy+EMkhV53ninXOCbKtqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Sdo3S9gc3fVSM+XeFPIl07PyAg5eXccrzQ5Mz8Fvw=;
 b=MgWY1a7iIcvr7kxfqfJLID3pMtcau4iZ0SMQixwQQvsZBNyHxPfd/QEMeX0bxrhm4m+0EgTeCjV/nD3O54snliIvfMADED4+tXlmRg0YSswSwEd5IdpcneQ+zxNbHSrMXcIoNf06Xd1NBAHng66TDeHZNLiHJyCH2yPZB3t1t6A=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5561.eurprd04.prod.outlook.com (20.178.104.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 6 Sep 2019 08:26:59 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::29e4:47d:7a2b:a6c6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::29e4:47d:7a2b:a6c6%7]) with mapi id 15.20.2220.024; Fri, 6 Sep 2019
 08:26:59 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Frank
 Li <frank.li@nxp.com>
Subject: [PATCH 2/2] doc/perf: add DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
 explanation
Thread-Topic: [PATCH 2/2] doc/perf: add DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
 explanation
Thread-Index: AQHVZIzZEXm68GUHxUeycnF5Ux6CYg==
Date: Fri, 6 Sep 2019 08:26:59 +0000
Message-ID: <20190906082356.25485-2-qiangqing.zhang@nxp.com>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0129.apcprd04.prod.outlook.com
 (2603:1096:3:16::13) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 341426b6-3710-4131-9b56-08d732a3fc23
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5561; 
x-ms-traffictypediagnostic: DB7PR04MB5561:|DB7PR04MB5561:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5561BC7C4E2D682CAA59964CE6BA0@DB7PR04MB5561.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(199004)(189003)(6512007)(53936002)(14454004)(256004)(81166006)(8676002)(25786009)(36756003)(81156014)(478600001)(50226002)(305945005)(7736002)(6436002)(6486002)(8936002)(2501003)(6636002)(66446008)(64756008)(66556008)(66066001)(66946007)(66476007)(2201001)(86362001)(446003)(5660300002)(2906002)(6116002)(3846002)(1076003)(52116002)(26005)(186003)(316002)(54906003)(110136005)(386003)(6506007)(4326008)(76176011)(102836004)(476003)(486006)(11346002)(99286004)(2616005)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5561;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KfRBNUtMewL0nIPiZ2E5Z81fPz7BwfQDJcAve2WZYqW/OkA64EUyouv4p2iGfUfZS/6VBsEYW8PyfH2OyJuwN0JMQRN0GxjOZ9n6nD0we5bLCDZLJ50fjad2W03oVFdpH6ONXjbvrae3AXBhN6QB5kjT48JxoOx6SEB0d5dTvz0esVTkn/N3Y8dEgRLF/k0wMPOdT85kaFk8QUDP5QcVDzrbpDn5Iv9L77Y6/IycBphgcLzgzCzLdaSrrutkwcA25ABSv3q5sCLcro9jxyKFzVmfTmQHdlax+ZNrJabpe5wfBY3RiGiHb6X+bGlINWZnCCBIa6dTqgTLYSUZC8tpbC2rDxnyFlRSvi7v8gVRaLubYBVMwFUr97P7NB+w+eCEhhJ5CnhQfcfltsY+nUjeElxkgS2bZqM+mNYvCOx19sY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341426b6-3710-4131-9b56-08d732a3fc23
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 08:26:59.1482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ffW29Aj3MZY90izvgfXII2uE5gVN/wrvtAsKBU8OzlV8pcYRuPd7rtStAw2HRtRLSVDH2NQ6IZAqf0JQdgfcmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_012705_021346_0AE572DD 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.83 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DDR_CAP_AXI_ID_FILTER_ENHANCED quirk explanation.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/admin-guide/perf/imx-ddr.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
index 45943c7325e3..0f2170974701 100644
--- a/Documentation/admin-guide/perf/imx-ddr.rst
+++ b/Documentation/admin-guide/perf/imx-ddr.rst
@@ -51,3 +51,10 @@ in the driver.
   e.g.::
         perf stat -a -e imx8_ddr0/axid-read,axi_id=0x12/ cmd, which will monitor ARID=0x12
 
+* With DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.
+  This is the extension of DDR_CAP_AXI_ID_FILTER quirk which is only support getting
+  bursts from DDR reading or writing, i.e. only can get DDR read or write requests.
+  You can select both DDR_CAP_AXI_ID_FILTER and DDR_CAP_AXI_ID_FILTER_ENHANCED
+  quirks together to get bytes of reading or writing DDR if HW supports this
+  enhanced filter. It is meaningful as user always care more about each master's
+  bandwidth.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
