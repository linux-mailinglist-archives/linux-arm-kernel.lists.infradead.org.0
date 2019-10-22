Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7B3DFDC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 08:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=23tC46nYDUNX5Q3VI0hDl39cCCCWnasLESDs1a+4RxA=; b=YMCoktAIP+vSnx
	U5td2cnCWL6TfZVAwNFjmAVO5qfdcsAbVN2mZ+EpImD9wPheTMltijSRruVqPmhsZQ8oSgilxh3ET
	kBRLU/6RbUKs5A0yr6uC4cOm0kOQZLPqPxFTGf+ZVF/fxePKQh43J0q6vjBQRs08MTu3yP8FNTUnj
	vjiI/XYnVD9v+cIuZoxkFHdNUKtR81tMaa6zej9G3ESacpR62RQYXgV0jlh4poqn17UBWjEiViTFk
	oVpAODvYecw+3CdkT9OWWatXe4gR0Kujc+Y8DcBqGrio+Siz4XWJjliTL729E4YSix4mvLgnat3B/
	2MXdyYzdseuvxtF3Q9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMnsR-0002Qn-Ax; Tue, 22 Oct 2019 06:42:43 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMnsH-0002QL-94
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 06:42:34 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 79113D38A5E1D6BEEF27;
 Tue, 22 Oct 2019 14:42:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 22 Oct 2019 14:42:20 +0800
To: Herbert Xu <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <catalin.marinas@arm.com>, <will@kernel.org>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH] crypto: arm64/aes-neonbs - remove redundant code in
 __xts_crypt()
Message-ID: <a33932c9-2975-4fcc-ba07-7c54df4eae27@huawei.com>
Date: Tue, 22 Oct 2019 14:42:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_234233_489367_59416D41 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A warning is found by the static code analysis tool:
  "Identical condition 'err', second condition is always false"

Fix this by removing the redundant condition @err.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
 arch/arm64/crypto/aes-neonbs-glue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
index ea873b8904c4..7b342db428b0 100644
--- a/arch/arm64/crypto/aes-neonbs-glue.c
+++ b/arch/arm64/crypto/aes-neonbs-glue.c
@@ -387,7 +387,7 @@ static int __xts_crypt(struct skcipher_request *req, bool encrypt,
 		skcipher_walk_done(&walk, nbytes);
 	}

-	if (err || likely(!tail))
+	if (likely(!tail))
 		return err;

 	/* handle ciphertext stealing */
-- 
2.7.4.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
