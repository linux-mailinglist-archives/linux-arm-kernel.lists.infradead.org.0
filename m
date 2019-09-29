Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FE8C189C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EvERAeEA2CBIyo3Y0iCtvisWB03pl+6V+BOjveEoDX4=; b=sEK2JfYTbUG9Ta1rUhfIucckgy
	8Kc4rWckXYUqEb+R1/LMU/dYPcfVo50OtWzupChlTBsMOQE7wrD/ta7SuwMPEE/P1DhLZB9uL/xkQ
	S4RuMsK64uocHZAZNJUguL39japZd4r3r02+ADybmb2+77UWqTKPkEdnmRal9Mfbt4k2l1PZbKImb
	rXnp1SrUQaVwcXEIaV1c+fx5tcQYbTHsSqrBuBm5Dfg0E215u/WobZwS6CAZ4VbH/CAd93STmtauR
	24ZbfBOeJMby1EkAq3FyzB427F9Bf4tQ6sWwet5tCVTZloA5GwOXOqfDWJCeGqEGv8uMup5DH6uo9
	hsZ7TBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdGH-000884-Af; Sun, 29 Sep 2019 17:45:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdAm-0001bg-9w
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:40:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so8470072wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SLF/nrrv8lSTZbt9Ku9vqPHHl4LDfRMHhQaxtVyBCHI=;
 b=x4ZcydWYB3tHAFOZtwnIIM2Qt3b1XqHyOXefAheahMcIaBY8ZSbFAVyugI5TiFi6NI
 d4XXcEVei8W+aSFKNbrUhDZV3eLOmKwfbCHV/nY4VairfUSErDBExRwZi09npacDar53
 FvT+QX08irIr5Og0AhBGn6WV4MzyRWYOqbPvDPa+HSRiuazkuJvLMe4loaykV5znhNmT
 udceqcnXzcWhLDMDykQUgjsmAyRK3+W3AwDM5qBObgUhltvMGO+NTCDIVDM8vm564CDi
 0xTqALX5nvruhXcs1xTmlj/b45bU8AmIoOlXOh3vu69Kn2SEVwUDbfbAv8S4zAOR07IN
 cKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SLF/nrrv8lSTZbt9Ku9vqPHHl4LDfRMHhQaxtVyBCHI=;
 b=Vn6IzZn/zTWhBZY2eIvyqPNsfq92TsPwnHAbkoZpo1/NfbxTHsCdqZsoZAsd1z4D2z
 HQIlJ9cFavfJ5fSFbE94knrDN8GvFYbzCkPWf1Dk+/7q4auGWr84KLAUCr/npP0xgSsr
 lW8GfMpqkOKczEViCCGuAKSlIKPGQLp5eJyfdSlSDtIp9xbdM1s9xrRfMj9RdWkBDODc
 rPf1FescbMQF+ofjeWgke92puE4pxNsASfn4vFM9sJUGyh9V5lQpvUh2yXACLSRh3+oc
 MbehZ3oLPgDs+Q3gnCejdPEkOPdMGnO5428y9yHGByt8byyhxRzwZNwhkdzSARYaUSQn
 Nw3g==
X-Gm-Message-State: APjAAAVmYEt8ovUMDG5YjZzZ8Mnx5eqTxyIaBZox+7ysNybppXUb1SGC
 YhsNpo+ktlOLtimOChC358pzfg==
X-Google-Smtp-Source: APXvYqyPHeSGpgev+1nI40iZ1cjsgkzJ5WKd00li/OskZGl0W3Evd5imyvMPAa563N0GNXVwpbDjbA==
X-Received: by 2002:adf:bb0a:: with SMTP id r10mr10849753wrg.13.1569778790867; 
 Sun, 29 Sep 2019 10:39:50 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:50 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 20/20] wg switch to lib/crypto algos
Date: Sun, 29 Sep 2019 19:38:50 +0200
Message-Id: <20190929173850.26055-21-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103952_423427_0DBFA9E3 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This switches WireGuard to use lib/crypto libraries instead of the
Zinc ones.

