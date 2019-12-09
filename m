Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DF9116ADA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvXxG/FFjtTTTwOoR2ZSDimJURcKBE7uUb6YXrWGY20=; b=pKjOIkQYSch2HL
	E0U9UiPICfjnxLDOBnqa/XpoR+vGaziJVgcyoZfnrSsKdmhKCQnQYKCcsgnuFniPF63fTGukRNT1Z
	KF+s7Xm+bGVqiXmgjNMgkCIu9+e+w1zqLvG9txM1VEA1gkQZOvpHoRoGxZeKu9BYUiwgd2S6WN0/z
	AqalEFxIgBpPWdQmeWGMKPRh9O+h771DwSvKIXuEEiClQb2GTAKfhLu/dkPnqr2AtKFVjDV/lUTWc
	ekzY7Lqa7AYZIbZYPnW0WpfURHVX/VboDFZHTwuB5o5JJsdLYljBvPRaGNwGR2lIhw9h9wnJpo1mL
	bYB2EbXToji/fY6tLSaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieG9b-0006m9-Ht; Mon, 09 Dec 2019 10:20:35 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieG9B-0005qL-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:20:10 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yhpV37COFhMrt3KK9xOEDDViX6AMx6r1MYQ+m6UpIdMgNREiI13bzPe0LhyU6uD6C/ieNbTfuB
 aPuKDfBo6zwgKYB/PD+9dHlWiohPARjGlmuCWkuEhVxmdOpJcjcbbKqPoZbOQbSWrUPO3RrLpI
 guOduqs0TmcDBjrN2H46a6hX9zXpmg/eQQRbibFTX/PVC33Vb+H6yl99ayXk7nCg3CQ/Z468/+
 nR6uAz4CBGNJkrcBzvOdwwQE4j7VTt25SnKb9HUofKpdRBxCzY/dpToowzxBmYabOwXPob39kv
 xL0=
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="59168076"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Dec 2019 03:20:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Dec 2019 03:20:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 9 Dec 2019 03:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxRHAQOST+GHZvAkaYHbAZ+wgEBD5DfufkrMrai9FldjY05/IQ5kt9xoOdmE6UN0bU0W3valozbtRHNgoPhahPPROFPqg1J+yRq+2q6Hca0WXUVbRAGppqOZ4lNqb4HqptsEkTMuYAhxj/55CuHcHmB1sSobceynWU67FN6i5cwcqFUbpHsEm5HJVYPFisqDrEPHu69iBFja1snaL8FRbdHgqiEj2C4oNFkib5ZeafOJsHkZBXxNmeIX2fdBDTmq5WWfpa4PKywcz2AZa949ThI1RSzz3Cw5EWOkmlKXiCWuipy4dOTSPrMzCz9cVgstMu+K2DhjgCuQ4VtCsoxllw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtpFv3LhHPv4VihpWYxrp5LpBYUd8R8XogVd2F9+dQQ=;
 b=QFQpkeKpsmdpEVexs191jwPx5BxE2O2NsPejKQaCj7dnTN3Ydeh25KR+EdHaA5PezArSKSn7kCWJvukRQ+8Q2NBN/nA8i9yVP/4ud7bulDfheI1D85aebYVW4K2wETJSCrxIPUHtsYzfQiWxQNcmSga0JEXinOHABV82/nVlkI5onwxAiGzV0lqYFWEcZWw/I3FE4Kxa9Gm4d928IK3qy3wGITR+l18+Obv1gAW9uHQ1raVFheS8Y7+FSJGkxMZj7+XW7yiiadqLdZiebcSv5Lm6E7YXJDyKxUmOHkcy2oBMrVWIRqjN4kdyIEFCa/BgJAMypXeVxgmAk1nf59jlPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtpFv3LhHPv4VihpWYxrp5LpBYUd8R8XogVd2F9+dQQ=;
 b=Lw8kcgyF8m6L+wCJRtnN3HeGev4uwGkIZzr5Ig7Q4aDPFlnSFnPjkXHnA2tiOzF2xiLVxHp+wZDJ4NKlzUsBqDk5ZfUYZNb9J8ulJridIpVKlRu0XVGITiIUsf2AJY5QPn3M84TrLVc1LlTSyOWbEyq8WXlZMZgn8X63hyP7cJ0=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1884.namprd11.prod.outlook.com (10.175.91.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 10:20:02 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 10:20:02 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh@kernel.org>, <Ludovic.Desroches@microchip.com>, <wsa@the-dreams.de>
Subject: [PATCH v3 2/4] i2c: at91: fix clk_offset for sam9x60
Thread-Topic: [PATCH v3 2/4] i2c: at91: fix clk_offset for sam9x60
Thread-Index: AQHVrno3b8eARagF1kiSyPsN52C7IA==
Date: Mon, 9 Dec 2019 10:20:02 +0000
Message-ID: <1575886763-19089-2-git-send-email-eugen.hristev@microchip.com>
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
x-ms-office365-filtering-correlation-id: fb203426-4e0c-45b7-e939-08d77c915a30
x-ms-traffictypediagnostic: DM5PR11MB1884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1884907812F7AE3BE0745E82E8580@DM5PR11MB1884.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:494;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(39860400002)(136003)(189003)(199004)(54906003)(110136005)(36756003)(186003)(2616005)(26005)(2906002)(316002)(6506007)(478600001)(6512007)(107886003)(64756008)(66556008)(66946007)(8676002)(81166006)(81156014)(71190400001)(5660300002)(71200400001)(8936002)(4326008)(6486002)(66446008)(52116002)(305945005)(66476007)(86362001)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1884;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t81O5k58HymEh2N6VZxlMir0HzHQK0AXYNCRes42E/Us39COLWQE1SJVhsC5Lmw5Bp9ZkJhhGx092jPSlG0Y3ZTjcpCh7PYtNmlVm2pZAm1k8GTJTpqQBTe44FB2trjWq2bK8vRjGO07Z4CMBuSqbJFKrQP5z98Rp0BNXfzvI9ul5XGOfOPV1afkwOW4WfPu/5gS0Hz5nL0slbLgf3Z9Rnc7cRWjMkOE7gdIY6CauA+pSQQNBoF7g7G6prAaB6w01gO7gOffYpfY7B9drUpWFVUAlWYuhd/6kL5ThxwN5mFnlEHDh+bQij2NXqsjF6hBlMTMd1o99cLSNZYHn7zPdA3CUjhRpiWgk8yT9mN+4bmX5VPsgVUj/QUeR9cdDiAC2lCvEwoYLuGCzNlae0Xxn5LU0QyQX91l7Iad2ikXObxkm/qzvfco/dIducn41MoMWXmW+yaNOqYrljgJK2kRgxApoxWVVG3ScZH6A6eJnsKHirEy3n3BNoYGOyR7rP2t
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fb203426-4e0c-45b7-e939-08d77c915a30
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 10:20:02.4769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wb803SjrBRjPbatgu9+iwhecEjW7UETJGmM9sDAEJnHxQJ2MhCKEK9GrrDgFKPZNfSsv245Dbma2S78TG8yM44loCtowPhm3IkR/z1mUpCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_022009_114718_EECF7B9A 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

In SAM9X60 datasheet, FLEX_TWI_CWGR register description mentions clock
offset of 3 cycles (compared to 4 in eg. SAMA5D3).
This is the same offset as in SAMA5D2.

Fixes: b00277923743 ("i2c: at91: add new platform support for sam9x60")
Suggested-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Reviewed-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
Changes in v3:
- fixed typo in commit description

Changes in v2:
- Sorry, wrong subject line. Modified to SAM9X60 .


 drivers/i2c/busses/i2c-at91-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index e13af48..5137e62 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -174,7 +174,7 @@ static struct at91_twi_pdata sama5d2_config = {
 
 static struct at91_twi_pdata sam9x60_config = {
 	.clk_max_div = 7,
-	.clk_offset = 4,
+	.clk_offset = 3,
 	.has_unre_flag = true,
 	.has_alt_cmd = true,
 	.has_hold_field = true,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
