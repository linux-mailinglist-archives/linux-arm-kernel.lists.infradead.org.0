Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F9E1BAAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j/NGCfjxIT5+9Hbxtv4Z2XLI+BedcZQRKz3bTrCUFg=; b=RJMffIdkGYXvvo
	L64evLtople3E3FKoivpxdPN8qZSMaHY46/x0KDt2jE2UBSLbY4b7XNq9FLn/6Cr4WFfWZvQyhznn
	E1+N5I588fQFs90KI5vmj4hhNT7GdB7gGT/udZyLbwmghXj5EaXrDliSWK+MIlT+jluHLOugu1WG/
	HgFdWYi/iJKY5hzQWi0KuX3thbMAE5PZRSLa87Juq50YJRfK91QaxrseGgTxR5jVVaDpybxnb5FCF
	I1s6AI1GzP16WNvEjEAySMdtUf25mxUnj8zHchhDqh0m5OqQFoEneFQkD1hLHhPA2LOW9vNbteb+B
	ezMTwY/G0xc0Uj4OVhgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDXE-0005ky-0K; Mon, 13 May 2019 16:10:40 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDWT-0003gl-G6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:09:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EY0LRsRPtSU/gxC8mt7BCv3VogHZY/tg1SzMzDqUgcQ=;
 b=Ffgc+3H1nBeDsguxpnCdBJrvCJ0rxXh51MtiOix2xJ1Kk+n1uSzajzme/oXpDkGIDlJYJjbGB6DNT6yJTyKDCMtLjHJahWewbC3YB9/W7YVLkEm5kCuNEW9uwWkA7RXbPzNNUiXPy0F8kQd3UIU3hlcO0wHSxoRphFTN4cmCEMU=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:44 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:44 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 3/8] soc/fsl/qbman: Cleanup QMan queues if device was
 already initialized
Thread-Topic: [PATCH v1 3/8] soc/fsl/qbman: Cleanup QMan queues if device was
 already initialized
Thread-Index: AQHVCaZHUnKeNRojtkWIB4isAjsyxA==
Date: Mon, 13 May 2019 16:09:44 +0000
Message-ID: <1557763756-24118-4-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: f32c38cf-227f-4c61-50d6-08d6d7bd69c0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB270916ADFFF9EF61AB2DEF08860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AFBBaOgHT6NrSajKPZ3Lu/Rie0fhEj4/61QLSrVdzCNE9fPL6belWuIxpETvKRyyB9qbExl6yMZ+Pe/6nwPhTymoDMDrkX4c5Nq2jlUXvFkMzZlxQ3qpznFcNMP+4UVOoTzuiou2FO7ldMHAa59G9dGy2jk3mRiyfUV198+0ePHr3WOckWa6lEe7pXSj+KKGbbeUhgL7rr3F9VhQaknc1g5j8p0AUmqPuLHlYL4r25vD+KudOQ0/XWW1fOVdUHW7DgYv2RceZTI8XK0F2RVTVSNwaHox0p5IWRITh20OEdipfajzdttGAAgGHuvuHkbUcXpldhXLOTLvQ/HZXinY7iNbSRh2sAua3mVUm3hFWYhQtP1NVdesyHQ93Xhl18igEorJn1B7DF8pnSIq073GCG57xiRDEkse9J9+SVkmdv0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f32c38cf-227f-4c61-50d6-08d6d7bd69c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:44.5298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090954_163962_E60057E5 
X-CRM114-Status: GOOD (  16.14  )
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

If the QMan device was previously initialized make sure all the
frame queues are out of service once all the portals are probed.
This handles the case where the kernel is restarted without the
SoC being reset (kexec for example)

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/qman.c        |  4 ++--
 drivers/soc/fsl/qbman/qman_ccsr.c   | 13 ++++++++++++-
 drivers/soc/fsl/qbman/qman_portal.c | 18 +++++++++++++++++-
 drivers/soc/fsl/qbman/qman_priv.h   |  7 +++++++
 4 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qbman/qman.c b/drivers/soc/fsl/qbman/qman.c
