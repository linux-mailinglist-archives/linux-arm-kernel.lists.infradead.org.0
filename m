Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1D011E143
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slwWsA1myVp3kIk7XBiV9g0j1rXUpo5NYY8omRxWQk4=; b=Ek/7VucrtrkjeA
	gt+FbSY48s4hRT96iI79IYKhIdTQ/L+vcvn83BEs9ZQ5Ast2CObiN9zsrbTSqQ+CGbHOoFcrNLRcp
	t/ltjrWLzlkNvNrP1leMGJFaZB8GrxnM7H3yR9K84WCwjplRn3oSkYteKjaxkcSxklzUGSxCg/cv9
	q6PUMOocjp4fyHUm/ihQUcGzyzrcenxdssjDgyL8bYzcbRBVeMPbuEqP2FPWCOX/namOYWBF14DYr
	nr8dJqiMOzyn+3Rh+4yiHwpDpKCqDctHjPbPsBGUYPgLHNPNz84HPYNyYdR8SKmZejE+hQK7SdAY2
	RnVPPiXiIFYoC+r0cBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhg5-0002Wo-0y; Fri, 13 Dec 2019 09:56:05 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhf1-0000cx-Ts
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:55:01 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: GJ7oKUEKgVDOso5Hu66lahXBApPq7nJet+Mst8Y9OpA0JOQCgSv1Xl+EtagboXPBcGVLWANUgf
 UVP2U3zssQo1An/uY8ON7b/F8mwc9A/ZC1b3ivJKLtwu+oRoAH/DjzGHtEjmb/mu5XEgCT9Fys
 CEIg91U6VlvAv7ymcfC5Zmmi0marddu22AKDjHiye/JtmlxxXw9TEiaQENMX4VNtHRfjzvAA3m
 Zhl8MzyLR1Zxj8e4tCUD9rBPBZ2khzvPJrvqWeTZr3LCfBYA8noqzv5eIY5EgIH/6iaT/HYvg1
 omE=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="60267803"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 02:54:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 02:54:56 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Dec 2019 02:54:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VJVP7nzXe62BWYvNW0qUOimHLVcxVOkfkud+ySQSLbm6WkJ/GYh3pBxeLPtYmZ6Owo/x0tEZ2Xl023NQGeMJAkZSbS3vEWgEPMprS2s/WLUm4oVripRelYtogiQcUVyQOhW+VkMEr57oUVKLaDwiVybB9Lv93H7sSvUUxxbCk4iuuUbMqxIl975xevIYxHaP/79ms5Lv8+NtTjV5f+NTyRtKHpsu8TRz/6JOPqPNUcFYeUuZ8MdaAVshGt9p9MsLplTdUMFtHJpsaouJhKuDeWcex/F+ZcTeJpOqJk63RY87s6q6MIgKXtxZhk8/5ufKfmxANX1gE62k0ZichfjTBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+8xSIbOtjmSYYRyoy2ZTUhVEHOqGhVXQzY1H9wCCFk=;
 b=bM+SbKMas8BYQjPmVcAkT9t0FDXCkxKECOwsvuGZQ6SAr9IHDXqCjanijKUUJ0t+gUJcs10ZBFa/JNHiGnuUPmZiIFbYPj67qE8bsfk7Y/eS1CkIqFHVWw0X7iR8mNz4/Oe9jnL9or9ZgcOFygRzFut5Szcv2fBoQeVbSHxUT00o5JCt0/gY55Vhr7Mtbzd9uSsvieRvaMpjnankurmVl3TkyhFZawmOUw1k1zdN9Xfqq6J8saAyo8j8d0Tfx15eEj8ltA/sdA1kYrU4hfeVwdGfGAwIyyM+fpeOZ/+zmtSfT+5EUKnplVHk+leNODfy2bhA3xQyUZgw7txU9XLnWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+8xSIbOtjmSYYRyoy2ZTUhVEHOqGhVXQzY1H9wCCFk=;
 b=TxMhJwu+A+Z80/u3Egr9aBAlG3C/Cui2UfiWBsWcu0Rn0kjGudGq1W77rx5R1JL2EORb/jVOz3pVMu6xupip0SClNVx0Zy0G6JtLc68GMgqtelTjfusfpl7ce7Zg6sxbfATSFuIAK0+kTbuVoY4o5AZGOjrweRT8pLT47okjx30=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3935.namprd11.prod.outlook.com (10.255.180.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Fri, 13 Dec 2019 09:54:54 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 09:54:54 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 4/5] crypto: atmel-{sha,tdes} - Print warn message even when
 deferring
