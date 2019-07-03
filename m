Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4048E5EE0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 23:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EaNntIUc4VDdIaCZTpe50dnGZooaI8IWwOA43ebEoo=; b=i9kqjRIwCo7EPX
	8BV9d1JIDK4rVtmCK7N1ohYontX6AhmWjTJKWbgbiFjx+7D+TRXY5OcrW3mrqJrmD2O67UO5H8qA1
	/0UPPOqGrQ5F2pc0g4lDA+Hja+tg7nFKCi75Bzdg/Neifak/h2VibBNG5rcDPsCda4GT50ldqwWAh
	e+7aAqxgcrbErZYLyCeC2ZmGOB1GR/x4OUzXysRp9djMIKqRKu0oYms3LyZyF/snUGyVXM9L7foXY
	rAaGmKDHtaSNUmhR9jxvBBN2W7cETxG5GHjhVAssASF2fv8FNAMYl0b/teEWjnqnJ2tLfQzOsn+K9
	8Xn1ACsN4aXjOpf2P6NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himNp-0000mA-Ro; Wed, 03 Jul 2019 21:01:41 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himLs-0006Jq-4F
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFNdC7m1i8uotIquKhicAzTe3cTAsKe+GtuQ3m5P6r0=;
 b=n0omfFAU9OlfOke2OVsdjc+QBqx8I1c62bqzsHLPbo3/1p+59pG11yuh2XBP1CFgpsCRJwueh2UGqxFRbznOvPwZZSgepg+ubq1dRTxTPYvIqqDHekj4nzYyqpsqIOX4vO7vcv/uCPR3qeNB7oRLJswWFCHvznLpVultKXMMbK4=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 20:59:36 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 20:59:36 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 6/7] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Topic: [PATCH v2 6/7] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Index: AQHVMeI4r3TjNVl6XUOD+mjo2lQ0Mg==
Date: Wed, 3 Jul 2019 20:59:36 +0000
Message-ID: <1562187548-32261-7-git-send-email-roy.pledge@nxp.com>
References: <1562187548-32261-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1562187548-32261-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN6PR15CA0005.namprd15.prod.outlook.com
 (2603:10b6:805:16::18) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a074c9b-667a-4524-d6d5-08d6fff95ae5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6464; 
x-ms-traffictypediagnostic: VE1PR04MB6464:
x-microsoft-antispam-prvs: <VE1PR04MB64646A85341E6C87AACB2CD086FB0@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:169;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(14454004)(2501003)(81156014)(81166006)(4326008)(478600001)(305945005)(8676002)(14444005)(2906002)(7736002)(50226002)(476003)(486006)(2616005)(446003)(25786009)(11346002)(3450700001)(86362001)(2201001)(68736007)(44832011)(36756003)(66946007)(26005)(66476007)(66556008)(64756008)(73956011)(71200400001)(71190400001)(66066001)(53936002)(6116002)(52116002)(386003)(6506007)(66446008)(8936002)(256004)(102836004)(186003)(99286004)(6486002)(5660300002)(110136005)(316002)(3846002)(6436002)(43066004)(6512007)(6636002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e/1X7oWlkcs+fMkVbF07zBq6XmYVAlleINYe+Q8rcG8V7Ug1DXXWXwrVJdzwga8AIk7svMI9f8uPG+wS6ONt1ebmM++0ETYVVzKotqzBT5qOByV7G1RoXkhhFI94GPPdjXtkW2y6TrjAJMpyQFBvVcV1XRx2kWY676aa5o3wB0HCNlvaGsNREa1ZolEKQbStNqlKdb21qtIFrwExonTxk7npXZinxFeAYNcghZt76C4dsNb5aV9gXZ28XTm/BbCQUMGEt+wpupojsF0L5wGjLL9bIFhErlMwGRHFpJWttTIp5fn9wPIKdbE5+OdscLorntoi0ufKC12+fB0QRE15mBJwQwc6Ow2uhERVigNii8y+tgNxQFuoqi4o9GFLJSsrtiofy1ltDU9Jm0pHIzBVhxwiM6XGiU5weUkG9iavMOU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a074c9b-667a-4524-d6d5-08d6fff95ae5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 20:59:36.0083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135940_294215_E7897FC3 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: Roy Pledge <roy.pledge@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When shutting down a FQ on a dedicated channel only the
SW portal associated with that channel can dequeue from it.
Make sure the correct portal is use.

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/qman.c | 53 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qbman/qman.c b/drivers/soc/fsl/qbman/qman.c
index 4a99ce5..bf68d86 100644
--- a/drivers/soc/fsl/qbman/qman.c
+++ b/drivers/soc/fsl/qbman/qman.c
@@ -1018,6 +1018,20 @@ static inline void put_affine_portal(void)
 	put_cpu_var(qman_affine_portal);
 }
 
