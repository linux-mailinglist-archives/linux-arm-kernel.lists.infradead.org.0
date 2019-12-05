Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C72113ED5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2Wk5pr1JW+O8FZe5/3/bE+QP/+XNADIfCFy7ID+WTQ=; b=eIN6gTMuaa0ybJ
	8En4gbPXBJgcin08XTE3DCSc9Ub8B1jBQ289S+c5CY2zLkGBI8Uc5EkZvRHrwWp6iEYOslUp7cEmD
	1wpZkWDc9fyQzpiZdGdSeio9rXVUbmQxEnKbdtfjerqOZoTpA2S/i6+FoZyhhFW+Sv6+zE/PZYIck
	O0s+iUJKhnj38i+YzfGXxciycX+EkS7QgQfi2fYx6u56Qg/qXtu0Ewy6Nj4zvLJnKF3w1ImiWxikr
	8GroyCTZwO8ttHQw1Gkd1jNjV6Xo0U7r/LleMnSN07HyvQKrG833J5NVG1ydbrWUfCTwIrjVYvt13
	bHgQJPxNHZNRjNIMP0iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnra-00068Y-8C; Thu, 05 Dec 2019 09:55:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnpg-00030k-DV
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:54:02 +0000
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
IronPort-SDR: xWIl1TfuKLrpcpDky5uJNSw9Ov/KshyYp63cB4KYlb+OcuQ2i4HcQnLM8AdHII9MpMBbbyPA2c
 WyWXTcnwlVOD7pGkBGTsEnepzHCO7e72gdafj0TmB2aH7lABhwVdjyRPcjAh+s4BQqBtL+hdQW
 RJFJmIG+m6bWGSIYELgBWMtdR29wc7KDrDedYyPWLjfft63sUb3z6WyPWXPIPHoO7TXvnkQ1wr
 zKgG7vcpJGLmbCJQ0HRlimN7QZDnfp4m8V6E0kKl/9wIeP9XRICkpb4J1wjCu45WFlwm9UnSZZ
 hL4=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="60720966"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 02:53:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 02:54:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 02:54:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUv0tJAqLcg1pC45jr/6i241N6bxqxshLvkQJs1OzZgyLYty5b/Sa+MsKMua7wfpyUdQf5epqudfBgfjNafm8WYolFiaVhfOx8Urn/0KtdB/LYtXsLNuwCPvSBkCrLwK9kPPmzWCjNO7CMZRNGA7ZPW/4Vg0tZ+14RxtIOIS7MPzr0AuD8NboQtMdd4jYl/eNevfPJL6JzJBewVIwv1btqEEMlq2zAtGBWNpWhczkZd/b6Iwdv0Vnj5KUZG+ejCpLDJX3eQ3cJNz0tvh0RS//J+YdFeHISrKH4P75q1GIZw+U+yKDoD1V2gE+ojffnaSSBfgQyPPG0tEvo4VsMOckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlLAtxYyEcImY7l8LGhn6lX5lztP7CGu2CYsGUXqgjI=;
 b=E/ncy1tGD6TEGvkchMVpIATVtnGiYti7IxK0FeVHMRJIiaFILdiePlEVqvfHN1QL/ltSipdu8yHqZYTHB8R+M3vxego6H7uDtj9esWO78N7ED+6CWkCjHHnIXeB/SB2AoaBX2BJxCarSTlqaFIQHQZfe7IgI5GAOiV3ao2PWUzeENFfA0OFLvzS63vE4yo/ieJwzfXzraEGYVm9lx5sFUya8daP+mxVNYIQ1j0EDrw/9Brd2hGdee7pg01MJVyPHIN9rWI5HmRbud3+eLH2nX0BqTz74JQUFthKISWuFCeX0uI0R6dQ0a2ZHsxUiSxsiaz58lDYlgew/OWjTzgIVlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlLAtxYyEcImY7l8LGhn6lX5lztP7CGu2CYsGUXqgjI=;
 b=P8nGCDAglCFwmJLh2Ariuj6SfIEry8j+3MRFnWMP0s9nJUMwwLeBSPJUzIXe3/TFxVHBMFrBymSypoVJcGBPYl8MAKSOLMePZ9JSmLeoRQHeBP/XeP7XREo5LX3Nr9+VjwRbBXEBS9l5C4QTOvAWKd/ei46FZ/tNHsP/f18lRE0=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3677.namprd11.prod.outlook.com (20.178.253.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 09:53:58 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 09:53:58 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 09/16] crypto: atmel-tdes - Drop unnecessary passing of tfm
Thread-Topic: [PATCH 09/16] crypto: atmel-tdes - Drop unnecessary passing of
 tfm
