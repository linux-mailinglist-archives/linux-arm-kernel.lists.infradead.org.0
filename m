Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F2D19B27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpIxLHRlaL95Bg7sflozrh9m1h67W1PqrZLFSnDug0Q=; b=FS3hCmVqGv3lFv
	HFYXqP1cmo058bhql512RZ3QzM3I0n38XDfhQ8xxujQkGYa48xLAsylx8CzTo7GXGWYtp8tLB4Kgn
	a8sCDHmonrr+Mu45kDfBn8nb8/bbT8+Sb0ZQXV4n1RL0wU2A5gigJO6DZJJpxECsb0uUcvNN8tmva
	on5sY4z6xl0vtmpvsgZQEtM6H5tGjLmnJoyB4kOfArWY5XRV87oAvNVv61hc0pJXcd3botzYmLKgP
	c0WiExRsKZE9bEj1MaoKoZdLXRY17nEMjE66pw56/ltF8Qf1Oqc4/S66GlMzONCRQivMaE3HJ8Z0X
	jhYNjtEvCV6kiZb61R0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Y8-0004IM-8k; Fri, 10 May 2019 10:14:44 +0000
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Xf-0003pH-G9
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SV5H3agBaistDtUEGiaYiRDiYipcCTZf8rCwhHmAFrM=;
 b=Z0uyff3u5jn6Ihjkwya+ukiAPXHk7anfzlkzwSUWpzTjZAyeZNMi0FMOusgR4KIP2AAXPCcNQetL1hkXytU5h7QzQAIbVfDUUfo1dZX9hSYn8ptnk9jXCrBaSb69dVRdcRZr90VeVXwo5lARykcfd+8Yx/gxXuI5vDs3FkiPcyM=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3007.eurprd04.prod.outlook.com (10.170.228.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 10 May 2019 10:14:12 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 10:14:12 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: [PATCH v1 2/6] dmaengine: mcf-edma: update to 'dmamux_nr'
Thread-Topic: [PATCH v1 2/6] dmaengine: mcf-edma: update to 'dmamux_nr'
Thread-Index: AQHVBxkdDB3d1BKeOU+Q7kmGptbRJA==
Date: Fri, 10 May 2019 10:14:12 +0000
Message-ID: <1557512248-8440-3-git-send-email-yibin.gong@nxp.com>
References: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0062.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::26) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61da59c3-33ea-4d91-a160-08d6d5303fc3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3007; 
x-ms-traffictypediagnostic: VI1PR04MB3007:
x-microsoft-antispam-prvs: <VI1PR04MB300794233EEE6CE5FDB680D9890C0@VI1PR04MB3007.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(396003)(346002)(366004)(199004)(189003)(14454004)(2201001)(110136005)(54906003)(478600001)(2501003)(8936002)(8676002)(81166006)(81156014)(50226002)(316002)(86362001)(66066001)(25786009)(7416002)(53936002)(4326008)(36756003)(7736002)(71200400001)(2616005)(71190400001)(446003)(11346002)(66946007)(14444005)(256004)(486006)(2906002)(186003)(26005)(102836004)(476003)(5660300002)(3846002)(6486002)(6116002)(15650500001)(76176011)(52116002)(6506007)(386003)(68736007)(305945005)(66476007)(66556008)(64756008)(66446008)(73956011)(99286004)(6436002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3007;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M1YtOFvQdX7Jx6r2nNHc40XOC97i+Cd/oQZtjoNn28CMYq6Qmi0CfeSBWv6vB016lkG845uafOEUeP5VxCr8ICfbxE2SoFxgKkvx631rDh7pqnZUYLkd2w3Ii9PgAIBXDzJpul6Ky9ZpQJ6n+VDyQumASBk5mbnxj/zSbJ+y0eHMzhwqliBSari8CnOPI9UakdcVV/0BP2Z9rYa337bceeFJ97el8kBq9SZDrWGjn+IFVWxpJGhx8gQIJt+g+1x62L8inevIDw/wiPeaj/4/zpOf6i0mtvF84aAPPB4ke4aPAxj3EhxDPPYUPQxzUH74MDx6t/uR+kFfj0IgZSI5G+PBlzGIApMhNQSLy0K4DluZ4m3qdLAdkNpQarQwTDuMfAOsZYeSlCjbNYg7M1JiCzkePf1krmJPeQ+ECe6v38g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61da59c3-33ea-4d91-a160-08d6d5303fc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 10:14:12.8748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031415_961922_AD4FBCA7 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.47 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update to 'dmamux_nr' instead of static macro DMAMUX_NR since
new version edma only has one dmamux.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 2 +-
 drivers/dma/mcf-edma.c        | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index 680b2a0..c9a17fc 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -84,7 +84,7 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 	void __iomem *muxaddr;
 	unsigned int chans_per_mux, ch_off;
 
-	chans_per_mux = fsl_chan->edma->n_chans / DMAMUX_NR;
+	chans_per_mux = fsl_chan->edma->n_chans / fsl_chan->edma->dmamux_nr;
 	ch_off = fsl_chan->vchan.chan.chan_id % chans_per_mux;
 	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
 	slot = EDMAMUX_CHCFG_SOURCE(slot);
diff --git a/drivers/dma/mcf-edma.c b/drivers/dma/mcf-edma.c
index 7de54b2f..4484190 100644
--- a/drivers/dma/mcf-edma.c
+++ b/drivers/dma/mcf-edma.c
@@ -189,6 +189,7 @@ static int mcf_edma_probe(struct platform_device *pdev)
 
 	/* Set up version for ColdFire edma */
 	mcf_edma->version = v2;
+	mcf_edma->dmamux_nr = DMAMUX_NR;
 	mcf_edma->big_endian = 1;
 
 	if (!mcf_edma->n_chans) {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
