Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057C6116ADB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLF6ZSEGoczvK9admy7ExeoVl7qxmd8E269YNVMo1es=; b=OrSZ85RqSePs4W
	ixyLuVnxVfkFMP0PAjjLKDt0GIlzYZqW19yPHbueOpoaLObg9GnPj1lN5S7KZrbYcQBPJDMy1HW1+
	vOLV+xFaco8nWAg8IRNWC6i1c6PNpxPQyHhchDmuhCdIVi5ctq75CNFcRTdIvHDC+ftL7bGhPWkaG
	OLym9jk52ptBfybZ0bIri1nz+U5EqjShTiaVKYADRK7ecuRKssJWm5+PetY+cOwxUvsQJGw3iRZid
	75D+qqBe91DFpc0NaBfMwzsGuK1Wkk4/FUigpG2AJyRMYoP/HB8/afeYHWzkR4mrZa4FF90L8IlM1
	56GxbIWRGsaSkfWCyjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieG9u-00077a-9v; Mon, 09 Dec 2019 10:20:54 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieG9C-0006QS-0Q
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:20:12 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RKxU376FLUSKcuqbPLipdNyCibv+lxeHs5PmDMLcdvXSyRIEc7llVZfgYOo+XwWWb5Oplmxd4T
 T/CP3KZAgY+/EEynQaZrAs44aCc0Xwb4SH2AoVWlcZX2y5C5LydZUWs8yyf7mj8XHbey+DlsnK
 eniDFDaU6HWMNaoapqc0xPTH376mL2qtnGf6JXgY72f4+DAP3zghxGoDUqsvua3v9NUbvc+77s
 amDKknvkJtZC5BfHKgZmPy26//Pq2If8/YTiELP2vdft3piGx/2qgSfkAhk1/UkNdsNlteksKH
 Ots=
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="61051880"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Dec 2019 03:20:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Dec 2019 03:20:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 9 Dec 2019 03:20:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7dUMRahl0KeLv7vWcHR9FyyoTXxA3abjsHm4Qkf9YNezUntm/1Rih/52MvBh4CVGCqgVF5O4BJRGgksQt779bYUg+mUdKqz2up8u4+I1wgOC1YJxgui4Idpyj2ZdHBirwmZ2ia9fvW/AT9wk+nabeJj838VCrd4cLMm4r+QQCawRnfum1MqXd6XzzVVox4N57v2xJeqVV1D51efcm/gHq8L5nhTL1Lp55Yoa0bY9DNzWeug6vbK6Q9Pgl98K3gyFEnguhWnkQ2lVTVb1jti5wvIQoftPXlL2oiXjDOfvhwAPlaem0b5Boga/v0JyoFawi+50lLJePgrMLpT28hhdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G6I/whi14GuBMWM1UcH8n1xjUzpiDqD+1iO9u21AJvw=;
 b=k6QyGcGpIqDEyzS46nrin6aDhp5KTJtJZzhqRQ9ONj2qfvZAlqnw79IIFaQ6QbBkvcp1MWCx5CpI+SH3caAW3KzONnn5VwCwmoCzHHXFLi+Xxfp3NjAk5iB87W/1ZpvHeDcjjR1pCQfQsITMRHd0/DCB7d0mk0z3M1QLpaJDFDZ0/cNqYpZYJy7rlj05TIT9+t+dF55CS9ODG6+ckPhAaD35YDIhp5C/f4hwBJ9nPLX6kS5YjWfIE0BI9tYnObxaeKszfYJegJxCggn3KiOKah+bwFeIB2rZXDQ36HS+Tp79zPDJRqwooKvjvXJ0O8sYQIouPgOmTM3p19x2L3mbTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G6I/whi14GuBMWM1UcH8n1xjUzpiDqD+1iO9u21AJvw=;
 b=ZK8AnW3FDf5vb+jVFTAW6PDz3AuSKHrP6VwL61Nq8w4KHgqWjPFrvPZaHZ+rrq4TZt7lB40MWirh2cFvGAIlIgTwJwO584QkOKlUHJJZSBZmp0mcK1/YFGjK9lGEjQOvA0bM3Lrgg3aJRAbueSE8MRGd5QbZrmtPLAQuL1xoZm8=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1884.namprd11.prod.outlook.com (10.175.91.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 10:20:05 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 10:20:05 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh@kernel.org>, <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>
Subject: [PATCH v3 3/4] i2c: at91: remote default value initialization
Thread-Topic: [PATCH v3 3/4] i2c: at91: remote default value initialization
Thread-Index: AQHVrno5vwZNe+GgDE+ENghifq2hAQ==
Date: Mon, 9 Dec 2019 10:20:05 +0000
Message-ID: <1575886763-19089-3-git-send-email-eugen.hristev@microchip.com>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0039.eurprd02.prod.outlook.com
 (2603:10a6:208:d2::16) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa5b36d1-abc2-48fb-e9b2-08d77c915bd6
x-ms-traffictypediagnostic: DM5PR11MB1884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1884FD6A635FE803D45912F3E8580@DM5PR11MB1884.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(39860400002)(136003)(189003)(199004)(54906003)(110136005)(36756003)(186003)(2616005)(26005)(2906002)(316002)(6506007)(478600001)(6512007)(107886003)(64756008)(66556008)(66946007)(8676002)(81166006)(81156014)(71190400001)(5660300002)(71200400001)(8936002)(4326008)(6486002)(66446008)(52116002)(305945005)(66476007)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1884;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lEE3d15Qo+FdCZ32PkYw+/xhAfTOvSlr0OqGIJ5Tj3+S729fZ+1k2Msrcl1xf1SUZ20d7CbOZPEKjTCN/WED+G+1Z0hpJR3u1r2vFxXbvUrhNtKHKmTrSulIIQwC9DEy/Vr2vBzz3UqgxLPGGILzuipavLCVTkf8uRZmhGPKB+jLYGxxEWBEq0+qZRUckizNqudy7cKwZPlpGiolTBP0iobnZB9l4ZUmNM+ho/3SpM2IKMOPTXpcJAxUnzlbm1HEzpyS4PTnV47euiaRPmKANYyjgUihHMlHBySOYLvX2aCozx1MMdn+B6tmVHkPuyFjLRe8e4ClbsknTw5WxbiihkWdKTqjEWSs4T8iuRRHFMCtZR+3ipJJCNeMpZbZlBdbg/ZRTlvPU9K2W/0PwWu4BZ9fjGLsftyJjHS85kKY7htE+bwKWRDo7Fx6Ombj1x8h
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5b36d1-abc2-48fb-e9b2-08d77c915bd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 10:20:05.1636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wUelgepd+DgGSLdQYiEmLoyDxKrkkSWMOYPiNabrBkeAD/KWI0RR2W3iaivHJ/aq92ezvSMmJRHGpktmqaM+oXVYh0snqezjYjsy8PGzEAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_022010_122203_BA168499 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Platform data structs are initialized by default with zero values.
Thus it becomes redundant to initialize them manually to zero (false).
Remove extra false initialization for field members in structs.

Suggested-by: Wolfram Sang <wsa@the-dreams.de>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Reviewed-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c | 39 --------------------------------------
 1 file changed, 39 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 5137e62..3da1a8a 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -66,55 +66,26 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.clk_max_div = 5,
 	.clk_offset = 3,
 	.has_unre_flag = true,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
 	.clk_max_div = 5,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -142,23 +113,13 @@ static const struct platform_device_id at91_twi_devtypes[] = {
 static struct at91_twi_pdata at91sam9x5_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
-	.has_hold_field = false,
-	.has_dig_filtr = false,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
 	.clk_max_div = 7,
 	.clk_offset = 4,
-	.has_unre_flag = false,
-	.has_alt_cmd = false,
 	.has_hold_field = true,
 	.has_dig_filtr = true,
-	.has_adv_dig_filtr = false,
-	.has_ana_filtr = false,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
