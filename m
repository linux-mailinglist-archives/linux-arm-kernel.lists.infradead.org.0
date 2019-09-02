Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACA3A53CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeEQvUU+YMUme1AE+J5Q1I0OOBe8hPgU59PZqNgcYdE=; b=tJwr1alWjEkVcU
	QzDlKzpgEY6ubVmKOabhonYfP7Sug9axRoVTw+KPOyyEmSfzelDMUPEQcqOrj6GQRtiuUVXVrw7LS
	zyhQ3kzHRwmwaixiWgM6MTFFTXJLKHtXnl6w/Y397SIZCXwm7WDcDv0XjY9glvcHwzZm4H+8iuY3J
	Y7jUpfi42c7DCJkd2Dj6GAk744blrZyPxXPQaZje26Efur5hUzeqJmdfN4Vty/ln1DJPeR7hzQanm
	RASjlrQjtby0DzpNq9GAL9/iDxI1XmCgiMm1lgixXbb/2/PeMrLI1Bz+/Cd+9qT6fPdveK7gbT4y7
	oWRi3iYgvHB+x6wcN95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jLR-0001QC-7S; Mon, 02 Sep 2019 10:13:57 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jJs-0000a0-No
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:12:23 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FWPE+PVNQByNcdKFPuNxQGBCwbtByef7jSuYEq8aw7Y2icpT0tmItwHHJoXNgrARwnnZFGTvNp
 mv8QV6csEjOP3F8NI/2dhSysZ9pUryOlbjg57WuuDd2aBQvnk+wE5zqBkdTmMf2vHCZIG1saLb
 uY0KYMAyvlzJkOaC6cEXUXo0kDF7Gi7qMmWFbULF4AsIEz8Yt4c+/78IU9MRHeS19lk33KV7uP
 U06DmHXq6M/QQgw/iQvCqoyhLDWvhqaCu2lpH12F7PIicQwL+hAnD7YVt08o9dRAwcov4oXPVa
 aSY=
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="44561007"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Sep 2019 03:12:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Sep 2019 03:12:08 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Sep 2019 03:12:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGGrWfAyla5ifgapj1kgc2ApgYGuZmEj+dmjSsKZV3JirEiYDXLYIjwiBpfhEYF5pSq/j4U1ELCoPCJTmR+7OlsyCW27XRo0v3e+MFInkC+N6ssGqGlogcCQQoD3KmxsYVPyO8q1e6CDM4+9dF70/OPBM/aIKoVekvcpj9azmN2yGoHP5Y1rvvpZGIiXnnFxiPi+M5EAhtNqI2PmpRCFPnN3s0Of5mLGaZl+QlcIYJ4aId7k6SzkXUEqYQf97Mt1w2+Pwv+DnYv7NCfu+iWgjRixPx9qxzXVDbf8h5YLrYTqRlVjoh52tmngTZ8GuLbENip+nmqxhRE+X9A5uGF8DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l42rtC5SJX5xOoV+3Tl4dHeC6SblpcCiaAykL04V7Z8=;
 b=L6egHPtRDyjmNRofjarKaABB/d+TKeVmZ+iW4x84IVcOMzUEmP+eV23i+SgH6h39xWX5NoCUjLZo2HzH4v1EtCBpyWlXQKP9NoNSkFtJHahpDe6qyS0cNTd3ellEpZLHVggTWXOa/kFkdGinK+SL75MCUo7XdETX5em7hiTTD7YLpfiNrebfyrcQtY8SkR8RCAsaNo7t19/YmTLmsWvmtFdRz3POImHLNm7FmxY9APLimmxr8PIAi6zfNP3rkrKujOUl9Br8hsUFf/PypEkY9afffVlzJhGJqSfXzIhtpzowHailyUk2zo6AhofOJ6KMHvM7dNblLyS5q4l6w1MJjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l42rtC5SJX5xOoV+3Tl4dHeC6SblpcCiaAykL04V7Z8=;
 b=eMRZfDyzIa3EwR19853/RIJXVRda9zHPtoixGiKUGB5AAScL7xuOPabPFUH2N59IRVs7yUHAhvovHWjD1hZW46NJqaMfqVNFO/vh9UO4sa6CCkJM9WRDxlxE22kbZwN1mQWOhoFlTACusLg+7kiBprlKqPVYxL86akuC6oyayq0=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0044.namprd11.prod.outlook.com (10.164.155.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16; Mon, 2 Sep 2019 10:12:06 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:12:06 +0000
From: <Eugen.Hristev@microchip.com>
To: <wsa@the-dreams.de>, <peda@axentia.se>, <mark.rutland@arm.com>,
 <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <pierre-yves.mordret@st.com>,
 <alexandre.belloni@bootlin.com>, <robh+dt@kernel.org>
Subject: [PATCH v4 4/9] i2c: at91: add new platform support for sam9x60
Thread-Topic: [PATCH v4 4/9] i2c: at91: add new platform support for sam9x60
Thread-Index: AQHVYXbfrZLV+huZL0GumTVJbl741A==
Date: Mon, 2 Sep 2019 10:12:06 +0000
Message-ID: <1567418773-2427-5-git-send-email-eugen.hristev@microchip.com>
References: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567418773-2427-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P189CA0018.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::31) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ff0564a-5db2-4b69-38f5-08d72f8e021c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB0044; 
x-ms-traffictypediagnostic: DM5PR11MB0044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB004429995EE37A477D9755BDE8BE0@DM5PR11MB0044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 01480965DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39850400004)(346002)(366004)(189003)(199004)(2906002)(66446008)(2201001)(66556008)(66476007)(64756008)(8936002)(305945005)(3846002)(7736002)(66946007)(6512007)(446003)(6116002)(86362001)(36756003)(5660300002)(52116002)(2501003)(11346002)(476003)(2616005)(256004)(6486002)(486006)(50226002)(14454004)(386003)(6506007)(53936002)(76176011)(186003)(99286004)(66066001)(81166006)(110136005)(7416002)(4326008)(107886003)(54906003)(4744005)(71190400001)(26005)(102836004)(6436002)(71200400001)(316002)(8676002)(81156014)(478600001)(25786009)(138113003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0044;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EKOSu0JOsUIw0oyU7phbmGUkhBNHDqLlLSzpYStasfq9g2kRd8nznqcnjCudw3+gSrnzboPsyRomdc0nmseAByeZV7Bh85M+v79dKD0GJq06b3YvgMI0pWqZCoEoZ0aD66wTwftKKEveBhrWO+WfjO1hToKn7bGQKAdDmvWi2t1iwxYpdrrkTN3QOFUYc5MYfmvJzPuwodIyT2M0MohEz1cRq670GNQZkgnqMzNgz8U4Yw+P0N1LP2Sa2sIwqy8h9pOwHr73No67nYBJiBoGqlJYIFZmY7U/fZoulBySgjLCHf9bC2UzF3hw31C0PXe6DbsbuaXLuuevbFWlYW4dHENj07sX13jQ746DlcRBSd0xes21Ds49hF0gDntr3H7XQg1NjH3imMa4Wj85V9/6Kc/tM3I3KvYLr15xFT1qGj4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff0564a-5db2-4b69-38f5-08d72f8e021c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:12:06.6018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9RtTPuh9fmZ0Jd1x21jUM64fMmVQ5OjpU2sepKRdN1Fp8I9M/r5oLgfW23+a2WtkxRHcSc9V/YKc5D4B2elqM/V4miE2y7PlrFe9ZSCI9w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_031220_912197_75E8EC8B 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add new platform data support for the sam9x60 SoC

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 435c7d7..caf1846 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -148,6 +148,14 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_hold_field = true,
 };
 
+static struct at91_twi_pdata sam9x60_config = {
+	.clk_max_div = 7,
+	.clk_offset = 4,
+	.has_unre_flag = true,
+	.has_alt_cmd = true,
+	.has_hold_field = true,
+};
+
 static const struct of_device_id atmel_twi_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-i2c",
@@ -174,6 +182,9 @@ static const struct of_device_id atmel_twi_dt_ids[] = {
 		.compatible = "atmel,sama5d2-i2c",
 		.data = &sama5d2_config,
 	}, {
+		.compatible = "microchip,sam9x60-i2c",
+		.data = &sam9x60_config,
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
