Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFBC7A850
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c0RyPOc5kkmTjuPyi4+BqYtaPHA/PwOve8m5z0gNqjg=; b=Vu5wlW02atkNPyZgMgzMsoRObr
	zCOHhcS/pJ6+I3VSTCpG5fEr21vKw8hpCkS7GeayIVD4yS6sSfx0wZeqhrxKw0cyzOhc/3OjJDTzX
	KkUxLQR2SMD/tBhUBVVwa6tWuzoEMLrDQRAx2C0pXijUuCQ0Auwg2w+6w6XSXcVKEsJEulv49cx3z
	d9aRPx/TRj+6htQ7Qo2PpiCxEYg+lTrSdNa6j9xrDGCA9sOLhcofBxc6VAN1f7Bg0upRjMezGNai3
	WlzIKTB0UZGDCNmLm0IEqNGXsRmCJ77cjq5paolwsBUqM2nl4dCbIqjZTzM3pLG20zuZRuCNCuV1L
	TH3DUW3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRC6-0002Td-Qq; Tue, 30 Jul 2019 12:25:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBK-0000z8-6n
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:24:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so25772983pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F6RVSFR3EtlCJ6lvWs5T4vKHtTJAwPryiatLZ1M1aSY=;
 b=tfILgsUTF754qwTkDQPJD0rCNoaw5Uefc9p9gu+bUyOB285QrfyyfBMXVCuakpWXxU
 HICwYDIoYTjs/+ornlvVNUoij4mg9ij8bxODX+c7q02mHaK7IrzMH1R7ecmTkMo4+2xO
 Us9rLCt7owepUui89bfkEE/+tfrGjWsmuEK7kWBlWuXdpLhbvxXU6dLLp7egHq3QfEOx
 EAnFbfA73EDc7EvI/7xV2L+LruWbM8T/aZwxfA/Fok9dNyUsOb1nZjkFl2ZhnvrgF20f
 tcRKcSqCuXR5PmdwOUIpurnXSTsuhM16BUhSnW79IuqvzINcCDhZiAimeJCJ/3aEVT/+
 Skzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F6RVSFR3EtlCJ6lvWs5T4vKHtTJAwPryiatLZ1M1aSY=;
 b=Dx6wKqzEpYURv3AhQTttFpjOiQIxg+jsVrQhz/wqaQ1nYjaBVEsd4XCr8gsgmJYKYT
 STVQhgMM8ftWdm8pR2lSrrF5M88VJksNoNVwyqAmMyzfwBwsjj0rENp/wCe9vNCRYPcg
 uBK3rmQgP8k0uY0uw83tOFPDLt/CIJ8Vuc4L6GHw8NdPy41ya8pUp2dU/KgbidOs71Ns
 gVX13IV2+YJDYk2zYIuZ8gP1iphKQL7vqqK/bJf5/g+huv7TkqNeVragspZvfI7rj4g9
 SpgrrDMJDGZkL9sQjGNvnIztS6okPakgWaHP1QyzxQBBCu+0YWS+El2XfGSJTU3+vJl1
 UGjA==
X-Gm-Message-State: APjAAAXi2ZeERNQn8CNtRMyRySQqqMWkttxI+4X5SqpVXiLkT9RAZYm8
 D8S7BUV9HjVTf+yXGkaYT6teKiEI4SU=
X-Google-Smtp-Source: APXvYqxOXWjfS6W6Wq7C2Wm2EcZsROERy2icoey7lDKRVXENBtDjIep6/+XJLEKlNdfJ39CZmoJ1DQ==
X-Received: by 2002:a63:d04e:: with SMTP id
 s14mr103689463pgi.189.1564489481707; 
 Tue, 30 Jul 2019 05:24:41 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.24.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:24:40 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 2/6] tee: enable support to register kernel memory
Date: Tue, 30 Jul 2019 17:53:36 +0530
Message-Id: <1564489420-677-3-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052442_312953_FCC8CF1A 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 jarkko.sakkinen@linux.intel.com, casey@schaufler-ca.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org,
 serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support to register kernel memory reference with TEE. This change
will allow TEE bus drivers to register memory references.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_shm.c   | 16 ++++++++++++++--
 include/linux/tee_drv.h |  1 +
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 2da026f..5c69b89 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -9,6 +9,7 @@
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/tee_drv.h>
+#include <linux/uio.h>
 #include "tee_private.h"
 
 static void tee_shm_release(struct tee_shm *shm)
@@ -224,13 +225,14 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 {
 	struct tee_device *teedev = ctx->teedev;
 	const u32 req_flags = TEE_SHM_DMA_BUF | TEE_SHM_USER_MAPPED;
+	const u32 req_ker_flags = TEE_SHM_DMA_BUF | TEE_SHM_KERNEL_MAPPED;
 	struct tee_shm *shm;
 	void *ret;
 	int rc;
 	int num_pages;
 	unsigned long start;
 
-	if (flags != req_flags)
+	if (flags != req_flags && flags != req_ker_flags)
 		return ERR_PTR(-ENOTSUPP);
 
 	if (!tee_device_get(teedev))
@@ -264,7 +266,17 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 		goto err;
 	}
 
-	rc = get_user_pages_fast(start, num_pages, FOLL_WRITE, shm->pages);
+	if (flags & TEE_SHM_USER_MAPPED) {
+		rc = get_user_pages_fast(start, num_pages, FOLL_WRITE,
+					 shm->pages);
+	} else {
+		const struct kvec kiov = {
+			.iov_base = (void *)start,
+			.iov_len = PAGE_SIZE
+		};
+
+		rc = get_kernel_pages(&kiov, num_pages, 0, shm->pages);
+	}
 	if (rc > 0)
 		shm->num_pages = rc;
 	if (rc != num_pages) {
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index 7a03f68..dedf8fa 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -26,6 +26,7 @@
 #define TEE_SHM_REGISTER	BIT(3)  /* Memory registered in secure world */
 #define TEE_SHM_USER_MAPPED	BIT(4)  /* Memory mapped in user space */
 #define TEE_SHM_POOL		BIT(5)  /* Memory allocated from pool */
+#define TEE_SHM_KERNEL_MAPPED	BIT(6)  /* Memory mapped in kernel space */
 
 struct device;
 struct tee_device;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
