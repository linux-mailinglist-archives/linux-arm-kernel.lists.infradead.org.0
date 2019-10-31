Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1D7EAAD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 08:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SdsB4Dolc6Vs98ulrhLN5bZIl9GzpU6cdUK/b/+Xlms=; b=INmoWWPJpSPe1MPo/WBT4dJDRM
	37jfMhCcZi3rCHv6pXKVdpIUNR5mH6v6EzX/TJSeIyFJHuu9elCcnwHMcDf9Oq2PXZ1ZSBI9CQ+e0
	wNZlfBGttaMRax+6HgX6Ek0Vk/dHDUD08pzzQCJnqeWsfPjR0T/90s0nZV+YH/h5ZHlm/MI5xHWxN
	MWuDDvngBCqBhninc9L1kfo/hWtwsXO6ww9uz1Fc/IEUgU9p+sX/f37tAbLNzh/C8RM1HeHPH1ad1
	DWVKQEMr1J/q8c9pkyJ9+TSOhuzaSPqcH1YVFiBvV0KmoR6uUo+X+3c82bpGWwH69flozb04SdWJI
	AZL8Ay7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ4Td-00005W-NC; Thu, 31 Oct 2019 07:02:37 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ4TU-0008WE-Fe
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 07:02:30 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 269BFEE5CC8800A2EB72;
 Thu, 31 Oct 2019 15:02:15 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 31 Oct 2019 15:02:08 +0800
Subject: [PATCH v3] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
From: Yunfeng Ye <yeyunfeng@huawei.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <ard.biesheuvel@linaro.org>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <hushiyuan@huawei.com>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>
References: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
Message-ID: <32b39396-d514-524f-a85c-3bc627454ba7@huawei.com>
Date: Thu, 31 Oct 2019 15:01:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_000228_690532_6DB7E424 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A warning is found by the static code analysis tool:
  "Identical condition 'err', second condition is always false"

Fix this by adding return value of skcipher_walk_done().

Fixes: 67cfa5d3b721 ("crypto: arm64/aes-neonbs - implement ciphertext stealing for XTS")
Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
v2 -> v3:
 - add "Acked-by:"

v1 -> v2:
 - update the subject and comment
 - add return value of skcipher_walk_done()

 arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
index ea873b8904c4..e3e27349a9fe 100644
--- a/arch/arm64/crypto/aes-neonbs-glue.c
+++ b/arch/arm64/crypto/aes-neonbs-glue.c
@@ -384,7 +384,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
 			goto xts_tail;

 		kernel_neon_end();
-		skcipher_walk_done(&walk, nbytes);
+		err = skcipher_walk_done(&walk, nbytes);
 	}

 	if (err || likely(!tail))
-- 
2.7.4.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
