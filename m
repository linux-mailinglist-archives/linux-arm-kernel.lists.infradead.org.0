Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E50158B0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfp9nNQ7bBT6UCH+8EiImaxsXRMtEf77vSXdB1pjGOI=; b=iESTdTaHGBXO84
	hoYrNINlHjbJhclDUrfpSB6NmxRhu0KkxRwxVIzc1wVuNDbkw+60IfSr3TlRzc7Ha5YtFzemHh+DP
	UX97XwjY7TX17B/P+Y2emz3wgu4G8Ps09XrmkeiiKzeizWY5cYxLJQ0ygEjGxoDjjHe2YElGuCjRL
	qfRW9oSIZHAawZFuQnMCVzR7qnejpAhNgIgu8HF+gkIuP0f0naj2b8iMv2Q3Ly+TfDYyVJRsFC7GY
	z+zCHSHRkzPyLD3F5eazA3N26a5CF0hcM8lwpw3pVKAdrvflEQsl/391NOj2HrAlxOLqJBK4uCoos
	Q0Xe/agojj4AJSsQh1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QaN-0000lo-Cs; Tue, 11 Feb 2020 08:07:59 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QZs-0000Nm-GS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:07:29 +0000
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
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xo7oi8CpGu8AV8FCIcFcLMOZjhD0V0gjo5eeAKpMmaZkLxOfdL7yFt821jXWbOecJFaIFF+BY7
 JFZztmGfNqwRCYcbY6Xz6ZQa+DiX36II7sbNlodPgY2/K7wYnoQxBm9aijxnGe66LiDvYx69eK
 DMdwMAPSiGUND9pL4EI+Ny1/joNOj7m1jJ18/9cyAcrjHyO0jQ8BW26noh53fJB18WF+1cXZ4r
 xgqlGFr6q1i3D1S3qOg2ybclX6SH6dRbeFt3pzjz3QNgjdR93QrhA5WW/QZ3Pwj6cklqOxZPLz
 aIw=
X-IronPort-AV: E=Sophos;i="5.70,428,1574146800"; d="scan'208";a="68013464"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Feb 2020 01:07:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 01:07:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Feb 2020 01:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIp6WFhQkdULodYrIjbqgRpEznd2ijwkUBn6ngIiy6IIgqePRvTTPExL/vqP5tlt//VhlIM7NkxwzPm7fdShXL7v/ZLTQibjiOZfmDPfcFwflwFTMCFDO8g+GfMgXNIyFEeIVW3MXTaij57zFcexCdk9WIws1FFuRu3UoAZx8WvSAeqOKHBygbKoH7hWaIp0irnVa6UOSEpJepGVEM5fAU0MG4Ht70E2/GnuD9Lzy/v2omYAHO/x0yoOYenu8Frw5JjOxAFKZerEWr6edcvC0S334+SFUqTVim/CXnUvn1lXBfR4CHXvgQ30sceYo74VdymrivO9+p570GWzDLUgKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZMg1z7j/gBQsHjeJVZBW6Nj2qcWmFAX5Fe/vhxY6WnY=;
 b=ajrdExMTpf5s5VsWKp9GmfPno9PITmW29fXNm8bQtZYogKt+Xx+RJECR/nP5TTBRyTqpLxRFQOY+LhW5ODIBteKpIrLXI/yi990AU9VA360IGRwjWEBtSP+1QZ89LxnBS7X8sB8pf5AnhIITEpmgsnrePMxbB26zORVDRXQIOXTZqyAcLRLwD0rjXQT1w2a8T0reU4TUYf810Sa3UfwHqxKiFhRIyosgHtPm6LP5RUKzKcjvT+FaYKNc/E3rkAv+3nG8ddjjapaDPyktZ8JbFhfTdHqkrPPGc9jKXDMMkDCNjTD6p9W+MCAbpml2jkMHqxpUhCofssRrVOYfZzY7GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZMg1z7j/gBQsHjeJVZBW6Nj2qcWmFAX5Fe/vhxY6WnY=;
 b=p2Bj3or5sjxJFlTqkkBAMt0U+5VObtA83ZXjVd/dYT8oy5uzoXcxIwVW35qLrUMFyxMZMVLklzhEw+8R7mWurEm2V+FS9bXwfuobIG0i3gJiBcz12MBEyQ6KSLii1b5sm+Bz/o2oo7A8NrOHyfsMZ9MU5FuI3arr4Vq/mUzrbVE=