Thread-Index: AQHVq1HqAp3eRVJX4kSfqtexQKotew==
Date: Thu, 5 Dec 2019 09:53:58 +0000
Message-ID: <20191205095326.5094-10-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 5715a154-7454-48c5-030b-08d779690c70
x-ms-traffictypediagnostic: MN2PR11MB3677:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3677F87F290EBD709F3F73ADF05C0@MN2PR11MB3677.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(2616005)(66556008)(305945005)(66476007)(66446008)(102836004)(64756008)(11346002)(5660300002)(52116002)(76176011)(99286004)(36756003)(66946007)(2906002)(54906003)(26005)(6916009)(6506007)(1076003)(8676002)(6486002)(4326008)(50226002)(1730700003)(8936002)(14454004)(81156014)(186003)(86362001)(81166006)(5640700003)(478600001)(6512007)(71200400001)(25786009)(316002)(71190400001)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3677;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Vs5m6+A4Rd/GqlDwsjz9t3Fh3AXWo6WhjBkrUD/QoLgkws2i9fsXzvJ2Wo043VeQfIXUdFKH0AZElJKZ9zUWpF4zhKzPUvtzEhxi+krulY0DiBR+BibkLdHgS5ILV0KhQsyLKieePQdGDvINOqPh4flvFf0EF3B6QmtKVic+ZbWtSbimjuG3UN/BKbMr2d82qJ/tdxO9+APvO61rajG1ZK32Kl/um90bpeOSbsxpKZPWlUs5Ugz52KKskIckAVWlczhzwbWj1Kbi98lhOGL942sCulN1qljTNdgssg/rPmMbuHGCQiqIPtXUowO730qt3Jv2D9Ugf7G6/i2xj2J3RQ6s67faqx8MfPpeNetsJUwsychGz7v5TI/ziEUHIG9Plt/dQl+wi3k6sV5t3FRt0cuDy+rj96SzvPiLTjo2GyNZbZ/p5qe4axie/9zOfG3
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5715a154-7454-48c5-030b-08d779690c70
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:53:58.5097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rVGQrdI65pL6ASeHiLF/6ns2sPW1dXcVcFtDsyadqOSnjAvyzd/xCe/hAfMcGPu3KSgABy672pBg14I3ckiNS+eFc14bZIOPdTOD66lt+EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3677
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_015400_511039_9B7C707A 
X-CRM114-Status: UNSURE (   6.89  )
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

atmel_tdes_crypt_start() obtained a pointer to tfm from dd,
passed the tfm pointer to atmel_tdes_crypt_{dma,pdc}, and in
the calles we obtained dd back from the tfm. Pass pointer to
dd directly.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-tdes.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index ddb211706cba..0a096f36785e 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -384,11 +384,10 @@ static void atmel_tdes_buff_cleanup(struct atmel_tdes_dev *dd)
 	free_page((unsigned long)dd->buf_in);
 }
 
-static int atmel_tdes_crypt_pdc(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
-			       dma_addr_t dma_addr_out, int length)
+static int atmel_tdes_crypt_pdc(struct atmel_tdes_dev *dd,
+				dma_addr_t dma_addr_in,
+				dma_addr_t dma_addr_out, int length)
 {
-	struct atmel_tdes_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct atmel_tdes_dev *dd = ctx->dd;
 	struct atmel_tdes_reqctx *rctx = skcipher_request_ctx(dd->req);
 	int len32;
 
@@ -428,11 +427,10 @@ static int atmel_tdes_crypt_pdc(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
 	return 0;
 }
 
-static int atmel_tdes_crypt_dma(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
-			       dma_addr_t dma_addr_out, int length)
+static int atmel_tdes_crypt_dma(struct atmel_tdes_dev *dd,
+				dma_addr_t dma_addr_in,
+				dma_addr_t dma_addr_out, int length)
 {
-	struct atmel_tdes_ctx *ctx = crypto_tfm_ctx(tfm);
-	struct atmel_tdes_dev *dd = ctx->dd;
 	struct atmel_tdes_reqctx *rctx = skcipher_request_ctx(dd->req);
 	struct scatterlist sg[2];
 	struct dma_async_tx_descriptor	*in_desc, *out_desc;
@@ -501,8 +499,6 @@ static int atmel_tdes_crypt_dma(struct crypto_tfm *tfm, dma_addr_t dma_addr_in,
 
 static int atmel_tdes_crypt_start(struct atmel_tdes_dev *dd)
 {
-	struct crypto_tfm *tfm = crypto_skcipher_tfm(
-					crypto_skcipher_reqtfm(dd->req));
 	int err, fast = 0, in, out;
 	size_t count;
 	dma_addr_t addr_in, addr_out;
@@ -558,9 +554,9 @@ static int atmel_tdes_crypt_start(struct atmel_tdes_dev *dd)
 	dd->total -= count;
 
 	if (dd->caps.has_dma)
-		err = atmel_tdes_crypt_dma(tfm, addr_in, addr_out, count);
+		err = atmel_tdes_crypt_dma(dd, addr_in, addr_out, count);
 	else
-		err = atmel_tdes_crypt_pdc(tfm, addr_in, addr_out, count);
+		err = atmel_tdes_crypt_pdc(dd, addr_in, addr_out, count);
 
 	if (err && (dd->flags & TDES_FLAGS_FAST)) {
 		dma_unmap_sg(dd->dev, dd->in_sg, 1, DMA_TO_DEVICE);
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