+
+static inline struct qman_portal *get_portal_for_channel(u16 channel)
+{
+	int i;
+
+	for (i = 0; i < num_possible_cpus(); i++) {
+		if (affine_portals[i] &&
+		    affine_portals[i]->config->channel == channel)
+			return affine_portals[i];
+	}
+
+	return NULL;
+}
+
 static struct workqueue_struct *qm_portal_wq;
 
 int qman_dqrr_set_ithresh(struct qman_portal *portal, u8 ithresh)
@@ -2601,7 +2615,7 @@ static int _qm_dqrr_consume_and_match(struct qm_portal *p, u32 fqid, int s,
 
 int qman_shutdown_fq(u32 fqid)
 {
-	struct qman_portal *p;
+	struct qman_portal *p, *channel_portal;
 	struct device *dev;
 	union qm_mc_command *mcc;
 	union qm_mc_result *mcr;
@@ -2641,17 +2655,28 @@ int qman_shutdown_fq(u32 fqid)
 	channel = qm_fqd_get_chan(&mcr->queryfq.fqd);
 	wq = qm_fqd_get_wq(&mcr->queryfq.fqd);
 
+	if (channel < qm_channel_pool1) {
+		channel_portal = get_portal_for_channel(channel);
+		if (channel_portal == NULL) {
+			dev_err(dev, "Can't find portal for dedicated channel 0x%x\n",
+				channel);
+			ret = -EIO;
+			goto out;
+		}
+	} else
+		channel_portal = p;
+
 	switch (state) {
 	case QM_MCR_NP_STATE_TEN_SCHED:
 	case QM_MCR_NP_STATE_TRU_SCHED:
 	case QM_MCR_NP_STATE_ACTIVE:
 	case QM_MCR_NP_STATE_PARKED:
 		orl_empty = 0;
-		mcc = qm_mc_start(&p->p);
+		mcc = qm_mc_start(&channel_portal->p);
 		qm_fqid_set(&mcc->fq, fqid);
-		qm_mc_commit(&p->p, QM_MCC_VERB_ALTER_RETIRE);
-		if (!qm_mc_result_timeout(&p->p, &mcr)) {
-			dev_err(dev, "QUERYFQ_NP timeout\n");
+		qm_mc_commit(&channel_portal->p, QM_MCC_VERB_ALTER_RETIRE);
+		if (!qm_mc_result_timeout(&channel_portal->p, &mcr)) {
+			dev_err(dev, "ALTER_RETIRE timeout\n");
 			ret = -ETIMEDOUT;
 			goto out;
 		}
@@ -2659,6 +2684,9 @@ int qman_shutdown_fq(u32 fqid)
 			    QM_MCR_VERB_ALTER_RETIRE);
 		res = mcr->result; /* Make a copy as we reuse MCR below */
 
+		if (res == QM_MCR_RESULT_OK)
+			drain_mr_fqrni(&channel_portal->p);
+
 		if (res == QM_MCR_RESULT_PENDING) {
 			/*
 			 * Need to wait for the FQRN in the message ring, which
@@ -2688,21 +2716,25 @@ int qman_shutdown_fq(u32 fqid)
 			}
 			/* Set the sdqcr to drain this channel */
 			if (channel < qm_channel_pool1)
-				qm_dqrr_sdqcr_set(&p->p,
+				qm_dqrr_sdqcr_set(&channel_portal->p,
 						  QM_SDQCR_TYPE_ACTIVE |
 						  QM_SDQCR_CHANNELS_DEDICATED);
 			else
-				qm_dqrr_sdqcr_set(&p->p,
+				qm_dqrr_sdqcr_set(&channel_portal->p,
 						  QM_SDQCR_TYPE_ACTIVE |
 						  QM_SDQCR_CHANNELS_POOL_CONV
 						  (channel));
 			do {
 				/* Keep draining DQRR while checking the MR*/
-				qm_dqrr_drain_nomatch(&p->p);
+				qm_dqrr_drain_nomatch(&channel_portal->p);
 				/* Process message ring too */
-				found_fqrn = qm_mr_drain(&p->p, FQRN);
+				found_fqrn = qm_mr_drain(&channel_portal->p,
+							 FQRN);
 				cpu_relax();
 			} while (!found_fqrn);
+			/* Restore SDQCR */
+			qm_dqrr_sdqcr_set(&channel_portal->p,
+					  channel_portal->sdqcr);
 
 		}
 		if (res != QM_MCR_RESULT_OK &&
@@ -2733,9 +2765,8 @@ int qman_shutdown_fq(u32 fqid)
 				 * Wait for a dequeue and process the dequeues,
 				 * making sure to empty the ring completely
 				 */
-			} while (qm_dqrr_drain_wait(&p->p, fqid, FQ_EMPTY));
+			} while (!qm_dqrr_drain_wait(&p->p, fqid, FQ_EMPTY));
 		}
-		qm_dqrr_sdqcr_set(&p->p, 0);
 
 		while (!orl_empty) {
 			/* Wait for the ORL to have been completely drained */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
