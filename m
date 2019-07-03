Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C505EE05
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 23:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flON/DRNumm1DefAKghvXHmUoa+b9rGb3zMvt1teS0c=; b=OdO9Z5Qh5gWx3d
	FCzZ6JTU9VEzeJxmmB2ONf66IgNYY7NjX3H1Sb/gicBF8OhUHG8xELWEPo8nc76hZdA4E0QBzdy8K
	H9SFdwcphFSAqO0irVbnmNbD0NNvBd8E4ZB3qM2AAOof4CXEFNsU4mugMNhLC1m9bL/NbUmWqFeAi
	7S0sQ2CBtJP89tKdWPMv86Htfx+ll/EAo+4/znlW8Dc7m6q8EzQ61nfiGD9FQ+tlEXUxsnsCsxFjw
	ms/K6/pOd+Uk4LKXR9NH/UBm5XDg8nf5q4BSn3E23naver5eKOFVz9sCt05t+O3Zfl0CcG1vyk+i0
	kCpqzuACwWz0DV1nh/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himMx-0008Ku-5y; Wed, 03 Jul 2019 21:00:47 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himLm-0006Jq-E8
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Rc8vExPXZwB8d4MZ9x7eOtOwLPlGtoP7wKctkSKqwI=;
 b=O6QsQNmOI7DBo/vcOB1CQbKu9Zk9AhtW8RoMgTNNYcyLmJJazGp3cVcazBJzx13tLk65FHvwhWaUEI8Al05ZF0ri5TXYl/C23yWpMvu4rEBcZLFgdJJmys2T9LCoifASF1Y6ZXHTguw2N3C2zMEHud77MslKUw/BAUmczIg+czw=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6464.eurprd04.prod.outlook.com (20.179.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 20:59:28 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::a5ca:7c9c:6b18:eb0a%6]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 20:59:28 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 2/7] soc/fsl/qbman: Cleanup buffer pools if BMan was
 initialized prior to bootup
Thread-Topic: [PATCH v2 2/7] soc/fsl/qbman: Cleanup buffer pools if BMan was
 initialized prior to bootup
Thread-Index: AQHVMeI0Tn55eOVMH0+dD2+2WdhuLA==
Date: Wed, 3 Jul 2019 20:59:28 +0000
Message-ID: <1562187548-32261-3-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: 66901d20-b6e6-47bb-6b92-08d6fff9566a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6464; 
x-ms-traffictypediagnostic: VE1PR04MB6464:
x-microsoft-antispam-prvs: <VE1PR04MB646470CD7E399CC7AFA6D9EC86FB0@VE1PR04MB6464.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:494;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(366004)(136003)(189003)(199004)(14454004)(2501003)(81156014)(81166006)(4326008)(478600001)(305945005)(8676002)(2906002)(7736002)(50226002)(476003)(486006)(2616005)(446003)(25786009)(11346002)(3450700001)(86362001)(2201001)(68736007)(44832011)(36756003)(66946007)(26005)(66476007)(66556008)(64756008)(73956011)(71200400001)(71190400001)(66066001)(53936002)(6116002)(52116002)(386003)(6506007)(66446008)(8936002)(256004)(102836004)(186003)(99286004)(6486002)(5660300002)(110136005)(316002)(3846002)(6436002)(43066004)(6512007)(6636002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6464;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4lzkd2XHw9rEehpFfw2icm1F1MGR09HuIqHe6B7oduU33aqjtAdfGpN4Z8ozlrDxh9pW+8uNtxnJCEts5ZkphsoejK3xqmRlTZkV+NOrjm/7PSI2tSzwSDP4ppkZb/UIP+eqUX6gnP1JJpKV6aX57TKnXzxhZi2GmMZmS6q5QXOZLjC6Se8rS1bYrqzciIUVxznjELeCATckh0ZaPjXhQS1F1axm04SgxzciX7ytbyNJnyRy2YU6afqY8PIDcfimmME665dcdgpDy1L/kj/pTFMe/n/YMSj4njGQR4RBtIq7T6VUIvxSRN1qVqJAI7yzs3ejalmX1/8hTEdQr06f9mR3KlXxjgjZEyyc5QCHB4S2FptjTOTLDE/XzpURwVjqXxwL6dToxl5yZ1VkLEvn67PD2nN4OIR+DxTxdswdcKY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66901d20-b6e6-47bb-6b92-08d6fff9566a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 20:59:28.4676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135934_517482_FE38ECCD 
X-CRM114-Status: GOOD (  16.32  )
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

Clean the BMan buffer pools if the device had been initialized
previously.  This will ensure a consistent state if the kernel
was soft restarted (kexec for example)

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/bman.c        | 17 +++++++++--------
 drivers/soc/fsl/qbman/bman_ccsr.c   | 10 ++++++++++
 drivers/soc/fsl/qbman/bman_portal.c | 18 +++++++++++++++++-
 drivers/soc/fsl/qbman/bman_priv.h   |  5 +++++
 4 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/fsl/qbman/bman.c b/drivers/soc/fsl/qbman/bman.c
index f84ab59..f4fb527 100644
--- a/drivers/soc/fsl/qbman/bman.c
+++ b/drivers/soc/fsl/qbman/bman.c
@@ -635,30 +635,31 @@ int bman_p_irqsource_add(struct bman_portal *p, u32 bits)
 	return 0;
 }
 
