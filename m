Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7A824989
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lpyzLRbKbGxYrDE0LZ5udD2kCicEiZfFDUVNypavwag=; b=ivETTkG0qzUU1o
	FDueczZxG1s1B23yk0NtY0pc6V6F34C9UbSf2ZUHYYWrhyUD5wjz2KcWZn4bEZ5UkCy8aJiHkJgFB
	bRXj1bQhQoqPjOoH80zRjZ2Rb7dv/B6PqjpfzOFGMfWstoWAvYY1g3vaKwoX/EIDty0JdZJgyM3/0
	2q0v3gESugKw006crrGsqZ30UtR+mJIkfQyACNtVnhs4AlwxqW9+wlkbx+bKfmcBASzpZfP+PMJWV
	J8WDKRMB5PEL/fJOOSd6hxhVCobkZH9k7i6fSHy1wOkwqz49V5ReATLsa9ERosemydnmI2r4C1ymS
	DUmkmXTzfNpDKMaf9bYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzeW-0002tm-P4; Tue, 21 May 2019 07:57:40 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSze3-0002Tw-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+YwUt0gdKKASuwr0CMX0Nv0vnSmX7a85mQ8YJEB/68=;
 b=KDThsBtflKzZOq9SIlt258QX1BCrkwW299Bt6BX+w5JCmhu4r8Szf5k8ZyM1da5fU026gv+rNVpo5omRTi4JQXciLGJSYr3PW8PAW1L1tXZ3UMH9aU6zGZ7qxHG/8m6jEMkrx3EvnQRG3xN+2tJbWrq1ncXD4yXJ7v2spKuUZBg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.20; Tue, 21 May 2019 07:57:05 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 07:57:05 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawn.guo@linaro.org" <shawn.guo@linaro.org>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Topic: [PATCH] arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
Thread-Index: AQHVD6rI9PtGaZwUh0KVobDDBMOB9g==
Date: Tue, 21 May 2019 07:57:05 +0000
Message-ID: <1558425114-10625-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0061.apcprd04.prod.outlook.com
 (2603:1096:202:14::29) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7520c15-808d-4a9a-31d5-08d6ddc1ea7e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB3929AFD0D8C1A54B779CE089F5070@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(396003)(376002)(136003)(189003)(199004)(2616005)(476003)(26005)(36756003)(4326008)(486006)(186003)(50226002)(2201001)(86362001)(478600001)(6512007)(66476007)(66556008)(64756008)(66446008)(66946007)(73956011)(81166006)(81156014)(66066001)(8936002)(6436002)(53936002)(8676002)(2906002)(4744005)(71200400001)(71190400001)(6486002)(5660300002)(7416002)(256004)(68736007)(7736002)(99286004)(52116002)(305945005)(2501003)(316002)(3846002)(110136005)(6116002)(386003)(6506007)(25786009)(102836004)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MvYkaQplMRI2hwSGFXF25Fu/oEcwUqQ4s0KCSCMucZl0uRQ083sDRKCJEqAiakp6CzTkbpX5IBvu64AS9+5E16LIGrWJ7C5kUyE+67OwYTmIalLt9JCaGvy1wEgHWC5ipJ/xsiweNN0Cy8pGL3ZNBSjtuQSIgDH/GDuVBST1WV2KHAjnuPVMi6N/JOWOmhfaAkmrkZPOG1ZQKh0UEXQjAiXLsZfRW4+sdZk50sQIEaNsgR3J0RBu3n/V9hMS8d0z/bQKBTC+vEX0TOh9L7o4sVimV45zgYsA/WFZbrQyomJQr0z9BcfEngHInk+xj+2SwQvTrb8DCL1PmCMaI6TWm6nm+SpN9vnxogoJyyjse9eSgzn6Hh/Wr4oeKJSWHQGX5UIVO+YLf4i3U/wS0fM13MFX3YwDZCf46Bqnw/PldPQ=
Content-ID: <AF3E3C94AB69264D8EED5A3575C8AA1F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7520c15-808d-4a9a-31d5-08d6ddc1ea7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 07:57:05.6946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005711_540978_74F002BA 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MQ needs CONFIG_QORIQ_THERMAL for thermal support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index da85808..61be39b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -420,6 +420,7 @@ CONFIG_SENSORS_INA2XX=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_THERMAL_EMULATION=y
+CONFIG_QORIQ_THERMAL=m
 CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
