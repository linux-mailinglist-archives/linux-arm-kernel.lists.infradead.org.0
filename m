Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156AC113EB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHfLbhlWM8e7cs38DdWC4uyW20lbwW4icqh/Yn6wR54=; b=CXZklMhj7qSLsv
	9FckqeWE1ZVGJ9JtjjlwODy0j4sfc4OaUTuxE2pmsVrpMJptmt10pwLRfSn0u5LBbKmbPOWwvVPir
	DFtr8whfkMI42fNqgraiI5ZBS9p4baSmZ2OmhNZ+WkXfKadzlP5hlG5+NaZxTbC48IkKaoOOnKpO2
	WLM/UkpQdgpsMQlHga9oZjwfHBBEKjfkr62WLKR0NY+18rzOt01MNtC8fo5wZ8AzwWf/khi9czqnT
	tMY8KA7ijzfy/b1ZkEv1OAevfdGg5p8tCkAeUSEguCPHJtXkde/fdwxySnAwfK2M/N21fe/Yrkcl1
	EU1kVPGnkbHlbMnVuN6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnq2-00035T-3B; Thu, 05 Dec 2019 09:54:22 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpW-0002qe-GK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:53:52 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: K3sR3s3MPyg/PyXBh3yHpZqlZ8ONfTgbQyKzaFlRUCbJvIJdeMea2zf3vM6sFDqKxwjniIdOvV
 jcS3Z/c52Sl+T8TfPFKVYOK1Z7f484gzvfBby6HrGilom2VtKD3DVI/wYZFvPgHPa+E8zdKuCS
 zcYa/JAMiGRd7A764Fle9BZxnmTdyrbE/w0SL1XSn7ZeKEJjDsMc5wradLJrjTAsUmEizN6Z9T
 Ou1NJlZxhGGJ5zMDD9FrNUfyiStPAr5n6/T6hO+hVWIWZZgJ5Np09vEBcgewaDnHYufxFB9vo9
 6YE=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="60720954"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:53:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 02:53:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VE5KfNsOIBDVG/YZnCo9R9rChMfqy0J6vdm3qn1vA0TA+hii5jomuw1oLAA5L8AwGpaWoE4Thu7JP9IL5pjy9W6azCB5ceW05+V+uxrD5n9BuGb1mNMIBTWjS8T91zCTFxY7atN+SJhkWjGSOKM0gNUFmONwzzYu1O7OmCUegYyegA6shtb+gYSu3v+9LArn+qkZfdiAfiZudmjdyzIo9b3KAkaDr5TK2MaFfN941+bIuhh+mf55hamD8W7Blildm2mQEvCj8UqbKTpm/OwDJac6hcjmopDp/ibuIz/Hc7++q5lthw98GTW/H1CHcmUH97+Occ9dyOUHe1ayfQ/3IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOO8PmtaQNZuOVLYcw69z1A+SqhxD8ISuA/qBEJA7fw=;
 b=nkFO6iMannDdfZfGbFCey83sSLZn37NVJ0dC2bUlUHO3C+aPBePF6GTdi2iQP4lfMeHYoWzWfT3o1hg7azJ6pM37a6H4iH5gFjN5MBDp22bx8BHjlbRrll6OkOFGa2n+XRzkMSrxQTtEyG1hreWVruzCKP0UFDJo0D2KcHZCXfH8d1hVmb/JfEP3oYO/1XzRd5D+FUmPh2wplNzJw0nyITTtwuytRmZ0U/DWHX/aEkusgaIEf86OEgwTz5Y1ZXaJxihUdcpnPEZbW95CmVVJ9ldpj21b2tciDOQPFjUCNMFfb4fIXlkN64VJuH83M7n8FkGCE5nFnINv0OWQB+FHVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOO8PmtaQNZuOVLYcw69z1A+SqhxD8ISuA/qBEJA7fw=;
 b=RBU4g+Vgt0TnET9chiwdPl+wJeiu3Aa/Dop2Ap+Mkxvdrsv0qoBov0zzv+Sl39vYeDNkq88WuPBnPJuN+e4nEuhHiL4nUVLdn6Zb/xzn9rz0wAJKpIR4IFZvHnR9snKep+lu0vfPXZntam0xMfixzQJxpR095ZCu35auvyVTgyY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:45 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:45 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 01/16] crypto: atmel-tdes: Constify value to write to hw
Thread-Topic: [PATCH 01/16] crypto: atmel-tdes: Constify value to write to hw
Thread-Index: AQHVq1HiQdo0kwKAYU65ZEc/1MYA/g==
Date: Thu, 5 Dec 2019 09:53:45 +0000
Message-ID: <20191205095326.5094-2-tudor.ambarus@microchip.com>
References: <20191205095326.5094-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191205095326.5094-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: FR2P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2fc5d9e-e5a6-4f9c-90d3-08d77969045c
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3677315FAE3320718D98E0FEF05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(4744005)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hv8CK6lhJoF+gOFjh5aDhckWSeExwAls/nYCXf4AoW5yuWpgoy+Y9NsTR03wwdd8wuTHCc2mcRmXk2RdBNDG++dSIUiAbjfLzco1zGcIhCqNB5Ub+dLXp89IHopKUImbZKt2UQmhuQW7vpP+SkWPuxbB+FZsnHo702IEGW1PIj9f2bU04VdMOAGKOi1fYXG1dXvbNpxiY5Zs0KP8gUZ4fFJNvDYW5gXz1QSm+XOq3DZRZ+y40CsdxKdmqxvtOPjKq3/QOuaaTs4JDJTdz7EL4H+Nm/cawXfqkLa+M9gxIvWoCl3ZPq+G8fNwuAmXlsVyrogaG/U5DwXWxpVssebl96icKLWhgWsxznHCJDNwVLtG8ycrN2xcIvIqW2I7aoMCTRPg+uy19/5Er0rg6wxXl61TJQJiFM77MqAXJqadieo7l0aE8rpzWy7whqNRuwqh
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b2fc5d9e-e5a6-4f9c-90d3-08d77969045c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:45.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EEXexdC9i2rBxqqTiayWOdEm/+N3A2GiUP3nJ8YrnIxBGIi5fjWzDmeotQ00F0dLI95A95IkYfQ9wZ72X4cDRSE67PDh13Mb4Shaesqvd4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015350_595309_25070289 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

atmel_tdes_write_n() should not modify its value argument.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-tdes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 0c1f79b30fc1..9b69e7a26639 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -189,7 +189,7 @@ static inline void atmel_tdes_write(struct atmel_tdes_dev *dd,
 }
 
 static void atmel_tdes_write_n(struct atmel_tdes_dev *dd, u32 offset,
-					u32 *value, int count)
+			       const u32 *value, int count)
 {
 	for (; count--; value++, offset += 4)
 		atmel_tdes_write(dd, offset, *value);
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
