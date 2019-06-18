Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D054A069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZEDa4jqm68eV+VAVmzKaNgJhkqh6oQSPViL/DqLLQw=; b=HzSKS+JMcHcyO5
	EWfqDVfltiBVoVoXdsPLhlMvtfPPZyLwrPWZXz/YWMNMeYfXBmiVdmfO26kfiDus6IsFwu1vDMFx/
	m81ExFt4lr0XFf7k5FpBHFDQih4rmOG8rN42oX93e6tJHOuclvkzEHnjCrz5VSC++lPh8U8v4cJ74
	nJzyf+sm1zlNazTepwxEFu7Rle4ijhnnHERmaCZZkQMkS5FVNDvWj7Vo7IlxLA+f1ZeyKhbqMzjBR
	cT0yCeQf3f8Ze82S3YmmAWQ+j3AvC6Tk7TnaV+yEgUWa7UYf1QcoepzsS+zgdY0S/6NwRFO8bnkLa
	7c2sUyebMGi09vtBn2EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCxV-0005r4-Em; Tue, 18 Jun 2019 12:11:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCum-0002uH-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:08:46 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IC8R1g077675;
 Tue, 18 Jun 2019 07:08:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560859707;
 bh=+JcQY1LG9gNG3F7q1r1Itpd36WhWjpw9sV8+qyxk/l4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gtQ81my6PjsMMsQ1oL3pz2VY56VKMS6CaTsQjV6qgXXuvxxokS8ZYqKKGhbszV65e
 f/62OQXxXkUo7igM9TS95ojNbAZeXzMrnD0ifexTNuExUUjyA+mS3w0PuXDEA9vBn6
 QoBY/1Y7Xk/rK2a895/mIegiP6habZAgPeAQfITg=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IC8Rnu044677
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 07:08:27 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 07:08:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 07:08:26 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IC89Gd080327;
 Tue, 18 Jun 2019 07:08:24 -0500
From: Keerthy <j-keerthy@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>
Subject: [PATCH 05/10] crypto: sha256_generic: Export the Transform function
Date: Tue, 18 Jun 2019 17:38:38 +0530
Message-ID: <20190618120843.18777-6-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618120843.18777-1-j-keerthy@ti.com>
References: <20190618120843.18777-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050840_998360_590E0592 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
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
