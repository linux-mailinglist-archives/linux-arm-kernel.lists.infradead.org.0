Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D4176577
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFBnuZ/mOAuw7YXIWCzyOvbenRRIYobi7ZiuWmAFrtQ=; b=pxG1nHuZzbscIW
	jSmFoYGVW9S7kE778e4B2J+kvi+wFzs07E3ADvJEbJMYL/nd2l/0fQ6BBz4DupXMqnnbk5+Ny7HOq
	9avC72kF/mh3zv+H2W80GLPw4XUIu4KgizMSZMeCO2mMfT8Rc9NVAZtG0PUd85rDe0H66HuQb/PN5
	t4xdrgrKmQkJtkAZj1kopMLw7IIAlm2jUUQhUudeN0+dP02POqm2i0Ze7KWH/HkHOQYE03JxCnJ1Y
	JJvpcx00LGUfC087VgQ2011sF3gXNBpkpSPW0mkS3ittSqbBK1zNCLehQrmtyUz3mZxf15oR96mji
	FKKVSI6nHnc0F7HpJ5dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8s8e-0000mu-Uh; Mon, 02 Mar 2020 20:58:08 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8s8G-0000dm-SL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:57:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MGeucfAVSazP5QB1RZZMg5Oxmwky2x62Imv1CJitoPe7GqjB2ZvLghLb8297yWeJPbphnk72Qn8VbATe4oFg3d8PZrZal6arqAvPJkYeKVfod0ZQcBGOEqLBnH57F1zJyFW5x2eLg1qd/sFQXjPLT2xxVKD5LqaNgIFRdXLPQieUorkSwlHrWytxvn6sJD7GSImAoyDYNn/CVE5tpCU3EDCQRmct1H2vyl9C1vHSAJtrt1Jfx4qDd/jU6YhHr47gxWR4MapFhCz8A9M+IMUYx4U78mA/4H5AjJTyMc190v65Y5XSJnuXBC3wjX2jbXTxbDcszmoGwFCPn8E5jnr0Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFfcAXEU3F7FxlDk2Im7xjB1qQVJKbPG3CV/CSaQVl8=;
 b=dctLlaIs0P7m8dIAMrbKLzSmBfHfnP/D50uKx4ILlyGlNPM2ADtYCw+SL4O3OdKhwZaLwdK8DpfbyIYKZEY2gzY3kw2F3/25yZnUdHcOZTamEcoIQYSZL6/HrpjxNd/F3no9EqjNCOlTwx6xvYaBOHHF5Ncbo515JRlJ5kbuG122Z9rkD1tYQItgt8eRp58/OUFV52n+4NltVbpewtRN+e0hvoIt4Xelt+TreLuisik9MLpmVGCFH1eRDycfXF/2xfrPs8V3aMjqUaBAfZhR/vy7lOXnyS8tp9NYEIkq3k5nl+wYq8qLhGHg7xn4VAqQlN0H+u3ShhXoKR4YTp3UWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EFfcAXEU3F7FxlDk2Im7xjB1qQVJKbPG3CV/CSaQVl8=;
 b=L6kvdPU5vOhewDcQL7iGlmcxTyBa3pDGzRD636o2Ug8Vw0xIt2jjnR+h2jAyZGL9d+4hulWbA+F4LEv1c3nlQl1qQtVBf75kk6uuoN3NVftJ1u/RVWIvYYerIHUSfp1RsI0IBSrQ3vSvdSN/0faLpoFxntcjyCEfWlrYF3Fk/N4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3453.eurprd04.prod.outlook.com (52.134.3.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 20:57:39 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 20:57:38 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: rjw@rjwysocki.net,
	len.brown@intel.com,
	pavel@ucw.cz
Subject: [RFC PATCH 1/2] PM / domains: Introduce multi PM domains helpers
Date: Mon,  2 Mar 2020 22:56:59 +0200
Message-Id: <20200302205700.29746-2-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
References: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44)
 To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15 via Frontend Transport; Mon, 2 Mar 2020 20:57:37 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 76787022-9d97-4803-3f69-08d7beec5780
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3453:|VI1PR0402MB3453:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3453ED1F859BAA4A5A7B418AB8E70@VI1PR0402MB3453.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 033054F29A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(199004)(189003)(2906002)(26005)(6486002)(4326008)(6506007)(5660300002)(186003)(16526019)(478600001)(7416002)(6666004)(1076003)(2616005)(66946007)(66556008)(66476007)(44832011)(8936002)(8676002)(86362001)(81166006)(81156014)(6512007)(52116002)(956004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3453;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bEjqc1sxXIpkxiqIrs1/5Y98exNa75d6swjo2drG3oa/dcmfQLswrnR272uxunayBUvMG3Of/HzpqKZpvUJLMFFB5Wm5qez7/BKoJHb39dF3J5bwLf1dDs1AfOB5VCRXpFk4100VR5B06D2I1Jo329DiYCRmxwq2Hfbs1wQH9Bf0365z2kDLvxL0Y+y2dIJzCfr6H+CPX4Z9NE/9WWIbzxZwQGB8dlKiu8bRM0DHHASwdhtLMnRu4hGwPlP25ViQmRzZdW2iGcbLvTutcXiOw6sIDrNLgfu2/Dt4UgO2aLVnNzFvada+skdl7bpnvYq4ULQ6pX40JjjaEpeRPoDBy4xHJcEAXrskxKA4nKjPectJ9ivLDMPzRtUiAfGhKM/+5JfKxmzIfhhCzWUXsjO2sEZRt7cCgGFXGbac4XT5+HHbE4TDka+VGSueTOOqpX+p
X-MS-Exchange-AntiSpam-MessageData: k5Or6yQZYLbQOfTe8dRa2g2vqZLCsuCDlkYlR0bYyeRAZJi0tDcFi7fqJWmPDZK4QHSDzZgAelP0SrE6GeGn8jLu5PHydokhDWfSDL5tr8E1uw9V6ruc4ckm9VGs0OJ5BCoyQsTPr/0e7Z187j8RYA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76787022-9d97-4803-3f69-08d7beec5780
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 20:57:38.8564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DGavOBA6qMMFuXQIm/SxOfElhO0ERe/bT5A4dFh3WaenfSqYYJNN5hVKGMUL0qTJMUtvfmAu3m5sCANPlaG5bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_125744_925294_4AA225FD 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, daniel.baluta@gmail.com, ulf.hansson@linaro.org,
 festevam@gmail.com, alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de, khilman@kernel.org,
 ranjani.sridharan@linux.intel.com, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, pierre-louis.bossart@linux.intel.com,
 paul.olaru@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, shengjiu.wang@nxp.com,
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
index bbddb267c2e6..a90cc6b476e4 100644
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
+ * domains, NULL if 0 or 1 PM domains specified, else an ERR_PTR() in case of
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
+ *
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