-static int bm_shutdown_pool(u32 bpid)
+int bm_shutdown_pool(u32 bpid)
 {
+	int err = 0;
 	struct bm_mc_command *bm_cmd;
 	union bm_mc_result *bm_res;
 
+
+	struct bman_portal *p = get_affine_portal();
 	while (1) {
-		struct bman_portal *p = get_affine_portal();
 		/* Acquire buffers until empty */
 		bm_cmd = bm_mc_start(&p->p);
 		bm_cmd->bpid = bpid;
 		bm_mc_commit(&p->p, BM_MCC_VERB_CMD_ACQUIRE | 1);
 		if (!bm_mc_result_timeout(&p->p, &bm_res)) {
-			put_affine_portal();
 			pr_crit("BMan Acquire Command timedout\n");
-			return -ETIMEDOUT;
+			err = -ETIMEDOUT;
+			goto done;
 		}
 		if (!(bm_res->verb & BM_MCR_VERB_ACQUIRE_BUFCOUNT)) {
-			put_affine_portal();
 			/* Pool is empty */
-			return 0;
+			goto done;
 		}
-		put_affine_portal();
 	}
-
+done:
+	put_affine_portal();
 	return 0;
 }
 
diff --git a/drivers/soc/fsl/qbman/bman_ccsr.c b/drivers/soc/fsl/qbman/bman_ccsr.c
index dc6d7e5..cb24a08 100644
--- a/drivers/soc/fsl/qbman/bman_ccsr.c
+++ b/drivers/soc/fsl/qbman/bman_ccsr.c
@@ -195,6 +195,16 @@ int bman_is_probed(void)
 }
 EXPORT_SYMBOL_GPL(bman_is_probed);
 
+int bman_requires_cleanup(void)
+{
+	return __bman_requires_cleanup;
+}
+
+void bman_done_cleanup(void)
+{
+	__bman_requires_cleanup = 0;
+}
+
 static int fsl_bman_probe(struct platform_device *pdev)
 {
 	int ret, err_irq;
diff --git a/drivers/soc/fsl/qbman/bman_portal.c b/drivers/soc/fsl/qbman/bman_portal.c
index c78cc69..cc06d95 100644
--- a/drivers/soc/fsl/qbman/bman_portal.c
+++ b/drivers/soc/fsl/qbman/bman_portal.c
@@ -100,7 +100,7 @@ static int bman_portal_probe(struct platform_device *pdev)
 	struct device_node *node = dev->of_node;
 	struct bm_portal_config *pcfg;
 	struct resource *addr_phys[2];
-	int irq, cpu, err;
+	int irq, cpu, err, i;
 
 	err = bman_is_probed();
 	if (!err)
@@ -181,6 +181,22 @@ static int bman_portal_probe(struct platform_device *pdev)
 	if (!cpu_online(cpu))
 		bman_offline_cpu(cpu);
 
+	if (__bman_portals_probed == 1 && bman_requires_cleanup()) {
+		/*
+		 * BMan wasn't reset prior to boot (Kexec for example)
+		 * Empty all the buffer pools so they are in reset state
+		 */
+		for (i = 0; i < BM_POOL_MAX; i++) {
+			err =  bm_shutdown_pool(i);
+			if (err) {
+				dev_err(dev, "Failed to shutdown bpool %d\n",
+					i);
+				goto err_portal_init;
+			}
+		}
+		bman_done_cleanup();
+	}
+
 	return 0;
 
 err_portal_init:
diff --git a/drivers/soc/fsl/qbman/bman_priv.h b/drivers/soc/fsl/qbman/bman_priv.h
index 751ce90..aa3981e 100644
--- a/drivers/soc/fsl/qbman/bman_priv.h
+++ b/drivers/soc/fsl/qbman/bman_priv.h
@@ -76,3 +76,8 @@ int bman_p_irqsource_add(struct bman_portal *p, u32 bits);
 
 const struct bm_portal_config *
 bman_get_bm_portal_config(const struct bman_portal *portal);
+
+int bman_requires_cleanup(void);
+void bman_done_cleanup(void);
+
+int bm_shutdown_pool(u32 bpid);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
