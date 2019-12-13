Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EED11E13F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 10:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pHCEPlKRShmdt8KOiO7q5VteX+eiDpVDBrPioq3qnZQ=; b=Mjz9bgaSvGsjyf
	OkvGNFpvYTWp7fLk/11tQccxBK0J4et0/PGWTZtkq+bHyovLgxC7bMaDzTMteRXARMwLGrW7Z2EYi
	bt80NtFEplmrMRiInazknnF0GE3g4xC3b0+l+aBewOwKb/q7a2ILPXN2msYIMCU+Bl5VD26rqfhZp
	E+VK6WKavKxc391vVbV2v58kT3Q81SnqoAvc+0em5GoWmP37zWNctowGxBfdUQ5aINfJKETYPUgmt
	6c754jn0FW1eAvl4WGa3bibQdPdd6hvFoemwIE6ZynuFW8/J9FAClugPCdq6yP2OWEbkX28HUgUCQ
	4PW2UwAlhgx96kaEy4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhfj-0002Bc-J9; Fri, 13 Dec 2019 09:55:43 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhev-0000ZD-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 09:54:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: bViNsiJ3DQeCiZKKvkIIL7zaEXM1OPf9+i3sBHEvmI1PS5OGz8z84mj5fFTRhd7p2MKsy2JNR/
 IYbXysvdM0ukbkEfYKazkRCuW1Lk4VEWwRNYUeWiVunmKb4oZNsaqyDPtFRo7Nr3KvxmiXtJAa
 ddBl79MmvOgxOh+QiQSGioaR/6jIU8hjSmU2JRmICUJkSSA5uDKh/sltMZ+Frlca+HYqpJvBAr
 VMlDuGJLyiL+otSN48wJ4FD1BbScZA2q6LpAnOE4JIuBXi29r2TPbdgLBm17CgwFNmqep2MW63
 YkE=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="57649458"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 02:54:50 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 02:54:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Dec 2019 02:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bSd01B7JW5zphuj6BMXYLZKz1vF7HF9TxfVvuJlIXutoSnlwPa29e7t/cHBV5gLn09vdnmOcBNU8Zo+hhZGKLRl/hR5Xk5PCQPtv87SNQnWNMFZprt6KjazyL8/pX2hUHpTpJ/byFDFyZmbEYqcEYDbb5pRMOpvC/aC82GF8PtGzD2Bk1u6WfkX9LetWxp28kDjLhnLD/pFhnvUe8bX4/k2mw31XkXgr9iXx4sHu1YmPM78hC25EJYPbrszbKAIKGg1UPO2LC7jE3jTw/IJW5sciGympRyMqLpvWB7bhKjDcY37K9gdEauQyfZwwadO8My3jnZ9YF+KWtVFPCNQitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSU3hhunHsne2rZGzBHQ2zhp1GWPr0QuAbAo0sEba3A=;
 b=FLQVsvJ1tA7ldAYGkLruQY7/YLb668sIMerh9tysGN9GIPxNtmLdWvWNUC7Be8J4aqKjHk6i2dWL7UA4oQFilPhRI05rijxYlIgFZ0pJ/RqXk9o70Bxw/g3r6ccUOpmcc0BeTp783Nb1wBMO71/00MHchL91oXroAYPvWy0719E+3S4s/ttvwAmk0XB/y2AkJsAZ1aJAhgRRVX/eF7PMIvHSI4TsBpRmqJOXfGPG40fLEieYqpi4E6b6GKJiyYiDNfL1ZAbGw2BOISjRzqeANNyAZ450q4aHnX65XSuwmsE4teTdX/kIMOzFmWEFxYTAu5GYa+cLqOH0vAjCuCiRjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSU3hhunHsne2rZGzBHQ2zhp1GWPr0QuAbAo0sEba3A=;
 b=Jantg6rY17u6Jj8RAE96B2sSlwK+5o7FVhYRf0T3UCS0R/rlmenEvTpO5u8WIAWaYz0Tquyd/yYd+DfO4FbmpLoc2gEI7BU9Q709tlX/rP4MoasAh8qfsV+reXAHKrhhrRQ7pSo2gpYxSu64O3iXkLMReEC7YIhA+nUZVeWDJOo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4029.namprd11.prod.outlook.com (10.255.181.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Fri, 13 Dec 2019 09:54:42 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 09:54:42 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: [PATCH 1/5] crypto: atmel-{aes,sha} - Fix incorrect use of
 dmaengine_terminate_all()
Thread-Topic: [PATCH 1/5] crypto: atmel-{aes,sha} - Fix incorrect use of
 dmaengine_terminate_all()
Thread-Index: AQHVsZtXl3FLQBYVpUWR9FcsoWA+VA==
Date: Fri, 13 Dec 2019 09:54:42 +0000
Message-ID: <20191213095423.6687-1-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 85fe602a-fc97-464e-cfff-08d77fb279e3
x-ms-traffictypediagnostic: MN2PR11MB4029:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4029E12915250B75E2C2757BF0540@MN2PR11MB4029.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(366004)(136003)(189003)(199004)(2616005)(2906002)(186003)(71200400001)(6916009)(6512007)(86362001)(6486002)(478600001)(52116002)(26005)(66556008)(5660300002)(1076003)(36756003)(81156014)(64756008)(107886003)(81166006)(54906003)(8676002)(316002)(6506007)(66946007)(66476007)(4326008)(8936002)(66446008)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4029;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 15Q4QUEuYyLGKjdS3uo/5ciFvwFZIbg82OfZRSSgz4VukqrQSdp5XIh17O2bKW6PptkTf1AGkVgX5cirlQg1drEZQCttQF/0zbI263zO1le274WQFVyqH4xUhuYtQG3Jefu9DFD1dTHmf93hNPQBk8TKxnfF4LWzJtFFTFbp5dX61UoWunVNiY0Fu+aUnXyG5fA12WyECKPZnkuzQ2c7aqW0qK9rPjS+fb0JXjfm18+Bh0kTH3I1edr/yBsz/IpUVofmgWgpDEb95jPS8XiQfUDffryxgzrHjBjqw6d5xmCpULvjdCXj/vH6zJDwMg2VwgvVvt66A3DC8ZHobYqXq/U3JsoNNKNNmcrJK/l/0jP04/HfnZ36U+/EG9YRDPCMlQuj74NEHdETAY41Nz9tn01Rj0gADsCSx8FYhA5/ZNK7djznBsnt2wa5xLRf1ks8w3MgZXFFlgfGhr5RTXZ+7tWLUmE5CWBsTNPKH2AztK45grCjHfxz6vTFyXDxrWOF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 85fe602a-fc97-464e-cfff-08d77fb279e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 09:54:42.4442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4lE4oAYFGEeu1r1pHuPHIzDAXcxeAo3X9W1m/qMqANc8Jvl+RYiE5AhqyArakGJFCTgKAWMELaOtCXMmzyLu2k5hrUgpIlULl3k0nHAgVVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015454_066213_A0C9BB78 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

device_terminate_all() is used to abort all the pending and
ongoing transfers on the channel, it should be used just in the
error path.

Also, dmaengine_terminate_all() is deprecated and one should use
dmaengine_terminate_async() or dmaengine_terminate_sync(). The method
is not used in atomic context, use dmaengine_terminate_sync().

A secondary aspect of this patch is that it luckily avoids a deadlock
between atmel_aes and at_hdmac.c. While in tasklet with the lock held,
the dma controller invokes the client callback (dmaengine_terminate_all),
which tries to get the same lock. The at_hdmac fix would be to drop the
lock before invoking the client callback, a fix on at_hdmac will follow.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/crypto/atmel-aes.c | 32 ++------------------------------
 drivers/crypto/atmel-sha.c |  1 -
 2 files changed, 2 insertions(+), 31 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 47b20df3adfc..c3f0e99d24b0 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -857,27 +857,6 @@ static int atmel_aes_dma_transfer_start(struct atmel_aes_dev *dd,
 	return 0;
 }
 
-static void atmel_aes_dma_transfer_stop(struct atmel_aes_dev *dd,
-					enum dma_transfer_direction dir)
-{
-	struct atmel_aes_dma *dma;
-
-	switch (dir) {
-	case DMA_MEM_TO_DEV:
-		dma = &dd->src;
-		break;
-
-	case DMA_DEV_TO_MEM:
-		dma = &dd->dst;
-		break;
-
-	default:
-		return;
-	}
-
-	dmaengine_terminate_all(dma->chan);
-}
-
 static int atmel_aes_dma_start(struct atmel_aes_dev *dd,
 			       struct scatterlist *src,
 			       struct scatterlist *dst,
@@ -936,25 +915,18 @@ static int atmel_aes_dma_start(struct atmel_aes_dev *dd,
 	return -EINPROGRESS;
 
 output_transfer_stop:
-	atmel_aes_dma_transfer_stop(dd, DMA_DEV_TO_MEM);
+	dmaengine_terminate_sync(dd->dst.chan);
 unmap:
 	atmel_aes_unmap(dd);
 exit:
 	return atmel_aes_complete(dd, err);
 }
 
-static void atmel_aes_dma_stop(struct atmel_aes_dev *dd)
-{
-	atmel_aes_dma_transfer_stop(dd, DMA_MEM_TO_DEV);
-	atmel_aes_dma_transfer_stop(dd, DMA_DEV_TO_MEM);
-	atmel_aes_unmap(dd);
-}
-
 static void atmel_aes_dma_callback(void *data)
 {
 	struct atmel_aes_dev *dd = data;
 
-	atmel_aes_dma_stop(dd);
+	atmel_aes_unmap(dd);
 	dd->is_async = true;
 	(void)dd->resume(dd);
 }
diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index ebf500153700..7cf4ec9ed93a 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -1429,7 +1429,6 @@ static void atmel_sha_dma_callback2(void *data)
 	struct scatterlist *sg;
 	int nents;
 
-	dmaengine_terminate_all(dma->chan);
 	dma_unmap_sg(dd->dev, dma->sg, dma->nents, DMA_TO_DEVICE);
 
 	sg = dma->sg;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
