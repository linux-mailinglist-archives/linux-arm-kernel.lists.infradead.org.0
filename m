Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF0514B491
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 13:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s3+0NN+c7HM080gzRa6JVwpe/RFLxWE7uwzNcSm3SGY=; b=tvPuQ99AaIpJ5P
	aMctjkWckfH9BvM4bakhb3ry2TAvkDkF8LfdDzgQL8HcqU4bDtbNzWeZ4+SgWWzJojdQMCxeAjeF3
	qDOdtSZqszkSsmKHZG6uWLQ1L+M53Zku667h5Jt6KBylZTO7pZR4vifPaA+6nemZ2gDAj/o3tRIXd
	NmM82SoEY5oY72DMVF2f5CXZcV+MuHOdHy+P0COCvJulr6Hy3l8NilBnUsDqixj++QBghs3APYlJj
	JFU+V/LJ5UeVvxCHtlYVa/I6wIPF9/i2PZNuGKXnsvTgxNuI+Pjp5tunzT3mfyuQ5m2rAhavnjHC+
	lOLgKKD1UMMRc3AClTdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQRl-0001fb-BU; Tue, 28 Jan 2020 12:58:25 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQR7-0001Rf-St
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 12:57:49 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: JSws7CzWmz80kRcLRP3qQDtkluliM2IrPYRN9C14MMkzlnbmhjDDTVNuPWoUYrMTMP6m+51bGe
 GMTa87UEm2gS1YPmuY5ptSSXXEnxEeHX9ALzD4y1q9X6x1+oXWdctm3OrwaWD1GJ8K2maAQ2TK
 d4OTAKDr8dIdrUQW4tHXOYEBBhasRzh/XCLWqLZw5CwLqQZa4zFiKerYI1yELiYQQP4ITj7gCZ
 bSAAVHsC9YyQ+n/DYOeb2V8QdJuTsxXdeRQzpYvNf3f69X7dz92euXSq5ftUapDgz+iBPqkPAa
 /JQ=
X-IronPort-AV: E=Sophos;i="5.70,373,1574146800"; d="scan'208";a="62378751"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jan 2020 05:57:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jan 2020 05:57:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 28 Jan 2020 05:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bevj6+aOdzVtukN7AdYEoPgpr+Uv5SoAms/g90d/5SM+M1hYOiIpQYppWTDRZlSpQlBt388K9m8Bmun7PDaKrSg/yb0pRxOXtIrda0vUezkf69D0zxw3Pyecw4N6VicJryw/Ql6yqGwEOWDAfAjWgoOI92g6NwwtEPzoMXzZWxrXxymczf1yy02FqDieS8/8GVW5m3vkfPopOL742vG9mJl7EAvFuH2QA67QplYAajce1Qu78JWe7DmAJIkTP4FAJ1bc/ZNG9yiCcQ+5w9fhb+0hHjXeOdAlZjc4HW4aL+rDnfb/PX3t/AVfPV9elJxm9irQyVBf69wrNtBUpV7D/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LynQkMfEN6ieeuRwzzFsYfdh/YibJxTyBXxJS79s2C0=;
 b=UdRgfqpDHv33P/DWS9f4iQkAgCMBMjCacXQbtDRLTvP/sna9YRBuEVjeRs+n2aTzVgIZw7B7G573P88/9nFvuFsQnKFQrcFrtnscLNWwJ+yfYtGGQLn0ah+08+RG4BvFgESif41gBv8NOUzfrWG/sC2c+QKbW10wl+8uXWmJAhzE4onyR0HJVPqt10xK24v8ShUNHlAUMQ47ghMPbwfdw5f+koql9idUOfbHg5P/+Q2ztYf4+q6bP4YjA/CTQAibmiNeLXDW5bVx1l3DmhzpzPp2GEe5CYv5un3KomNaZTKnHBCF2fmLNSzG9pzSiXcG1AVpE44UaLcnKPkqSjwQbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LynQkMfEN6ieeuRwzzFsYfdh/YibJxTyBXxJS79s2C0=;
 b=ZQwhwWD71ArZhQs//xgMGZyW205hnuDL0FPfoNkL7fe8AiU/6Fk/60hXmXJW9Pr9zCXBqoxD25tS5oxXu1LfrfpYLAeXmL5wKwjl8sKrIAJzcFmktY7gKKNXBUKqYHilOPcZN7N5Ga7XGptanPRNQdDT3EWGcnb/d6d5OoMzHvg=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1852.namprd11.prod.outlook.com (10.175.90.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 12:57:39 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 12:57:38 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 0/3] Enhancements to at91-sama5d2_adc driver
