Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EE22DC63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LudLrRQkI40hJF7PyFOvD8zaNLZtQE/Op0lplUnV1X8=; b=HSLsDOmrC1nkpZ
	3Kz21efFDK3m5Y1OWJb/7Q9WBrW0jRs4dDK+2MuYDR7MuCC1MpcRwXrDY/I6fw63+SEfx3NStptoS
	oeF07VVMA4vGFZWHzbWBP1pKCGx4OVQs+JwysnWOi2Xvtmb8kekpm8ZgNWdxXJFj64UESkqz3bgtp
	7ESg4L4e3Pi+FFNmgRcLQQDKTRNWOn3LOrRenZ5cAvxnUbqpizlbqzuM4QJUeyfdbhzFvsUS/t6aA
	JHSKadyxYBbf09hfP531ugi9GoCeilYijs8n5MEnwnIB4ylx3+eUlHpwITXVBLO7NKISi2c6UWckx
	/w5Ja67leEJwx3UAzO5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxJQ-00045W-BU; Wed, 29 May 2019 12:04:08 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxJ4-0003qn-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b74Mw+FHeiJ8HFnmZ17okaizX5gjHun9n1pw139QcI8=;
 b=jSAJRYOtFlFbpodxsVQ4r0acK7XAwSeW5nV9pN1Wg9r6ft0aoucF3AkHEDxZBVYaHktZf4tYUBndRw0jxL9I+a3O1FGpXnSwTjm7aTT+bkFU4TIkOfuI/i1c6vMV+e19Ky/SMRkFHIlKl+sz3mmPQO4GgwPnYZCLr64zqhjOt/M=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5998.eurprd04.prod.outlook.com (20.178.123.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Wed, 29 May 2019 12:03:41 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 12:03:41 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH 2/3] ARM: imx_v6_v7_defconfig: Enable CONFIG_ARM_IMX_CPUFREQ_DT
Thread-Topic: [PATCH 2/3] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_ARM_IMX_CPUFREQ_DT
Thread-Index: AQHVFhaOovX+0voa2kC167S+xokfJg==
Date: Wed, 29 May 2019 12:03:41 +0000
Message-ID: <b97f8f2590df9b487543b73c5ac73ac494df9754.1559131365.git.leonard.crestez@nxp.com>
References: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
In-Reply-To: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0432.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::36) To VI1PR04MB5055.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09e61512-7b00-4496-ff39-08d6e42db0fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5998; 
x-ms-traffictypediagnostic: VI1PR04MB5998:
x-microsoft-antispam-prvs: <VI1PR04MB5998FD2CE5FBE75D04DC59A2EE1F0@VI1PR04MB5998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(6436002)(6512007)(73956011)(478600001)(66446008)(5660300002)(6116002)(6486002)(386003)(6506007)(102836004)(110136005)(25786009)(81156014)(305945005)(54906003)(3846002)(50226002)(6636002)(99286004)(7736002)(8936002)(68736007)(86362001)(76176011)(53936002)(8676002)(52116002)(316002)(4326008)(81166006)(14454004)(66476007)(4744005)(64756008)(66946007)(66556008)(118296001)(2906002)(26005)(186003)(11346002)(256004)(486006)(476003)(446003)(2616005)(44832011)(71200400001)(71190400001)(36756003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5998;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wnxV9JQoDVS1Y+zFQ9bkOBWYXMQxC6fsojXAN4UufKqHDCB92NDmw+Uzf1sqE7tjgdFQ/DfyX68xfp830Wif15Ru2zaw7tGvPOWiHaaca/FBpkcNVlbPU8biSisTNKU1chXtYwGzAOXWNPFzTwGhQKbDu+uN1K8pWxLOGsUtiVd7aYG+jYH0s+eYfZUV8ngPV4uYbUe3a/WMYX8ZlQ+KnqbppSPoQnDQTbykWqsYllxL1bw6fMr85OEkKU3dIVsv4nRUfnAiZQKc+AeIq4e/QGPheznSSScoh+2/4t3huiecrExdl+Wx/uv5h2YUopsfX3Qxa4tynaCUkAl9Ogjx0Y9JOReRy1FIjjdm0cmytaJhInzkfgwYW7gC+EuL8fuTOfqWvrMUPrAewsNVPOU72f/H9ifaREP81O/AU2DmCgI=
Content-ID: <CCEF5E368A8EC5459BAFA0A7A852AD39@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09e61512-7b00-4496-ff39-08d6e42db0fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 12:03:41.6712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_050346_143987_6518D768 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is used for imx7d speed grading.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 4daf807e6970..507c1fcca624 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -52,10 +52,11 @@ CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPU_FREQ_GOV_POWERSAVE=y
 CONFIG_CPU_FREQ_GOV_USERSPACE=y
 CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_ARM_IMX6Q_CPUFREQ=y
+CONFIG_ARM_IMX_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_PM_DEBUG=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
