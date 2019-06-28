Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E2D59935
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QQ8xZmBVYSALXFoDpeWxA4Dx/O4CTdQu4cChv2LUHXs=; b=p/3B+6fzwfZRPE
	a3KEnSKp6wVutiQbWeR3gZlDk507YdyIUQhn7MVrTSO67/93yeXsAUeVv8dct/swvCyaWpzo7jBz/
	EPrDYhE+iAc6JqlYnM5C5fgrrto/ZzI+fD4UxHYk4x1ra3dbYGq415DtKSg2bNB+d7GGue6Odt19t
	q8+iN2M09ZQbakgjNqM9aLlh2X49mv8p96xJ88kuA8GLuJAMBfkIRsdaAVTGA8ax0jOauWGPmg0VI
	rY6I5UU8Qlox8gJOfWFviYE6eYUm5DKLgxZDZwqxjTt+vAn/9/CHR/o0d6rSfmsyM7KuhIKqihJ7Z
	xb56z7V6O5laFAEO2fMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp29-00042q-Gt; Fri, 28 Jun 2019 11:27:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp1w-00042B-9M
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:27:02 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5SBQSq5008465; Fri, 28 Jun 2019 13:26:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=3acCB+/2oJupGcCDZjqJgsqu3sTcxGcFU4Yg5GquxDg=;
 b=O85tGj8z/N9wFxbYQZC0SC8zZsT3lwtB6gFnR0p7TfWfPffAfE+Cdg+Os67QQLFVltNO
 sXVA1yIfOtsHyR11wl+LJQcynvK+Anru79KHuQVBmZm8QUXzC0UMMBouKBcQxTWjb4N2
 pWqRZOFzjnwcNy6cpTeJ2RadVJFBdZ4ZKq3HKgeymQPVFR2sOj5yE3xiBZJDy9rOZknN
 l9NySoh4VwnTwCM7OkEdckylicnr950xl6GzCdiz+z38JTwPeyWRqOhfULxJVahTF3qh
 LWFX989O9YvPTZcU5ADD6qSb864LirR5dqECKjWT0Dr/aVHKZeMnCc2q7KjG9GUu+Wv1 /g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2gwgkw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 28 Jun 2019 13:26:44 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 83F3331;
 Fri, 28 Jun 2019 11:26:43 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2389527A5;
 Fri, 28 Jun 2019 11:26:43 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun
 2019 13:26:43 +0200
Received: from localhost (10.201.23.65) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 28 Jun 2019 13:26:42
 +0200
From: Lionel Debieve <lionel.debieve@st.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller"
 <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Alexandre Torgue" <alexandre.torgue@st.com>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/1] crypto: stm32/crc32 - rename driver file
Date: Fri, 28 Jun 2019 13:26:41 +0200
Message-ID: <20190628112641.9269-1-lionel.debieve@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.65]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-28_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042700_802994_B31B5171 
X-CRM114-Status: GOOD (  10.55  )
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

Use the same naming convention for all stm32 crypto
drivers.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
---
 drivers/crypto/stm32/Makefile                         | 2 +-
 drivers/crypto/stm32/{stm32_crc32.c => stm32-crc32.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/crypto/stm32/{stm32_crc32.c => stm32-crc32.c} (100%)

diff --git a/drivers/crypto/stm32/Makefile b/drivers/crypto/stm32/Makefile
index ce77e38c77e0..518e0e0b11a9 100644
--- a/drivers/crypto/stm32/Makefile
+++ b/drivers/crypto/stm32/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_CRYPTO_DEV_STM32_CRC) += stm32_crc32.o
+obj-$(CONFIG_CRYPTO_DEV_STM32_CRC) += stm32-crc32.o
 obj-$(CONFIG_CRYPTO_DEV_STM32_HASH) += stm32-hash.o
 obj-$(CONFIG_CRYPTO_DEV_STM32_CRYP) += stm32-cryp.o
diff --git a/drivers/crypto/stm32/stm32_crc32.c b/drivers/crypto/stm32/stm32-crc32.c
similarity index 100%
rename from drivers/crypto/stm32/stm32_crc32.c
rename to drivers/crypto/stm32/stm32-crc32.c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
