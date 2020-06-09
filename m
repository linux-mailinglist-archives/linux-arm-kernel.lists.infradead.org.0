Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0AF1F3D1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5if/iAqKqZ1imVAghaPZNyMXo8wdbvxsGqtQtY7eO7I=; b=P/Ert2jMjXWhu+4G7dQFiTT+IX
	klF4rGRlJiUmdfu2ay6WXFwoJ3Miwu7veOMC/YXBfCZ457mDVWYuueeWHVe8X3+ZMxAt7jsNnE94I
	t5KYdp3hISdgHMH2UYB0PXL5vuLXTqbG/hYhp7YvcmkUEfOGvWN9cEQzjmfOO1qfTZ+LHLwmmRIiB
	MM6BTVT1cPdvR8lD8XSvXe7mh9uE++A7E4sZW6jgXftW8ZXA361XLwU/Zdbz//YMTy6FPzRmOAiC4
	Mwy9NYBpKc5snNkUNFxB0/d0w1j0pPVqF3w6sKqCOre8nblSG2vmnw1T6EsDwJB+pRhDoikaqi7qV
	OIBkvpfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiedJ-0002bk-MV; Tue, 09 Jun 2020 13:49:41 +0000
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiecm-0002Mh-Nx
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:49:12 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R911e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04357;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=20; SR=0;
 TI=SMTPD_---0U.4eknX_1591710541; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U.4eknX_1591710541) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 09 Jun 2020 21:49:01 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: herbert@gondor.apana.org.au, davem@davemloft.net, dhowells@redhat.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, jmorris@namei.org,
 serge@hallyn.com, nramas@linux.microsoft.com, tusharsu@linux.microsoft.com,
 zohar@linux.ibm.com, gilad@benyossef.com, pvanleeuwen@rambus.com
Subject: [PATCH v3 6/8] X.509: support OSCCA certificate parse
Date: Tue,  9 Jun 2020 21:48:53 +0800
Message-Id: <20200609134855.21431-7-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
References: <20200609134855.21431-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_064909_000655_4E5AAB9E 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.54 listed in list.dnswl.org]
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

The digital certificate format based on SM2 crypto algorithm as
specified in GM/T 0015-2012. It was published by State Encryption
Management Bureau, China.

This patch adds the OID object identifier defined by OSCCA. The
x509 certificate supports sm2-with-sm3 type certificate parsing.
It uses the standard elliptic curve public key, and the sm2
algorithm signs the hash generated by sm3.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 crypto/asymmetric_keys/x509_cert_parser.c | 14 +++++++++++++-
 include/linux/oid_registry.h              |  6 ++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/crypto/asymmetric_keys/x509_cert_parser.c b/crypto/asymmetric_keys/x509_cert_parser.c
index 26ec20ef4899..6a8aee22bfd4 100644
--- a/crypto/asymmetric_keys/x509_cert_parser.c
+++ b/crypto/asymmetric_keys/x509_cert_parser.c
@@ -234,6 +234,10 @@ int x509_note_pkey_algo(void *context, size_t hdrlen,
 	case OID_gost2012Signature512:
 		ctx->cert->sig->hash_algo = "streebog512";
 		goto ecrdsa;
+
+	case OID_sm2_with_sm3:
+		ctx->cert->sig->hash_algo = "sm3";
+		goto sm2;
 	}
 
 rsa_pkcs1:
@@ -246,6 +250,11 @@ int x509_note_pkey_algo(void *context, size_t hdrlen,
 	ctx->cert->sig->encoding = "raw";
 	ctx->algo_oid = ctx->last_oid;
 	return 0;
+sm2:
+	ctx->cert->sig->pkey_algo = "sm2";
+	ctx->cert->sig->encoding = "raw";
+	ctx->algo_oid = ctx->last_oid;
+	return 0;
 }
 
 /*
@@ -266,7 +275,8 @@ int x509_note_signature(void *context, size_t hdrlen,
 	}
 
 	if (strcmp(ctx->cert->sig->pkey_algo, "rsa") == 0 ||
-	    strcmp(ctx->cert->sig->pkey_algo, "ecrdsa") == 0) {
+	    strcmp(ctx->cert->sig->pkey_algo, "ecrdsa") == 0 ||
+	    strcmp(ctx->cert->sig->pkey_algo, "sm2") == 0) {
 		/* Discard the BIT STRING metadata */
 		if (vlen < 1 || *(const u8 *)value != 0)
 			return -EBADMSG;
@@ -456,6 +466,8 @@ int x509_extract_key_data(void *context, size_t hdrlen,
 	else if (ctx->last_oid == OID_gost2012PKey256 ||
 		 ctx->last_oid == OID_gost2012PKey512)
 		ctx->cert->pub->pkey_algo = "ecrdsa";
+	else if (ctx->last_oid == OID_id_ecPublicKey)
+		ctx->cert->pub->pkey_algo = "sm2";
 	else
 		return -ENOPKG;
 
diff --git a/include/linux/oid_registry.h b/include/linux/oid_registry.h
index 657d6bf2c064..48fe3133ff39 100644
--- a/include/linux/oid_registry.h
+++ b/include/linux/oid_registry.h
@@ -107,6 +107,12 @@ enum OID {
 	OID_gostTC26Sign512B,		/* 1.2.643.7.1.2.1.2.2 */
 	OID_gostTC26Sign512C,		/* 1.2.643.7.1.2.1.2.3 */
 
+	/* OSCCA */
+	OID_sm2,			/* 1.2.156.10197.1.301 */
+	OID_sm3,			/* 1.2.156.10197.1.401 */
+	OID_sm2_with_sm3,		/* 1.2.156.10197.1.501 */
+	OID_sm3WithRSAEncryption,	/* 1.2.156.10197.1.504 */
+
 	OID__NR
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