Received: from DM6PR11MB4123.namprd11.prod.outlook.com (20.176.125.204) by
 DM6PR11MB4011.namprd11.prod.outlook.com (20.176.127.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 08:07:15 +0000
Received: from DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17]) by DM6PR11MB4123.namprd11.prod.outlook.com
 ([fe80::85db:d80e:e645:ac17%2]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 08:07:15 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 3/3] ARM: configs: at91: enable sama5d4 compatible watchdog
Thread-Topic: [PATCH 3/3] ARM: configs: at91: enable sama5d4 compatible
 watchdog
Thread-Index: AQHV4LJFeseR12rGk0yZaOTkf/LqOA==
Date: Tue, 11 Feb 2020 08:07:15 +0000
Message-ID: <1581408369-14469-3-git-send-email-eugen.hristev@microchip.com>
References: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1581408369-14469-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58387fe1-fdc2-428a-19f1-08d7aec9682e
x-ms-traffictypediagnostic: DM6PR11MB4011:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4011A104B562AEFEAB800080E8180@DM6PR11MB4011.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:576;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(346002)(376002)(39860400002)(189003)(199004)(107886003)(5660300002)(6506007)(6636002)(86362001)(26005)(110136005)(54906003)(71200400001)(478600001)(6512007)(186003)(316002)(36756003)(8676002)(4326008)(8936002)(66476007)(66946007)(81156014)(64756008)(66446008)(66556008)(2906002)(2616005)(6486002)(81166006)(76116006)(4744005)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4011;
 H:DM6PR11MB4123.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jGs2edRMKiGrHUDSnBQpwT/ekRHaG01tkrU+J6zeg2fLggo9OOwGah+Vznm30lFMsH8+obSW9Q+wmVqMdNpGhCLgK29NwUsMqh/4DA+yjYm99fk+oqkbqBvDYZkBh8qpyvf3ByGGJ9J8+fuDg3h9r5wR6iSRAbn5y2NeSB52mQExPfwYKAJmtqcnKP/9X0U+rTzUjxD/te5Tp+rFJhubbopftQkXzfHDOGcYCVCkKDXDmurOcd9pmfMOCObYT2DtsrPCDqb2AN9m5S3WgV9OQS6ZN8fxahojlq8tVsiyGtmJI2ozwVTpYlxQQjD0favy+uFPYgTyHPC7uvCJAK7TvxYpY81Yew57ptHlqHfKZ8M+rOXHTkCWIz26tj8qd6AgRensc0xrV8zrtQ8TAa9dA0Q7fZR8UAqQPsRB9wwrHmdDCN9IH/w/K8+zcf4UxaEg
x-ms-exchange-antispam-messagedata: +mA4hYUYSEYcPpT/8fX4LaGyvFUJh6Wjg7VRXtlfoRh+KwDnSDBTed0Wc93VuPjDKYdfeMk3v/yAauWU8GZGJhth6n7onKEJqG7ebrgF+rtVDTyUPXCX5waipz84JSFnXajK3+nPWWlsV9uyUxncbA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 58387fe1-fdc2-428a-19f1-08d7aec9682e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 08:07:15.4026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aZqV47e6agAx0+/UH14w5+Qt84G8/aNnGa0yO8QDjpMv545f/RvfmDikdHSkInn82EU7K+ULu+q+DIh7Ya9BS68lUVfUXxE9nZihDS5l0qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_000728_604839_733F1AF0 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Eugen.Hristev@microchip.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Enable CONFIG_SAMA5D4_WATCHDOG. This driver is compatible with sam9x60
watchdog timer block.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/configs/at91_dt_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index f66bb98..4a0ba2a 100644
--- a/arch/arm/configs/at91_dt_defconfig
+++ b/arch/arm/configs/at91_dt_defconfig
@@ -118,6 +118,7 @@ CONFIG_POWER_SUPPLY=y
 # CONFIG_HWMON is not set
 CONFIG_WATCHDOG=y
 CONFIG_AT91SAM9X_WATCHDOG=y
+CONFIG_SAMA5D4_WATCHDOG=y
 CONFIG_MFD_ATMEL_FLEXCOM=y
 CONFIG_MFD_ATMEL_HLCDC=y
 CONFIG_REGULATOR=y
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
