Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8ED6268
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLOvY+8XZX3UWGmwNIz2FlaI4y/vZnv1lpJ5sSwmQyA=; b=b+HOCM7h0QP6u2
	PRlXQpLTJ+za7v8bdAlywSNOMN93N5ly9h/7iusAwKfoV1QR22e7V7RhxBTL2IDvHMd5EKmlxoI08
	70AFm0DqyhHxY7ojExRNyo9q+wIkmrIwMCHm4zRKEMu1maaE/F5gABhtKk5ZCl71sUOpIFgfcCNGT
	KpVthxX2er/GnPYRB5YvpimF/Wnu9G4tt3mMceNxpWmmC1zo3S7ePEpPM6BbrBD4l5d4H4r97kpaK
	dDDj7zierVVi5I9+kg6tnsPvY1Z5AESjuKLVdIYPfPm4VXP6Mck2BCIiC+8THsV3QPZZkmMLQuAUK
	+gd0qAj415GazENgvRnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzMj-0005NZ-9y; Mon, 14 Oct 2019 12:22:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKR-0002qt-Hx
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 12:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lIZcqfC0xhMTbTw2eMsrTKpkwPVrbw6wba0eQebSEA0=; b=RxGskr1lXt43o9ntFGx7HqFnCn
 Xo6Efl3GwOgzZ92sgdPmZFgLfq9VPAYE0RShwUADkkLaWCijHT7IV7KAZ/hyvRKpHK1C13kjupUne
 S/TX6skCMuboQnhTriV65Vqb3OOjLRC07qsoLtrVIVzatlEFWgxBGA0VfJn74LEwmzeUR+/Ulk6mb
 TUs+qCkSsv9MV6cO3jCg4OKRZMnqV0vCUMsrQuJyVqQ6VSBzHSELTkTQc7Jx9W1UnNjzudBebtCYu
 f5/wQ9/0R1SDKQTOY59PX9/cryOh9Fz4HyIMswT1MGyfNWR6wAntAvefi/HlntLDrvqz6HejK72KE
 XB+ea4aQ==;
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKO-0008DP-Ei
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:19:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id z9so19458452wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lIZcqfC0xhMTbTw2eMsrTKpkwPVrbw6wba0eQebSEA0=;
 b=nZpjXYJnxtwxCKRKWxEQ0A/+tBRKo8pczz3RbQtTpz9oqHH8t36+Nnfu8MxBxi49BE
 98lTuISguCQ80IBNglY4jCojSjc1lnY1ziCEJDXEZCRc666Id0e7tKid0t2aXL3xCaYH
 mdb66mauI690hAoJ5hwoSQWMx7iOwk49iHDqhkG8kR24QnCsFEvvv2jAREA9/S1vrO5O
 o11qLRpnfyGPhRcB+OU1sYfhN54glqhQy8orOcqsc6iOukW8nn59KQFTd6CgSRzie0EB
 2f6k1P/K4PUrB1Q5n+GvkeldX3avoUUb5Jc27ty+SMdhgHqW/W43IBXscYxxFyYYEiMM
 p2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lIZcqfC0xhMTbTw2eMsrTKpkwPVrbw6wba0eQebSEA0=;
 b=BgnwnWWZqqRK4XZwjPU98zYqEvLCuGhDBAqUOCswXCrBzgfjN9G8i3YHvO4l+z04J9
 Kue7DjTFxkJ1q70Zg+nvhkBSppE9Y1qTHTdNqEiv5YJHIpEz3uQlk6fAAerWgpglZZnV
 ItToTTBQoahjgI3R6i8RM98TAkyIxPkaSyDZ0jgNJeZepuwFkkPyelCXs/Z7lgqioQ1H
 ymjOKHrEHNBLYF1KZyiW6oevUjYwtql62AFT4L3i44nnnCX4GNq9YmcLQiMSdj73ImNZ
 CatHVj5exRKTAkTeMTMb+iiIJGS5F9aPmZ3gjmgj0Frl9cGa2Us+VT+9eu2LOQHsMoaT
 HsXw==
X-Gm-Message-State: APjAAAWrhkMjKNg3I8rlNfkH5ShAw8UA8Or9cWmpgI7SXOsJGw9koGX+
 Q8OJPBoVufsRcYXakbi3/MtTLA==
X-Google-Smtp-Source: APXvYqzGV4X4qEN65JI0UtuXky4UjVLQKcb/mtgrnjRV07EgNyRzR2OjAopWZAtnlkgMNXYXrPaoTQ==
X-Received: by 2002:a5d:5444:: with SMTP id w4mr9302645wrv.18.1571055590020;
 Mon, 14 Oct 2019 05:19:50 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:49 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 11/25] crypto: nitrox - remove cra_type reference to ablkcipher
Date: Mon, 14 Oct 2019 14:18:56 +0200
Message-Id: <20191014121910.7264-12-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