This patch is intended to be squashed at merge time, or it will break
bisection.
---
 drivers/net/Kconfig              |  6 +++---
 drivers/net/wireguard/cookie.c   |  4 ++--
 drivers/net/wireguard/messages.h |  6 +++---
 drivers/net/wireguard/receive.c  | 17 ++++-------------
 drivers/net/wireguard/send.c     | 19 ++++++-------------
 5 files changed, 18 insertions(+), 34 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index c26aef673538..3bd4dc662392 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -77,9 +77,9 @@ config WIREGUARD
 	depends on IPV6 || !IPV6
 	select NET_UDP_TUNNEL
 	select DST_CACHE
-	select ZINC_CHACHA20POLY1305
-	select ZINC_BLAKE2S
-	select ZINC_CURVE25519
+	select CRYPTO_LIB_CHACHA20POLY1305
+	select CRYPTO_LIB_BLAKE2S
+	select CRYPTO_LIB_CURVE25519
 	help
 	  WireGuard is a secure, fast, and easy to use replacement for IPSec
 	  that uses modern cryptography and clever networking tricks. It's
diff --git a/drivers/net/wireguard/cookie.c b/drivers/net/wireguard/cookie.c
index bd23a14ff87f..104b739c327f 100644
--- a/drivers/net/wireguard/cookie.c
+++ b/drivers/net/wireguard/cookie.c
@@ -10,8 +10,8 @@
 #include "ratelimiter.h"
 #include "timers.h"
 
-#include <zinc/blake2s.h>
-#include <zinc/chacha20poly1305.h>
+#include <crypto/blake2s.h>
+#include <crypto/chacha20poly1305.h>
 
 #include <net/ipv6.h>
 #include <crypto/algapi.h>
diff --git a/drivers/net/wireguard/messages.h b/drivers/net/wireguard/messages.h
index 3cfd1c5e9b02..4bbb1f97af04 100644
--- a/drivers/net/wireguard/messages.h
+++ b/drivers/net/wireguard/messages.h
@@ -6,9 +6,9 @@
 #ifndef _WG_MESSAGES_H
 #define _WG_MESSAGES_H
 
-#include <zinc/curve25519.h>
-#include <zinc/chacha20poly1305.h>
-#include <zinc/blake2s.h>
+#include <crypto/blake2s.h>
+#include <crypto/chacha20poly1305.h>
+#include <crypto/curve25519.h>
 
 #include <linux/kernel.h>
 #include <linux/param.h>
diff --git a/drivers/net/wireguard/receive.c b/drivers/net/wireguard/receive.c
index 900c76edb9d6..ae7ffba5fc48 100644
--- a/drivers/net/wireguard/receive.c
+++ b/drivers/net/wireguard/receive.c
@@ -11,7 +11,6 @@
 #include "cookie.h"
 #include "socket.h"
 
-#include <linux/simd.h>
 #include <linux/ip.h>
 #include <linux/ipv6.h>
 #include <linux/udp.h>
@@ -244,8 +243,7 @@ static void keep_key_fresh(struct wg_peer *peer)
 	}
 }
 
