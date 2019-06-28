Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2AC59941
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTZCZim316a0/DZMhROx1gZKN0QTWEC7O7/I3wLDSW8=; b=Yy0DzjjddLsHlF
	QB1y0ZPKSi6pi8OKEISqykdKvIqQjU6VNYyCJRHhCpLX+YRtmzDUSdji2vV9QsUzsd3PDI4ftRg/m
	3Rf7Sv8aKh2hTaY+SZgNGPKdjuTaX7wdLzS8LNdkm+VkDzU6RAO5RjSt1bUmp8KtKA00734ntC2lS
	2zWDc+LKLwk00gpc9s8q04plh/zCC8SMDS6R4KuMBn8qozgaYn9mNwNyeoG1WPSf7VkTY0BMWOttk
	LO5+zhfKT++NB8IXEJfWrB76Ulyc3pWLtJrE9+tXeY+yDB+xJkmPNlt9n2O7Mdc0CAXvApXu7jEKA
	6PvWZmFubNTwd3a5TZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp2v-0004VF-Q8; Fri, 28 Jun 2019 11:28:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp2H-0004G1-S1
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:27:23 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5SBQSqA008465; Fri, 28 Jun 2019 13:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=RJqJPwy5FupsECpRr76jUlzOG75dPg4XX7HjL42ex0k=;
 b=EgHHT5K/GSk9XVoJ/wp0aAS6Xf34yhcc2+z0AIY/CmSxGke0kAUgtHmn+fh2J8QK1rNO
 /M+b6oflRD0jc/AiMaMdqUewvZcDzzEvY0tiCs/mDteM2ga/ul4tq3bU+lVWKGRpGfcS
 RUs1VzHcPVH4AzWmeFRyqm+Z7yxPcQxBeCOPl838zckkzU2ktAdduhRTaMX+KYtiOROW
 of5YZw6mO8DwNYWCmhlK3uR0Ny0jFwDhnf4/Ml1qnt8ffGH/RTgCiTyc/tw/G5Syx7t7
 KN/SStbES5BP8Mxktg5Sln0KYBVkj9QPhF2HwGK/DnNtTGifbREnRIhL71+SoobJ5RKW 3A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2gwgny-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 28 Jun 2019 13:27:14 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6F76731;
 Fri, 28 Jun 2019 11:27:14 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E66127A5;
 Fri, 28 Jun 2019 11:27:14 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun
 2019 13:27:14 +0200
Received: from localhost (10.201.23.65) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun 2019 13:27:13
 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Alexandre Torgue" <alexandre.torgue@st.com>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] crypto: stm32/hash: Fix hmac issue more than 256 bytes
Date: Fri, 28 Jun 2019 13:26:54 +0200
Message-ID: <20190628112655.9341-2-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628112655.9341-1-lionel.debieve@st.com>
References: <20190628112655.9341-1-lionel.debieve@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.65]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-28_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042722_205243_99B4CF3F 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Ludovic Barre <ludovic.barre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct condition for the second hmac loop. Key must be only
set in the first loop. Initial condition was wrong,
HMAC_KEY flag was not properly checked.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
---
 drivers/crypto/stm32/stm32-hash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 29519d1c403f..c37d1a336f98 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -349,7 +349,7 @@ static int stm32_hash_xmit_cpu(struct stm32_hash_dev *hdev,
 		return -ETIMEDOUT;
 
 	if ((hdev->flags & HASH_FLAGS_HMAC) &&
-	    (hdev->flags & ~HASH_FLAGS_HMAC_KEY)) {
+	    (!(hdev->flags & HASH_FLAGS_HMAC_KEY))) {
 		hdev->flags |= HASH_FLAGS_HMAC_KEY;
 		stm32_hash_write_key(hdev);
 		if (stm32_hash_wait_busy(hdev))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
