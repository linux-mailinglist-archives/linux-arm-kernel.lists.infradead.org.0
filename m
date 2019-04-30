Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FBAFC2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FggH+ZMgMFCdWA/ymWecynSM6QwO+/MZ5KVaQk0uSp4=; b=l5xbyfKXPMMJ8e
	6RNKTLMyxI1OxmxdaBHji/JyfFESGi8ta5iKyXho837PGjOHitPUedUs8zAAj/lXVM8TXQ/yseV03
	WspRvp+zQmo8PF4tdTIZNfyw5faNPO+kf0hnYCOJUTY/iyOodTQdu8xZSnYHyLJ7JFqJxT54YhhPu
	pbhGbBm27O0ROUssRyBOsjU7n8WCpIULEMUH6j/vV5lHfS/+ese9kqW2SlPQsEaQt0BHIyy5lDOOq
	QopFcTctpGfq4S+JEqfFinbdmn5FtrOUmRuMjOXOYVRzXngq9xrOYj5gQTrsg6JIXEkHPwZTqNTLc
	Za9DYvs1F0KbukOS9ilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUKu-0005LO-Qw; Tue, 30 Apr 2019 15:06:24 +0000
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUKm-0005Jv-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ig1Wrbhoin6EXNLkp5xNBfhV8s78xH9gLtnPEZMutrQ=;
 b=EsAuthXkizoIxqPHR5nj58R417bZ10F6nTSeNHjVU6ypx9iHnwsynoeuQY3kPhowIyb7gYpTQTC0vKAEk0BhVayL53M3RaPxOo2QM8re2cJC/C9KLXtnj5LMEpLxFTPPtST/5eZSQGLyikGaptHq+X7UK0x6y7YGdBJA67VYd1I=
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com (20.179.244.217) by
 AM6PR04MB5895.eurprd04.prod.outlook.com (20.179.3.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 15:06:11 +0000
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4]) by AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4%2]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 15:06:11 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v5 1/2] PM / Domains: Add GENPD_FLAG_RPM_ALWAYS_ON flag
Thread-Topic: [PATCH v5 1/2] PM / Domains: Add GENPD_FLAG_RPM_ALWAYS_ON flag
Thread-Index: AQHU/2Y/h66odknpyEW0dAeBUTxZEg==
Date: Tue, 30 Apr 2019 15:06:11 +0000
Message-ID: <30247a52be55c3cb31d16b8ac0710d3ad51eea09.1556636234.git.leonard.crestez@nxp.com>
References: <cover.1556636234.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1556636234.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0902CA0058.eurprd09.prod.outlook.com
 (2603:10a6:802:1::47) To AM6PR04MB6440.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c57fd939-aadd-4ef0-70ed-08d6cd7d61ac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5895; 
