Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6D6A27F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nXOLwF6RasaIZS6ySye6/FQmqcRK4RJNZM32pfC3tXQ=; b=YYI2vWhMwwvX+u/gi4Cg0AU95+
	SbMMBDJadruvnzXexE9Mtkl9yNMXDlnFk5YTWmgdAcHMn69kuz3hKJ/St5sE499HQdyGtMIf9OuA9
	DtbvN4PGoYqTcjqegnrkWtwfkFhbRfRn8fosSRmRsDTVFonyNo0riR2sd5X7zs7oTEFt+NYns1nhH
	OSFrxA8YagAOO0w5B7I7kKtKWENaxE0/6pGyr4B92Igh4xF8tjUQBUKRwOEf5nBDPR5AEn3EhBz5Q
	qQUuDtEzf2nB7iHdEaX6HCl5jervZHlcc1koIYxSq9Z8GZI281lnj3WxKi+uZ2h1WQu8YRsqjZhZP
	tm6wBfDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R3V-0004kG-SW; Thu, 29 Aug 2019 20:30:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2F-0003fr-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so2176400pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bVJOPZuGL3hFw3YCjN9nuKypVgI+bDnUYt2M16Fs5tI=;
 b=j7fG4JFrXfi+EBRurr6UCyqYugEHYjEpeXWvnWi5X6+F0p1pjAvwq+898TGeBBVN1w
 aG36vW8X9cVNlgyqC2M8tnvAuQswqcGcPXnW4wUHksCV+26FBgzsv63b8MdP5WU3G1tr
 cS//6FSA6n9/xzkQBjVFNWvwXO6f238pxu3JpYSqn3l/m7H423/1A2496g7Jn7+FnD/2
 hfv8JccWjMcPtQJIOMgen9FVWIrrM5iAhofjLT8AZKOSfyWoj9qMyzRmIJ1UYKsMGod9
 Nu2FpHMqWLXN3EFSfiAzKBTu7LHo/p4+S/ogXmBVA7hQmomFMdyUGY5no6FJIc0UhxiX
 b0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bVJOPZuGL3hFw3YCjN9nuKypVgI+bDnUYt2M16Fs5tI=;
 b=NUBUevoBlGCXpfrEMRd2Tb0wew4l19+Dj8GCv8s6evcT2KiXS8jIlUYSrqo4ezFUbF
 LBURMdBc3FGfumbidiFDPTxgkaokbO6YPvJv8rN2HBrqQKGl3tIMhyLdql43ojKKIuXb
 vnfRrKFD9vskXqZjPs3IUg5zb63O5MbzXY+MJBlJqQsba2ZgS1TquPpz2Not4pzDyc5p
 0xk2eqfKXbnFOzPXflnUierxO+Z8Wtolkzp1bGwmsPpel65dPOPUkedeSuhXIJoZfonz
 9k2OC+PT1KRU5cS5DS1X0WQmGKesTdTAvsG8552+UlqQaHq9hkH96WhumuBcxjbk7BBY
 GxTA==
X-Gm-Message-State: APjAAAWv9BYO2sQbwa/XmLlgbYpmI7Rho91FUpJ2l+X08yM6xNsP+Mr+
 HHM6IRt1QrNBElHgT+Ku3u9l8A==
X-Google-Smtp-Source: APXvYqx2SWdumhPkH5P3gln1VTA5Gs82OL7mLLrZL7mJUvwTSPLtsScdi8xmqLuKBVriYCt+dSX14w==
X-Received: by 2002:a17:90a:c404:: with SMTP id
 i4mr11802060pjt.81.1567110526780; 
 Thu, 29 Aug 2019 13:28:46 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:46 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/17] coresight: etr_buf: Consolidate refcount initialization
Date: Thu, 29 Aug 2019 14:28:29 -0600
Message-Id: <20190829202842.580-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132847_747444_B566217B 
X-CRM114-Status: GOOD (  11.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

We now use refcounts for the etr_buf users. Let us initialize it
while we allocate it.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..3116d1f28e66 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -871,6 +871,7 @@ static struct etr_buf *tmc_alloc_etr_buf(struct tmc_drvdata *drvdata,
 		return ERR_PTR(rc);
 	}
 
+	refcount_set(&etr_buf->refcount, 1);
 	dev_dbg(dev, "allocated buffer of size %ldKB in mode %d\n",
 		(unsigned long)size >> 10, etr_buf->mode);
 	return etr_buf;
@@ -1263,8 +1264,6 @@ get_perf_etr_buf_cpu_wide(struct tmc_drvdata *drvdata,
 	if (IS_ERR(etr_buf))
 		return etr_buf;
 
-	refcount_set(&etr_buf->refcount, 1);
-
 	/* Now that we have a buffer, add it to the IDR. */
 	mutex_lock(&drvdata->idr_mutex);
 	ret = idr_alloc(&drvdata->idr, etr_buf, pid, pid + 1, GFP_KERNEL);
@@ -1291,19 +1290,11 @@ get_perf_etr_buf_per_thread(struct tmc_drvdata *drvdata,
 			    struct perf_event *event, int nr_pages,
 			    void **pages, bool snapshot)
 {
-	struct etr_buf *etr_buf;
-
 	/*
 	 * In per-thread mode the etr_buf isn't shared, so just go ahead
 	 * with memory allocation.
 	 */
-	etr_buf = alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
-	if (IS_ERR(etr_buf))
-		goto out;
-
-	refcount_set(&etr_buf->refcount, 1);
-out:
-	return etr_buf;
+	return alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
 }
 
 static struct etr_buf *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
