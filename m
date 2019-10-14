Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA5BD6254
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itD4O9wy2NyOIrLJMFnxh8jFzQmkibLxZyZHwiKXauE=; b=Y7W6Fm9YtY33dg
	xlK8sM7B9SaY+JRHPqOzs1TNWYdYO28yq4n95ixD0GoQtGj/Jgf5x/HXLSjVjQwFZ0YMa9A6QcGWh
	ogh444Z93kKyFLMH0BnpOUuOlMmvjHiawqNPl54Y599fv36eGPcXcn1SZm52m7IZWDPCWnAZx8oNY
	oWO9bOyMZPm+WGhb5yjZEnZB4CpqJS24ig+50cMQgxFnjoQcSve+YpNXqhmZ+sPIZNiZqsbqj05Dk
	LyyQfgh0aaOrNBrMrBr2pdorvesNxmOQXrAKGXl4UXJBpej/LE4dKjDy9MTkiYOGK2hjf/c3NkmXW
	x9syOnxFMJhgrT1+GLGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzLr-0004cT-AH; Mon, 14 Oct 2019 12:21:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzK9-0002b8-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:19:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so19456688wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TNWJxh1AFEyP6kvtb+pRqQQilO6T6qX/8rJmhhrHLY0=;
 b=RGejKaLhilxSPep1T8GKNwd/Q7C8PjNrda8JoEtErLf7kvnBTwZv6MAI6dLz7PtSfH
 Xc0ZbIH4yCgnqQF/QZ8kRKM1M9TlpkV7h9fuLbnZtRfjgp1zFtS7HhezB+ejfsfcd/ih
 Qc8kssabtPem2XldE14kn5hRxH1jWbl5rCbr//QNr6RXDHGwxoFk4uTvKhI/i4zKT21e
 n2tN07fsRM4ujN5KvVN44S8MhsHdWSXcqVRQ3qW8zlxl0l1E3Mh9ai+PDNQQQB8jnKob
 b4w1isX5e8XtW8yn9hwPDMsxD6N5vMOQDu84Ikr17EIgPRBXdz5Uz2hqvpUCq8YB2xBv
 NDfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TNWJxh1AFEyP6kvtb+pRqQQilO6T6qX/8rJmhhrHLY0=;
 b=XczKFUoc/xJVpxDEyW2C3Cx+y0k3mI3tqi+Ojf0EeucThE4RlQZdPbMPrIrdR6DU1D
 XYtvMxONNgGeU4y+pBN7wF2g7xlpl8fnahqHTwacByfjVYvhZkcwipnLXt5oKBLHdVD/
 2/VbqtEOnE8nkAtRbteYWo4bsWPXfTsEEQsnL4agGUW+OnRdNM7OYYX9B2WyWE+MLptm
 1N9EEEQnV+MWEG6ncMZuf8gnHTSx3cmbuQDPdyHWDAmVIo8fnV/hM7XoM9JufFvoULye
 C+xG8l1T4NxO1UTqzGJTN3ltY1YnkTyBZk+qR3+lQbZKxTHfu6R5PUltkj0ubD6RCUme
 NZdQ==
X-Gm-Message-State: APjAAAUNnsDjJKAys6eCpa9MjAfv0N4BFe5/C90xSODrDXkildj/vWoE
 1fTsScZhgkI8V3P/Nf1a7TWlR2s04B9N3Q==
X-Google-Smtp-Source: APXvYqzdHoaIj/OJ0cTfxhnuBYveQ6+FMY9yHkd5B79vGinI43FDRZSmVS9GILkDgWfdRJaVncgH/A==
X-Received: by 2002:adf:bd93:: with SMTP id l19mr25110646wrh.1.1571055578363; 
 Mon, 14 Oct 2019 05:19:38 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:37 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 01/25] crypto: virtio - implement missing support for output
 IVs
Date: Mon, 14 Oct 2019 14:18:46 +0200
Message-Id: <20191014121910.7264-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051941_551980_D958FD3C 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

In order to allow for CBC to be chained, which is something that the
CTS template relies upon, implementations of CBC need to pass the
IV to be used for subsequent invocations via the IV buffer. This was
not implemented yet for virtio-crypto so implement it now.

Fixes: dbaf0624ffa5 ("crypto: add virtio-crypto driver")
Cc: "Michael S. Tsirkin" <mst@redhat.com>
Cc: Jason Wang <jasowang@redhat.com>
Cc: Gonglei <arei.gonglei@huawei.com>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/virtio/virtio_crypto_algs.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/crypto/virtio/virtio_crypto_algs.c b/drivers/crypto/virtio/virtio_crypto_algs.c
index 42d19205166b..65ec10800137 100644
--- a/drivers/crypto/virtio/virtio_crypto_algs.c
+++ b/drivers/crypto/virtio/virtio_crypto_algs.c
@@ -437,6 +437,11 @@ __virtio_crypto_ablkcipher_do_req(struct virtio_crypto_sym_request *vc_sym_req,
 		goto free;
 	}
 	memcpy(iv, req->info, ivsize);
+	if (!vc_sym_req->encrypt)
+		scatterwalk_map_and_copy(req->info, req->src,
+					 req->nbytes - AES_BLOCK_SIZE,
+					 AES_BLOCK_SIZE, 0);
+
 	sg_init_one(&iv_sg, iv, ivsize);
 	sgs[num_out++] = &iv_sg;
 	vc_sym_req->iv = iv;
@@ -563,6 +568,10 @@ static void virtio_crypto_ablkcipher_finalize_req(
 	struct ablkcipher_request *req,
 	int err)
 {
+	if (vc_sym_req->encrypt)
+		scatterwalk_map_and_copy(req->info, req->dst,
+					 req->nbytes - AES_BLOCK_SIZE,
+					 AES_BLOCK_SIZE, 0);
 	crypto_finalize_ablkcipher_request(vc_sym_req->base.dataq->engine,
 					   req, err);
 	kzfree(vc_sym_req->iv);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
