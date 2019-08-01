Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3D7E3D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skACsYZWLoxLhmuAhVhfUo1HR0ZjkaDSfNtZXd8ei68=; b=q+SpyKueZ8yJN5
	p7BG/++RDKkMROTnfqUpop+mEEDkJ9+eufOD5QGcTa7VWzRNq8lmsqRaqIJSY723zACLHMtEhtdkE
	sJgh4Ate4nfMtWEi4BzcUVmxeUPHFRVo8dm2XLod9ua7mzlHhyvNkc4/Kdm9S8aA5+sCGjuxgMcjJ
	qhbz2/fJlp729V3Dl2UGGvQmiX/R19jRXIboYU9VRoNu0PWSeo3AXz+uCM6d7ONtCaFGYd+2yCcm0
	9VL+kZFcpeRRXFcK1s4J57it9dYJ0NhAhZ7F2YNyxHlK/nRkUQVQZ5oft7LrYKmw3ONbbGiDlFsPJ
	vtvAUscaqPPWoVIHOjLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHWF-0005Dk-LZ; Thu, 01 Aug 2019 20:17:47 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVY-0004EZ-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=frUulIligv6nZenbfWQcxg7/CHJ7b0GztLqPA2z+cKRZRI+CMJ1Zse/Aul4QYQURa1SMClZvnwjqw2COi47+xL1TTPGgJxJjsDqKRbng3khgO8MCNI8iURDjfT1LQqQCnpHKI9pBPuzz3b/f+dA8BhdzEozxKViJe9uhURWwZBCG+nwv6xwv+kF8Ll/yKhjH20JEZ+Z5aplgZbVgRe068MtkmZbgHJeUZXi0yZoXG8xcCFlXuOwQgl99BDAkpwH/ZSVDqwwoelSAvu9B0dl1SFP/uKMNkVvyu9Kkpgo9JUSGKEAYsjB5P2zgpZRUfI5oxkRYeG0zCE66s5UILYEJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJWe9mULcORumohzCx6FOo1R+glwoyoOb1sUgUjat7I=;
 b=KmNQ2sC8R5L7gSgPtMIB5SoF4sQ032AO36LNvzGnH0axRA4a94ne3vzb7gNURPCLvl9LXOXb1XkIgZweDza8SiqvMu2PK1ed6JsH9efauc89ZWmh81YoPopOacLdObPck1388MsftatUVSw7M38hBh2qBBkF2Efi0TV+OALvqGByRPdsuRBbQq/s7X/hKppc8HGKBrmyImJo3xN/cc7tJ9WRM0yytF3FgxzHXPr8EDXxiWkBZSEZUge+02GacD7g74zQntyaneILC238DXpYLkcA3tbIByxb+XqLLuUUZGOTwrbgbqKf0IKeIx1ZMJcgQRkDQUFF2KmLSQI6nd4elA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJWe9mULcORumohzCx6FOo1R+glwoyoOb1sUgUjat7I=;
 b=TfnbM35BTIhW4zvDTZ2zLIenfcLUp40TEJguDDkF/y1vWbw4jmNYfQeo/AfsUFaBQCjtEv5l3LZMWNzcARAOoXbzkpfVUX7mJUYLFy0p4Ps9jHGHJfLV4T5udBYtjWeI7qSilDV49N9bu40QDsARRgmKkJ/mTSvKXQMBbwDjrgQ=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:16:57 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:16:57 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 3/7] soc/fsl/qbman: Cleanup QMan queues if device was
 already initialized
Thread-Topic: [PATCH v3 3/7] soc/fsl/qbman: Cleanup QMan queues if device was
 already initialized
Thread-Index: AQHVSKYR640XbJi8UUCXDJusQovyig==
Date: Thu, 1 Aug 2019 20:16:57 +0000
Message-ID: <1564690599-29713-4-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: 06d50368-623b-40e6-7ba0-08d716bd3400
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB665688B747B15D9099D49DF586DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(446003)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(11346002)(76176011)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1Js9purKEyYN6g/K9/uEslL2xY9icdyrJ0sQGSDr5g5Jiwi+pcfgWEA6waRckXTYsFd020dCjOntzdrV4Kng2Enpg25uN40ee7nzPHA6zqjyJ60fgz7gyd1TW+rqN6JjJCUgWYvzh/xEURNXhR9X3XIO/8LKcWzwuN84MroFinixtEvLtqkivLGRgRco0ttaDg9u2HBPzKblHgLbDMKctyGeBjCMzPmmRjIW99kRm5HpeYqlO8Hgt1Slrs8wt1VqBnfVsQEhi6sNdO4iSgVmZzDF/v+cZYRRXJt7yDPa4HdprQCzQ3+uX9c3mdidKjGKixJCpOZTQFydh8IteN8RRCMJ0NkrhL1nXUWst8ty6QRHcH6X2zH/vF81UnGuaBENWgUhQl2GOXibSY5C9qrXwBQhInpJRE93Ylx39aJ31fE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d50368-623b-40e6-7ba0-08d716bd3400
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:16:57.5270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131704_347267_CB84AEFD 
X-CRM114-Status: GOOD (  15.10  )
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
index a3edefa..709661b7b 100644
--- a/drivers/soc/fsl/qbman/qman_ccsr.c
+++ b/drivers/soc/fsl/qbman/qman_ccsr.c
@@ -492,7 +492,7 @@ RESERVEDMEM_OF_DECLARE(qman_pfdr, "fsl,qman-pfdr", qman_pfdr);
 
 #endif
 
-static unsigned int qm_get_fqid_maxcnt(void)
+unsigned int qm_get_fqid_maxcnt(void)
 {
 	return fqd_sz / 64;
 }
@@ -737,6 +737,17 @@ int qman_is_probed(void)
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
index 75717bc..153727c 100644
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
@@ -328,6 +328,22 @@ static int qman_portal_probe(struct platform_device *pdev)
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
index 0451571..a8a35fe 100644
--- a/drivers/soc/fsl/qbman/qman_priv.h
+++ b/drivers/soc/fsl/qbman/qman_priv.h
@@ -272,3 +272,10 @@ extern struct qman_portal *affine_portals[NR_CPUS];
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
