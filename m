Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF254BFA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B8kXT2z6dkg8cHT1WDBcExAkH7U7CBEgQfMKzGQGa2I=; b=nOfnmscAAVJ44aGYdYu+Xb1tW6
	zv9qEsUx59BSCiGsTRM/+OOZFqvg+9ZgW+HtwekNiRUMU0w2CWg+hWv3s8AplbXR7L631Wk/pDXZD
	oSsSBXWA25Cpmo0546/zV8wNNf64Kj4EUYmbwxJzLypQV7r/ncqfgImVXduuVBl7IhX+iEUAiDK6a
	ccZlilIB2cGHQq7FsGDx7wHCEn2oL2yam4P39cRnXy9sniz0L9KT31xfotlnNZdTFxDXmS22dHTTG
	jt1cfQnkx+nMkaqhGyBAjljoixr7QpjWWvJ7pqrolqfjo6bz5DNP47l6m4Q7U39gzlpR7mU6OJPpG
	BvUstQEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeQ2-0000Ak-9e; Wed, 19 Jun 2019 17:30:46 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePB-00071X-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so76830pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HbwbF/59DYmxqRT7LuBdinHC/slAn0pZe4OVFN9ATCA=;
 b=YQ94VBRSx9IOZTvrMgeyc2aoRiHejrweqB2Anm16UWCVul15KtGdHE8I2PYHobpy2R
 ZZnFDYkJ/HrlrLH+z12tKbVCxPBNmBhld9fBrm8fAKiyH/paIZYIb+1aH0ad8IR+OmFK
 Hs2HmIaTCceDPNwsqGHp0E2U7GWOj0iliQRTsm13bd0jLBfb0GnJBSucurepL1ANu7ui
 5NTawpdcCr8fkQhVwLKTSugH6iDKkPDxL3cQhL6QROcMxfPgV8oEqTcyUzgnUDeKuWY8
 GjlCResoYqOUILUMHZnqrtln8LfuPju99dDSTbcjro4cuybxIrLj408juc0cY22kWbf7
 qh7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HbwbF/59DYmxqRT7LuBdinHC/slAn0pZe4OVFN9ATCA=;
 b=VOmmRfTbdQwnYrbzSlmmNR493EBWkHHa0+PDFl0RzP9EiQ/mTFw6GhRY9p/sYiPcpm
 r8NrUa6ocMlb7XqIi2dYxqdlTX7SX7nknTmVOaGrc0LMmCHQ+Cq5SnbqkUqqwnOHfGZK
 aM+TxoYF8YhkJhk31hCQBSBzDgHQVo4MEZhTtB9jwWos9XuCeHd03CcTp8Fu7hf9CVBg
 JSenRnKNS6J0jvL7KAkULmadsKZUTNNAUYpq5Ym0g0cVlm8ta/XaURwK+x3kt0ptggEd
 Kg02mNT8TLRDf04SnwISF9Hmm5QK50Lpub1c0KEvtdm9TZimT/ZXqrCgNSUYJa6hdLGq
 hjvg==
X-Gm-Message-State: APjAAAUcf0w4kLB1qSOKsqhrEaYrE9Y4sdM/y7baqxSVAZEm4gegOMe0
 vh+z3oK1hbrT8tHU5Jz3hn1I8w==
X-Google-Smtp-Source: APXvYqyEGU76hbyzAXnq2/2bJ9iA9TLFPvOwSAlzyK7OhudhmdCh/VGJnEmKcTjU11NoWt5eelvmTw==
X-Received: by 2002:a17:902:b592:: with SMTP id
 a18mr95884696pls.278.1560965392974; 
 Wed, 19 Jun 2019 10:29:52 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:52 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/45] coresight: tmc-etr: Properly set AUX buffer head in
 snapshot mode
Date: Wed, 19 Jun 2019 11:29:06 -0600
Message-Id: <20190619172949.4522-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102953_488577_E9DADF63 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unify amongst sink drivers how the AUX ring buffer head is communicated
to user space.  That way the same algorithm in user space can be used to
determine where the latest data is and how much of it to access.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Leo Yan <leo.yan@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index df6e4b0b84e9..cc8401c76c39 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1501,14 +1501,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	tmc_etr_sync_perf_buffer(etr_perf);
 
 	/*
-	 * Update handle->head in snapshot mode. Also update the size to the
-	 * hardware buffer size if there was an overflow.
+	 * In snapshot mode we simply increment the head by the number of byte
+	 * that were written.  User space function  cs_etm_find_snapshot() will
+	 * figure out how many bytes to get from the AUX buffer based on the
+	 * position of the head.
 	 */
-	if (etr_perf->snapshot) {
+	if (etr_perf->snapshot)
 		handle->head += size;
-		if (etr_buf->full)
-			size = etr_buf->size;
-	}
 
 	lost |= etr_buf->full;
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