x-ms-traffictypediagnostic: AM6PR04MB5895:
x-microsoft-antispam-prvs: <AM6PR04MB5895E710A9B63C31332F46FCEE3A0@AM6PR04MB5895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(366004)(346002)(39860400002)(199004)(189003)(8936002)(81156014)(25786009)(81166006)(8676002)(6486002)(36756003)(478600001)(52116002)(6116002)(68736007)(3846002)(4326008)(2906002)(186003)(305945005)(102836004)(53936002)(26005)(386003)(476003)(7736002)(2616005)(486006)(11346002)(44832011)(73956011)(76176011)(6512007)(6436002)(50226002)(6506007)(64756008)(66556008)(66446008)(66476007)(66946007)(71190400001)(14444005)(256004)(446003)(71200400001)(110136005)(54906003)(97736004)(99286004)(5660300002)(118296001)(14454004)(66066001)(316002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5895;
 H:AM6PR04MB6440.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +KgWLs9wjNSvj3YeU79N8EjI9BcArJgCBSyS/65m/JZ7afHF+OYsWBYXCH0AkseGzq7b64AToMGocxGllIWOSe8djPWX1zogtjrWP7ozmJX6gmNMCTlAeJCdOdjTC2T033hxzkYC4YKMeo8Bu2ADKUGGwzCqgDjBlEPJIxOTxDLbetA7WVs3sZxk6JiPzOD+dgp0WyIAxCAiFPwePk/lCNXnkcuX8FWApFeMbSjQj9oT/uxrIFJCXE/0UqYXyURRBXFP+tbLc1CH7bDmKR9Ea2jG0/q0+lO8XB9Lbm5VNqS4K8aGts7enetn0stfvJRTwfXAV6glZnr0B2nvW4i7/zWO+FUD0qw/FUNuSF3jv7oLhp/R629rGIods1811lco/IvSvFDfxdl4+qqTiE+rYpzQVe3v3zJkLLJy7kOvS50=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57fd939-aadd-4ef0-70ed-08d6cd7d61ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 15:06:11.5252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_080616_766567_0CF0C62C 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is for power domains which can only be powered off for suspend but
not as part of runtime PM.

Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/base/power/domain.c | 8 ++++++--
 include/linux/pm_domain.h   | 4 ++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 7a6aa2318915..33c30c1e6a30 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -126,10 +126,11 @@ static const struct genpd_lock_ops genpd_spin_ops = {
 #define genpd_status_on(genpd)		(genpd->status == GPD_STATE_ACTIVE)
 #define genpd_is_irq_safe(genpd)	(genpd->flags & GENPD_FLAG_IRQ_SAFE)
 #define genpd_is_always_on(genpd)	(genpd->flags & GENPD_FLAG_ALWAYS_ON)
 #define genpd_is_active_wakeup(genpd)	(genpd->flags & GENPD_FLAG_ACTIVE_WAKEUP)
 #define genpd_is_cpu_domain(genpd)	(genpd->flags & GENPD_FLAG_CPU_DOMAIN)
+#define genpd_is_rpm_always_on(genpd)	(genpd->flags & GENPD_FLAG_RPM_ALWAYS_ON)
 
 static inline bool irq_safe_dev_in_no_sleep_domain(struct device *dev,
 		const struct generic_pm_domain *genpd)
 {
 	bool ret;
@@ -513,11 +514,13 @@ static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
 	/*
 	 * Abort power off for the PM domain in the following situations:
 	 * (1) The domain is configured as always on.
 	 * (2) When the domain has a subdomain being powered on.
 	 */
-	if (genpd_is_always_on(genpd) || atomic_read(&genpd->sd_count) > 0)
+	if (genpd_is_always_on(genpd) ||
+			genpd_is_rpm_always_on(genpd) ||
+			atomic_read(&genpd->sd_count) > 0)
 		return -EBUSY;
 
 	list_for_each_entry(pdd, &genpd->dev_list, list_node) {
 		enum pm_qos_flags_status stat;
 
@@ -1810,11 +1813,12 @@ int pm_genpd_init(struct generic_pm_domain *genpd,
 		genpd->dev_ops.stop = pm_clk_suspend;
 		genpd->dev_ops.start = pm_clk_resume;
 	}
 
 	/* Always-on domains must be powered on at initialization. */
-	if (genpd_is_always_on(genpd) && !genpd_status_on(genpd))
+	if ((genpd_is_always_on(genpd) || genpd_is_rpm_always_on(genpd)) &&
+			!genpd_status_on(genpd))
 		return -EINVAL;
 
 	if (genpd_is_cpu_domain(genpd) &&
 	    !zalloc_cpumask_var(&genpd->cpus, GFP_KERNEL))
 		return -ENOMEM;
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index 0e8e356bed6a..b21f35f0ee2e 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -51,16 +51,20 @@
  *				deploy idle power management support for CPUs
  *				and groups of CPUs. Note that, the backend
  *				driver must then comply with the so called,
  *				last-man-standing algorithm, for the CPUs in the
  *				PM domain.
+ *
+ * GENPD_FLAG_RPM_ALWAYS_ON:	Instructs genpd to always keep the PM domain
+ *				powered on except for system suspend.
  */
 #define GENPD_FLAG_PM_CLK	 (1U << 0)
 #define GENPD_FLAG_IRQ_SAFE	 (1U << 1)
 #define GENPD_FLAG_ALWAYS_ON	 (1U << 2)
 #define GENPD_FLAG_ACTIVE_WAKEUP (1U << 3)
 #define GENPD_FLAG_CPU_DOMAIN	 (1U << 4)
+#define GENPD_FLAG_RPM_ALWAYS_ON (1U << 5)
 
 enum gpd_status {
 	GPD_STATE_ACTIVE = 0,	/* PM domain is active */
 	GPD_STATE_POWER_OFF,	/* PM domain is off */
 };
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
