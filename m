Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E321D2678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw5q+tmSBgj+2IZIDcN8yJ2iROY05xYemeJyWKN0ev8=; b=DPtw2wqmyHBhiE
	K7BS2wcFotNt57VT6UXDrTmtWTE8yI6PDSVSE+Md+eWbyB8GG1TPb4jbZuATnKUBT6nLlv21yY+MQ
	l5ZyJVsgtOYSM/Drvixug+reMalHdYKyUpcWvWqjU6tMqma649tu5oKNQqGJiC3VrFRBxjVFBHt6s
	jKcE94Datm3afL8VtQTYltHqHCv9aBawRvFIOg/socbZl3P28ka1qYU4v5uLFRzfUGnlbdeffT3CL
	DjucXW+yC6cufuhFbTEYcH/GdcC5U/sJhDm7AyxBKzm1dCf7lWhcVGgN/2UTR51+k3luSOskiGs+S
	0LdsNt0jIXUsddUBIzxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ666-00083X-A4; Thu, 14 May 2020 05:07:54 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61f-0001hQ-52
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432598; x=1620968598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xmRSUJ755DlMSJzAp0TqHwl4Egm8+0PmSlk5WykowOc=;
 b=EsPaypb8jTKCsL2WZKbclKO6z4kaTM6zemMXcq/nAE2XESXwJVo9GRcu
 3Ej012tw7RjuNtR02dlTI/n45ZJ/IZ74/etR7lP+azWwF3hr4b4mGrNqj
 zunhGOLpT1S+/h6u+BjJrlNevcwhvow72DG+fYRUGh7iG715zj2Vs1TdX
 JCWTz1bJCeF1fs6wRMDAt4f8K7obnhNuTwQ93s8J0fLaX1mKhb3/X6Tpl
 sLWe2XFI4+jte8QevYckANExC+qMW+CFIzhVFiHqz8aQP1Ez/ud88P2M+
 bW6rkR/qz++C8PSaahCv4UnvuzDuIAqp7pxPRUbJoHCrfs0q+lj8l/Acj g==;
IronPort-SDR: 6A9annevawis5e5S9wLNezJjDO/frIrmqBhA0w9BJ86vZ5f1HVnPvU7aUn9VoqKAZb5LTQZvxy
 MEv1wG9J3hLoxS0Rs+L7E1b+NEQcrPoI/19olx3f+z6S16kbvLFCpzRvCjJ0RhJLZq1v/S6aZI
 BQB4AMvZ7fz/Qeu4vxJZB8BnuYEI7hcAgZce2c2cr8YC6NMbaB3TlkzgtJIdoJ32NXIsRcWXyY
 B6mzAMYoDL4do91lI8Yqmdb714lTjx0nEUX2LAvEmrBT2ue4oqWLdZgCUgvUkqhsXsIcmLuKst
 q+o=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551116"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAmKKG21EPPhqGW9mzOtyJ/MNYU7/BTXDrjlIXlD+zrKzidpF+VfC4IdozpxNyN9CaVlokLMElzKEB6NFR31tc1ApAVN+9Fk+Vvnx/on77a0hRH6dgYVKXdji3rASBkNsLBr37q9iY76TkeLIJrHLZaYk/NPnxZ0Lw/q3JEhBk8ytAPDech3aqNU1SRXmTHj6sQnXSOg8IuebimQUlLOEo0JL9PCs3vTC8AOCIsPhKaLYHnk333yoLEugNLlWwEdehkAjwfV9njBqmU7ybnRpuGUu9wbg9cXxxIIScqPacXHPleX7kvb6Fz+YG+Ri9Ih3ERckCGp5WwOi0/wkt6ZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYywiaATuJhewNhlwfmaQ5pZs7GoVTxuGJ+Fh1gN9JM=;
 b=ZcrjGjcmA8B6zWlmbJKLs+qrsXoG3/PE9NsjRIaJJJ6PHNpDL6MgftT5sjK/4zdDvHIVIG85tjYbjBXhBI5I0gdYX5ma/t8MDPI6SSAq8mah1vUD9roIIR4+cDgeUmS1FaeGLMK/AGlb34nghgdHpi7rYI6xk8ItbZ472q808Hy4QKvKk3aF6lRXyYQTuJtl+5SIWiUteymjgrdFIzjyim4uQuOD7Uen/B2pC2apbUNg6IoB7z7sRGvZndWptlrDlQ/htVfAA/BDTrAvU62VShWcktlBV1Ro7+/pHKLpLFh7otO82b1L/xxpmF6JmG0Isx6sV9WIqCca7KoK8qPC7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYywiaATuJhewNhlwfmaQ5pZs7GoVTxuGJ+Fh1gN9JM=;
 b=U54gFSOjOp0lBtoFxnUMSHUMRncqaDJxv643OgezQndtNpnsXgQfFs2+wVqvn4yQbTku1RyL0Hz95QBrR36V1pE4lSGlQ2u25KO1WEYuU+WKXFHO6+pYnwTakNGR4zOWBmy8yVLPXA3tPIPhYTm1LfqmOF0kKNz/6oMQMgRgcCo=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:16 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:16 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 13/16] ARM: dts: at91: sama5d2: Remove i2s and tcb aliases
 from SoC dtsi