-static bool decrypt_packet(struct sk_buff *skb, struct noise_symmetric_key *key,
-			   simd_context_t *simd_context)
+static bool decrypt_packet(struct sk_buff *skb, struct noise_symmetric_key *key)
 {
 	struct scatterlist sg[MAX_SKB_FRAGS + 8];
 	struct sk_buff *trailer;
@@ -281,9 +279,8 @@ static bool decrypt_packet(struct sk_buff *skb, struct noise_symmetric_key *key,
 	if (skb_to_sgvec(skb, sg, 0, skb->len) <= 0)
 		return false;
 
-	if (!chacha20poly1305_decrypt_sg(sg, sg, skb->len, NULL, 0,
-					 PACKET_CB(skb)->nonce, key->key,
-					 simd_context))
+	if (!chacha20poly1305_decrypt_sg_inplace(sg, skb->len, NULL, 0,
+					 PACKET_CB(skb)->nonce, key->key))
 		return false;
 
 	/* Another ugly situation of pushing and pulling the header so as to
@@ -510,21 +507,15 @@ void wg_packet_decrypt_worker(struct work_struct *work)
 {
 	struct crypt_queue *queue = container_of(work, struct multicore_worker,
 						 work)->ptr;
-	simd_context_t simd_context;
 	struct sk_buff *skb;
 
-	simd_get(&simd_context);
 	while ((skb = ptr_ring_consume_bh(&queue->ring)) != NULL) {
 		enum packet_state state = likely(decrypt_packet(skb,
-					   &PACKET_CB(skb)->keypair->receiving,
-					   &simd_context)) ?
+					   &PACKET_CB(skb)->keypair->receiving)) ?
 				PACKET_STATE_CRYPTED : PACKET_STATE_DEAD;
 		wg_queue_enqueue_per_peer_napi(&PACKET_PEER(skb)->rx_queue, skb,
 					       state);
-		simd_relax(&simd_context);
 	}
-
-	simd_put(&simd_context);
 }
 
 static void wg_packet_consume_data(struct wg_device *wg, struct sk_buff *skb)
diff --git a/drivers/net/wireguard/send.c b/drivers/net/wireguard/send.c
index b0df5c717502..37bd2599ae44 100644
--- a/drivers/net/wireguard/send.c
+++ b/drivers/net/wireguard/send.c
@@ -11,7 +11,6 @@
 #include "messages.h"
 #include "cookie.h"
 
-#include <linux/simd.h>
 #include <linux/uio.h>
 #include <linux/inetdevice.h>
 #include <linux/socket.h>
@@ -157,8 +156,7 @@ static unsigned int calculate_skb_padding(struct sk_buff *skb)
 	return padded_size - last_unit;
 }
 
-static bool encrypt_packet(struct sk_buff *skb, struct noise_keypair *keypair,
-			   simd_context_t *simd_context)
+static bool encrypt_packet(struct sk_buff *skb, struct noise_keypair *keypair)
 {
 	unsigned int padding_len, plaintext_len, trailer_len;
 	struct scatterlist sg[MAX_SKB_FRAGS + 8];
@@ -207,9 +205,10 @@ static bool encrypt_packet(struct sk_buff *skb, struct noise_keypair *keypair,
 	if (skb_to_sgvec(skb, sg, sizeof(struct message_data),
 			 noise_encrypted_len(plaintext_len)) <= 0)
 		return false;
-	return chacha20poly1305_encrypt_sg(sg, sg, plaintext_len, NULL, 0,
-					   PACKET_CB(skb)->nonce,
-					   keypair->sending.key, simd_context);
+	chacha20poly1305_encrypt_sg_inplace(sg, plaintext_len, NULL, 0,
+					    PACKET_CB(skb)->nonce,
+					    keypair->sending.key);
+	return true;
 }
 
 void wg_packet_send_keepalive(struct wg_peer *peer)
@@ -296,16 +295,13 @@ void wg_packet_encrypt_worker(struct work_struct *work)
 	struct crypt_queue *queue = container_of(work, struct multicore_worker,
 						 work)->ptr;
 	struct sk_buff *first, *skb, *next;
-	simd_context_t simd_context;
 
-	simd_get(&simd_context);
 	while ((first = ptr_ring_consume_bh(&queue->ring)) != NULL) {
 		enum packet_state state = PACKET_STATE_CRYPTED;
 
 		skb_walk_null_queue_safe(first, skb, next) {
 			if (likely(encrypt_packet(skb,
-						  PACKET_CB(first)->keypair,
-						  &simd_context))) {
+						  PACKET_CB(first)->keypair))) {
 				wg_reset_packet(skb);
 			} else {
 				state = PACKET_STATE_DEAD;
@@ -314,10 +310,7 @@ void wg_packet_encrypt_worker(struct work_struct *work)
 		}
 		wg_queue_enqueue_per_peer(&PACKET_PEER(first)->tx_queue, first,
 					  state);
-
-		simd_relax(&simd_context);
 	}
-	simd_put(&simd_context);
 }
 
 static void wg_packet_create_data(struct sk_buff *first)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
