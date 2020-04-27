Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4201B97A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIS1gNAnk1KdVFajDT0kiVwu4781PRmRLLGS24c+wjA=; b=Pj2W9o0dtv4k51
	0+GMAZjhgDN9ofs9StvF8J9U7ocRp0CsE+Qv8j1C9DJzaPp9lam8hRcMC8N/x8bXIZaChBeXlQaFs
	taz2k2CINE7HQ6wLdr1IGUCnJEcbtyvLIu9xvsZJpA/6l1ScFJHgpz+0nzSPxOzVYul1Dmub7l38b
	lj9uZ+8Tn6tB7gDalG55zinQY32deJvUKKFPGadgYSakSWHco0X5k5M4K2Q5O7nyzmssRyTBTjUl4
	7eiYfx15njMgGMDv6y6yKsMaeBhStR4ux/iEuKoTCL2MY+31k9iTCYqAyHYFlHQsWnBioZkLfFAr3
	fBzc5m4xgUNJPoDoPjIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxUb-0005qr-2V; Mon, 27 Apr 2020 06:43:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxU2-0005c0-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:43:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03R6cO6G024040; Mon, 27 Apr 2020 08:42:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=lh1kBYgL+JLuoCQaaOo5FYMEjoKA0Zs0ybVKkeHad0s=;
 b=eci8SxyS83Z1lVviB+tuVkqLFpMh+zwi0AEZGatqH2sQ9FAqxu2M7g+2A6oSgZ3Gm4GN
 mTJUhpBAUVh/xf1WX0VSTowK/ONKfTj2aWFjwVf/1Q1DuLoMM3/rU1sJ9Q7yRmW6hun7
 Bqmx2Luc07UgcJ1sbHHs5AmXmB193dQiBR8bIHm1lMpNd7x3yPStqKKdm/g/Q+TpcrRG
 2XzHOLf979Fqk77FjP560ci6aMT5pyfcZx7wVj8/IZodcD1j/mVs6XcdPfPzs9pmtq98
 E1DPmXG6+kZqHtI7hxL3GrB70hHWvvQU+acbS3IjpA0p1bY3y3a7vXHn5//klolzavCi LQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq5r2h8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Apr 2020 08:42:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CB560100038;
 Mon, 27 Apr 2020 08:42:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B92AB21F679;
 Mon, 27 Apr 2020 08:42:58 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG7NODE2.st.com (10.75.127.20)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 27 Apr 2020 08:42:58 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, <linux-crypto@vger.kernel.org>
Subject: [PATCH 3/3] crypto: stm32/hash - don't print error on probe deferral
Date: Mon, 27 Apr 2020 08:42:26 +0200
Message-ID: <20200427064226.6991-4-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427064226.6991-1-lionel.debieve@st.com>
References: <20200427064226.6991-1-lionel.debieve@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG7NODE2.st.com
 (10.75.127.20)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-27_03:2020-04-24,
 2020-04-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234314_976599_86E45ECD 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change driver to not print an error message when the device
probe is deferred for a clock resource.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
---
 drivers/crypto/stm32/stm32-hash.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 0d592f55a271..03c5e6683805 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -1464,8 +1464,11 @@ static int stm32_hash_probe(struct platform_device *pdev)
 
 	hdev->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(hdev->clk)) {
-		dev_err(dev, "failed to get clock for hash (%lu)\n",
-			PTR_ERR(hdev->clk));
+		if (PTR_ERR(hdev->clk) != -EPROBE_DEFER) {
+			dev_err(dev, "failed to get clock for hash (%lu)\n",
+				PTR_ERR(hdev->clk));
+		}
+
 		return PTR_ERR(hdev->clk);
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
