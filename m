Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270B0E341E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLOvY+8XZX3UWGmwNIz2FlaI4y/vZnv1lpJ5sSwmQyA=; b=qqGrAa/oUt665D
	2NYZ3r6B2efaFx8YK3B+AvFACDjIr4/3QWWQF6hLZ9grHLr5F3Am4/8hs71b3UL0Ng+CEN8YMuGnA
	JBohlu+LwurNhwf1Gakqg4oKu/BaYFNe0KTJI92pwm9j49EZfhOvBXWyVaD4qv4eE6WRPM8Ncj/Eb
	MpOTQakwbifmzLsRdrIroG1p1H1EmE8xJEJwkHS3UipFxFT6WsTaiiDZIIEFL+heqS4UxDyB3TAro
	X36yzbZhfm9bPxEzubNZ0ZxgaDZs9pLpWYRc6Fi9Ord+Heeyq/ZgFtjotQeSiq/xussvK8U2R6FEY
	3X8IFdX7WfOoaOupZrAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNd9b-0004CN-Kj; Thu, 24 Oct 2019 13:27:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd62-0000Zq-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id p4so26083977wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lIZcqfC0xhMTbTw2eMsrTKpkwPVrbw6wba0eQebSEA0=;
 b=HEX+83uxGppuiEYtz0BN0OY3n15lrqBsTgXIjr1kLKborsEFlEAnqjvqySTWN/itZH
 9idihEpi5ygJCZHTUr+Rahl0sdt7awAfiEiiNfh9YQajTDdzI7EGKq4SksUx7HFKsKTd
 eSPMddzNym/6WaTm1xoD0/0cOdAfXjnh0W4TP5yDcLOSCdeHVD/8Z+bgCQEIKJR0UEf8
 pB+wbP6m5eSPhZKwfUGYK1M312r9+ytYS7VphNbLnyOGOayYrPH/O4pS0brzlfywDF4z
 HExQTP6sEthmV8PlnW9UUH2KsOz2a285tPkdU+ZBvp/raUtrnGt50m2PGelfYFYHGILF
 XUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lIZcqfC0xhMTbTw2eMsrTKpkwPVrbw6wba0eQebSEA0=;
 b=rumT5Iu6vQ5/I4miSGMZxuQj6SQHhPiEDzfJs1v4jboWoCQyVigTI7hdwm/tEQjxNW
 ELQLAspaNGi1V2ZMSRP5S/Bjx/AbpreCSq6I7ec9pLYSukS1/SCfVWkvOUK8vY7JllG0
 Yxh/9wO/WbdxTY9i3zIXHBIty3SwW4GbqJhVJU6XNSCP130Rl2qKylaCfq6O9cKJu2uN
 I+dqakHHQrDPDJmJUtJAVq+14jccioKp6Ilq6A5lQS/CmUmVrKOnYUqalnKezurfdZXA
 higMLFkqQsaRJ9YIIsIEeBNlNzsxApr2SmH0QQduGbvG2N//uAmcncyjgIKCkqWkS7zL
 ZtVQ==
X-Gm-Message-State: APjAAAUQLS4D8xWjDQT5jWD4yP8AL/y+YbmGfoa5RflRymwykYlTFce0
 zCMt2u/wSJwL3AlVlVQEOwL5oLgW1AoVJCcG
X-Google-Smtp-Source: APXvYqyiJvR8nSugvtaqqa222EL75kz7TBLfILj8bSxp/C3t2ll5+xsUD6vm0JSO1ClDtKBl4ieypg==
X-Received: by 2002:a5d:4382:: with SMTP id i2mr3957338wrq.387.1571923448698; 
 Thu, 24 Oct 2019 06:24:08 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:07 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 11/27] crypto: nitrox - remove cra_type reference to
 ablkcipher
Date: Thu, 24 Oct 2019 15:23:29 +0200
Message-Id: <20191024132345.5236-12-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062410_859376_F9877899 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting the cra_type field is not necessary for skciphers, and ablkcipher
will be removed, so drop the assignment from the nitrox driver.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/cavium/nitrox/nitrox_skcipher.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/cavium/nitrox/nitrox_skcipher.c b/drivers/crypto/cavium/nitrox/nitrox_skcipher.c
index ec3aaadc6fd7..97af4d50d003 100644
--- a/drivers/crypto/cavium/nitrox/nitrox_skcipher.c
+++ b/drivers/crypto/cavium/nitrox/nitrox_skcipher.c
@@ -493,7 +493,6 @@ static struct skcipher_alg nitrox_skciphers[] = { {
 		.cra_blocksize = AES_BLOCK_SIZE,
 		.cra_ctxsize = sizeof(struct nitrox_crypto_ctx),
 		.cra_alignmask = 0,
-		.cra_type = &crypto_ablkcipher_type,
 		.cra_module = THIS_MODULE,
 	},
 	.min_keysize = AES_MIN_KEY_SIZE,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
