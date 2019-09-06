Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1917CAB3FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIZK11hq8bgp5Bdi6KD+eSb5EYFvODIHU69jetX/9F4=; b=EDriQVwZAWTCAq
	nsjhdtwdDllvP3B79kqqPe20sE0CpwLd2+Vw7sFpitLmuBZimivYKcv0AZTCUTeXNVmfphHCsUvOZ
	o6gcymh3hcvIwkiEW4RyW2qNuPUZZX1S2BaX5kIdRp/R95zVAwN/rZXUJ9Y2ryZk2hN9vf67bAjUd
	uB4eXQvKRIY9JnDA7PNCvEgg/u6u2jEzOrO5ltcLyz4bkQxNLSz6CKPaqZOhE9qqr5cpsFXJqvDL+
	UdoosmXrRj0DGPaZiD9tkw9WZPRioid4WPVlHWrx+sVtmg3e81/gOjHyVWn5fr2pLJif00wsDqXAB
	1nV3tFTpIZNLJOmjqH5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69aL-0007jJ-MH; Fri, 06 Sep 2019 08:27:13 +0000
Received: from mail-eopbgr20083.outbound.protection.outlook.com ([40.107.2.83]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69aA-0007ig-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:27:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5PPOOwXgmSxMAb5cqvwCTf1/TAQHI4lTzpkKMIgnSAVbiH+kNstuK7A8p+N/nAoBtYqjby5wcoIfWds7/AuTCxVhnzUBi8lAEICzr5P/QSSQEMstPbbSz2QvF9doQKr0LJPgcOJHb/tWgzDoOIYpVLmTpTMvmV/OM/0BQppqasSmeuQ2B8XZCMJjY8VxpsVC7LmlbHO9gKcy27fz6oRUKfSixB1fyEMwbq/QK859gWRNn0NtEt1tluqfm3KWrZ6T0jxHzeP7on8VyNz0jfITXvCPvbaCVMqRXg2Cqb2ug30huTqzHjmoUNOFHl982fBqJzq4nsyQCaqz4RWY8ezmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFNl9MygmTj/go/otn+EpQ3dyUaGu0Fi2TgIHJs/4R8=;
 b=O5Jdns9dJVmEmj5b4EBs7W7vf/NzcMPkX1d28IShpnQql9aG0/WzBIEIHdqglZmVnWVpzbc6aLmopaFkrhPQWXpozLD2o4efhK9iHLbwFki7kRt/e5wYKyFI+KxAlbqoK5lOqhBqsbXRyPrLtSwSIdcYnQ8sqPCc6ZqFEVu67DCSZqGFFij/LmtZhslKG3eX1tkVqnKGBL4JerJF6cA+ni6nJbMI+ZfAHu8cVh5vWnykWDjnAJmNddw0roUIwaqEdiMKqDyjR2Jlju4uKsEB1Xakm8LSgN047OKh9uBNiuUmtxbU2Y2X77JD86JIA1qBGCmD8rr93hHr5Bvu8zxKLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFNl9MygmTj/go/otn+EpQ3dyUaGu0Fi2TgIHJs/4R8=;
 b=eJGPxlE/q/gnfFADoMclkjVdMjcUnJE/zYgvAgU8iaG7KADgpkULSEUonVK3uDjOiCippVMFJM9ASHmYWiyQV0eLrlbJTRsgQIXjREcmHg4iwYlwhJxv99O9s/Qu5AWEau0VPXVcxRZvoBysCDIAt/m9hPrXjDH/nEcAHg2k+4I=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5561.eurprd04.prod.outlook.com (20.178.104.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 6 Sep 2019 08:26:56 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::29e4:47d:7a2b:a6c6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::29e4:47d:7a2b:a6c6%7]) with mapi id 15.20.2220.024; Fri, 6 Sep 2019
 08:26:56 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>, Frank
 Li <frank.li@nxp.com>
Subject: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Topic: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Index: AQHVZIzXxnEyO/p2cU+i3CnZc4qNBg==
Date: Fri, 6 Sep 2019 08:26:55 +0000
Message-ID: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0129.apcprd04.prod.outlook.com
 (2603:1096:3:16::13) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bca420b-4b3c-4a14-d2d7-08d732a3fa45
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5561; 
x-ms-traffictypediagnostic: DB7PR04MB5561:|DB7PR04MB5561:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB55610A519FBFF18765C44555E6BA0@DB7PR04MB5561.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(199004)(189003)(6512007)(53936002)(14454004)(256004)(81166006)(8676002)(25786009)(36756003)(81156014)(478600001)(14444005)(50226002)(305945005)(7736002)(6436002)(6486002)(8936002)(2501003)(6636002)(66446008)(64756008)(66556008)(66066001)(66946007)(66476007)(2201001)(86362001)(5660300002)(2906002)(6116002)(3846002)(1076003)(52116002)(26005)(186003)(316002)(54906003)(110136005)(386003)(6506007)(4326008)(102836004)(476003)(486006)(99286004)(2616005)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5561;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0haWZbn0kYyZ4dbPW6B0ONxYkNtiQ3bq7In6nR+0siVG51u36aQ/J2o+1nHwhXnT9KJF7fycYiUesCiN2RYsmgQOBHncv9c3LLdWQUs+Sg0+TUL+arrMolC2osUyGOw4lYEnmk8kc/NeYLE2axirxE7+ZsfYZUTN68ewtWthtiD/fP/xbxCkU3MdmhffWGxO2lZ1W33rZabuyrrQhO84lpud6zJxKd/HwgQmW7ux4VBLQbAlQnKZYpeJgb8aeOcAw94mPzW5Xf/IGLocuBDtxEpp2CpMtCcE/ASSot4yawwT4/27OEH/639DWf8tegYVq77ZfW8IyM2DRF7N+kKMo87qSYDyuV8WFt7fPUTCg4SQRTg84fgX8LePixhcKJPTYpBikNq30StkzxMMkY1qQO+QTWDLYlsf/TS8F095L18=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bca420b-4b3c-4a14-d2d7-08d732a3fa45
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 08:26:55.9270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sgmcf0rpk+JtBLzMJoDqkUIZ7S0XU5g79Ean9JPCDBAuzZI99o7r2g35UTG5X5QF6GAZg/YmCdYgGnTDasdLPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_012702_993003_9E790E05 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
which only can get bursts of reading/writing DDR, i.e. DDR read/write
request.

This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
supports AXI ID filter which can get bytes of reading/writing DDR. This
feature is more meaningful due to we always care more about bandwidth.

Need select both above two qiurks together when HW support enhanced AXI
ID filter.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index ce7345745b42..5f70dbfa9607 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,7 +45,8 @@
 static DEFINE_IDA(ddr_ida);
 
 /* DDR Perf hardware feature */
-#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER			BIT(1)     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER_ENHANCED		BIT(2)     /* support enhanced AXI ID filter */
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
@@ -209,7 +210,15 @@ static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
 
 static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
 {
-	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
+	if ((pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) &&
+	    (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED)) {
+		if ((pmu->events[counter]->attr.config == 0x41) ||
+		    (pmu->events[counter]->attr.config == 0x42))
+			return readl_relaxed(pmu->base + COUNTER_DPCR1 + counter * 4);
+		else
+			return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
+	} else
+		return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
 }
 
 static bool ddr_perf_is_filtered(struct perf_event *event)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
