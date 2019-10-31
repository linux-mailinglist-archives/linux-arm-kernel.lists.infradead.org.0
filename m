Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A05EB1F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JaBdVcgwyztx6gQdT05zZ3XfZtQWW6pfHB4yfbAo6p8=; b=jGWW9E8pRXyPBhsBR8Zu+v2P31
	u2/RfEs42ikfm4iiQCjMlRYbGasGo/Qttfn77XDIjcrekxijFaITPGB/p/5lMkJ1oFmdKYmVygQqI
	Mt/DK/QqlaD+zBZYRy5L6/IaUxKZOAfeQ74rSV/JQbyCBwS0SEpPeiPecOmpIa6E+4rSvgHeVzVGj
	D13F3UZ6iJxYSRJ75njxz4UUdbpCeam5k8rad+vRZtFv9wRKGMs1NLYYT0SiWWxmKRbBCs2amQdDZ
	gq2HLiXpFq4pt4uXwhTIfY4WrptjrkCJA35VucnfaUauaB3PCtE252ThtszXEZnkGq26fXBAyWPpY
	My1o5KvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQB0I-0008MD-Co; Thu, 31 Oct 2019 14:00:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAzM-0006bp-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:59:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so2750326plp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rBi9pDvmSRW/gfGz1S5LaiY/M3/1mDENiO/ALWeCgpk=;
 b=vQtn5epM7BmXndczOajGVGAnDDTih0deQtjDHqOZaIno2sYSm5HgUpe9M/7tqsey17
 JcgSTwFY/6xWrV+8iWqWzgWyz0OJ1KQ8VkRfHUX2V9qiUlAp1qHQCPlRPO3VZjqPglme
 iDFSD+n12Tl45aTDsljHPGU1HSJZQH0J8DDYa7iVWrhovtRN1+WcIknfWRrt5npqTisz
 qjYz+EqFAjDFNwFzeb2uxMlGTvMUNBpgN/uHLEcIhsUhQ3P0jCVsW6GLSldnblMq82fu
 ltdsXfA3qM4hFrffaFAyC70OkJ8YQVOci0NA28T1yGIBut65i64DP9fivni/267D/coO
 +C1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rBi9pDvmSRW/gfGz1S5LaiY/M3/1mDENiO/ALWeCgpk=;
 b=T+VH2Jj64JNCNX5Zw8aC3GzK4RRK+ppXa9o5tiHD0/Lj4IWiRrazHkoGDXbvlGxYXX
 Tc3F9dsZNM0hQpz07pbqLDfwMSE6d4+ajPgKdzwE8EEkhz8ptXvJ/hktwmlmytc2Qhci
 hV5qE5A7Sckn8BOlkkFLhjdjd4jWrW5H1sFVatRCOhrbBf4005GtM3KHj1DLSbKb24kh
 7fOmQGXIYno1hjm4ZM6saTYXskuj1tRe6PO52RxZa8PPoXZMY170lZ3MBa0nzlaa68b8
 t/utDrF2RsFDnCmPZuDZI+PgA6lxe8avUZ9o4FOLe/HKHDwCVDdRM0/9egAmsFLUSh1e
 pdMA==
X-Gm-Message-State: APjAAAWRBrktVG8lR/elsceeAXZEirKn+abWf10y5BLUU19eZ3gU8DEY
 s4qxC3ODaoOZoNIHLZt+k8/3vtXeDMs=
X-Google-Smtp-Source: APXvYqxvxuXZl/u6hfe9tV8jGqosv3YQ51/spMygFoU8LspT81JCa6iermf94WbaR84nA4XCB+w3XA==
X-Received: by 2002:a17:902:d705:: with SMTP id
 w5mr6386152ply.142.1572530388055; 
 Thu, 31 Oct 2019 06:59:48 -0700 (PDT)
Received: from localhost.localdomain ([117.252.69.143])
 by smtp.gmail.com with ESMTPSA id i16sm3522441pfa.184.2019.10.31.06.59.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 31 Oct 2019 06:59:47 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jens.wiklander@linaro.org, jarkko.sakkinen@linux.intel.com,
 dhowells@redhat.com
Subject: [Patch v3 2/7] tee: enable support to register kernel memory
Date: Thu, 31 Oct 2019 19:28:38 +0530
Message-Id: <1572530323-14802-3-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_065948_866548_4A45C364 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 janne.karhunen@gmail.com, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, tee-dev@lists.linaro.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 stuart.yoder@arm.com, casey@schaufler-ca.com, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support to register kernel memory reference with TEE. This change
will allow TEE bus drivers to register memory references.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 drivers/tee/tee_shm.c   | 26 ++++++++++++++++++++++++--
 include/linux/tee_drv.h |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 09ddcd0..1ec1577 100644
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
@@ -265,7 +267,27 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 		goto err;
 	}
 
-	rc = get_user_pages_fast(start, num_pages, FOLL_WRITE, shm->pages);
+	if (flags & TEE_SHM_USER_MAPPED) {
+		rc = get_user_pages_fast(start, num_pages, FOLL_WRITE,
+					 shm->pages);
+	} else {
+		struct kvec *kiov;
+		int i;
+
+		kiov = kcalloc(num_pages, sizeof(*kiov), GFP_KERNEL);
+		if (!kiov) {
+			ret = ERR_PTR(-ENOMEM);
+			goto err;
+		}
+
+		for (i = 0; i < num_pages; i++) {
+			kiov[i].iov_base = (void *)(start + i * PAGE_SIZE);
+			kiov[i].iov_len = PAGE_SIZE;
+		}
+
+		rc = get_kernel_pages(kiov, num_pages, 0, shm->pages);
+		kfree(kiov);
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
