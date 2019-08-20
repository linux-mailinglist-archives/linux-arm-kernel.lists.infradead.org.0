Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0238595D86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nmLCkjx5wDoz7WUmrEj0pg7XGGE3YY0Dtl5P4FKPhVM=; b=cbFremLCXTdlJo
	eBxs7biio3ak9Wn6j/gcm1cSe8eTUGpNgkehCd8d9HGwYKfuU/Jg/4ELR97pCCTaEoRJFZswW5pTz
	vbRyV9zjtYjU6nrWgfe8L6SAH9efsQE9/Air+peCpYnsn4YqNFrGdLBNPrR6ZpWIPrAbi5gocdjYx
	uT21Y8quBYgnFJLIr75sXXB8983pkgFBkOvsGv5R9PLvRHZztsGfpE9Re6gWnWR8XGYTEzF9flfeC
	uRtWchv5yd6phvomrv7V5S320P57H4yRRQ+LFbuxeNkxsaYR6AzkQZov44EG9Q6MPqBh1xj8yCcYj
	/mJCRIzZLmbPxnKOikuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02Sl-000744-Jp; Tue, 20 Aug 2019 11:38:07 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02SV-00073C-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:37:55 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8sKL/FGgKzumXMl0jW1v8uel1LeQUtZSXTnLEYAi8fAWvJYVdPz2iV4TGdFN52jEolQW/V7sW6
 Q4JyKP+GZvx1joUvp0ZyasoyrXM7IAKiU7vwOnH0j9pVKKG4g5dL02cHjpb0xQF65ufi9K84n7
 YOX5rSPdp4u9KU+6z+PS9vgHjX9UZgin90NLuT0LMJWQ/VTfaMjajHfOJp3QPkPG+T2Gf/U1eP
 Slgqhvnf9fznx1JfOwG8i+/KHVyntBxiIr+nmnLaa9mC7wn//TZFy24eBIvxCWbsDI5nW8SWUh
 br8=
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="45902954"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Aug 2019 04:37:47 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Aug 2019 04:37:47 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 20 Aug 2019 04:37:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLqld7jTuREuMIULK7pNc8WfxPDE6LwP80dJEKkEFtQeNxLSiZEAZffC/l+cef5RxAy/ngZykaD5cdvHNq9n8fu4BvYOxo5ztrogPyYk0qYayBsyjSSuNY/BO3c/dmZWO5iOadtI5Th9AES0gQ6huUg0YOlYGCis5IVjEOiiJndcdP+i1ICvNkLsrmzw6jqbr1voYnV5y753hcFJmBgvWqeH1oy/jhZZJw/lwVu/ZB0pCZTAeUSdn6RvOdvgcy/MB4F1WLW/DTx4xVA9fm6+9Ry7p7sTw7PQitF4saVQBvd8uAFhw4E+MWviPHDzS5GWNbbTsEcoGz4mjEx4aFjNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TaOrdYzh7WtX0uWCmQc+CzyIWLxq6H3d91Vrj6tveQk=;
 b=U4Pd4J1f2mSdi/pSOxkQGnLwjPVfl1k/9nGfG0gv0aApAt9pptY8bQp1YzczhYa1B0U0T19Z6NrDwacgxBgYFCCTbPhP69V1+03QUIZbiImAkeYOLJY0VKRbsWwmb0UFLuiipzKcdnkoopHGgWLrgNhXH7yTxqHD2eQpqBxCTNl2NAStgzUD8CnM40qFyKrs5MZOjNiow3CJ6IVrUm5VvHrnynK8SCFCMJv2nUvNH/ylJlUrDxLnBpsGcTOg+zP5gRCfqxfnTUJ8AyGaEZFzUY8RvjAaDOh77QvL9JBF8eTIz9ltqFvkzvSzykc7HMYD6r1LUDhXN2l9/wMRu7DLkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TaOrdYzh7WtX0uWCmQc+CzyIWLxq6H3d91Vrj6tveQk=;
 b=SJ1JHjXTLIQfsvGogBThSlYZrGfhDpOYsI4i5P7APAGD5KCUAu/Qe1ygVHQ3aEQbSi4Mp3RsZQdUA4mTsPfzJt9FEqKFbwmbdxDkmDSrcHRNwPfIAHeW+lwRZXLcKM4M/n382vBZ/MimP++9snXpLcXS5Xcgz9A2P2Cu7qBTG0s=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1258.namprd11.prod.outlook.com (10.168.108.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 11:37:46 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::c457:dc57:6e6f:f4f3%10]) with mapi id 15.20.2178.018; Tue, 20 Aug
 2019 11:37:46 +0000
