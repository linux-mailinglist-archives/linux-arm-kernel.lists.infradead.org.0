Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF035179031
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/uQhkrSxADjcqnRIgD63PdUXLOvmTnlXOjzbGSB+UU=; b=ukiMqBkwFY5NcX
	lQEwPw2zXEO4UsZWpBL1Onzq3rqxP1AHmkT2s5Lf7bQJ0cBqWZNWv7h3Aq+nfABXV3gHn+szl9NAV
	QdSuCcATOABc/BD1dJ8kKzpwOKJhmYnXw+R7DZHmiWCglpf2FCUvCgvdRaQ6kqyh0bcX/gfs/SREy
	vgTipMsam0UVu3zaJ+yyF8z5pWpzmS4XEpb6H+42+CtAN16d49zJNdwETOE76xEhJ2tMbW4bk85j0
	7Vatli5X5fAgZrD0CJ1313f6rq263cxkUa0iaBOL0JlX8O+JTabsI9yMxOHjkVb8Z4AeA/9DW5p7G
	E5XxW21gCDBtpwzFOs3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T11-00040B-5s; Wed, 04 Mar 2020 12:20:43 +0000
Received: from mail-ve1eur02on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::602]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T0U-0002Tu-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:20:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncUDBi1bOTMyZh78q79r8Z2YQ9Q05zIyNW5Iap6Pje6k/X7nU1VJpVAfpswBuy+z+4Y4Efun8QwJhSoNb8R4Y7C6eUYQEtbCJwUPqUsgYrsKH3B9IppHN8+HkHV03g8QXiqIDUUdNJj3BZEjM665m6ESIiXxvTn0lGQxt3cf0TVSP+CSX3et2+yN9+s2zcfFvJVSEuQY+m1PKkf/ioReOUCEd0R/l7QiP5enw91tizgdB/R8h1Ri61pUdPXDMuo6NsL9LoRvwGfVz4FWtG48Elhwph3W/V0uCQ1rE1iEdmuGiSh7MIYxce3+LfycAHy9aPpWR7ljLYOw/VhGkNh0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+2+YcbOFXrLMdikxPZWSbBvO15JELWvJtDNYg8/PgI=;
 b=aojs2Zg7GyYo0Z1PUyXXwi4/S+vkIkpqon2QHyyBVJqhBjoL+VGYeDt6/EeD08/bCPMkPCdVj22Dnl8zPtqKsRQuzFco8+Uf10Wz4ndXiTvCF6U5LkCv4uoaWAa3NP7Pl3vkAvNgA6E6zm0v73e5021MHutT2xhQv3DTo3YukHGeb6zlfdokWP1mYIgWsQvE6E6HXWXW+TleT3j8tzySDWmbuFvFYcrPT5ygiVECzA6gH28jQJN8wDsNwiedaukErDNVWHhao0WeO2K8xKs2hQXojg3bNSK9sbNPUjtmkKlwqiOQG3iKbnrZ6fZkI6OEIlBP3oKABJV1DeLwde1FPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+2+YcbOFXrLMdikxPZWSbBvO15JELWvJtDNYg8/PgI=;
 b=ZhXRmCqHotEgiBuWKovDvU5eDfChQt1oGZ3ZIeK7wHqZvvuUW7ggzUgnzMjYkv6qo9+f0PcNO36MOb7gpQXXn/sm4Q1ITK+bWhCwyQjBvajRS0nY1F3Oz64CONQJa27x+84UDMbCAhyB9MKhqrspNKt6TX0SrEtD+t4pW/ZVxOQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB2718.eurprd04.prod.outlook.com (10.175.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Wed, 4 Mar 2020 12:20:01 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 12:20:00 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: rjw@rjwysocki.net, len.brown@intel.com, ranjani.sridharan@linux.intel.com
Subject: [RFC PATCH v2 1/2] PM / domains: Introduce multi PM domains helpers
Date: Wed,  4 Mar 2020 14:19:42 +0200
Message-Id: <20200304121943.28989-2-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
References: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM4PR0701CA0034.eurprd07.prod.outlook.com
 (2603:10a6:200:42::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR0701CA0034.eurprd07.prod.outlook.com (2603:10a6:200:42::44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.5 via Frontend
 Transport; Wed, 4 Mar 2020 12:19:59 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b0b22574-91fe-4b8f-c4d8-08d7c0365c3b
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2718:|VI1PR0402MB2718:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB2718E53EB176DC48C10EBDDDB8E50@VI1PR0402MB2718.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(396003)(346002)(199004)(189003)(6666004)(1076003)(6506007)(86362001)(2906002)(81166006)(81156014)(52116002)(316002)(44832011)(7416002)(8676002)(8936002)(5660300002)(186003)(66946007)(66476007)(2616005)(956004)(66556008)(16526019)(6512007)(26005)(6486002)(4326008)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2718;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DdfbkkJdDVm7tUy0GdwMu+9xOGQRkbFx9ZmrPR1HJftfMWzA5lDwvb1Z6e/1XGkvRMNbZdM18RwE2hGLH3YJhcxRgAKUJb52LZSfWAzFeNjxGIzjL44aTdNwLHL3DE04X34mGsD3nG6z6Dyp04zHKKbYPRUID+GyzwxqbAmdY1TWRo6pW0IifS9Po4L6fmx/U1J3EPLIb0QXp1xZH+59lcggO8dSmF+QaR/KV7qaogSbrkE88JtBFSim4xAIGBgFFJZzKpM06Nldspjy9J2c1XpZ+XtAOl2WuywOBgH6xUM8bXPIoAzW7xHeBHjVVawI4tySczbmRADST6r0dn05QgTSndKZHM8rW0KrPaaF+AcMVJe/jNL5TeSHJH9u/zx/+PrRmKgPjNZUh7v/0b3S+tuvdN7qnwSbwSrMG+Qsuz7cvzUdBBEeQEtBOBFD5TVH
X-MS-Exchange-AntiSpam-MessageData: vlh1p5704/f1KRz4qhgzYNe+G9C5OVHCPkygaGYT+Zw8fX5/BbFs0cjHUCbyGHxhpgKeaEK8o+BzlzfLUmS8yksysLV7c9lpsxDvYWbxBwKk69ueD9tbiANvVNu86D+Q74gkKBVzqpJN8vfR2STZVg==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b22574-91fe-4b8f-c4d8-08d7c0365c3b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 12:20:00.6910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aFEmq7kyZuoV/FO0wPmy/sF5gsO/D4UyyvRMgP9QZrAXQyHEc4nMhglYeYrOs+e4lUWpP0fy9KX6o97cLM5F0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2718
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_042010_504883_2B2CEF83 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: aisheng.dong@nxp.com, pierre-louis.bossart@linux.intel.com,
 ulf.hansson@linaro.org, linux-pm@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, daniel.baluta@oss.nxp.com, alsa-devel@alsa-project.org,
 daniel.baluta@nxp.com, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 khilman@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

This patch introduces helpers support for multi PM domains.

API consists of:

1) dev_multi_pm_attach - powers up all PM domains associated with a given
device. Because we can attach one PM domain per device, we create
virtual devices (children of initial device) and associate PM domains
one per virtual device.

2) dev_multi_pm_detach - detaches all virtual devices from PM domains
attached with.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/base/power/common.c | 93 +++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h   | 19 ++++++++
 2 files changed, 112 insertions(+)

diff --git a/drivers/base/power/common.c b/drivers/base/power/common.c
index bbddb267c2e6..6d1f142833b1 100644
--- a/drivers/base/power/common.c
+++ b/drivers/base/power/common.c
@@ -228,3 +228,96 @@ void dev_pm_domain_set(struct device *dev, struct dev_pm_domain *pd)
 	device_pm_check_callbacks(dev);
 }
 EXPORT_SYMBOL_GPL(dev_pm_domain_set);
