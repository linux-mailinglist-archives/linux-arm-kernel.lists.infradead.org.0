Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D21DAC35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw6Dmu1qCHucO3BykxNdfcNVqemSuD/+hivWu2ETLnk=; b=JwWE0RI8QkF4+U
	1vYhGUJCmwp0I+7/r0iH9RCSV7RWWJCisUb05xWjTott36G8F6PF7jx/AeDymIDPyZT5sMa25g9C1
	6IOJnte/ZZ6ErCpQGKguFxlfkp1QgoGtdQtvOu18/u0z5WNURDjTmfM/VrBG7z0Y1zOrI9EByyZ/3
	bznLUReuMzTdGtj3UB63Eig8+Ew9pdDgBrDXWHIROAyMYBdlKFMSjWI9C0rFK79Pf79sJXBlaIz3d
	0HlFYYt6GED/V2bV1N1iBXviKZpU146OExRSM3tY1VY83Oou8ponsGbPx+Y3Vgu2hm2Ry73qLCfH3
	ul5GLT8xk98jGaQ4xs8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4ts-0003Cj-BS; Thu, 17 Oct 2019 12:29:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4rI-0000wX-Mg
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:26:27 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HCQHmr086558;
 Thu, 17 Oct 2019 07:26:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571315177;
 bh=Bb+NMsmU29SE+RzWfChJoj3IypYlnD56/0aZEsv24kI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=EUEC5YfnjT7iTVhwzcFK6o9lvoalnQMQKcOei5FY7TvLm581iostC/cYgbLDFAjSf
 l2TpaEQIRiwfvSxgL3id/s0/v4a4sAa6W/tuRy6tj5f6kWRlwKQrj4SIvaB3sZoF++
 L4QwuhQn/ORr7LNOfWLj4pyBTTyZOE/sWofpVun4=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HCQHI5016697
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 07:26:17 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 07:26:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 07:26:09 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HCPxNe073246;
 Thu, 17 Oct 2019 07:26:16 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Date: Thu, 17 Oct 2019 15:25:48 +0300
Message-ID: <20191017122549.4634-10-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017122549.4634-1-t-kristo@ti.com>
References: <20191017122549.4634-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_052624_966967_369A3105 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently crypto_wait_req waits indefinitely for an async crypto request
to complete. This is bad as it can cause for example the crypto test
manager to hang without any notification as to why it has happened.
Instead of waiting indefinitely, add a 1 second timeout to the call,
and provide a warning print if a timeout happens.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 include/linux/crypto.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/linux/crypto.h b/include/linux/crypto.h
index 19ea3a371d7b..b8f0e5c3cc0c 100644
--- a/include/linux/crypto.h
+++ b/include/linux/crypto.h
@@ -682,8 +682,15 @@ static inline int crypto_wait_req(int err, struct crypto_wait *wait)
 	switch (err) {
 	case -EINPROGRESS:
 	case -EBUSY:
-		wait_for_completion(&wait->completion);
+		err = wait_for_completion_timeout(&wait->completion,
+						  msecs_to_jiffies(1000));
 		reinit_completion(&wait->completion);
+		if (!err) {
+			pr_err("%s: timeout for %p\n", __func__, wait);
+			err = -ETIMEDOUT;
+			break;
+		}
+
 		err = wait->err;
 		break;
 	};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