Thread-Topic: [PATCH 13/16] ARM: dts: at91: sama5d2: Remove i2s and tcb
 aliases from SoC dtsi
Thread-Index: AQHWKaz6zm5AhRR5OkWBdP+dKKvzLA==
Date: Thu, 14 May 2020 05:03:15 +0000
Message-ID: <20200514050301.147442-14-tudor.ambarus@microchip.com>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df3fdfab-af79-40c3-be46-08d7f7c41c8d
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44830C2B31F06A82786D0155F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zpKh9Ypsqd4rFlhqZZL5DQmoXyEbmmzLVyyCNPd981qTf6irH/jJDgHIZebiweFgPsx8IIsO7lsCqw5GGN6ubw0gYXnr8mtT39dK6FdVNwLadqvO6LxAWK/NFGGhCVmSvIwFCML902W1JZRbMYTSCJa8aK5WXhdxnEPVhR9RLGBKF46AsVb1cXRK49alljVZ3jNGUCt20t8xWEWWwOCkxNEiEQkyyj283wsF3g37e/kZOt0juGcxiaitILHwoLrZgiUP/BAnyeF6D14rwMAh6RiMMnTArww0yl4vTpTtQ9X1DpGyw6/JXxtuXxcwxIp4isDiKyDSaimNiLI/AP0Jj4TPOUAlDLJTFbCJRjihSMPBb8gKazna8LKXN4C0fvwWE+QCj5q9OagQHkocl0QOdH4Du3WBmv5nD1LVf3KGlHID6w+mR+QKsq5R/8/18dbA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(4744005)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: rXCIdYqmBp9nEWQccWIH7zaALSBqmQ62HOnElBaoSSPcYmqEwb1FL+WIhjcLb/fvaj806dm0+fjT/Q07ZNntdWLfsN2xPdf4wn35/2SmHV7ou5k4ZwIGm9OWZHIpnYtBvF9X0sUvvj8cygbnXS9h+Me8z0idXHigixA7YQIJJ73t21qugR94mO9438VaMRwbnIrrG2CqQQz9ywRfUIDMTSoZoAC5ITUQLWmr2bHbjjpgBWonVL9hl7sw0d4gKjVUBFGpTRZB84KQIrXLazZi1cRQDQw2Hzla4G5tCSuBGATjif/5vTVd0Fdkb9K5QwLXXX2H+s4ka3QKHameBnldDv04kkni+xhQFoxYo8svVwCm4e/UfN7zQNtsjFk6GtkBuiuiswy6qrxJp8vdYxtKVVUSA0ZD4sp9vT6bUg4LxWBDIQewsqd7M6isCMEzF/jRdKonTO8nsocyME5wg8xcFeXxARUxji07i0/FoVC9PqOtKjEphJ77+ZVK9HJkMQCx
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: df3fdfab-af79-40c3-be46-08d7f7c41c8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:15.9917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2JelWh5hr7c6rhNHzGuB7D5tBiZQmPmmLseJFSyczaUu9IUIMXFgHgMyfPVmgFHQMumlNjc1GJuQ+wBmVtsP/Oag+USGyHforw6TvVz42ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220319_204719_1E1D695D 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Device aliases are board-specific, if needed one should define them
in board dts rather than in the SoC dtsi. If an alias from the SoC
dtsi is addressed by a driver that does not use any of the of_alias*()
methods, we can drop it. This is the case for the i2s aliases, drop
them. tcb aliases point to nodes that are not enabled in any of the
sama5d2 based platforms. atmel_tclib.c is scheduled to go away, any
board using that alias is already broken, so get rid of the tcb aliases
too.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index b8cdeedee6bc..c0a3ca8f9bf7 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -21,10 +21,6 @@
 	aliases {
 		serial0 = &uart1;
 		serial1 = &uart3;
-		tcb0 = &tcb0;
-		tcb1 = &tcb1;
-		i2s0 = &i2s0;
-		i2s1 = &i2s1;
 	};
 
 	cpus {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
