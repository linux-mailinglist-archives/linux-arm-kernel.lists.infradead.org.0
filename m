Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1A3E340D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuItMDaDEPiRVSsVZO1R/BFB8qdB3LA/2QgrLjLEUls=; b=rxinQ3tC+ge5VH
	VosoalaWf/1DosxDKNnzll/DuyUPJNUuNwizZbLo+7FNxTo9Qu00EdhfaQlyV4qOC01A1qvIQI+Ma
	LVPe8tBLi+oRBuuloEwJl7Gndcm/R20b4+K9WERtN0UkrFctFN/49C1Tql/h0gqVZMyMAfQcE53R9
	5vF6LHwmhGxwT4idxO1NuMVhlw/N9NTxyUNNqG8gMp4ZJmBsdgBlzayH4qxkJmhirS0b+vWLX6Opb
	5RF7hjac1tNrNuVazh66LFWCMBNoTv3T/EdwoIv8SmrBY7NVLES6vQ/G2FzhArciPNvk4FKEzz9+y
	uJ9sysfzASV9HIBbh7zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNd7B-00019h-6a; Thu, 24 Oct 2019 13:25:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd5q-0000QD-Po
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id p21so1390584wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n1CZfuSwOBWiTJLsXGGXKsTYggjtyZaieumQoTW6nsw=;
 b=a9bSL+5/vXArpFGMdZBpm2T2ibvGHxT0RE4psOfP7d5NBAT+S87j+/oqiBatWysEkL
 kn7q3XuaODmBXB+3LwnsntgHwm56Y1ztfBFP0yqKTcmfHlqkuDe8ovw1sA1hc5kd57JO
 u8Ak//10fgCr6Mm3FaEZuBQdKM3COSEvlFdzm8IC1x/y3m9Ihrv/yxQgxutnY/g5jcOt
 WHfH/KT8reM6VDTrsoDEvUnMxcTL43KH8aoYux8cYXKb0qOogFPlsZb/grPu9I3I2dRx
 R+15WXBQxw9Y9PECCW+oCJlXTjFa3ScZneGVhbiSeQ3h1CYsluF43MWS6chfD96dWXBc
 QQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n1CZfuSwOBWiTJLsXGGXKsTYggjtyZaieumQoTW6nsw=;
 b=C32J+6+eY2GQ/dtXaNe2Smklj8Y45Z/8bdhOBBzsKdm3E7BnhqGDWJP1c5Nq3sNTcl
 faYXdfUC1LDdgO1FBq5+UnrloKzSAETzDFgf9SCzJvHx5iOc091qgwsDhEgT/+DY+S0v
 VTW1loOXDEGMaqghevZbw9ai52+VQ8JDZam/v+sgkQtyDyGXIbxY2UBLaLBTFa+rOrhZ
 rp5InytnjLaEbwZQQR5aPUnAzNcngROUjCLlbGpcx3cOkBZ/05lsko4hzZlju23qgvHS
 qeKc1VUJj/djir5/WwX7yckNqj3WBZVjCv7JDQupk2Vf0XLs3+gwSc/yFweciv0S4Epz
 rTNA==
X-Gm-Message-State: APjAAAWQSHgsQJW/9OEI7dOR28vr0TL+6tFnoub0IiCBLDZlGo7Xckrq
 5n93SZcBKp7VHeFlR2sAGpHx/w==
X-Google-Smtp-Source: APXvYqwHtc6EgZfQ0QDGwcZ2Q95eSng9l7ZYxmVHvCtz9rcd14RvSZ98geGqKgL1Tay0isfdqki/1A==
X-Received: by 2002:a1c:4489:: with SMTP id r131mr4687908wma.132.1571923436836; 
 Thu, 24 Oct 2019 06:23:56 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:23:55 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 02/27] crypto: virtio - deal with unsupported input sizes
Date: Thu, 24 Oct 2019 15:23:20 +0200
Message-Id: <20191024132345.5236-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062358_832828_3FC4EA56 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Eric Biggers <ebiggers@google.com>, virtualization@lists.linux-foundation.org,
 Gonglei <arei.gonglei@huawei.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return -EINVAL for input sizes that are not a multiple of the AES
block size, since they are not supported by our CBC chaining mode.

While at it, remove the pr_err() that reports unsupported key sizes
being used: we shouldn't spam the kernel log with that.

Fixes: dbaf0624ffa5 ("crypto: add virtio-crypto driver")
Cc: "Michael S. Tsirkin" <mst@redhat.com>
Cc: Jason Wang <jasowang@redhat.com>
Cc: Gonglei <arei.gonglei@huawei.com>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/virtio/virtio_crypto_algs.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/virtio/virtio_crypto_algs.c b/drivers/crypto/virtio/virtio_crypto_algs.c
index 65ec10800137..82b316b2f537 100644
--- a/drivers/crypto/virtio/virtio_crypto_algs.c
+++ b/drivers/crypto/virtio/virtio_crypto_algs.c
@@ -105,8 +105,6 @@ virtio_crypto_alg_validate_key(int key_len, uint32_t *alg)
 		*alg = VIRTIO_CRYPTO_CIPHER_AES_CBC;
 		break;
 	default:
-		pr_err("virtio_crypto: Unsupported key length: %d\n",
-			key_len);
 		return -EINVAL;
 	}
 	return 0;
@@ -489,6 +487,11 @@ static int virtio_crypto_ablkcipher_encrypt(struct ablkcipher_request *req)
 	/* Use the first data virtqueue as default */
 	struct data_queue *data_vq = &vcrypto->data_vq[0];
 
+	if (!req->nbytes)
+		return 0;
+	if (req->nbytes % AES_BLOCK_SIZE)
+		return -EINVAL;
+
 	vc_req->dataq = data_vq;
 	vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
 	vc_sym_req->ablkcipher_ctx = ctx;
@@ -509,6 +512,11 @@ static int virtio_crypto_ablkcipher_decrypt(struct ablkcipher_request *req)
 	/* Use the first data virtqueue as default */
 	struct data_queue *data_vq = &vcrypto->data_vq[0];
 
+	if (!req->nbytes)
+		return 0;
+	if (req->nbytes % AES_BLOCK_SIZE)
+		return -EINVAL;
+
 	vc_req->dataq = data_vq;
 	vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
 	vc_sym_req->ablkcipher_ctx = ctx;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
