Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B53108A1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 09:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iLQ3vQukJVrAfiy7nsFJ0tdYhGcXem5Mu+Aovof6I0=; b=j2Zn8kNSHuEN2c
	EPE75kbBGzIvBS0C9iW12F8EfdljqOdScm1Zzx1NYa9JkYZhVoLVH2z9tSbRl1aps18R6EZ2kD3Id
	+qEu/wgMQkX1bP/2fcLXlL2UtCojBe8O7MyhI25VlBi3U4y15vCQOSaYT3KiWKM+eTyOTkWNtGQ43
	3yqtZ2KcVpYxfL+8yW7GpSKxlkwj+nr/MUusKGwxJeKXyr1By5KVXe+YSIqdYMIZYv/NFRfD+L+4t
	eFBlK5hiy+q7SxdDQ9GcUQuIiCboWMSHLB/3IFTZgx0598a/cFgvAS2zj/gZoOPnwM41RL/8UpYkM
	RyFH6zJRqKCoigceev9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ9o7-0006Dz-Qh; Mon, 25 Nov 2019 08:33:19 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9ni-00063g-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 08:32:57 +0000
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
IronPort-SDR: 0va2IPncWJ3NkQljTNVIaniEGRecAPnmKRFwHI0oNupbclmspc6mCAiihfAQABEULcWFbb+mrN
 B8axA/r6oA+jxq/gG/Mfb0tnRf82k+vF/G1ltIZHEklMaz0XKn8Fgel+iCsh+GsRJyhTwpdLtU
 PI7lfXwzffGDWg9EiRU3kb86jEX+geinz3XeNvVvm8yMokM8M3NQEckpmpQiQwiRRsXg/WwSnn
 bdNsoRYZ9wbNmehzslzcfgX7K7iOvsSZ3J4qoVjwmKe+Fxr9TH5s6RPoEAy1994jRnfJqv6C0M
 3cY=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="59582540"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 01:32:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 01:32:49 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 25 Nov 2019 01:32:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3hxoeg4uX4cFvOvyNH814prm+DW12fxS3ThfkFyU7a1elUuQqIS5wFjJyQWvkeMznJLZBEmOcWmX0t26HyFY4XNeEA96tJRigDyvjsmmyH93A10O9CHcQ+78byz8rywGNfkfOlyuZ7hyuN8ClsB5OEFTiDsMD5rQZqBi+O2z3OqympnEaLkax6libVME9AMWXNK/Hs7PKap0InbJPgugxlnKc3b+pWqHhq0i5x/lAHoDxjHCLOf9eQwD3h72UIOkDNTYwBCchxLj/IJWSs1VL3IaboFRtz2t5aiZ5KcF6/1aXuRv+gztSMCxW2s4w6NI6kM2GHI3W4x1QXQNDLLWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K74n2UhTJbXQwpy5EpqPZKIWWuXb6+qwTmW7OjKVt7U=;
 b=OtSYYRTCimOAm+Lhwg7yoEH12F8xZ9/iaKHVOv/UOcFaM8731V2Tc5G4tn9ZlPX4SnMyfVlq4gCeVlBBCZg3hWiNR9O4yjTvDsUHf9M41u9s5W2wvqpvpbbX81GrdpzMgU16vo2WfJt1AaFEUa0TcRShMzudAlQW7lOqWy2NtGd3x2UWDSZQlKpX9DsgXbdVd1J4D56uIK9r/zYGxPYQjTzWMSIY5onsuywTd102WN9ewtbnZYgJFUMwJa6yntxpcsPdYTDS6viuV+LhJU2FQBtjzBr93NUM3bLlkjP2bTwnUN6DuQCgH7cN6+btc/nuzErWnSXq2lXnO6mbD9l3rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K74n2UhTJbXQwpy5EpqPZKIWWuXb6+qwTmW7OjKVt7U=;
 b=DDoujrnxx3X0epY+/D2hgQYWkaGUNEIBx73RSA8TezPdFvlWb/2sdMkUNmziUDe9m10D3urUtyCxmHmbMjYs6oarPMyGBED2KcyTy/XCkH4zeubUjOFjZq7BNRmUdDoXvlsaMcrf7WZZ8GtMoOfg6Yb3j6qONWTEq5jhxMqWMFM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1418.namprd11.prod.outlook.com (10.168.102.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 08:32:48 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2474.023; Mon, 25 Nov
 2019 08:32:48 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <hverkuil@xs4all.nl>
Subject: [PATCH 1/5] media: atmel: atmel-isc-base: allow 8 bit direct dump
Thread-Topic: [PATCH 1/5] media: atmel: atmel-isc-base: allow 8 bit direct dump
Thread-Index: AQHVo2rqiDAOU7qyfkq3Wl1/znPirw==
Date: Mon, 25 Nov 2019 08:32:48 +0000
Message-ID: <1574670712-31992-2-git-send-email-eugen.hristev@microchip.com>
References: <1574670712-31992-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1574670712-31992-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR07CA0029.eurprd07.prod.outlook.com
 (2603:10a6:205:1::42) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2329dc29-c26b-444f-07c1-08d771820d4d
x-ms-traffictypediagnostic: DM5PR11MB1418:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1418C76227AB882D61F8887EE84A0@DM5PR11MB1418.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(189003)(199004)(305945005)(2201001)(66476007)(66556008)(76176011)(64756008)(66446008)(26005)(81156014)(81166006)(4326008)(3846002)(50226002)(5660300002)(25786009)(86362001)(8676002)(6116002)(2501003)(52116002)(66946007)(6436002)(66066001)(256004)(6486002)(446003)(14454004)(2906002)(386003)(71200400001)(102836004)(14444005)(6512007)(2616005)(11346002)(6506007)(478600001)(71190400001)(36756003)(110136005)(107886003)(99286004)(186003)(7736002)(8936002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1418;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vjHUFIIcYmcyqtKFjG9HuS4rhXU32sKrWDn+cQgI+3wQIYra+6hRb2DLvEX1tnJwN5Nd6v35EDL+tVeLH/wIcFyveiXCPbWO/LoFbYmmn9ppdvLj6JTLc8SHoBSGPBijDRbutWrehY3nKT6jFYZjezApST94i5YFRdRBbim0zAJ/2p3vEgy1t9uN20s1AiFmVuSi90yS9s8rQsirOUka0fOm1k0AA0ULIYdOPuF73PHAFApQsl7ErLczpiDJadhO0n73G7e43/nY5pIuMoyCT9bfIvcmieIFTZ8va8o4DtqUwSWtXxndR/162N7THIGTscf9fLlRBhiEY9oBUGExThX4MPLW8lpJgIkMVGu8MqljOWF+FZmiAElq0wkvR/2/Sl51C1nxABAOyyxRsQPf2TVpBQCEw3QM8iVBv4WVIdvqMK6/bah2ajsw2AgpwrPh
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2329dc29-c26b-444f-07c1-08d771820d4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 08:32:48.0962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1UJPpjqiy0OX5XjKKthHOtntgc8xa1Xgod2OWzlqo/0CbJaI5llPE+W+C++BUTFD2LsvRVwDqO8s7hqDZHxIsRqj41uGbNRysfCwypElGaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_003254_816007_56FB9FE8 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

In case the format that the sensor sends is 8 bit only (like GREY for example)
we need to be able to bypass ISC pipeline and directly dump 8 bits.
That's why the hardcoded value of 16 bpp is not correct in all cases.
This change allows the output format to decide what is the correct bpp (bits per
pixel) such that the result is in the proper format.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isc-base.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
index 604374a..0cfb524 100644
--- a/drivers/media/platform/atmel/atmel-isc-base.c
+++ b/drivers/media/platform/atmel/atmel-isc-base.c
@@ -1049,18 +1049,10 @@ static int isc_try_validate_formats(struct isc_device *isc)
 /*
  * Configures the RLP and DMA modules, depending on the output format
  * configured for the ISC.
- * If direct_dump == true, just dump raw data 8 bits.
+ * If direct_dump == true, just dump raw data 8/16 bits depending on format.
  */
 static int isc_try_configure_rlp_dma(struct isc_device *isc, bool direct_dump)
 {
-	if (direct_dump) {
-		isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT8;
-		isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED8;
-		isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
-		isc->try_config.bpp = 16;
-		return 0;
-	}
-
 	switch (isc->try_config.fourcc) {
 	case V4L2_PIX_FMT_SBGGR8:
 	case V4L2_PIX_FMT_SGBRG8:
@@ -1141,6 +1133,14 @@ static int isc_try_configure_rlp_dma(struct isc_device *isc, bool direct_dump)
 	default:
 		return -EINVAL;
 	}
+
+	if (direct_dump) {
+		isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT8;
+		isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED8;
+		isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
+		return 0;
+	}
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
