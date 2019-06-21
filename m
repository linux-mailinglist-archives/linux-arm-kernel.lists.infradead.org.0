Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38954EE32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D9jRnard3J+PoJaR3OiZxbqJH4eRH7tuLcvTRY0EKZw=; b=TwkbkmbSXLVwzm4tPk/sWJSKAn
	O7RhY2WLlbgWbXrw4mJItDIlOCYD2MlZNqOZsNoErLyVCcujSv5pY2QGm0E17PMnW8iAfugTQ062+
	rklTZNIY/x6wysijPXtIqtdDVMaOcHp0gONMvNQCnnDGIIAKzUJRVd98RAqTzRDtxgUOlOzBh5oty
	IhYOYhKUqcxoewZKAGVvk/lbSpRytlbjEDHf5l8yvXmjaCNHsKBW7P3X4PClhOnCpovnOaHKLcxOb
	2UB2BPy+7CrlYPeL8jQIbJzi5NbRdt2oVZh5Uz/v/1nec2bxxaHpHabVfj6keZwmUn25C+wPZzEKl
	9jmiUxXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNib-0000s2-HK; Fri, 21 Jun 2019 17:52:57 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNhp-0000M0-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:52:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so3345234pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 10:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2hwzeXx3N76bGEMIhEEJzpn1YisLcq/x9TD1i9ttN0s=;
 b=Id3/SHMeDhTT9yWO1Pqsj8bgUsa8y5DR/CWLU3QVECdPoeHad1a6G0bCCzd3zVtDkb
 DDz4LJ/3kkpLEQZAIdZrdKaQDy6TQ3kzEPkJvUJr9lHzlhCXpC4JvCxUwGCxN2JiOkPp
 W+41NbCOLicVKogCaZPUvkf0c/noaHm9DSdthwmYmd5xBqo8JA4lcSUUL9J46me51ELB
 aMBIJdMQg2jZoch0my/eBfuCl7mYV3/TWsTFf/W+2vYINy3sdKQdjfxDjGJ8EyItTiZf
 GhalobD4qJ2iGVVPQnNDBN+600grfckFq+kdPo7XLFnxhymhBNa8ucbhmbeBAOi1U2Gj
 Mztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2hwzeXx3N76bGEMIhEEJzpn1YisLcq/x9TD1i9ttN0s=;
 b=Ux3D5lt13fcT8gXtf33MqfJr020iTnthYNyR1MXR8NRQYgIpvcaKeV4Us3etu+LcSz
 qaG+Ph4LIlgqI6L4JdGYvIzEwRvgx4LHq8geuW5M9ftJOG9STnUwRYyZ2ugKgSKjVTwx
 u3Lq9t75uPo+0OPFolbvSdB93U/LJQccefgbXIEBsls4OPyRBAyhzSBbJXIMXdIY+vk6
 aNDXtIK30dkP25tzlvSrNkbEaSDFz6RTDPbhSa+HIp6hJ+Ma4TdL9myoi2PC7RTnm0u1
 IabDlSOVWy4AtsjzbVmyqzb1zEb42dnL+z2J8yyRKZWV7U2v+Ve/H7Yrcgb3J4Ltq7a2
 2FPA==
X-Gm-Message-State: APjAAAWRjpTJKa0JH7z/ZrakuCEL1AyvwQpQJLVqusyzZhngzZCNqWIU
 KnF9I/AlsGJo8e+g7HAW6D+EzxRBdQyrEA==
X-Google-Smtp-Source: APXvYqyb0E3MNntkLQyCKmKCtwJJJvk8z+sk5wZp2mXFvUVDcnSOHr8d5G1Ik580PTiBmcxelzy09w==
X-Received: by 2002:a17:902:9a82:: with SMTP id
 w2mr114236213plp.291.1561139528449; 
 Fri, 21 Jun 2019 10:52:08 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f17sm3378490pgv.16.2019.06.21.10.52.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 10:52:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Date: Fri, 21 Jun 2019 11:52:05 -0600
Message-Id: <20190621175205.24551-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621175205.24551-1-mathieu.poirier@linaro.org>
References: <20190621175205.24551-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_105209_069001_7E500474 
X-CRM114-Status: GOOD (  12.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index ce0114a5435c..a9c797c2f926 100644
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
