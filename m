Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038334C203
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z6tLJRWKrMfTjjT063aPSyCtl4+qcccqWj+YCGa07eM=; b=mcVCSvaezJJSQ6BlJfPyVcnFyK
	kMjlL9r7ftlRHLchSAZ9hMVsJvNqvufwSzCDat/Tw5TnE6KtHpYxjmu1+o+ltGV8DYcxa4Icxbixf
	SzE1WZ6tZPcMI0ye3MXZP221hxZzANYg73E0wVuEbvo+u2ohaxxPGMv8pKSK1Rc1xQyCYiH56OXDJ
	nyhfjrfMxVymBgpb9XsvcvyA7H7fG8BgusYrmwJjk912vfPdCzLO1dqdFx9/BV7n9TV8tb6wxaWL1
	mm5/IQiPVLiX5eLY3H+QPnlpmbHP7Sq/BFRDs2j1ZRRpM/3pRFI6T3Agmb2Ww5bLgnFspcp9jq0pk
	kCOJ5KVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgnQ-0008K1-Ur; Wed, 19 Jun 2019 20:03:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeR-0006ij-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so237601pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eVDBdMkApj9sKJLqD9SjgtJkupY/dvzVE0zp0XjJG6s=;
 b=aQQlsUcm3Z24V7Z+EWx61qTLfxCs7b7nH/xaftbC8HtMCpQAnLXbjP5yu7nIY3OOMZ
 CWA74omKQQSUAV5Ys0yftxpQKRXldjo2onAV8EIU3AeQnPuxeON0dECL3ydE1PH09+yY
 wFbMBOaKWXfcZa3WIbZJ3D5TsMud7z3k4UjsHZ66OSXsfZ9iM3ajIiV84SUQXn6Ol6BM
 B0PmuDhsYrDLVWCWlPpzCVUaSg+ILgZjjvNe22vx+OJdg1DdY8jB4Vn5Kq/Bwewsp/DQ
 KVwIbz/z0Gh5FH995SXch8vblMRhaTqGc2mlT4ur0eSw7GXLpK7jNaDAejNCviAW+i+H
 B2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eVDBdMkApj9sKJLqD9SjgtJkupY/dvzVE0zp0XjJG6s=;
 b=qaoqwF9ItUN3vxfKnW/eGb0WrCBXDrGP8CF0xiLigDvsIhQ56bGxr8bHweuMhXUAJo
 Z1h8iuQNmStma3DksHmQ+qChl8BZZ7WLeJwWYYMwA2OhcrTzSOvh56AHfSFS5KnkX1EB
 yHndYeiexN3Jti+Oifa/bmq/W5XPjihTm9x7F1hPMRO3p6HxjZOOmZ4NpOTYwqFBf4xQ
 eAuizpyq6lN6vlBXRs68QfpxgPRkpKg0QhKNN0h76tC4qiqam2bE+Julcp8ZPn+7VH5t
 otCJB1ceEqkKuL57AxX10wMouHj2Ik6LdezNTY1aC/WdmTThQXcVShji78xseVRvPBvg
 UrCg==
X-Gm-Message-State: APjAAAWIvuI7T+m2blr3kdFwtm20v+9x+m7gHXBOuvo9YR5vyGt2CZmU
 U5J1BFpaNKuTiVUxjhqj5s04Eg==
X-Google-Smtp-Source: APXvYqynFm4Gi6dwkGLGuDzG63Gvpmx2XwUU8Ox0vdU1H16fpEH0Kdh8q/Dd8SGWkXesbFP8rrtCHA==
X-Received: by 2002:a17:90a:214e:: with SMTP id
 a72mr13374261pje.0.1560974025457; 
 Wed, 19 Jun 2019 12:53:45 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:45 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 26/28] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Date: Wed, 19 Jun 2019 13:53:16 -0600
Message-Id: <20190619195318.19254-27-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125347_834649_4DE11B68 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
