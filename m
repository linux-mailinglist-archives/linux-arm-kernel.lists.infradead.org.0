Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0C1F3D34
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=riV2L8MyeQvpDeEdPkmZlCdFeGafBPYRfJ+03GOm7UY=; b=XEszg/3h+835vZrZ7481aruieu
	OTEO9TETBQ8NtkUnLVXV6XlXynjs2uTTKbFdQQENWLrHdF/cKWWwQ59qgUMAHBw+OE6cYoGhkG8JO
	57iOcrQuRbN2euwWOAmv+UXGo2XO8kyUYPwv9CGugnSiXD5+Y2lADwmpCdDi7pLiNv9BjhUUmErg0
	4gBwaDq7IyyRc69mLJJT6MmCVJ6kKPZb1aHfKFCuJ8LKJjvvJeW3DLk1sUvzlWZzwdEmlVaM0sTIb
	OnOZ9X6yLov402SaxdZtcZfRWQhqAc3dIxhQRFu274e5CMaVMvMLS/8yc2MniDX08o0YT8j6eAXIs
	xXoyETlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiee1-00033a-RL; Tue, 09 Jun 2020 13:50:26 +0000
Received: from out30-133.freemail.mail.aliyun.com ([115.124.30.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiecn-0002Mc-L4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:49:12 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R911e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07425;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=20; SR=0;
 TI=SMTPD_---0U.4eknk_1591710542; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U.4eknk_1591710542) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 09 Jun 2020 21:49:02 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: herbert@gondor.apana.org.au, davem@davemloft.net, dhowells@redhat.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, jmorris@namei.org,
 serge@hallyn.com, nramas@linux.microsoft.com, tusharsu@linux.microsoft.com,
 zohar@linux.ibm.com, gilad@benyossef.com, pvanleeuwen@rambus.com
Subject: [PATCH v3 8/8] integrity: Asymmetric digsig supports SM2-with-SM3
 algorithm
Date: Tue,  9 Jun 2020 21:48:55 +0800
Message-Id: <20200609134855.21431-9-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
References: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_064909_906230_03EE1F4A 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: tianjia.zhang@linux.alibaba.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 linux-crypto@vger.kernel.org, zhang.jia@linux.alibaba.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Asymmetric digsig supports SM2-with-SM3 algorithm combination,
so that IMA can also verify SM2's signature data.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 security/integrity/digsig_asymmetric.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/security/integrity/digsig_asymmetric.c b/security/integrity/digsig_asymmetric.c
index 4e0d6778277e..9350fcfb9bf2 100644
--- a/security/integrity/digsig_asymmetric.c
+++ b/security/integrity/digsig_asymmetric.c
@@ -99,14 +99,22 @@ int asymmetric_verify(struct key *keyring, const char *sig,
 	memset(&pks, 0, sizeof(pks));
 
 	pks.hash_algo = hash_algo_name[hdr->hash_algo];
-	if (hdr->hash_algo == HASH_ALGO_STREEBOG_256 ||
-	    hdr->hash_algo == HASH_ALGO_STREEBOG_512) {
+	switch (hdr->hash_algo) {
+	case HASH_ALGO_STREEBOG_256:
+	case HASH_ALGO_STREEBOG_512:
 		/* EC-RDSA and Streebog should go together. */
 		pks.pkey_algo = "ecrdsa";
 		pks.encoding = "raw";
-	} else {
+		break;
+	case HASH_ALGO_SM3_256:
+		/* SM2 and SM3 should go together. */
+		pks.pkey_algo = "sm2";
+		pks.encoding = "raw";
+		break;
+	default:
 		pks.pkey_algo = "rsa";
 		pks.encoding = "pkcs1";
+		break;
 	}
 	pks.digest = (u8 *)data;
 	pks.digest_size = datalen;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
