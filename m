Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C03CE1B478
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/Nw0G02QHKdB/gxiJu34tVO5RNmxM7fnYrdinDvSXs=; b=FxXyu+6Q5hohYQ
	VexhKPl4fZbRyJ10/Fn62pEQ9ZpSSrOp24er5ZCFCpXiW/FLLd83RB0iGfgGPd0lu4IKtfpI2yZmh
	AdD3yvld8fnA0HxlvplllZ2+qu8uhp6SKb2PksN76i/qUokSSQ8B/5Ly5Mqyh3PNpYhp2UyuQI0wV
	XmWbQsKU9vHCh2pKSA7QL5/yw0tMH+5mZHvX1fKHmAktADlqg05BlPRUIobG9nAf2Ey+zLDf23q9y
	ilPJNAtUZjxzLS9UBCfwgJ0siQNJoFySM3wy09MNWGRflbXIeNrbiNlbGdSK0ogiXHAgKVpfy92zt
	vyezEegwqYHHQDmxRvJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8jO-0004R6-5Q; Mon, 13 May 2019 11:02:54 +0000
Received: from mail-eopbgr50069.outbound.protection.outlook.com ([40.107.5.69]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8iQ-0003Eg-Rz
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Cx0bgctgEXYbjy4gBgf9QWZa7SV4VtfnyHnIrnTQh0=;
 b=TbW+D7Pp3F5gKRiHPrG2ndyHaGAfo0sJ2YtHaSSkkk335JAFRjbF69vnkGLJZeSylwp5Y7Kn5pA66hh4f2RbsF4RvkmKj4UJHlD9YI6CLyAjbnbF2rMY/IcC5VNI843wEjN/iFeE8dZ/l+4Ud+m1RpeX73De4AzdLc6hBU0a8qU=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5138.eurprd04.prod.outlook.com (52.134.89.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:01:44 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:01:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/5] arm64: defconfig: ARM_IMX_CPUFREQ_DT=m
Thread-Topic: [PATCH v4 5/5] arm64: defconfig: ARM_IMX_CPUFREQ_DT=m
Thread-Index: AQHVCXtA1txXIhOUHEmpa7nxgpAz0Q==
Date: Mon, 13 May 2019 11:01:44 +0000
Message-ID: <675eb0dd54855126ea6f70804c84372d386878bb.1557742902.git.leonard.crestez@nxp.com>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1557742902.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR04CA0134.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::32) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3db0faf0-b8a4-4a55-ee9a-08d6d79262b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5138; 
x-ms-traffictypediagnostic: AM0PR04MB5138:
x-microsoft-antispam-prvs: <AM0PR04MB513861F03F637FE758353CB7EE0F0@AM0PR04MB5138.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(7736002)(2906002)(44832011)(99286004)(36756003)(6512007)(53936002)(54906003)(110136005)(476003)(2616005)(4326008)(52116002)(446003)(256004)(486006)(6116002)(3846002)(76176011)(11346002)(66066001)(8676002)(81156014)(81166006)(478600001)(118296001)(102836004)(7416002)(14454004)(4744005)(68736007)(5660300002)(50226002)(8936002)(6486002)(25786009)(66446008)(64756008)(66556008)(66476007)(71190400001)(71200400001)(86362001)(6436002)(6506007)(386003)(66946007)(73956011)(316002)(26005)(305945005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5138;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ELtU0rMzQAlTxaSOWRiN7gvZWL9yNCk7Hxc1Cn1wVdUzYgpMRFGs8S3jNxEM/EDlxVLW+L8FX7gFHW9IMvFaBp/9JaV7+CYJhQ2DTLpdZ08N45r6Iij3RrGAW13adh0WfZl2DNfAehAP4k2tri38nbJNQyH+OB6lYSpcA14Jf/E/qn7lcPPna87l6igpZrBTY+oqS8YqeWJxuvV/L2ybYjETPWwbVsb6xGiS35l3B2NsikL8zookMn14+91pXF/BVJ6t3gnxJR4G7/4sSPYgRVd3Qn3mv1J2ia4RnbhvlB/TddWV/F/doSIcoaB70zLV3zbpRgzYDrMLYxa4T7TOHJ1sbqB/bLxH/ksWgHsyI6qI2yXzG9ITfg4FWUTcvrKocAoyuARLN0Q4kmysJdVlhzwa0oLsRIN/SHAaxsGBEa4=
Content-ID: <49351519BAF31D4AAE7459C4FB211EC2@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db0faf0-b8a4-4a55-ee9a-08d6d79262b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:01:44.3653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_040155_181965_D31AD1A3 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.69 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For imx8m we need a separate small driver to read "speed grading"
information from fuses and determine which OPPs are supported.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index df756468eacc..8202b940f263 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -80,10 +80,11 @@ CONFIG_CPU_FREQ_GOV_CONSERVATIVE=m
 CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_ACPI_CPPC_CPUFREQ=m
 CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
 CONFIG_ARM_SCPI_CPUFREQ=y
+CONFIG_ARM_IMX_CPUFREQ_DT=m
 CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
 CONFIG_EFI_CAPSULE_LOADER=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