+
+/**
+ * dev_multi_pm_attach - power up device associated power domains
+ * @dev: The device used to lookup the PM domains
+ *
+ * Parse device's OF node to find all PM domains specifiers. For each power
+ * domain found, create a virtual device and associate it with the
+ * current power domain.
+ *
+ * This function should typically be invoked by a driver during the
+ * probe phase, in the case its device requires power management through
+ * multiple PM domains.
+ *
+ * Returns a pointer to @dev_multi_pm_domain_data if successfully attached PM
+ * domains, NULL when the device doesn't need a PM domain or when single
+ * power-domains exists for it, else an ERR_PTR() in case of
+ * failures.
+ */
+struct dev_multi_pm_domain_data *dev_multi_pm_attach(struct device *dev)
+{
+	struct dev_multi_pm_domain_data *mpd, *retp;
+	int num_domains;
+	int i;
+
+	num_domains = of_count_phandle_with_args(dev->of_node, "power-domains",
+						 "#power-domain-cells");
+	if (num_domains < 2)
+		return NULL;
+
+	mpd = devm_kzalloc(dev, GFP_KERNEL, sizeof(*mpd));
+	if (!mpd)
+		return ERR_PTR(-ENOMEM);
+
+	mpd->dev = dev;
+	mpd->num_domains = num_domains;
+
+	mpd->virt_devs = devm_kmalloc_array(dev, mpd->num_domains,
+					    sizeof(*mpd->virt_devs),
+					    GFP_KERNEL);
+	if (!mpd->virt_devs)
+		return ERR_PTR(-ENOMEM);
+
+	mpd->links = devm_kmalloc_array(dev, mpd->num_domains,
+					sizeof(*mpd->links), GFP_KERNEL);
+	if (!mpd->links)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < mpd->num_domains; i++) {
+		mpd->virt_devs[i] = dev_pm_domain_attach_by_id(dev, i);
+		if (IS_ERR(mpd->virt_devs[i])) {
+			retp = (struct dev_multi_pm_domain_data *)
+				mpd->virt_devs[i];
+			goto exit_unroll_pm;
+		}
+		mpd->links[i] = device_link_add(dev, mpd->virt_devs[i],
+						DL_FLAG_STATELESS |
+						DL_FLAG_PM_RUNTIME |
+						DL_FLAG_RPM_ACTIVE);
+		if (!mpd->links[i]) {
+			retp = ERR_PTR(-ENOMEM);
+			dev_pm_domain_detach(mpd->virt_devs[i], false);
+			goto exit_unroll_pm;
+		}
+	}
+	return mpd;
+
+exit_unroll_pm:
+	while (--i >= 0) {
+		device_link_del(mpd->links[i]);
+		dev_pm_domain_detach(mpd->virt_devs[i], false);
+	}
+
+	return retp;
+}
+EXPORT_SYMBOL(dev_multi_pm_attach);
+
+/**
+ * dev_multi_pm_detach - Detach a device from its PM domains.
+ * Each multi power domain is attached to a virtual children device
+ *
+ * @mpd: multi power domains data, contains the association between
+ * virtul device and PM domain
+ */
+void dev_multi_pm_detach(struct dev_multi_pm_domain_data *mpd)
+{
+	int i;
+
+	for (i = 0; i < mpd->num_domains; i++) {
+		device_link_del(mpd->links[i]);
+		dev_pm_domain_detach(mpd->virt_devs[i], false);
+	}
+}
+EXPORT_SYMBOL(dev_multi_pm_detach);
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index 9ec78ee53652..5bcb35150af2 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -183,6 +183,13 @@ struct generic_pm_domain_data {
 	void *data;
 };
 
