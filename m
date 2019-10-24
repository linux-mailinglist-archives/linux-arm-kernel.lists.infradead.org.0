Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B7BE340A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itD4O9wy2NyOIrLJMFnxh8jFzQmkibLxZyZHwiKXauE=; b=e/7L/36jW/F1i+
	2AZKdBmSk3N2+2PYTuwhr0tlIxclAbOWJLt+ppa9fsO4dVfYe3XvA8j395cfKCwmy0BtDY20VlsfS
	vgN23NBLLQTQ4fjCSDIeap+CBExCVR3OC/N0Y9WOgIhgHyBvh6+qth+gg30Spmgf/OhIq3TG7Q4iJ
	OdpajEyBHPLMqLRMr5kxWTeEzN6J0d6MT559FmSbsz8icjlG9Xd+mwlmgZSBQvihCbqI1J5k5mmTs
	ubaqeLSiMAUCM3me2T3kuWR3F2MMNXPkuN6pFPUm+Mq0rSJGD3nexTSyIKmqDiCzzWgB7WmVBDpJ4
	naOGt11m47hL2VKJ8qcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNd6n-0000sP-FA; Thu, 24 Oct 2019 13:24:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd5p-0000PV-1w
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:23:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so20841803wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TNWJxh1AFEyP6kvtb+pRqQQilO6T6qX/8rJmhhrHLY0=;
 b=S2eThVk83dKO5Bwg3yDm/gzVGNto7qsth4WMLLOmiYJINz7Qibs5lDhZH4pMHelfff
 UI55mx/5I/os0vKVwqaNYzvodYmhm3q7elBYzBwxmPBD/GiwrKVqX7DFhWZBhSZqTfDb
 KjuRWogf+5wecIavxAAFgv75+yn7OshRyOO5VWsaZJg6YRdu/S6wV2oaeWIGvn7xkyT2
 GYlxYl4QmaiC54ujOPw1nrH935qPBMI4BffDjb+GHywDtacfw4evwSNKQ7ue/25jsr1U
 TWuU7+hKvJpl0M+XfxDx5PBJ128PVg0jtARNCF0ugFpEeUzQLDYVTl90UMFXe0QRcLoa
 i6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TNWJxh1AFEyP6kvtb+pRqQQilO6T6qX/8rJmhhrHLY0=;
 b=S6u/Yz/BYmjO3j5pxjyvpw+Gig7obMhLFwXjOIP37iGgvQU3Tzq+yU4g1FdZbHeD81
 tuKbvF4SiBl9IRbx8dmCwcveQ54oiwmBERnlhkkdq0muIvrahlNS5qe5YXtfI8Yptruh
 ZPbQk/gEFO+a/H5UT1Ok8iaHNSa3hxd1McIw1HSb5ygk5P+mSP4lOUN8W6cOf1gvoxF/
 n1CnPUphnR51EKDNw12f/0f4bBaZe2OyJx4EfLYngy95CWE6NjD8V52o8rSU9Hogd03L
 zCf+q6xyi5yosqxjOfMNMo0rkKGPoQBrvmx7pLoWfKa09tP0TNntWvY2SK1FyfMTSzKR
 OSwA==
X-Gm-Message-State: APjAAAWhGFrAY0/wmsOBZUAR/cSNZTQEHfxFR0Gjjh+jNT5VorctyWtG
 89AP3xCjfkTYu8zWN2K0fuzHBQ==
X-Google-Smtp-Source: APXvYqyc+CLRulk3KGzezXZq5tnbXiDOqAyJFEZa5vrUyaKiixpSFHdiZydqrTrm/pESPS4zfHYTfQ==
X-Received: by 2002:adf:e886:: with SMTP id d6mr4021372wrm.188.1571923435313; 
 Thu, 24 Oct 2019 06:23:55 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:23:54 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 01/27] crypto: virtio - implement missing support for
 output IVs
Date: Thu, 24 Oct 2019 15:23:19 +0200
Message-Id: <20191024132345.5236-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062357_093515_3D980D3E 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
