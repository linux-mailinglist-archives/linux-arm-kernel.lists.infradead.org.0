Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3CDBE258
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPb6CGN+kaxnjB7RIgxzpFnSBHa7IsdvP/KQX6C/7GI=; b=SM7Y728rntrl3b
	BWBrQo66phm5sbQmHRO0YKqfS0bcJANS1xXDdEgi4diBW7G5G8w+mH0EaItDsy216veetOBs1yfv+
	vot+k3ysy1AzIjoDy/6PZhs6/Liigtj7ShFZhflACee9jxdsf+BlXAVVWsBRG1hpxSfZ9M9fbN2vY
	GUBvvXYUlcCGbJutxPo3oep23O+78aFa0lizQIFC/YsKmqALi6WyP51os2X5x8+KlaMp5f1kuUptY
	syvA0KM+K5JDfTao2yhNCE2CNpFpPJifVeTwzmVRO5hFHCt1V8KDdH8rTFXDG3dzP4imDOggPiBY+
	ElCKMCP45Hl4EIlWOjNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDA0e-00009W-SX; Wed, 25 Sep 2019 16:19:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vj-00046c-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5so6427777wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vpYX5apOE5ovWt54wDvLpgCFg3w7Y3yfqWQuF42X3Ys=;
 b=EoCQ8h108o9ud79LK9qo/lEUOOMuQ+8osdvhOyjax1WhpI2184srTIyoMNIe740+DL
 PUcEG2HHc8fCdWvJb0SSJwMZIKVyRKNTMVEsFB/8IU8VDms3Ne0Ef83bLBd2cjCrYtCR
 SRjrANqSyHMKwUfeqL39Bkzo2NRv8UpRkVkvQL1q6pPRCeKZJ0h9J2+OnNwtpoZnCsk4
 QZXfquoD3+tk/HriLcgx5buUFhjTYbb1OVamAfkLtzqaItM7tx+AGUk4nIO73VVcZS1E
 j9+B+x5xSA4YGcEfUl9jsKx6VPygEvioFVenr5YkCjIlbkiIo9ejOO4tZXy3lJXs2H0N
 lYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vpYX5apOE5ovWt54wDvLpgCFg3w7Y3yfqWQuF42X3Ys=;
 b=fFhfxdAtC2Ow+qB+RjYViQ2h8a87/StIxLzIdEcJm9Pi6QfSssWflLJCGZRwp8IUoH
 H+ZBhlKrkBXxoAwk5vJfWuTBeVcTJw4bQApscof+arwTfu+faRjONmRSwKPcbydvoBMw
 FUFrdySJHijC8b5ZqicRmycPCcbaVsKIfkP2NIVjvbOvOKxUSPTGXrRlJgqKsjFjfYDY
 8pEl4/lxE8IBytA3zHAS5n1jMIEQC5p8IP3c8AWNu/kLfLHpzqlGX/th+DldFK3v759y
 wSln/5FWIiit0F81Ty05gyyhYtWBywoIKhbAJF2UkLlHu1LkiONJMxxP7RazHx7Y8Xmn
 VUQw==
X-Gm-Message-State: APjAAAX6D5olEbUnnYoMANi3w+8Usx8Xnqa9FFDAlp/mOPrK9NgbIlI9
 5L8R3YDrKXm8bl97bHAPwlVDcQ==
X-Google-Smtp-Source: APXvYqwNRaBDeDani6z4F3/B9eCXG5mzVV5VhoPg/CU7b5DVTv+fWOO/iUVm1vGry6yb/vakYpaOYQ==
X-Received: by 2002:a1c:7ed7:: with SMTP id z206mr9232689wmc.124.1569428054603; 
 Wed, 25 Sep 2019 09:14:14 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.14.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:14:13 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 17/18] wg switch to lib/crypto algos
Date: Wed, 25 Sep 2019 18:12:54 +0200
Message-Id: <20190925161255.1871-18-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091416_017797_15F6A684 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

---
 drivers/net/Kconfig              | 6 +++---
 drivers/net/wireguard/cookie.c   | 4 ++--
 drivers/net/wireguard/messages.h | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
