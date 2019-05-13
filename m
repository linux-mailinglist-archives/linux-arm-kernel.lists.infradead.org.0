Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01DD1BAC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTYBRroVeYzWgpJ8Dq2kN6k4u/gRq6JBFvA7hkpNX1w=; b=fjxATuSj2Qgv0Y
	L7Jbsym1LVNoT8rfwI8bPJjdzkIY4E9vzTXPMLrtQpHs5BkVuXxFAVMQcgwD0SSUKXZNAo7TfMYpb
	mtWmBgPeX1uKOgpBUzAApnXIllvZtTuerl2r+WeeAVgBjyPmyhjzLXo4rziMvtMp44BRLL8Gybb2u
	gJjc3kaowXUKEq8QURsuC4hk3UJtVsEJ69KPwFhZ9UGhwgN2BkAYjQ1ieeFEO/mntm1QFcVxogtgn
	RTznOo/pLoA/cyFsj8oHryqI2pZot9r2MhQ1C0alIS4hgPnAoBuQt44piMgyv+fdpFs4DR6nExXA7
	3UWsjxKPdK1vJh4A0DxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDY5-0006kZ-IE; Mon, 13 May 2019 16:11:33 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDX3-0003gl-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oJeq37LUHWXLkwtN+2gkJCItOFfnXzl1uREKPVyu434=;
 b=PtAFhWexSICMGV2VPgqKwdhsdrp1TUoEhZtKFsZcdM3i4QGimB6zm8RiYGiOTS0JMPBe8g34Vu+aT9Vj0+eBTDJTlVkC3ZK8o/0r8J7J/re1eZIBbjVV+lqjZp60yCsVrVepj9Pr4wGEmvfTiSTffk1pNGLaotcMZcCeHRFy5+w=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:52 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:52 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 7/8] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Topic: [PATCH v1 7/8] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Index: AQHVCaZL54VDi9ymWU+sgIqNMaCjHw==
Date: Mon, 13 May 2019 16:09:51 +0000
Message-ID: <1557763756-24118-8-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: f60b009f-cb3b-4622-7de2-08d6d7bd6e36
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB27090EE6FD87AB7D42CA974E860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:169;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(14444005)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8WtyodEBAMOFRXp2LW9sKYNPI+1mzkYmNtuO+oCtgZMyESFNWuJDxartXPTLTf1VaRdxYRHoolDHqZhutGVGxMTz47X35SkcpkCo6D4taFzyqljVDrpt9UbDeIespQxzWZLf966puTGblGqj3njohxa204ziVFvO3N3qT129lRZPhAdlKvBlkZpQMN+n1Ax8S6x5+A8fbQ8TmeuZWcERwQvh4WTBN9k8aBpQyvdsXW98Nu1SPl3bK5k2WIqaZWzzvmFJvWu0zKpD341VUV0yxLJRuUGN5MWDz36rIhDz7VPFjorUMGNYYZ2yqpU39O9jOju/WRBSvMjbOMX7gix8eA3fshOHt+LVCJ1B6wbEY2qNHKafj/lr6M0kHQUT0AC9qOfERvpDx4njH1GUyeCSeYG9Bm/BU8s50nlalesNdQE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f60b009f-cb3b-4622-7de2-08d6d7bd6e36
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:52.0161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_091029_925355_693452EA 
X-CRM114-Status: GOOD (  16.30  )
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
