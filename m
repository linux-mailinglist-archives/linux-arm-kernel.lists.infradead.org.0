Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12ED2D3C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 04:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsuVi8GiH/yMVl4gdlnH+PfNBm7rcTY/8OAt5vAxuNg=; b=KpVtLJv5yay8MJ
	2/9n1RFz95qz+6p2PmheCMUBWQxqvJ/UpvjrvTsfYmywJM6ndqKrmTFkXQw2uDmWockL3WUDqgPBl
	9F4oyf725g2mfEACwTYPFArMRHqvBQ0O6s2eNhXf5fAhD27NhAg7RR0EhzxzUJ4688dv0P0qmyrha
	dSKjkR2b8nrtubIcBSuSOXTDE9IJ6LG64pr2TjLNOEV/P4UyIXGIzrUi6ZNwAptKZSOPYcs83Tzsq
	Zt1aNF9PXJ/7z5IKhKXCXoJtDnicsOGvryVE5AXzMRZBbb3Zje52OP9jwv1K0ln0qu4/RVnMwbHGG
	58K1SB/d1BRriiGcZRfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoIJ-0006GJ-5i; Wed, 29 May 2019 02:26:23 +0000
Received: from mail-eopbgr810058.outbound.protection.outlook.com
 ([40.107.81.58] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoI9-00067p-ER
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 02:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector1-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoORN3fFqLBOif3g/fjg3HX3WgE/TkSV2YHWtv10SQU=;
 b=eT/LuyHecbaVheYeKr3+/uq1EG97Paw504JMP/CYgP4tSdH/VZxNuUYidaiMgFSAACO3ykLNOVj3j3vbut38rTS9RyjyDDUICjcpz+NnoqaGXh1ofeBkywRe/5VUSWrjW7amoMywZ4V3wpkBSAJMGqUtsg3x0431EJn2TII1K8I=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4166.namprd03.prod.outlook.com (20.177.184.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.22; Wed, 29 May 2019 02:26:08 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::e484:f15c:c415:5ff9%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 02:26:07 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Jose Abreu <joabreu@synopsys.com>, "David S.
 Miller" <davem@davemloft.net>
Subject: [PATCH net-next v2] net: stmmac: Switch to devm_alloc_etherdev_mqs
Thread-Topic: [PATCH net-next v2] net: stmmac: Switch to
 devm_alloc_etherdev_mqs
Thread-Index: AQHVFcXfQrQj7OmglEaLnHJdWJkmdw==
Date: Wed, 29 May 2019 02:26:07 +0000
Message-ID: <20190529101642.294cafd0@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYCPR01CA0029.jpnprd01.prod.outlook.com
 (2603:1096:405:1::17) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2298fc59-b6da-40f2-4b70-08d6e3dd017f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4166; 
x-ms-traffictypediagnostic: BYAPR03MB4166:
x-microsoft-antispam-prvs: <BYAPR03MB4166360E99FC1558BEF26222ED1F0@BYAPR03MB4166.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:569;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(366004)(396003)(39860400002)(189003)(199004)(6512007)(486006)(26005)(186003)(316002)(6436002)(86362001)(476003)(9686003)(66066001)(71200400001)(6486002)(14444005)(256004)(71190400001)(1076003)(68736007)(478600001)(81166006)(102836004)(6506007)(386003)(14454004)(99286004)(2906002)(25786009)(110136005)(53936002)(54906003)(4326008)(3846002)(6116002)(72206003)(64756008)(50226002)(52116002)(73956011)(8936002)(7736002)(66946007)(66476007)(66556008)(305945005)(66446008)(5660300002)(8676002)(81156014)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4166;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: etZ6yY7RrJlRa7Tq2Mgy66xERDIvM99028NKm99kNFwGsjTuLElpb9tziPIPRulOIvPSA0xHKG5oldmQUwNpNxoVA1jgAgXXuNU4EpHrzYj31N+zM6bvDhzKC5QmKPtUzJNfIpyTPj7IZixf323mYr0S2H1Hgr+63jnSYZgaC6YzOnrvddo+IewmrX3GxCxbuSIOAqxWzVwOMUC2euUB8yQZ85KNvGaDh5+x+ATavVvs8VgYEhgB1rGLB3glOxwyVkgJUpVRpYOHhs1f318ExbAPvykh42SUAWEFOVu02CazjhqiJjv7FwiZpK3EhAVqoNtoEQOZy9Zs4SmATI+tNTeGRm6JvZwcCUl5g15QiDiW375kSQiV3viCTccEDquJrrkcDk1DQaQByrkOVsVLVFFe5oeOVNX8M8GTiwIqaBA=
Content-ID: <97DB1BCFAFF7BC43912BC947382159D4@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2298fc59-b6da-40f2-4b70-08d6e3dd017f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 02:26:07.6828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_192614_214510_6719936F 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make use of devm_alloc_etherdev_mqs() to simplify the code.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
Since V1:
 - fix the build error, sorry, my bad.

 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index a87ec70b19f1..4defdcb4f237 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4243,9 +4243,8 @@ int stmmac_dvr_probe(struct device *device,
 	u32 queue, maxq;
 	int ret = 0;
 
-	ndev = alloc_etherdev_mqs(sizeof(struct stmmac_priv),
-				  MTL_MAX_TX_QUEUES,
-				  MTL_MAX_RX_QUEUES);
+	ndev = devm_alloc_etherdev_mqs(device, sizeof(struct stmmac_priv),
+				       MTL_MAX_TX_QUEUES, MTL_MAX_RX_QUEUES);
 	if (!ndev)
 		return -ENOMEM;
 
@@ -4277,8 +4276,7 @@ int stmmac_dvr_probe(struct device *device,
 	priv->wq = create_singlethread_workqueue("stmmac_wq");
 	if (!priv->wq) {
 		dev_err(priv->device, "failed to create workqueue\n");
-		ret = -ENOMEM;
-		goto error_wq;
+		return -ENOMEM;
 	}
 
 	INIT_WORK(&priv->service_task, stmmac_service_task);
@@ -4434,8 +4432,6 @@ int stmmac_dvr_probe(struct device *device,
 	}
 error_hw_init:
 	destroy_workqueue(priv->wq);
-error_wq:
-	free_netdev(ndev);
 
 	return ret;
 }
@@ -4472,7 +4468,6 @@ int stmmac_dvr_remove(struct device *dev)
 		stmmac_mdio_unregister(ndev);
 	destroy_workqueue(priv->wq);
 	mutex_destroy(&priv->lock);
-	free_netdev(ndev);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