Thread-Topic: [PATCH v3 0/3] Enhancements to at91-sama5d2_adc driver
Thread-Index: AQHV1dqE6i9D/FbS9kyqZS4fjgNafw==
Date: Tue, 28 Jan 2020 12:57:38 +0000
Message-ID: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3c53368-f853-4e01-b2bd-08d7a3f1a790
x-ms-traffictypediagnostic: DM5PR11MB1852:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB18521BB491A2A31F47B1623FE80A0@DM5PR11MB1852.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(136003)(396003)(346002)(199004)(189003)(6512007)(2616005)(107886003)(76116006)(54906003)(91956017)(110136005)(66446008)(64756008)(66556008)(66476007)(66946007)(316002)(8936002)(6486002)(186003)(5660300002)(71200400001)(81156014)(4326008)(2906002)(81166006)(478600001)(4744005)(36756003)(86362001)(6506007)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1852;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b4GKe7Q7/ycJXEh+kalI5k3jPig1nnC92nvkY0YXrNS/nfFSn9H7+oW5A6ePK1bV6+4qrrRQTgD81AK/vXDl1wmgE7PgEYUgsFsJh7smZpqOieQxaOj1rvV/4273O6CBIz7AtxlBE77N1KROysXO7cviLNlI1mYNQeEUwZie0cM+coSZyJ7A1dNJXKWXDgK3YtOy78nu5zZw6h2xwGAq8/2M4G5zmmT2/zZlMJ68f8QDseVleuFKEFxRSwWWp6tNVw7xtHO7D3WQSoFMdj2AvwoI8tOT2wuZvEMCRb/ll60LMAb/TnTZ+YcIw4eyLKqZf6JzsVbucsxSQstpuFnpQp5TYlS1vo6rOCOltWi+TW5aDBeNepKqyY8kMxePMcfuVKMMlwDUq5e6YOpOMa9dcau1thVwXOkhdZQbL5tK+1ZJN7E9jDJc/oNjZZ1PILLs
x-ms-exchange-antispam-messagedata: KONzbF2ldJb+rShGglfhxefS03yRwSvhoAtc7ODzJcUxQGqGzg8m9frlTwWYz/DFOPaMGTY/fmIoX+9bRYjfYnGXMgcIHkkLIBBcICFrgOyHKKCzS8EMwsMZinIE0nAfIJWX1QZ678YCRdTLa+M8IQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c53368-f853-4e01-b2bd-08d7a3f1a790
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 12:57:38.8608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HixP/uyZZFJeScuMs9qv06hEuZ0PFbEGZK1Sso64+Mbshz7x5AEpwUcoMxbjYFh237glgOwzKxam8BT8kggjNQeCpXGrLt91lJYLb/aYop0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1852
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_045745_962004_47AAEEFA 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This is a rework of the first patches from
[PATCH 00/10] Enhancements to at91-sama5d2_adc and rtc trigger

I reworked according to Jonathan's review.
The RTC triggering part is still work in progress and I will send it separately

Changes in v3:
- Addressed feedback (each patch has changelog) from Jonathan on ML on the v2
of this series:
[PATCH v2 0/3] Enhancements to at91-sama5d2_adc driver

Eugen Hristev (3):
  iio: adc: at91-sama5d2_adc: fix differential channels in triggered
    mode
  iio: adc: at91-sama5d2_adc: handle unfinished conversions
  iio: adc: at91-sama5d2_adc: update for other trigger usage

 drivers/iio/adc/at91-sama5d2_adc.c | 167 ++++++++++++++++++++++++-------------
 1 file changed, 109 insertions(+), 58 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
