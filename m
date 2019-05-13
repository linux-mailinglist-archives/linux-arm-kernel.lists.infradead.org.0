Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B5F1BAAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOCF2bBF28RnzrFc4zgsCg4hdoUOqtKtF721VtjJXao=; b=Iqsn8KS2dCYH2S
	KgbcUpiqxRbqEh5uKAqscG+MXnFRYggX9ME5R4GSSmH71YCZ9AdNDY5qqSH1EwvDZZaJ8+AkK6HXE
	RcOsEw4q/NCGqGDD52qdiVRh3Ea0ri1YZmmeAu88hwOHIBXOdrG83TAW2LQnVWfeC1RhqGwCswnBO
	5qfzxLNXGzn7huZNwHM0OccNTlVUp843aqLVMhxiV05tbIAKa6H+2hW6jOAvTdk93fQxRWAUn1SHL
	8NkDGoXvqWQZDQLEjWp+P1FkXaykNeBGhlahzSTIZDb7VJdnY1INswp7M/ctGD0KYI4wZQzG5dbWN
	iCUTcyI6TQYf6WcnJ5BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDWz-0005B6-KC; Mon, 13 May 2019 16:10:25 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDWP-0003gl-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqmS1Wvr0SSsg26E2C3Ige4Jd8rgaFjihegp+OwQBfw=;
 b=TGqm8bWZNhxMp9eFvIS5LlWUwhjIdpIcyjUVgsgcIWGoRCUB7KInjHNc8gi2Pcm2Z0gjC/tYlw2RG2UnKJME8r1bdPfQeQjSITSfJrg7xVQngCfl/tsCNSAVvPNxiQsdPIlKAwRcKfSQaaWrMSIX483yjomvsJkeoAZjeThT2Iw=
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com (10.172.247.10) by
 DB6PR0402MB2709.eurprd04.prod.outlook.com (10.172.246.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 16:09:42 +0000
Received: from DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e]) by DB6PR0402MB2727.eurprd04.prod.outlook.com
 ([fe80::e194:a71a:3497:783e%8]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 16:09:42 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v1 2/8] soc/fsl/qbman: Cleanup buffer pools if BMan was
 initialized prior to bootup
Thread-Topic: [PATCH v1 2/8] soc/fsl/qbman: Cleanup buffer pools if BMan was
 initialized prior to bootup
Thread-Index: AQHVCaZGBsQ22UU/s06XbqnO82VgUw==
Date: Mon, 13 May 2019 16:09:42 +0000
Message-ID: <1557763756-24118-3-git-send-email-roy.pledge@nxp.com>
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
x-ms-office365-filtering-correlation-id: a1a8d328-b6ea-43ff-7f49-08d6d7bd68a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB6PR0402MB2709; 
x-ms-traffictypediagnostic: DB6PR0402MB2709:
x-microsoft-antispam-prvs: <DB6PR0402MB27093707016C3CD8947938A2860F0@DB6PR0402MB2709.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:494;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(396003)(39860400002)(189003)(199004)(81166006)(81156014)(8936002)(2201001)(110136005)(54906003)(316002)(476003)(2501003)(86362001)(2616005)(50226002)(2906002)(66556008)(64756008)(66446008)(66946007)(66476007)(73956011)(478600001)(3450700001)(6636002)(305945005)(5660300002)(386003)(6506007)(102836004)(43066004)(6486002)(7736002)(26005)(186003)(6436002)(66066001)(4326008)(446003)(36756003)(99286004)(486006)(25786009)(11346002)(76176011)(52116002)(53936002)(44832011)(6512007)(8676002)(14454004)(68736007)(71200400001)(256004)(3846002)(71190400001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0402MB2709;
 H:DB6PR0402MB2727.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZrWWF91ltjzetW/2WDmd3MiZDhPthghVvzQfz6tLGITy1UEo9n+nuSTi3Dp4TSo9UMXT6InpYWaEBBsXVjNEoWPDOUcDfBCHpOiJo9S8IbQf/GMrR+THC3ywO9YoBAZqM/nakmXNrMEENB4gYJdwPNvlCgEjj4t+nvv8LTKFj6/LPnXGvwjRfhLx3U1H7nxeCfufcl5+Cm0GqcA4u11yxORC9bGqC8+5wIS1mmtgJ0JqIIaCWaAnnac26mpPq+K4u2kDQ2DLx3K0uGu80coqwQUUM1hrMvk9nGJv6LL5Z1iUakATj3SUW2S/iTu9Fp9QVke314xOlc+CmVWYYH2jwK6GEuODGQ1N9Oyb+/LbzbeANB9m/bkGMeZxIu53kVvfCsQaO8XHW6vdqCeYZUaniu7Jpl58pUJstnHaq6fNrgY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1a8d328-b6ea-43ff-7f49-08d6d7bd68a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 16:09:42.7353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090950_339815_636CC25F 
X-CRM114-Status: GOOD (  18.22  )
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
index 7819bc2..6c1a734 100644
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
@@ -180,6 +180,22 @@ static int bman_portal_probe(struct platform_device *pdev)
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