From: <Eugen.Hristev@microchip.com>
To: <linux-media@vger.kernel.org>, <hverkuil@xs4all.nl>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] media: atmel: atmel-isi: fix timeout value for stop streaming
Thread-Topic: [PATCH] media: atmel: atmel-isi: fix timeout value for stop
 streaming
Thread-Index: AQHVV0uvEFgDMaOaUkG282eNQvL4aQ==
Date: Tue, 20 Aug 2019 11:37:45 +0000
Message-ID: <1566300739-3351-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0053.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::42) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a67e29a-2e21-4603-92d5-08d72562d1fe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1258; 
x-ms-traffictypediagnostic: DM5PR11MB1258:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB125815AF017BCAA6E66ED88DE8AB0@DM5PR11MB1258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(39860400002)(396003)(199004)(189003)(2501003)(486006)(26005)(25786009)(6436002)(305945005)(186003)(86362001)(7736002)(2201001)(256004)(6486002)(2616005)(53936002)(14444005)(3846002)(6116002)(478600001)(81156014)(476003)(316002)(52116002)(8676002)(81166006)(99286004)(54906003)(2906002)(6512007)(71190400001)(110136005)(71200400001)(4326008)(102836004)(8936002)(66556008)(66476007)(66446008)(14454004)(66946007)(50226002)(36756003)(66066001)(5660300002)(64756008)(6506007)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1258;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kHSEubVE6o5P1IlGzWYl7nk/SUwY0hJ/mZ3KDhg/2p7xr33cCAnVu064vmkdedhDqegaUZlWEKtVcc4GwUZkDPYlO/CUZxl7E13Tsf6miG/60KapH6hyoOCT02kVfBp7jfTHKX4ceA4WSBQj0QGGE2IdUjZpXp/l74NThPKoMO7RyPbSDbvXfworrKiSWf8PeNIykNVc6Bao6PUB/DYpO0ziTinCkyAOK6RYacuVZ83HUEPcKUa+cI7q5QSOsFeleed/xsSSkRP6y7MMajetEr00Oljc8kLVhQlmS3mqwjbbx1R6JDXQYIqBrO1VlU/bn/2N5ZRXqykBdk6Ojsa+YZ49vSmp2/HxgkPzd+Z/Q5y1vElhNynTwjh44H1tZN6KiJqrAfADska8eVo11OhEilfKjUulmdyV2+L8jE+6FKk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a67e29a-2e21-4603-92d5-08d72562d1fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 11:37:45.9877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P8olKa8mpzPJbOo0qfcmUJWmGSI1UoR5XgVLIdlFQQVpks9AJR7qCzEKbWp2f59Yf5X0rb1QuCvsqMGsvg/13hyMsj4zG2RgmvgcLyvEC6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1258
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043752_185269_AB078775 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: alexandre.kroupski@ingenico.com, Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Kroupski <alexandre.kroupski@ingenico.com>

In case of sensor malfunction, stop streaming timeout takes much longer
than expected.
This is due to conversion of time to jiffies: milliseconds multiplied
with HZ (ticks/second) gives out a value of jiffies with 10^3 greater.
We need to also divide by 10^3 to obtain the right jiffies value.
In other words FRAME_INTERVAL_MILLI_SEC must be in seconds in order to multiply
by HZ and get the right jiffies value to add to the current jiffies for the
timeout expire time.

Fixes: 195ebc43bf76 ("[media] V4L: at91: add Atmel Image Sensor Interface (ISI) support")
Signed-off-by: Alexandre Kroupski <alexandre.kroupski@ingenico.com>
Reviewed-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/media/platform/atmel/atmel-isi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/atmel/atmel-isi.c b/drivers/media/platform/atmel/atmel-isi.c
index d7d94c1..428f117 100644
--- a/drivers/media/platform/atmel/atmel-isi.c
+++ b/drivers/media/platform/atmel/atmel-isi.c
@@ -493,7 +493,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	spin_unlock_irq(&isi->irqlock);
 
 	if (!isi->enable_preview_path) {
-		timeout = jiffies + FRAME_INTERVAL_MILLI_SEC * HZ;
+		timeout = jiffies + (FRAME_INTERVAL_MILLI_SEC * HZ) / 1000;
 		/* Wait until the end of the current frame. */
 		while ((isi_readl(isi, ISI_STATUS) & ISI_CTRL_CDC) &&
 				time_before(jiffies, timeout))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
