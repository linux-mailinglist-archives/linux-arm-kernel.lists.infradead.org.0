Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8677E3D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EaNntIUc4VDdIaCZTpe50dnGZooaI8IWwOA43ebEoo=; b=QwP8DcITyAd/6Q
	fqkHIss76CPmh3JXxRDCTzLZ+Q3W2AXJqQguQg5k20LovPXSWWSLz2yt7nrobj8vJSWHmS9H5p00i
	1quQ++oGvkSEVOBvbuxDZ2CG8ZQdIRv3h0LwPn+nhrt2YpVbtOYcr0WUwxN8jn+4tEoCq4Z75W2HZ
	jkXAzpB6T0P1jxQAz+6sm+ygvX/Nc4Az/SxeQVKzkoCqSiYCAD+iFdD4nBCtMGN7qL6tyVLIP8m26
	o52tM9YKeFlXiirp7xQmMMYbCa72CbGPLvQkOmOcEip0mQCFnKJgrTw3iNTkUZnCIEh+wXqHlddZ3
	i0WCm38ojbKJt6vJoccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHWv-00063X-Uw; Thu, 01 Aug 2019 20:18:29 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVd-0004EZ-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NoNRLTakm2mLa5gjrj2GknS5zvtR9WZLzPG0DMOFc1SZ2UPxoAazpkKjnmP+SF+iD7ixL3v1JSueHbixVX9Ap+IeVWPM0uByD3Z7PK07lU3n6a9327rIIVEf1AWGgcHOF9mFEeqrd0fFptGt+K1bg7HMG9V8k0EcLEX7ET66WdFjwGk7mSK0rPBvgone1RYouveLaNfvUP+vjr1Sdw3IQz+YY4xlgjPWpR3CsK518/IzTpiXf41pQ9NswcUxup+TG/AUMDzt66mnEzfSpXZX4lBlIfmEsFS9Rb4fySY+xIvkNOYBz4isBMoFyuRETgo4rKrsXgekEdrJzSlWInonlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFNdC7m1i8uotIquKhicAzTe3cTAsKe+GtuQ3m5P6r0=;
 b=WcH5rlH8o9WlABDdaKvYdFAXoA3DTW7Klv8QbfKEPepMsXv2/7JvSrfV0RXXhCN7X3qu/YDxA8XRGzIKGC7pMS0A2RE/z7o5pPZ5ZjWHoNTUtLaGGairkJiM6YVaP4D4uAT6jUCLi4gb6roVGjwIEmrmaJEtdVOSnTR4MGU3FaUsXnRDX61z6IaIAoZ1LOZ1qH+WnlWFItlVbo1M+s0idGBzAcy6S3/yZ25UOhDDlL0T4XPTGZHQO0HWD2QKPJiGWbaXeF2sQLlCsnJKvunDa/OnxblXPP9Hr18bHhYhKRFsTMbHMync17RdN59oCczebYTS3cVJ970qLrzBylpe9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFNdC7m1i8uotIquKhicAzTe3cTAsKe+GtuQ3m5P6r0=;
 b=H16RaiNA+5OQTNuASjupLhv2ffuQj5SAcEvuQwGmx2mZw4EjOMb1PkV3Ye0sOgwK0b30QQO8Pdjo0m0WoIZmGN/ThBW5T0FnbzTZirDO3hrPyz4QNvZWTPv9gVAt1hwuH3fhR5bcz9/8W6YK5D46buXkzIgLfvt0B7DZrVMamRg=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:17:03 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:17:03 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 6/7] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Topic: [PATCH v3 6/7] soc/fsl/qbman: Fixup qman_shutdown_fq()
Thread-Index: AQHVSKYVfyP8LV3Wb0W4Ptye+S3eRA==
Date: Thu, 1 Aug 2019 20:17:03 +0000
Message-ID: <1564690599-29713-7-git-send-email-roy.pledge@nxp.com>
References: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN4PR0501CA0130.namprd05.prod.outlook.com
 (2603:10b6:803:42::47) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9183e2e-cfd8-4309-8944-08d716bd37c1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB66567467DE5C4F86C185860B86DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:169;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(14444005)(446003)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(11346002)(76176011)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EKsiJnCRT35QsFyGTlm1AUETqdThP2sDKB1DCSxi166ZxC5+twCGT+A1GMKxtMaqIdHeXNv2DYj7BtfMC9mc7K+VkfR879MH/xF+M1+JM6e4RWA9RazSFbedg0SazrSJSbsPHdpAw+HiGm95pfMQMxQllfcvFnMKrogfcu87cSUKKyKp/nRWFiw78BpxIiSQSW0z2kPyt8saueB4uZYAEbRiaZCHSUrZhJRi3AN1qAamwAT9ReGfjvllAfK/UYQkvVu1BzTLtuZtMofvxLD8EtL7DYbgA4eovlJ0yu0DwaEz9SpjoEwIpOEV6JwUEAlvhOTUcegRsk1Ax9TY/zyDdOkoQPtzDQ+aSZ5CcMwswAgeDXJBXqOQWM4qECcfoELuM97RSItlFMxCcIc6QD9l8oJqi7iPAO3tav7lfIpvub4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9183e2e-cfd8-4309-8944-08d716bd37c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:17:03.8393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131709_631900_07FBF2F6 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