Thread-Topic: [PATCH 4/5] crypto: atmel-{sha,tdes} - Print warn message even
 when deferring
Thread-Index: AQHVsZteWaZn226a1EOkK8oh3K5wUg==
Date: Fri, 13 Dec 2019 09:54:54 +0000
Message-ID: <20191213095423.6687-4-tudor.ambarus@microchip.com>
References: <20191213095423.6687-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191213095423.6687-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0046.eurprd05.prod.outlook.com
 (2603:10a6:800:60::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [86.122.210.80]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61343722-f60c-4cf4-bfcf-08d77fb2812e
x-ms-traffictypediagnostic: MN2PR11MB3935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3935476D72D53928580AA1BEF0540@MN2PR11MB3935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(199004)(189003)(2616005)(2906002)(6486002)(6916009)(71200400001)(6512007)(86362001)(186003)(26005)(478600001)(52116002)(64756008)(66446008)(81156014)(1076003)(5660300002)(81166006)(54906003)(107886003)(8936002)(36756003)(316002)(66556008)(66476007)(66946007)(6506007)(4326008)(8676002)(15650500001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3935;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UA5zgAIifrCeQmIp64Kbc9IkWyaZzfT+bIl10z6okjKDel1e3YiTi8IpFvW3LcHDlytl33ysG+FOjMO5UQzfKanc1HQ5H3SNahrEQhb/kowtMYy48ue6xE/fyNI7DQFU9sJ31D9Was0NCXfB7ByDg13t3KTxgxVgK23hLQshl9wLhuwxJdQGh4NbEhEGO+obHZn9o0C3oQPC/Gv/GpBJeVjgq5bpg4bhP05FRO7DqGZNvUW6KMJ/tUMDEDiFl/P1Q0Vp2I2Q6DjIpxuf4NMDtOuJn6DbWUwv78dZ3ehU6F7eCw+5QtpxIej1+nYObj8kxEIOQIQi9ZQiX4zsLPu2d2M4yf6/xZ1by3KN9Cy3HHvwwAwxus+0S8/RD1uoXyy+cPs6siQ0EHZjo/T+xPLgEBEYxT2dKF83JBq0HEAqgyCRCOKONEzB6hQxsgDb0JRr+5a3DA5w5M6bP8NQIYkkVlNIagvOC64zo0yDUYc33ZCalfeiqkLebb6Xeh/h9UYF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 61343722-f60c-4cf4-bfcf-08d77fb2812e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 09:54:54.6424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 81Q2KsrswA9X9+sEeX/Q5FY/4VTwSGqaAtcR/Ik37QCx0VDhFyXvuhAFVrOneYGuQ16Eq2In4S4XhRNDEErJsx+jXbv0QEQ46qeMVhreWAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015500_005551_A0ED4F03 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Even when deferring, we would like to know what caused it.
Update dev_warn to dev_err because if the DMA init fails,
the probe is stopped.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c  | 2 +-
 drivers/crypto/atmel-sha.c  | 7 ++-----
 drivers/crypto/atmel-tdes.c | 3 +--
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 986f1ca682aa..855f0ccc9368 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -2292,7 +2292,7 @@ static int atmel_aes_dma_init(struct atmel_aes_dev *dd)
 err_dma_out:
 	dma_release_channel(dd->src.chan);
 err_dma_in:
-	dev_warn(dd->dev, "no DMA channel available\n");
+	dev_err(dd->dev, "no DMA channel available\n");
 	return ret;
 }
 
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index a0d42bdc311f..e8e4200c1ab3 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -2485,11 +2485,8 @@ static int atmel_sha_dma_init(struct atmel_sha_dev *dd)
 {
 	dd->dma_lch_in.chan = dma_request_chan(dd->dev, "tx");
 	if (IS_ERR(dd->dma_lch_in.chan)) {
-		int ret = PTR_ERR(dd->dma_lch_in.chan);
-
-		if (ret != -EPROBE_DEFER)
-			dev_warn(dd->dev, "no DMA channel available\n");
-		return ret;
+		dev_err(dd->dev, "DMA channel is not available\n");
+		return PTR_ERR(dd->dma_lch_in.chan);
 	}
 
 	dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index d42b22775ee9..83a6d42c8921 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -783,8 +783,7 @@ static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd)
 err_dma_out:
 	dma_release_channel(dd->dma_lch_in.chan);
 err_dma_in:
-	if (ret != -EPROBE_DEFER)
-		dev_warn(dd->dev, "no DMA channel available\n");
+	dev_err(dd->dev, "no DMA channel available\n");
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
