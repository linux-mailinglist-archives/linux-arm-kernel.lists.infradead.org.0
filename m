Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABD3D625E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuItMDaDEPiRVSsVZO1R/BFB8qdB3LA/2QgrLjLEUls=; b=qBPAJ7wajItOJS
	tpZJ/GfHiZe9Kp1tl4EcVloxst7QN/eGPnhR+IpcwnDwV+gxc2ukET8s3KouwTJE4bEcEiPNomtPh
	uezMnpgc5+jq63x/vaGwsHC2wzvIO1b1I5W2BuT50tOHcrafIuiEAyWryy8RjCmuML2reip7gMbkX
	abVA91f+ZZ1ZQ90UaIUvYsJ28kq+C++6FHVwMeolI0cqSnowz4nndz2VISTadqJw5k4DYqWU/RCiG
	61kpL5sqfOaGRMaiyQpufFXrXtUIvsC+eMUSm3cV/PkDl2wI+C1dNavLE5ygamHVzzURaVi5yVnAB
	YjIOfFuoUCM+Gj1A1coA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzM7-0004qU-PT; Mon, 14 Oct 2019 12:21:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKA-0002bx-41
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:19:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id y19so19494691wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n1CZfuSwOBWiTJLsXGGXKsTYggjtyZaieumQoTW6nsw=;
 b=WQDpJP0AB2+YAQR1rinmfn2OHo20KqKocZkKU1P4qbhMNSqnEQxDm7ujDtekTGWoKg
 iAbuFNCd7tNmXbdKJX/sQIpUbX06YbYtmwjKKZ3WZ922rxEvoe509/iRhkeFegq2XU+c
 IWfX6G9vZULPAHKXRvwYvuAq+JWfw+Cg0qn5gTclmfQd7d2jOLvBLptWubPpSGrPuJtm
 MyKVwdi30mvGTTs/ZDV4HKJRklkhKJoE5lqO9h85PuH6siyR4oBfyBHLdVyvcJMpgWSj
 wk2N1Fq9cHSSberQMlsNRrCGweZ3ZGhJUzYCN5i5C50rx1IkrHVOp1M4Y8HDMpyanxtd
 Poww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n1CZfuSwOBWiTJLsXGGXKsTYggjtyZaieumQoTW6nsw=;
 b=PCn8QBP31gW02Ajal01f6N61CIQ0AU7I7TtZkc2NjQjYCfV7cKyi+rA/bnMN9CNEQM
 OwV5H/Gk9SlpxgfZXyIv3zNz21Gerao3J8GKjxKv1KFN6rL5q0SEmaXwPiDY60EBPZL+
 v7KJgg/tdo2BWqgQJdhS+AwBdMayEuHHnkdDKPqL89ZWUmZ4GZQStzDGIla29a+pA51Q
 ZZSw594bi8w/YtAGtUfuSi99LhQTzIRqXa6u9yd1ZXZvS77eqO92k/+DZ4F13pW9liR0
 3WEcDxZbAZAGepuA/Vm+tM27/016KOYNY18qQL8ba1DXhBsyoGRT61cnp3naOCBhqas3
 c5wg==
X-Gm-Message-State: APjAAAXlWvIKpkUldjxpjz/17ZicmayTLfk41LFMqaSLMUaINnbKmF0P
 eX4EVoUTNFyjRBaDlU1U7i8QKg==
X-Google-Smtp-Source: APXvYqzoEtqODKLCo2JUzVBBzE0BRowy8qYR0MKr1lrYu5U8xeIZMidm7JD1uPc3S36eCeyM0gJb8Q==
X-Received: by 2002:adf:dbcf:: with SMTP id e15mr26156311wrj.134.1571055579522; 
 Mon, 14 Oct 2019 05:19:39 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:38 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 02/25] crypto: virtio - deal with unsupported input sizes
Date: Mon, 14 Oct 2019 14:18:47 +0200
Message-Id: <20191014121910.7264-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051942_208332_575FBCDB 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
