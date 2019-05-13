Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C41BAB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87kOzf3O6Q1IBKeNvFLyG8yLj1t2ww6DCUU7i/JRutU=; b=fkiy5S6lagfAj7
	1hfPI4wdW2GuA0uLHp9fPHfNdKieZbxJaWFrwhycKfxWLiB58PGB8lNEFyPfK1iYosJUSWHdrlDIk
	Zet2FcO9hmLy11nAEiHVuXrCicoWuUsilhfISHsl2aGzVFQoZADdjbVFW6OinjLlrfwzGGuSjOWA8
	P4I2CHaLpxuFgq9sdCU1nR2IfUQ2VGhbTRMXmTDlVz+GJj2g4m3KUU+e6Ftng/duPH/uHtDeltZWl
	2P4yKSKRrGLiMCyWO+dL1SZbdMQswuGe2jqJv0nflYJOIMQF+yQc0q0U8BvdTtFzWfy6wK9CqhDGY
	/rlMtEFctb3q6RQM1cVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDXk-0006Ob-Em; Mon, 13 May 2019 16:11:12 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDWn-0003gl-CB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4YHAB7hm+2Qkl+vJndcW7OvIuXz3XCzRggxl87yNBWA=;
 b=Eud+SEZ+DkOJcIRFftpJvoPDyivpjN6MZzCIVXu4By+wEgMxJKxQIXomufGftl3VlZ5uxPSQIlR/A5bncg5FOegFZdkqY43wHBzLXIZkOTbKFXDQfhuW/Qcz33JxcSId0QEc0/ES5Dt+5UaVf0mUAdjqntdazFkg2MU3FKGY2KY=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:50 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:50 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 6/8] soc/fsl/qbman: Disable interrupts during portal
 recovery
Thread-Topic: [PATCH v1 6/8] soc/fsl/qbman: Disable interrupts during portal
 recovery
Thread-Index: AQHVCaZK9cvLv/ldPUKlp6HGmAvNlw==
Date: Mon, 13 May 2019 16:09:50 +0000
Message-ID: <1557763756-24118-7-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: fc9e0975-9111-41d4-b3dc-08d6d7bd6d15
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB270990D90222DCAB26AB9531860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(14444005)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PuTVDgPh6SPFdy8Z60cRIlF+kt/LXulCyxMot3Ef9B2SwhtbQodArXMWDVcXrqjvdmzbpeNe/A9k+xttUNHvZbs2EKmgP9epKWoW9S1XuyX1DMJKX3XSrmRJBy1Geo7WsRPGPq8q/SIIrzzG24zAZ08vdQSbTrsRiAzl1JSbFmseuno+qwXOLverl+7pgRn+3m0qEiZ+1W4W1IyuhxXA3r5C0aWhxPNGx2in6fWxu4+UBu3YzhE7UFjmma8cLJukBHxidR0rpWbBwBzIPjYpPdBnVTRX2RzTxyky+I30DkPMEHNkdsHkP0bzl1+GNspa76xs/KgudhxlGMEmWnHVQ8wbvvvpVgm0NIC75Yd+L+5wweJaH0ft05kMtq5QToCXtoCeaxz0dw3HFwsizyGjvPyDernrSxm1pcc3DDW4Szs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9e0975-9111-41d4-b3dc-08d6d7bd6d15
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:50.2176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091014_011466_F158AFC6 
X-CRM114-Status: GOOD (  15.04  )
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

Disable the QBMan interrupts during recovery.

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/qman.c      | 22 +++++++++++++++++++---
 drivers/soc/fsl/qbman/qman_ccsr.c |  1 +
 drivers/soc/fsl/qbman/qman_priv.h |  1 +
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qbman/qman.c b/drivers/soc/fsl/qbman/qman.c
index 2989504..4a99ce5 100644
--- a/drivers/soc/fsl/qbman/qman.c
+++ b/drivers/soc/fsl/qbman/qman.c
@@ -1070,6 +1070,20 @@ int qman_wq_alloc(void)
 	return 0;
 }
 
+
+void qman_enable_irqs(void)
+{
+	int i;
+
+	for (i = 0; i < num_possible_cpus(); i++) {
+		if (affine_portals[i]) {
+			qm_out(&affine_portals[i]->p, QM_REG_ISR, 0xffffffff);
+			qm_out(&affine_portals[i]->p, QM_REG_IIR, 0);
+		}
+
+	}
+}
+
 /*
  * This is what everything can wait on, even if it migrates to a different cpu
  * to the one whose affine portal it is waiting on.
@@ -1269,8 +1283,8 @@ static int qman_create_portal(struct qman_portal *portal,
 	qm_out(p, QM_REG_ISDR, isdr);
 	portal->irq_sources = 0;
 	qm_out(p, QM_REG_IER, 0);
-	qm_out(p, QM_REG_ISR, 0xffffffff);
 	snprintf(portal->irqname, MAX_IRQNAME, IRQNAME, c->cpu);
+	qm_out(p, QM_REG_IIR, 1);
 	if (request_irq(c->irq, portal_isr, 0, portal->irqname,	portal)) {
 		dev_err(c->dev, "request_irq() failed\n");
 		goto fail_irq;
@@ -1290,7 +1304,7 @@ static int qman_create_portal(struct qman_portal *portal,
 	isdr &= ~(QM_PIRQ_DQRI | QM_PIRQ_MRI);
 	qm_out(p, QM_REG_ISDR, isdr);
 	if (qm_dqrr_current(p)) {
-		dev_err(c->dev, "DQRR unclean\n");
+		dev_dbg(c->dev, "DQRR unclean\n");
 		qm_dqrr_cdc_consume_n(p, 0xffff);
 	}
 	if (qm_mr_current(p) && drain_mr_fqrni(p)) {
@@ -1303,8 +1317,10 @@ static int qman_create_portal(struct qman_portal *portal,
 	}
 	/* Success */
 	portal->config = c;
+	qm_out(p, QM_REG_ISR, 0xffffffff);
 	qm_out(p, QM_REG_ISDR, 0);
-	qm_out(p, QM_REG_IIR, 0);
+	if (!qman_requires_cleanup())
+		qm_out(p, QM_REG_IIR, 0);
 	/* Write a sane SDQCR */
 	qm_dqrr_sdqcr_set(p, portal->sdqcr);
 	return 0;
diff --git a/drivers/soc/fsl/qbman/qman_ccsr.c b/drivers/soc/fsl/qbman/qman_ccsr.c
index bee2d0e..3894172 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -735,6 +735,7 @@ int qman_requires_cleanup(void)
 
 void qman_done_cleanup(void)
 {
+	qman_enable_irqs();
 	__qman_requires_cleanup = 0;
 }
 
diff --git a/drivers/soc/fsl/qbman/qman_priv.h b/drivers/soc/fsl/qbman/qman_priv.h
index bf51c17..9d37ddd 100644
--- a/drivers/soc/fsl/qbman/qman_priv.h
+++ b/drivers/soc/fsl/qbman/qman_priv.h
@@ -272,3 +272,4 @@ int qman_shutdown_fq(u32 fqid);
 
 int qman_requires_cleanup(void);
 void qman_done_cleanup(void);
+void qman_enable_irqs(void);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
