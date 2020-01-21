Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44002143A88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZM13wOOSQgYwNqcjXfmzEAInZHMecrgLiGRJ7tVf8cA=; b=KjzFUig+HY+lr2
	6PmUUHbwLTULDpLTfyzSBT16fgWDe5vDKMhERgdpQynrrkCVUfUsjPs5HQgLjUn2R12p+Ehj44OUQ
	6BYBIv23c9PzUBVCWocTnI6IhKptTJxm9376tSTSj9d8MpGfANiqeQDNCIsJsUHMyFOFOd2G0/mYd
	iiPfySNcycjMH8+3j6ThNd6IKdkXOhRJqeDhy6cvT4oglfGj5m0ShP5Un3VUSYtCEMFAZtD1D0KRo
	72S870j2t4vKfjT6FN+uFvgAcKIOUQNneAa0AmX2pDuYyZcilQQN1or9tHvXaxCAuwPGUUzRLc7dF
	rAGw2GkMBBwwbVO1JsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqTb-0002PV-7M; Tue, 21 Jan 2020 10:09:39 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqO2-0005fs-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:04:05 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Nt9o4RTF/6Kz909nL6JxvzZG3+GtFb5GmgME64bOVqLvQ0uxESpZvH0iawSjLjEIgBlBEm8Whs
 RjE9hlmDr7AWOBE/KVidRpqJ/tvmZ5blU22Y9S0NLbix0vDJ+ncfJkQECqSJiMZyEii5BSZy7m
 LFOYQrJ5EFKOaqOJTIml/XtupNaGhxP7Y8nvG/DTY6hKuxCN7UNho4Ea+ebA9/CIlfiarQd+Qd
 /nH7nmTdLT06JAThciDWI+S6L/7Fn1pAO24uE/xuNi/0vjk2ge+Fzs4K5e4b+nJt9KZMM9O+l+
 XIg=
X-IronPort-AV: E=Sophos;i="5.70,345,1574146800"; d="scan'208";a="61482009"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jan 2020 03:03:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Jan 2020 03:03:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Jan 2020 03:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2fS4C7XGqQb9rqYbyDT5g4/q9X1q8sddgWFR7qzUAjW8auURlX47wP0QB8p+mXcbru0wxp/QD4iJ44szj/EFDrHx9uOBL7e1WgyhkkfXtlpUj7TLIsyXJsolcalVOnMQRnVe86vI3g4VuHzJbZQiuTbylvjqC06xfLqeX93L1DI8XurN9ROO86Q2qiZYaihwElvM9rQ1lsoeJKo4YCRhQRh7ujSCPMmVeo4vWgprREFWcumxoIf5aHG+c6xkTQuYJXeKsL7HngplRTXICxnldqnEpzRxldqE+7iDq8+ueRqLrIT5wkJUNugLNvJjLn6asO8LAX0W2qFnYZ2F+xnHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2vpdduo2XNpb06Z4rYtE/JZqZJ/hudWwYY+A9yxMQo=;
 b=GN2QoE1lVz5cqVOQbLZSgMqEwDQHbT9BD/w/TCPfLc5ztP6gmdVppjOLyKmwE3lwOtjtZdHefcomM1/DEiQMDOeATIS9homwjk5uZYcAC6OVFqAUMXMFJjZNiGbCAza3EeZPDZWk72s9/KxKTRrIVPMM/NjcHeFYY8D6ktlpo72F32N49R6MCYIB94y/ujAF2BZEsu31g8NQtZo6Ymh69hlEfSfzlVQKCC4hjCWDOZYJCZwYgaTJriJYI3A/QVA6DAC0y7Tb7Qk9rbWbey6XVtttTAoz8uHW9AJVyTNXFo1P6nkCFLJeLLSXJRKTwMUdUjYq8dn3HjT/BlaGFaAbhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2vpdduo2XNpb06Z4rYtE/JZqZJ/hudWwYY+A9yxMQo=;
 b=YOwmVkvKhA2UCLqZ9eIL1MaycLuI4EtazoX8jrLjtS+0Ry0RvAaZzHIr7zZJdOMv/vDdCWNQfqJohx2dq03s5d3LFZLpbUQtueOEJzyJMA/hH4k0eCdNyJEJqV/cgTpAbdJSSAWfE0jauqtzyjJ53tR3QcDN8vqY7QIwvVfQOxk=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB3195.namprd11.prod.outlook.com (20.176.121.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 10:03:39 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::dc6b:1191:3a76:8b6a%7]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 10:03:39 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sre@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 14/15] power: reset: at91-reset: get rid of at91_reset_data
Thread-Topic: [PATCH 14/15] power: reset: at91-reset: get rid of
 at91_reset_data
