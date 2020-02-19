Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3F163E94
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEIW+poRYkTwZzQcUemk2mWkzmZkVtECSldKE8IeOCY=; b=SHY8oNo0+OciIn
	10/av9178sGlu+BIWNS08w0RxgD+ieSh+xF+QbBtldmETkAnKKpH7MyjEZngG0Gosb90JfSDxb44U
	fBBfBGvmOJEtT9ltaITgvpCKpS+PORasgw2CCDuzdOL3IiL+uUWcqUwA5fJ2ORnwSimIj5XejXqpD
	i+NWb/ub/0Y2za8TrRHGd1JXKQFaTCUMP0hiQ6hafDSrdIUdNO7WsC2NQ18B2bYdHGkKRFkDsVAee
	KPJXh8U5wMGlz8gzX7vQ6x50tdsqVBk+chD196A3hWUBdQS7K0K4rwlAYuHkgjKCSIDgGDSaeLH85
	PKBVw999Der8XPePYx/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KQQ-00044E-9b; Wed, 19 Feb 2020 08:09:42 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KNr-0001zV-3B
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:07:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldKmhj5Nu65F0BFaud+Zngm528krUY/XEvjLamy4NARZimgDjqF0AJqZDvk7fjixFIkWT+CSovL5KwyNVP2b0BjmHC8tnjNJz7u+qIbw7BmOKjdDFdMVrzVozdk+3qe55P5JlJILhCaCztmMtqgpYUn5A3ta+p5kAr7/xUTGzWofbNc8eyaZA4/S/Ep6gsMNCk6G39MF6aL2NOY50ZHzqUi4YzfihW4+rbEPSTNnyEASy0LmM2ChtWcPqyO6x0tUnCrm0+yn6KI8UCeAKGUZ3+bTMPsaEWU1D+2l0p2yKZEqaNR3gQKwg7NXbC9V8STbCgi+HFh8V0aa65MOAFDV1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JW8D9PKYgZw/xogPl/HvMYj8YaeyZ8IBW32RXchewUY=;
 b=KVs7RlBOqcDQm5zB4Izcpghz3ifbKG887F7dTuV1AvKj3yKwGsw5tyE4WTyKAzRdp93aWxvPFqHAeRYkdVULitlYjppIJWZpg/wMAKa1lWVVwYKiPEQCVVgTWhnWd/0SeLvEeWUcrZ5aESny0+KA9rk4YgzWLCq6hKAPJv4SkhaLIktPesu91vpeGMT1BfFHNr/++JXxfVxmMXM/GCxjMxY96P/BDm3tjSAdDXXChyiqNIsuIl7zcxPjSmS3UkuCz/OYHJNQauIWAuenxT3U/W12hfNoFvBWpkYxcILSbK3rMT0P6D7Kad61kP9+R7aMcozyeCYaEnuqc//W5teDdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JW8D9PKYgZw/xogPl/HvMYj8YaeyZ8IBW32RXchewUY=;
 b=TxBJL65Xgs1q9O3RTwf4oLkWCGgtMiAfe8PmOP8uuokZdn620o5ivx40TdQhv0dyRFEmyC9YkRZBnP/8lBY9ALxoYgsBaQjpphjsh3gEvDVpgu6XIo2C6TCaSSOEIcGB+LajifnZFcJw0l4h8Rs1w36kGNj9a9c0mjQ++HBLty8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:59 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:59 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 13/14] ARM: imx7ulp: enable cpufreq
Date: Wed, 19 Feb 2020 15:59:56 +0800
Message-Id: <1582099197-20327-14-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:54 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 334570a6-d0e4-4e26-5e5f-08d7b512b163
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132CCBE106BC2C0ADD8349288100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:270;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(4744005)(9686003)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YDF6/2qyHYHnKGnXaM/QVbhsHpJq1RnBgWb1Whqtd+si1kBteuIKg9/tHRCPxFnuvmXb+MHiRMoov9EXV4lWpaGnTB4YuHza1vKWhHnYckIwR8dBHwdG7WQtJkUV/KHJ8QYxltfpGj1YCYZdCWbIMwnGRuy/AoFlI565wm+nZkDMh+LMckky0vsLRfy59VPGrFQE2Wv1LJ/IcX8tHFLTOtchM2DABqSnLIHb7GEyueCJAgJwCRjDMycWcU9hdXenH131AtXJ/TPiEG2v+AVWIFllSlZ/z3wQXQdXCOu88BZOKVm/LlDS1TzK62iW27P57cP5Y/ksifgTjQPVLeZ6x1kDjoKWK1zrtxgTK9zH/Zp/ERTZBJwCA/tlCxAHFDJLNVVs6GuAx934JzoQb0yQ/b82qvquBNRPcg0dKSk0rzlMVMbxSUJJkJOuss7TqaYqKW7hjAM9nfe2CkEG4ZC5oYiiuuu3XEYhI1yBjjhMCA7bhBZrXS5BDIiH32LK7RzqCsNaNA5+oeOOIMK18icVcCbu/3XA1ccc2fJjeeNrUd8=
X-MS-Exchange-AntiSpam-MessageData: k8peW0sLtwZynP4IWICymOWtabZLzajWi6SNMdSPxqMc12F7USA7UfFmnDc2b6Buna4mooyqunY3toTWScX7PPfORnTeGCRA+1BfZ8oklG1uGmDp59hcKS437jto/xYZSwkaZJuvKX4+EN4wcHX3XA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 334570a6-d0e4-4e26-5e5f-08d7b512b163
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:58.9850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5fyFdFtNnOGTMiSpSoEgOxD2OljAu0xah5GkV8Zq+2taddQ4DFRbgMYP6yduvo69Qo0+VhdYPqQNJc/Tsdapg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000703_159107_5B9B1BEE 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.65 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Enable cpufreq for i.MX7ULP when imx cpufreq dt driver enabled.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/mach-imx7ulp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/mach-imx7ulp.c b/arch/arm/mach-imx/mach-imx7ulp.c
index 11ac71aaf965..bf22d19e02f6 100644
--- a/arch/arm/mach-imx/mach-imx7ulp.c
+++ b/arch/arm/mach-imx/mach-imx7ulp.c
@@ -67,6 +67,9 @@ static const char *const imx7ulp_dt_compat[] __initconst = {
 
 static void __init imx7ulp_init_late(void)
 {
+	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
+		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
+
 	imx7ulp_cpuidle_init();
 }
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