index 636f83f..f10f77d 100644
--- a/drivers/soc/fsl/qbman/qman.c
+++ b/drivers/soc/fsl/qbman/qman.c
@@ -2581,7 +2581,7 @@ static int _qm_dqrr_consume_and_match(struct qm_portal *p, u32 fqid, int s,
 #define qm_dqrr_drain_nomatch(p) \
 	_qm_dqrr_consume_and_match(p, 0, 0, false)
 
-static int qman_shutdown_fq(u32 fqid)
+int qman_shutdown_fq(u32 fqid)
 {
 	struct qman_portal *p;
 	struct device *dev;
@@ -2754,7 +2754,7 @@ static int qman_shutdown_fq(u32 fqid)
 
 		DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) ==
 			    QM_MCR_VERB_ALTER_OOS);
-		if (mcr->result) {
+		if (mcr->result != QM_MCR_RESULT_OK) {
 			dev_err(dev, "OOS fail: FQ 0x%x (0x%x)\n",
 				fqid, mcr->result);
 			ret = -EIO;
diff --git a/drivers/soc/fsl/qbman/qman_ccsr.c b/drivers/soc/fsl/qbman/qman_ccsr.c
index d054e37..bee2d0e 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -483,7 +483,7 @@ RESERVEDMEM_OF_DECLARE(qman_pfdr, "fsl,qman-pfdr", qman_pfdr);
 
 #endif
 
-static unsigned int qm_get_fqid_maxcnt(void)
+unsigned int qm_get_fqid_maxcnt(void)
 {
 	return fqd_sz / 64;
 }
@@ -728,6 +728,17 @@ int qman_is_probed(void)
 }
 EXPORT_SYMBOL_GPL(qman_is_probed);
 
+int qman_requires_cleanup(void)
+{
+	return __qman_requires_cleanup;
+}
+
+void qman_done_cleanup(void)
+{
+	__qman_requires_cleanup = 0;
+}
+
+
 static int fsl_qman_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
diff --git a/drivers/soc/fsl/qbman/qman_portal.c b/drivers/soc/fsl/qbman/qman_portal.c
index 2460802..8295d75 100644
--- a/drivers/soc/fsl/qbman/qman_portal.c
+++ b/drivers/soc/fsl/qbman/qman_portal.c
@@ -233,7 +233,7 @@ static int qman_portal_probe(struct platform_device *pdev)
 	struct device_node *node = dev->of_node;
 	struct qm_portal_config *pcfg;
 	struct resource *addr_phys[2];
-	int irq, cpu, err;
+	int irq, cpu, err, i;
 	u32 val;
 
 	err = qman_is_probed();
@@ -327,6 +327,22 @@ static int qman_portal_probe(struct platform_device *pdev)
 	if (!cpu_online(cpu))
 		qman_offline_cpu(cpu);
 
+	if (__qman_portals_probed == 1 && qman_requires_cleanup()) {
+		/*
+		 * QMan wasn't reset prior to boot (Kexec for example)
+		 * Empty all the frame queues so they are in reset state
+		 */
+		for (i = 0; i < qm_get_fqid_maxcnt(); i++) {
+			err =  qman_shutdown_fq(i);
+			if (err) {
+				dev_err(dev, "Failed to shutdown frame queue %d\n",
+					i);
+				goto err_portal_init;
+			}
+		}
+		qman_done_cleanup();
+	}
+
 	return 0;
 
 err_portal_init:
diff --git a/drivers/soc/fsl/qbman/qman_priv.h b/drivers/soc/fsl/qbman/qman_priv.h
index 75a8f90..bf51c17 100644
--- a/drivers/soc/fsl/qbman/qman_priv.h
+++ b/drivers/soc/fsl/qbman/qman_priv.h
@@ -265,3 +265,10 @@ extern struct qman_portal *affine_portals[NR_CPUS];
 extern struct qman_portal *qman_dma_portal;
 const struct qm_portal_config *qman_get_qm_portal_config(
 						struct qman_portal *portal);
+
+unsigned int qm_get_fqid_maxcnt(void);
+
+int qman_shutdown_fq(u32 fqid);
+
+int qman_requires_cleanup(void);
+void qman_done_cleanup(void);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