+struct dev_multi_pm_domain_data {
+	struct device *dev; /* parent device */
+	struct device **virt_devs; /* virtual children links */
+	struct device_link **links; /*  links parent <-> virtual children */
+	int num_domains;
+};
+
 #ifdef CONFIG_PM_GENERIC_DOMAINS
 static inline struct generic_pm_domain_data *to_gpd_data(struct pm_domain_data *pdd)
 {
@@ -369,18 +376,27 @@ struct generic_pm_domain *of_genpd_remove_last(struct device_node *np)
 
 #ifdef CONFIG_PM
 int dev_pm_domain_attach(struct device *dev, bool power_on);
+struct dev_multi_pm_domain_data *dev_multi_pm_attach(struct device *dev);
 struct device *dev_pm_domain_attach_by_id(struct device *dev,
 					  unsigned int index);
 struct device *dev_pm_domain_attach_by_name(struct device *dev,
 					    const char *name);
 void dev_pm_domain_detach(struct device *dev, bool power_off);
 int dev_pm_domain_start(struct device *dev);
+void dev_multi_pm_detach(struct dev_multi_pm_domain_data *mpd);
 void dev_pm_domain_set(struct device *dev, struct dev_pm_domain *pd);
+
 #else
 static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
 {
 	return 0;
 }
+
+struct dev_multi_pm_domain_data *dev_multi_pm_attach(struct device *dev)
+{
+	return NULL;
+}
+
 static inline struct device *dev_pm_domain_attach_by_id(struct device *dev,
 							unsigned int index)
 {
@@ -396,6 +412,9 @@ static inline int dev_pm_domain_start(struct device *dev)
 {
 	return 0;
 }
+
+void dev_multi_pm_detach(struct dev_multi_pm_domain_data *mpd) {}
+
 static inline void dev_pm_domain_set(struct device *dev,
 				     struct dev_pm_domain *pd) {}
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
