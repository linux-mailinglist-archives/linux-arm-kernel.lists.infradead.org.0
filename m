Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B88124D7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgGl+PiobsmgfPi0ECuNu5T3nPX7hrUri2rmXXeZTW4=; b=Kt6iO4FiXmoc9z
	gr93oQsULop+L99HRYb1la6utcQCw00kJIgDtVGk6baHhFrHd0TLZ7Aq2N5J0ngZCVtNDmn0rOkqD
	gWRudclXcK0D9EMT+jx5ZYPfkzHcZeE9bwQZ4aJiJSwrfeaoXcNTyJKmkDkLhH8VwmvDRWQTKa/he
	cbp4pn1OoVLoDU7qJjK+8Ik7wF3ut5RaJgqZ9PzspN+8kvd+TLMFPZmRI7ubeKr/FweDVl0jqAuiR
	rmPmjBKwvxgY19o19tC66gUUrXV/Dg7JzVSjOYWdCAk1Sj2UYQScfr6GtTkPea3qN5xW9JuqktCmi
	OFBdOflE6CcFgUPe7pvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcAh-0001cJ-Nt; Wed, 18 Dec 2019 16:27:35 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7Q-0006ir-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:14 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: bf1H/xFMqKgXahp31c/tqJTXlbFQMSYHPhVaCTR8lMFEVk6ZzRD/DmfN0ALSD08X96EUJ94J3D
 6coHAHi46/HczHjSark5kIa60a+lySkeoNcP0JaZDJQFXYnVNOx29Ev4THBrQGdZjapDjTdIS9
 3Ey64sXJDJDHNUwFtPZ17rduDRM/FJXNiWX8j6F2w3OTuv03S+a77kBLOFgEN9gfB0INqTSKcv
 XuOp/leJJlHgnvWW3tNJ6l0BgDAFHr5SjeEGKK0sMmeR4sDPV81CHVyo17p5gugO/62Vvogy+M
 IO4=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="58200070"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Dec 2019 09:24:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UjqbQJ5bhPrCZgsKks3OTmO2HmMqJLnJ7XHMcORDAb971Nfn1bbF/jI0qtODIDSUfThKotWuHAHyJrNDLfmGSTLimgUDMqTUWpavEoyneVBvRVUkffPf+moeBrGY4CwVs1KP0gu+XWj5rmV8oJCbOdZ7FHcu2g1cw3sMQ5K8eDcRCXzDAIz3Xr0QZLr4Ua00yPTT8U8W6ZFXfE6yDxQBgyAPyNgMtdPDLEfhJD81xV7s3uDIaBfT2U4pmTykRfLSGMCqklW1JrOUT7mBIPyU+4GItSFG8K4AwiqdhgwCVklW1Kl6wlB1Nn5bDkmYmhe3UzlR8CD7ihCqhmHBxY1T8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tP5UvQD1MTEBjelpPd3B3IN7q5WR77UDFIA46K2YJt4=;
 b=W5+QYH4iwdK1I5EnevLpMSBh0oq3h+hlnKXwfF5S+93SnVUeZON/OjW19sXXjPyFc3xq5+GzK0ipKtEhKdHo65CBKk5Jxpl7Wq1dwtAo7xaf++kjBoYdXAYIplx76dffuBxXPV+kzCXcR8NuH0FF//UAUngo9Wpu2LLwec/bXia1OnUICPrV9XTjbT0qPPRFtiTEhIDgGTFE45Fsx9xcUYIGutgFxV05hOMFlwnsqRmqc1o4lKq8zMLYD4DJKJ5awOWDOnEaoYREutD1TrDTwTAM2lbJ+qlhZpkyItvjiRwv9nChQ21bdazhUz/Qr2hpcimD/PDD73BsfUO+aqA+FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tP5UvQD1MTEBjelpPd3B3IN7q5WR77UDFIA46K2YJt4=;
 b=uzc0bar1kIiZZ4sfbl85qzHvShLhNWvFGvnJ5BuZQ+kGkm0oqu/V7hfqi6yrlfzsoH/fDqZQrChi35sdTTkIpE75UrW7y/xIjnAvCLiQ2KuK9j8aM6swj8vkEuitHyu6VQxpeUGcpGGcdZxgarpvkHmgkdo/PxC7t41FTyYPdbM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1913.namprd11.prod.outlook.com (10.175.87.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 16:24:05 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:24:05 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 10/10] ARM: dts: at91: sama5d2_xplained: enable rtc_adc_trigger
Thread-Topic: [PATCH 10/10] ARM: dts: at91: sama5d2_xplained: enable
 rtc_adc_trigger
Thread-Index: AQHVtb+QPhJ2pL0iFUaSi+H+uVoRXA==
Date: Wed, 18 Dec 2019 16:24:03 +0000
Message-ID: <1576686157-11939-11-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d24aa346-f9db-44dd-63eb-08d783d6b3a3
x-ms-traffictypediagnostic: DM5PR11MB1913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB19131E4EFDAFDE18415BA94FE8530@DM5PR11MB1913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(4744005)(2616005)(66556008)(316002)(107886003)(8676002)(71200400001)(8936002)(66476007)(26005)(6506007)(2906002)(64756008)(66446008)(66946007)(81156014)(76116006)(81166006)(5660300002)(478600001)(36756003)(54906003)(186003)(4326008)(86362001)(6512007)(110136005)(91956017)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1913;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eVp+s0zvuU3EAgjepAKGnY5P/yQvUVPIRH3MGIwKVEo0kP9qbLQRsgEaMuBV3FmqIJ+k25QPLKSqXFvRqe/GE7WSidN4Kq2X7CWSpQqwrx+8/n5MM59u5Rp3Djb0RiF+TbhaqTOXtY80qvveSFx3ErgqDyxL2zhC8eFCQtQ68adVvfQafW49AFHCQ3r0T0o4gsWhfQlqRNuCH8nJCTONYIx0vp7tvP2jdHpODHlTKkTVs0p/SvXbQk2ni7X1LSUeeHQXV3iMgGnGwI6RgyQBT+BB+tfo4wxqH3qpmc9fbQtLciNzTfwB6/RQdVXivsEFsAkc2aA5KCUfZKd6uQkUo2Jl1yZ5eRmbtOlGqFXjC3CO/RxlhbRulc5jx14keDpeqpcWhqXd4tTCkvbgIhCFtqJtPGkvVBKRMGblqbAs7BEQhDdiraZDPZi1gwlIlHgY
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d24aa346-f9db-44dd-63eb-08d783d6b3a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:24:03.8902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hot+cqMGsu1fuiD/NY2uOYGx8Rf1m9uh9Sx5vHJFeC/mLsYvg2+HiEy2wAKpeWtU/+tyoBkj06FKxXvp95pJISFCnRFlH7HDws8gFY2318k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082412_162375_5F0CC3FE 
X-CRM114-Status: UNSURE (   6.45  )
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Enable the rtc_adc_trigger node.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 9d0a7fb..606ca70 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -645,3 +645,7 @@
 		};
 	};
 };
+
+&rtc_adc_trigger {
+	status = "okay";
+};
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
