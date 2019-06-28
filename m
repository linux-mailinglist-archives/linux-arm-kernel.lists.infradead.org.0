Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0715592E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZEDa4jqm68eV+VAVmzKaNgJhkqh6oQSPViL/DqLLQw=; b=i+b5Hq+LeYe3ee
	HTRWsSY70v8mPcrCmT7B0RL1pAhnKHBH3AY9jIM5G1msPx6DbHpBTM4BH9SBxINk3dGBn2kF5Dfo3
	jJfnS8rlyVokNdxm8D863JDvYA5CfrxGd/ry3JmyfsgjpRucTFHazJpJX/09IGv4loCtpDLBk95Zo
	OwlbqlSpDCNm81nswcm7tzdqUhXwdVNQY/C+8qLhIa7QjbEWFnBhdIgaUSCcPtx6CVbVScRJUn+lr
	MNsDP3tAPaMGj3ABD3msGvmODoz/WwJvA+Z2H73dJz12e7U7wdSutmEGG04vWvZKfIyQ3gYVzE+4L
	ZjhC22LZd2XbCnfidSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiW5-0005h2-3x; Fri, 28 Jun 2019 04:29:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiUC-0004XJ-14
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:27:45 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RdXp020857;
 Thu, 27 Jun 2019 23:27:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561696059;
 bh=+JcQY1LG9gNG3F7q1r1Itpd36WhWjpw9sV8+qyxk/l4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=DfoAI+m5ulodTcEV/3sZfwocTG9PwdYpPjMlPPX5eI9yxNyyL0ghs3B1Bwrz9x0SO
 XgSxYG4i937bwVGxuiKw/3j7JFGwkvgMeBkOD0nxGh0JUViC7SwccgVsbzAG35sqMR
 b+rRYJJYCFElNx2aOaTE/G3qxUxAlEniGadinVlI=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4RdYl021629
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:27:39 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:27:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:27:39 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4RKPP062595;
 Thu, 27 Jun 2019 23:27:36 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [RESEND PATCH 05/10] crypto: sha256_generic: Export the Transform
 function
Date: Fri, 28 Jun 2019 09:57:40 +0530
Message-ID: <20190628042745.28455-6-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212744_265791_8FD02E16 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The transform function can be used as is by other crypto
drivers that need to transform the 256 bit key using cpu.
Hence export it.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 crypto/sha256_generic.c | 3 ++-
 include/crypto/sha.h    | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/crypto/sha256_generic.c b/crypto/sha256_generic.c
index b7502a96a0d4..583a3c3b93e0 100644
--- a/crypto/sha256_generic.c
+++ b/crypto/sha256_generic.c
@@ -63,7 +63,7 @@ static inline void BLEND_OP(int I, u32 *W)
 	W[I] = s1(W[I-2]) + W[I-7] + s0(W[I-15]) + W[I-16];
 }
 
-static void sha256_transform(u32 *state, const u8 *input)
+void sha256_transform(u32 *state, const u8 *input)
 {
 	u32 a, b, c, d, e, f, g, h, t1, t2;
 	u32 W[64];
@@ -225,6 +225,7 @@ static void sha256_transform(u32 *state, const u8 *input)
 	a = b = c = d = e = f = g = h = t1 = t2 = 0;
 	memzero_explicit(W, 64 * sizeof(u32));
 }
+EXPORT_SYMBOL(sha256_transform);
 
 static void sha256_generic_block_fn(struct sha256_state *sst, u8 const *src,
 				    int blocks)
diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index 8a46202b1857..6e04f412b0c2 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -95,6 +95,7 @@ struct sha512_state {
 
 struct shash_desc;
 
+extern void sha256_transform(u32 *state, const u8 *input);
 extern int crypto_sha1_update(struct shash_desc *desc, const u8 *data,
 			      unsigned int len);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
