Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12560DFF1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jg6+aoX0kPx+oi0/P4c9LuGGELSi97xnaSHERFHkkOQ=; b=jat3XfIOqw+1MJ
	/j6otQT9cl13A3gfecKGPez0bvU5yk3XczAlbGGZPeTID87eq2r0PwPNr1vVWPOiYrQcpbuCOZfDb
	NGjJ4fH0asaaFIXfpYThX8wxGDBb/P+pSNjJT9fGrPJX7XDxRv4L1Tm+Eqxrcd5G8xdcvB/b9uAMS
	vUO5cLzVYTt7j+82BpqOhMjqg0accs5Y2DDi7T3u+9K9eQ9EukOvpB1MoZYH9gqkgqroL52vC1IVN
	hn4at7si771XRU1bt8+QAOoWHFXRd879BjO+z7xOkMB9dv2fcBdR7RZi6dhEYmy1N+YzBUvEDWHEx
	S7Hs9Xj3N62c66snbhiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpGe-00075p-Uc; Tue, 22 Oct 2019 08:11:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpGV-00070L-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:11:41 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CA90B8E4C52B6E750235;
 Tue, 22 Oct 2019 16:11:28 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 22 Oct 2019 16:11:23 +0800
To: Herbert Xu <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <ard.biesheuvel@linaro.org>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <hushiyuan@huawei.com>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH v3] crypto: arm64/aes-neonbs - add return value of
 skcipher_walk_done() in __xts_crypt()
Message-ID: <aaf0f585-3a06-8af1-e2f1-ab301e560d49@huawei.com>
Date: Tue, 22 Oct 2019 16:11:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_011140_302703_33FC884E 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
