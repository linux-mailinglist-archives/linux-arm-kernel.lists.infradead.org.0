Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3401F8F2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsWT0tHKllkL4bZPUJZB15Nt8QMjVfHt1AoQs9GqORQ=; b=RYGXeMwHUAcQtw
	CD/SCzN1nWV3BEKBRgecKbKQVUpnT5Dazegm5UFrCDhwQVfuqMf6sxHlm//82jQfDIa934gnnimq6
	ZwF2MpR0uPEAdBaaXs2I9RRZV0uDg54gGPDkkG0iGA95Taswz3+LiVEecsq1mufNKNoS4HqHd6yZq
	y7yFlL3uHgeFbsldSGjcn2RTySq4ZfESeysamOM00DhkK92S4kuC/2TJ3XEeftl08UoEhGo9zVysG
	2iZJtnNsv7o49zo0/T+eKJCJi5AFdM4ZBC0T5mpan7uggLL4nHVkOqhkLCPYdGpMn4uNXpm/dAhOK
	CRKC5GueIZOf7ZBZrPLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjLm-0007fI-5I; Mon, 15 Jun 2020 07:16:10 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjKu-0006p2-Md
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:15:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F7FAqN007649;
 Mon, 15 Jun 2020 02:15:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592205310;
 bh=4Pjny+KuuRnsOS+xKmOJ82U7+HUtDjXvTlvk8R2riW0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lPPe1l1VRtOAZEiGx0LlPIhpnVSur15dcwiFDKXutEwqUduoUyx6L+HmhkaYOTGnX
 KMj98PlJR4V4KVBXmt3MX3SlqqEMlqjdTwVhKf1C4kOIW2NTUfoa839dd6ntwuac+n
 Wz3pmJ4RoS9QQ0XPrsathJ8OBLpcHxefYZHuO6rQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05F7FAKF080023
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 02:15:10 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 02:15:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 02:15:09 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7ExrB062159;
 Mon, 15 Jun 2020 02:15:08 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCHv4 5/7] crypto: sa2ul: add device links to child devices
Date: Mon, 15 Jun 2020 10:14:50 +0300
Message-ID: <20200615071452.25141-6-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200615071452.25141-1-t-kristo@ti.com>
References: <20200615071452.25141-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_001516_792522_723FB3DC 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: j-keerthy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The child devices for sa2ul (like the RNG) have hard dependency towards
the parent, they can't function without the parent enabled. Add device
link for this purpose so that the dependencies are taken care of properly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/sa2ul.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 52c204d91a44..7aca07931f04 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -2338,6 +2338,15 @@ static int sa_dma_init(struct sa_crypto_data *dd)
 	return ret;
 }
 
+static int sa_link_child(struct device *dev, void *data)
+{
+	struct device *parent = data;
+
+	device_link_add(dev, parent, DL_FLAG_AUTOPROBE_CONSUMER);
+
+	return 0;
+}
+
 static int sa_ul_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -2388,6 +2397,8 @@ static int sa_ul_probe(struct platform_device *pdev)
 	if (ret)
 		goto release_dma;
 
+	device_for_each_child(&pdev->dev, &pdev->dev, sa_link_child);
+
 	return 0;
 
 release_dma:
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
