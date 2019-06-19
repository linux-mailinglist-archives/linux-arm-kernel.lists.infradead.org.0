Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E634C00E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z6tLJRWKrMfTjjT063aPSyCtl4+qcccqWj+YCGa07eM=; b=Pct7/h1KYi3ju3CwYo3+Z+dDze
	9cq1uFejT/OUIf1XsinXQjKxt8XXqvhvKUueKnS2bZDFoTokVZ9umooPIG2CSNK8ecECXSWiFlyoW
	fDJ1eMIfnjUe1Ikr+Q8ky/DOXrULl1YiIfwgFcOMfX7OcKkH5TNVnV0VplI4U1ij1NvSS/rD8f4rb
	oqBl3FLXSn4bqOEArq17zFaow0pbLMo8DZ8n2EXkAMwEVBzE1qIILR4EPQ4yVoIjXHZdaymiAJ1rm
	pbpnrUil6ySPwruLCqF1fgBvkPYjGL/uQIkofMhKDNbBPyvCPUl37zi7SCP/sgzhqLXRUDl3Q7yuH
	rkaKmvUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdedY-00088w-0q; Wed, 19 Jun 2019 17:44:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePo-0000Ex-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so35632pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eVDBdMkApj9sKJLqD9SjgtJkupY/dvzVE0zp0XjJG6s=;
 b=Gs7LQ1SNavZhD84PpA2ZIRxbNydD8V86LavwZdjIWkbaJbr1YopRI+Vy8M/PgGDAIY
 IZRLvWKtZhXPGmLh29cQ9+3w8X4zmYtCRjvlmacT994vFS2SkGvkyDKJ0Q3adjT/6LtO
 qdBdtSZ0C8pK5Z5s1/8OQ9Z4qEuy9DtNFofgoeHXdybHLRdLvfqcxK3c/YX3SDc8O5Lo
 PiIQXKJazE3NGBXVR/upVb7ND8YUgSX3Xq1v7zV9grSuoyr1yXD42vyVihyiZQcZ0r5I
 bHDVWM2VsQSPtkimT5cOpbEFEkNhjNZyAeHk9JjbX4V8XCZC6JDogUNiMXGMfsC27VYQ
 UzeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eVDBdMkApj9sKJLqD9SjgtJkupY/dvzVE0zp0XjJG6s=;
 b=c//XMR0QW2F14ZuZ1gGlcpl4l0jEKIjAE+/DG1T7xlCxEAUzt9F5NDA1sytan/wVMe
 ajXZjcTxmXbsxemSHmFrgig1UtPNFmlzGTEZCAsg2DlJXGQJe/FqziKq2tiyEgzv6hkM
 NJp7zHQMGMoqtd12ly9zRY90fqY7+eR5pl5dlorvqxfmW6dklObgcewM0bzgqDRYzqSc
 Enp007R196a+rpPfDervYGzJHmvaPvnHOEl378VAZw2AGb/w8epJzpmXcndptA+lkaIA
 jygsyezDVUIlOCqI7ip8aLhuTM4Dake80iFTiQub2GVLmEGiK3jRBhB4XGIt/c9xOwf4
 wGOg==
X-Gm-Message-State: APjAAAXafLYeypG2ziMoCIQE3WSDZKbRVleDLRKoSaHxj31aWmEdQ6Ly
 X9Yl+/vU05RTJ7/9icb9FO+v3w==
X-Google-Smtp-Source: APXvYqwU9yO6eME2CW4xirO4im0SAo3i5ckxnsCY6VgEQ8ncGNsHlfScTCsiClrkMwE4zm+zcAt4kg==
X-Received: by 2002:a63:4813:: with SMTP id v19mr8564005pga.124.1560965431017; 
 Wed, 19 Jun 2019 10:30:31 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:30 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 43/45] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Date: Wed, 19 Jun 2019 11:29:47 -0600
Message-Id: <20190619172949.4522-44-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103032_556021_303F1AB6 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

The patch 743256e214e8: "coresight: tmc: Clean up device specific
data" from May 22, 2019, leads to the following Smatch complaint:

    drivers/hwtracing/coresight/coresight-tmc-etr.c:625 tmc_etr_free_flat_buf()
    warn: variable dereferenced before check 'flat_buf' (see line 623)

drivers/hwtracing/coresight/coresight-tmc-etr.c
   622		struct etr_flat_buf *flat_buf = etr_buf->private;
   623		struct device *real_dev = flat_buf->dev->parent;
                                          ^^^^^^^^^^
The patch introduces a new NULL check

   624
   625		if (flat_buf && flat_buf->daddr)
                    ^^^^^^^^
but the existing code assumed it can be NULL.

   626			dma_free_coherent(real_dev, flat_buf->size,
   627					  flat_buf->vaddr, flat_buf->daddr);

Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 5d2bf6d18961..17006705287a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -620,11 +620,13 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
 {
 	struct etr_flat_buf *flat_buf = etr_buf->private;
-	struct device *real_dev = flat_buf->dev->parent;
 
-	if (flat_buf && flat_buf->daddr)
+	if (flat_buf && flat_buf->daddr) {
+		struct device *real_dev = flat_buf->dev->parent;
+
 		dma_free_coherent(real_dev, flat_buf->size,
 				  flat_buf->vaddr, flat_buf->daddr);
+	}
 	kfree(flat_buf);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
