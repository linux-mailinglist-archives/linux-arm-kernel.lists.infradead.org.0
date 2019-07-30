Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EF07A845
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZlSfjrUrjp9mfDmdXHucZvs1jqiug4eRG1HJRNn2dCg=; b=h793bmiUFtYdllrMXr0vBPJATu
	zvrMjuKHMCmx+AcPT/adGACsEsaT4/TwFYUYi4KSRdWa69s8+UjWQPH9M+pc1o8Z3gja52WRMJLal
	POAu/MTyN0ECEXInrZ/zXRRh5wBWyLci6IeLcJRwghOBDzPVFFI7HYEt8d4ymE2J2tJjHoYh8QHGg
	GiE+8sMd6NdTXV3PUe2+JsTJt4AWkKFQbqmap5SI4FtwKAJN4mpWx08K0t2odrtzuEuMGcDvS3Aq4
	8V7lNcwvNv2uWgnB8K4th08uNhFxOQUXiqDyUWMMl4nIOM/b4UomfPDdk7dtpywZe//e/TeNNjArZ
	IzZ7t5Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRBc-00010A-Lq; Tue, 30 Jul 2019 12:25:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBC-0000ro-At
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:24:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so29749703pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ub4kuUSnrD2CiYyKKwaDCU7WlCc+MjZGT8+i8BhCGSM=;
 b=MfQvx2dhjGV4/bSe60l+LebksrED1y3ZIlrOHn7KEst3uYq0lbZGY0vsMCXlHdvqTW
 Ye8auI8LrPtuk1JjxXNnkdo+hZ+99keG4VGsdhwKAsEXIsOsIUECaXlU8hbVHLFk9cLT
 HO8nBnDu0xGtOjVBUUGFJzgjgr3leWNo194UxYVJeI2Y+0v/K+qeQpXyF0PGeONbMN+i
 gW62oUUDBfxqW/m3zRut5eraL0BhFNM47K2DQzNbSup/f6DVATK2umRIZlAbmj5eTK+g
 Ie2+FR2iyP4pVV9kGjOO0QK2a+lbpVtyMzeY+CEhSSw2QwFdLdH8EHmR5UmLIl/CCH4Z
 mvwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ub4kuUSnrD2CiYyKKwaDCU7WlCc+MjZGT8+i8BhCGSM=;
 b=b43a2FMbVKcETQlQuCIhVKbcbGUoEZeEmlGvji2GWe7t5HRnvULrL5zMI9s7gatj/D
 jo689jeAlCBv9TxCWP5DDvoO8vnJTpqa/ER2E3pkvw4kln3qzn6+0DKwzm0PN4NtCd2m
 8POC7ebm8LLPL/D80s2gXf+X3VIamD/8sQyvajgOv1iDWeqCV2R44cM6ipOT7+vLlo4/
 ykTPe14axhWEfVgMFnrKC2wNI74tTlIu4LPT+sBUALTSkEQDja9o94HYa3qjXH9GMYpJ
 vjhk/vLlRJ3/h38rkSJTXV85WRuWtOV9udbqcnzmKWSRbmEvPeshSfBzUd9mJRnZw7rq
 0aig==
X-Gm-Message-State: APjAAAVwqF39Nk4YZzfVhr6QDjhA5ROnAkE+ZxaMTP/ybazH4+zzkoYq
 vxeTS2qD1da3WUxJzdkfVAQ7PQ==
X-Google-Smtp-Source: APXvYqy9AOsI/bgpSrYC4bB6dRW/RMjRTTrIQ53nsJNjfy9Y+arPAlgz9XGruaRKwy6MTunT2Iwvvg==
X-Received: by 2002:a63:125c:: with SMTP id 28mr55618644pgs.255.1564489473744; 
 Tue, 30 Jul 2019 05:24:33 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.24.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:24:33 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 1/6] tee: optee: allow kernel pages to register as shm
Date: Tue, 30 Jul 2019 17:53:35 +0530
Message-Id: <1564489420-677-2-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052434_486281_D00626ED 
X-CRM114-Status: GOOD (  10.95  )
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

Kernel pages are marked as normal type memory only so allow kernel pages
to be registered as shared memory with OP-TEE.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/call.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tee/optee/call.c b/drivers/tee/optee/call.c
index aa94270..bce45b1 100644
--- a/drivers/tee/optee/call.c
+++ b/drivers/tee/optee/call.c
@@ -553,6 +553,13 @@ static int check_mem_type(unsigned long start, size_t num_pages)
 	struct mm_struct *mm = current->mm;
 	int rc;
 
+	/*
+	 * Allow kernel address to register with OP-TEE as kernel
+	 * pages are configured as normal memory only.
+	 */
+	if (virt_addr_valid(start))
+		return 0;
+
 	down_read(&mm->mmap_sem);
 	rc = __check_mem_type(find_vma(mm, start),
 			      start + num_pages * PAGE_SIZE);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