Thread-Index: AQHV0EINUSutYpQLDkidNc7mZapi4g==
Date: Tue, 21 Jan 2020 10:03:39 +0000
Message-ID: <1579601001-5711-15-git-send-email-claudiu.beznea@microchip.com>
References: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1579601001-5711-1-git-send-email-claudiu.beznea@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bbe64d4-1c8d-436b-fe33-08d79e59302b
x-ms-traffictypediagnostic: DM6PR11MB3195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB31957417C64CA0280DC48D98870D0@DM6PR11MB3195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:120;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(107886003)(26005)(186003)(36756003)(5660300002)(110136005)(54906003)(4326008)(66556008)(66476007)(6506007)(2906002)(76116006)(91956017)(6486002)(86362001)(64756008)(6512007)(66946007)(66446008)(8676002)(81156014)(2616005)(81166006)(8936002)(6636002)(71200400001)(316002)(478600001)(26583001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3195;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XTagG1G7wxtXMVUccmBFui9wySdWRkmB+h6iehYcTDzRvASN9JI/dmzabMCYvpiNieARHdmetCmE6gaPr9JoWrXmqtZkErVUUoomg75dVHoNvfahJRZyj8IfEX737UNJp4o5LmfiAmXDLjS71fp/76XoFI0bK/GD0aDkl74ILMtr8F7RBDcEy0kDGl/3VrD9aFRUr/DDJYLFvn77dv62/L/JanmxNxwOmH9C3/7+gAX+uCBGTOcLnjXtn2+eMuqi7R9TSe6nTST+1s8K+f98o/a317DtP47wx647PIh7wSwuBOjEZ7r+ikDjHwp5EOksT20491Dol9iv+Cw7+1ajZLnDO6goDkLkcURmPhtxGHctCHsNVka0QsImcKVCher6fH8/E4Cbf61ahZsw0VOSSHPtbMahd2kmbO9ivgbT0e2Ws9djoXJoJj0SHyTn9bNohhj1qsumPNbPHLn55w1oHORC1WK6K1gvtTPrNm8eSdtTrxwHXX2ny12kvNYrRhgn
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bbe64d4-1c8d-436b-fe33-08d79e59302b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 10:03:39.0174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bjRxwkVi/GjgFfLUgsygcRzCLh+B0k2vodkSX5ZtzHHSnOVdZK7v5yG/V4LZOPkA68NZ/FKtX0u30LHgGQWXizuRHw4vqvbY5PH+Nqez0oE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020354_902324_0504B5B6 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Claudiu.Beznea@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After refactoring struct at91_reset_data and
struct at91_reset_data at91sam9260_reset_data are not needed anymore.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-reset.c | 37 +++++++++----------------------------
 1 file changed, 9 insertions(+), 28 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 9c1b69f76a01..537ccb180568 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -49,10 +49,6 @@ enum reset_type {
 	RESET_TYPE_ULP2		= 8,
 };
 
-struct at91_reset_data {
-	u32 args;
-};
-
 struct at91_reset {
 	void __iomem *rstc_base;
 	void __iomem *ramc_base[2];
@@ -156,42 +152,29 @@ static const struct of_device_id at91_ramc_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static const struct at91_reset_data at91sam9260_reset_data = {
-	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
-};
-
-static const struct at91_reset_data at91sam9g45_reset_data = {
-	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
-};
-
-static const struct at91_reset_data sama5d3_reset_data = {
-	.args = AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
-};
-
-static const struct at91_reset_data samx7_reset_data = {
-	.args = AT91_RSTC_KEY | AT91_RSTC_PROCRST,
-};
-
 static const struct of_device_id at91_reset_of_match[] = {
 	{
 		.compatible = "atmel,at91sam9260-rstc",
-		.data = &at91sam9260_reset_data
+		.data = (void *)(AT91_RSTC_KEY | AT91_RSTC_PERRST |
+				 AT91_RSTC_PROCRST),
 	},
 	{
 		.compatible = "atmel,at91sam9g45-rstc",
-		.data = &at91sam9g45_reset_data
+		.data = (void *)(AT91_RSTC_KEY | AT91_RSTC_PERRST |
+				 AT91_RSTC_PROCRST)
 	},
 	{
 		.compatible = "atmel,sama5d3-rstc",
-		.data = &sama5d3_reset_data
+		.data = (void *)(AT91_RSTC_KEY | AT91_RSTC_PERRST |
+				 AT91_RSTC_PROCRST)
 	},
 	{
 		.compatible = "atmel,samx7-rstc",
-		.data = &samx7_reset_data
+		.data = (void *)(AT91_RSTC_KEY | AT91_RSTC_PROCRST)
 	},
 	{
 		.compatible = "microchip,sam9x60-rstc",
-		.data = &samx7_reset_data
+		.data = (void *)(AT91_RSTC_KEY | AT91_RSTC_PROCRST)
 	},
 	{ /* sentinel */ }
 };
@@ -199,7 +182,6 @@ MODULE_DEVICE_TABLE(of, at91_reset_of_match);
 
 static int __init at91_reset_probe(struct platform_device *pdev)
 {
-	const struct at91_reset_data *reset_data;
 	const struct of_device_id *match;
 	struct at91_reset *reset;
 	struct device_node *np;
@@ -230,10 +212,9 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(at91_reset_of_match, pdev->dev.of_node);
-	reset_data = match->data;
 	reset->nb.notifier_call = at91_reset;
 	reset->nb.priority = 192;
-	reset->args = reset_data->args;
+	reset->args = (u32)match->data;
 
 	reset->sclk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(reset->sclk))
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
