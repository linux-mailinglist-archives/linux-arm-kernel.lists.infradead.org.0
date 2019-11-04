Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E297ED9CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVuj9l/DnZeHHbCosKCpQBqS1+fOQV6DqWCljmdyIis=; b=N0Qk3kkT1+AszY
	iNyo3q4MY4dx7RCQFzjEuRWNaOrA919VFateIvHmqH0zBEvxMbV98QbKlyY5e0MIab0CBl/XSvxFp
	ZqGYH1R8HE+z3JsgtQMIxeiwIM2DyCOh6ZEdCBi4UH0WYRz5Z28rd08KLzaZemUcLrlC7FTXubFhT
	Jp5aH6WhJEAfUFO9qRD6yfHCHELoNy8BUXwTMLYmtBZVsLWFc/OFBbk3UWu5wI7i3ykJg+k+NNCyq
	xelWp+pTRYEmaltoSXX1Vj33MSQ/8KQLkC4eiFcouhN+OQNz7tO+h//FO4weMRzIfWP0r9U+UtxRT
	/cefKGmCJeJ1lkpa0PnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWV1-0005Y3-JY; Mon, 04 Nov 2019 07:10:03 +0000
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWUR-0005Qb-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:09:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCvGhEhYJc6ZJvctpj8hbjjqb4olFW/N2dIpHIGFUhSl4jNqK8+GXRSApidyKVO5/TvBxXsFm/euBzVuTxa8tvEQp81lfXJzAeebnlEMAEt3Cfd4bpt57X/2ovQzVb+mA1Ti/SlOXL0shrMGkP7A/MBpL1iKiPFRlmZES5jCQioyWvdZ5hqv4K8oc+HPHTgcPrhk2fyEmTMzKWs7b1ZpOhX4kNzh8LQUjs7E89V0zRdeb33DtbQ1HT6Kj4aO34yw0g7/LD5paP+GicQNXS8g/7Af6Ye968J6O5eG59zK+56rhldqvrYtWff2OcYu1UYpgfJ3yYwPwzwPrYixw1t8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q2N1cXyRNCERblHxdlgYP3SAgclazFyYcfa/Dtg/OX4=;
 b=epMIBpNpq8cut3Z2WZLuT8utJ7B/g1y/js2i3Nf5Z8aox2z4gyHF/iV0QEqIWkrSrnh+JGRhXgcMfE1+b93izrDEcPCm2LM+/T7kFWP+4YSkmO8qZHYAz81OG7hDpk19GRI/GvcSs5GVV9SrqJrH63CXamh0OaQuNDdosqqJ2s0FXZqSsk5eeKdgrsFKcqmyQrWWFOGYxBNOZVOzWaim6uLYTgKzWanSq6Hn+LVNALW/4zXSjdPM6JeUwH/t63F22sV8sd0P0DPanvwQuMCmU/ukBcTlNsof3InFh5EDfy1rG5ZGGRDL8cZjgss5joWH4/fxJQZYB1S8TgfOkDPmSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q2N1cXyRNCERblHxdlgYP3SAgclazFyYcfa/Dtg/OX4=;
 b=HQkT7DXvy728ElZlGBMrlyHK8QkE52Bokiz5RFeykIHmnIIdQvKpb/baCS4ieVlDCfbttQX15vVZJbITOlKEgswBwkVMUl0wpDHAk58UY6DDU1JwZSPy77QHxh80zV4BwIvA6n0Hhg1e1irH/oK0/tMqPGSFfcOdVxgxNWDIRrg=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4283.eurprd04.prod.outlook.com (52.135.131.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 07:09:24 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 07:09:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Thread-Index: AQHVkt7JSVyxcOrde0KxiVvue8qinw==
Date: Mon, 4 Nov 2019 07:09:24 +0000
Message-ID: <20191104070616.29834-2-qiangqing.zhang@nxp.com>
References: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0132.apcprd04.prod.outlook.com
 (2603:1096:3:16::16) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb1360dd-633f-4d28-edb8-08d760f5ebfe
x-ms-traffictypediagnostic: DB7PR04MB4283:|DB7PR04MB4283:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4283A3309D335C338F208244E67F0@DB7PR04MB4283.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:200;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(199004)(189003)(66946007)(66446008)(66476007)(66556008)(2201001)(71200400001)(86362001)(71190400001)(64756008)(6512007)(54906003)(4326008)(2906002)(6436002)(256004)(36756003)(478600001)(66066001)(2501003)(110136005)(25786009)(6486002)(186003)(52116002)(76176011)(316002)(81156014)(1076003)(81166006)(14454004)(99286004)(486006)(50226002)(8936002)(8676002)(476003)(11346002)(446003)(2616005)(7736002)(5660300002)(3846002)(102836004)(386003)(6506007)(6116002)(305945005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4283;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jm+Lh5x0HU2TOK0N0uFcMCyA2pcoFxj+HTzIIzgjwhUuLUjkEGfU7Vv8tDS04+aiVa7txPEk1Ns5L9uiK/i1/uNEzho8yrwC2OKOs8v0h1JgVyPDlWw81v4vpcZB5A4YziVAW40bUxr4ASshJEXvOOhuGDn5DJ9zT/VY0qDSin/nYfKwntxm5Il0AQ29ZW33r77qLUeq+OQiLVVw3SHDGMlcDmbZxrxOehbDLQG23Z0u9ldZz8eJ+VMNp4if/trHK2T2uGUWrML4tlrHG82n85ysKvie5Lcy/rlyW97m9WhsDiVDnhEDogXH+bcMWtmkN8HG4JxMixKHSuWDxbmzpjoG03olUDr7LRhFpuBmtRs5kOlijJ15HAjfEbljod0mvdXX2ylxlDGGklzeUKSVoKB9g60VPhPDQyZQdt1tzc3P/7IiyNGyVUk7wxvCFWuC
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1360dd-633f-4d28-edb8-08d760f5ebfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 07:09:24.1269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2xYl1hEpLtS6F2ETy1vdUyDm/qQ7rzJlvjVUr1hxuKt5pFGymUodZd/ctIUTTKkAWU4sW1BF1ynJ2e/8o4LAug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_230927_653539_BFFD41D2 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

caps/filter indicates whether HW supports AXI ID filter or not.
caps/enhanced_filter indicates whether HW supports enhanced AXI ID filter
or not.

Users can check filter features from userspace with these attributions.

Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 59 ++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 3bbf806209a6..6db484251950 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -84,6 +84,64 @@ struct ddr_pmu {
 	int id;
 };
 
+enum ddr_perf_filter_capabilities {
+	PERF_CAP_AXI_ID_FILTER = 0,
+	PERF_CAP_AXI_ID_FILTER_ENHANCED,
+	PERF_CAP_AXI_ID_FEAT_MAX,
+};
+
+static int ddr_perf_filter_feat_caps[PERF_CAP_AXI_ID_FEAT_MAX] = {
+	[PERF_CAP_AXI_ID_FILTER] = DDR_CAP_AXI_ID_FILTER,
+	[PERF_CAP_AXI_ID_FILTER_ENHANCED] = DDR_CAP_AXI_ID_FILTER_ENHANCED,
+};
+
+static u32 ddr_perf_filter_cap_get(struct ddr_pmu *pmu, int cap)
+{
+	switch (cap) {
+	case PERF_CAP_AXI_ID_FILTER:
+		return !!(pmu->devtype_data->quirks);
+	case PERF_CAP_AXI_ID_FILTER_ENHANCED:
+		return (pmu->devtype_data->quirks ==
+			ddr_perf_filter_feat_caps[cap]);
+	}
+
+	WARN(1, "unknown filter cap %d\n", cap);
+
+	return 0;
+}
+
+static ssize_t ddr_perf_filter_cap_show(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+	struct dev_ext_attribute *ea =
+		container_of(attr, struct dev_ext_attribute, attr);
+	int cap = (long)ea->var;
+
+	return snprintf(buf, PAGE_SIZE, "%u\n",
+			ddr_perf_filter_cap_get(pmu, cap));
+}
+
+#define PERF_EXT_ATTR_ENTRY(_name, _func, _var)				\
+	(&((struct dev_ext_attribute[]) {				\
+		{ __ATTR(_name, 0444, _func, NULL), (void *)_var }	\
+	})[0].attr.attr)
+
+#define PERF_FILTER_EXT_ATTR_ENTRY(_name, _var)				\
+	PERF_EXT_ATTR_ENTRY(_name, ddr_perf_filter_cap_show, _var)
+
+static struct attribute *ddr_perf_filter_cap_attr[] = {
+	PERF_FILTER_EXT_ATTR_ENTRY(filter, PERF_CAP_AXI_ID_FILTER),
+	PERF_FILTER_EXT_ATTR_ENTRY(enhanced_filter, PERF_CAP_AXI_ID_FILTER_ENHANCED),
+	NULL,
+};
+
+static struct attribute_group ddr_perf_filter_cap_attr_group = {
+	.name = "caps",
+	.attrs = ddr_perf_filter_cap_attr,
+};
+
 static ssize_t ddr_perf_cpumask_show(struct device *dev,
 				struct device_attribute *attr, char *buf)
 {
@@ -181,6 +239,7 @@ static const struct attribute_group *attr_groups[] = {
 	&ddr_perf_events_attr_group,
 	&ddr_perf_format_attr_group,
 	&ddr_perf_cpumask_attr_group,
+	&ddr_perf_filter_cap_attr_group,
 	NULL,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
