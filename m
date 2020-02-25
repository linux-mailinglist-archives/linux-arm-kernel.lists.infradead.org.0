Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C3516BAD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VqI3VKgwhJmTrSeZOXczJtjdrtCp0BuL7SixvDL+ooU=; b=uw8DVzoE6tpZNsg5qhXUchyBZi
	D/AeROjhyMm8Y3d3osrqfTYR+50addIJAPP+aoAziXDugcMcemImtGWKmdAuDx9iKKA/Km4DfpsKT
	euWE5y5JGAF963OYRTmuwemFymq0e5HOlAXXSCocFb/tlcNcbM/ufubbaJLKY9inGd1qNyYC9gana
	MFP5YERmUoJ50qn1NGMBD77jXplyCFZPXRQCo8slm3j2eLWWt2Q+5ZSytOt6wTlscLra2a880VTXz
	O3R1IweiDx9voj57dl2OgHKbrEBJ9+zLxLqR59jzc/QpnOJ9fV9XS1n5AI/JDsRxBT6YP3cuWEjFC
	1gUerMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Une-0000gf-7W; Tue, 25 Feb 2020 07:38:38 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Uml-000077-20
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:44 +0000
Received: by mail-pj1-x1042.google.com with SMTP id f2so775385pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AkyLcT/M41H8pNXfB2E+BzqT+C+wAkbHPxgbVN+0zTc=;
 b=hF+L0SkX3QFj58j9vqoEJ6IjIYswDgAEBWiesoy+sopgxymcU+R/Q2leded9N+UiPA
 yLatd1d8S25usCpHooLBktyUToJ6eO0zSHRZzBlsSzsunV4XlcRcGT0cIKFD3nSRfKRA
 hipJWwUyXC+TViT9VcLD5RfONN7yAKMnvq67oknJIIqp85Vjf9rRN00+pt2KGDF2MbX3
 4c2AS/WkRmpUJLcqnV5MFTtxJbVPA1SM/u1fgEFN8ngV5GbrP8Ta+3zhKlv449eH4MO6
 3Ri631Htals7fy2Oh4T/voA6GGp3QfuJ+uNLmwjxjsuMRgeetUxhrk4ctpQJvmQJOSOo
 0cLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AkyLcT/M41H8pNXfB2E+BzqT+C+wAkbHPxgbVN+0zTc=;
 b=Sef+ml6xPT6+TMIiQfstnRSxeg8cnxNc5nDLwoIx0emKUKiAsKq71tMIRStSzd01vD
 SrkuonxIh1x62OK0j2DjXyBbPzvQrdGonl0rQ6FYl/u7BOoYyCVqFS6bJeq3lN9bOtAr
 5/mCLL3ZevwNiPUXNnlK9lR2Jm8sYS97qBDYknJsrh8iqh+wwFW1mw5Lok13KI1+9IvP
 XdWUDjv/ymz87S31t5ItQqHy0qq0c250SmVVL9TRHC8nMIY8kMZyQiN0YP+dp9V3mKYV
 Y5hVJjD4C+s2sqiiJ86bP8GaPCAG2+bPkUALdjo7kH2Q6KYswC/fGVmJe2JKWHdfW4Jl
 bElg==
X-Gm-Message-State: APjAAAWqqFVzcrl+/yg+ucp9WyOUrm6Ffn7r+VuKWZe2lbLYYvryLIBn
 TOTXRTbtOTOflEZI2Rcv99M=
X-Google-Smtp-Source: APXvYqwnmes/Pi/02QPjNqcbuZoJp4CZnWoJVVApGWQqfgKMt8MSEPCZzU8aeC8A78O3AeoOmzvmhQ==
X-Received: by 2002:a17:902:9308:: with SMTP id
 bc8mr55796788plb.268.1582616262049; 
 Mon, 24 Feb 2020 23:37:42 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:41 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Date: Mon, 24 Feb 2020 23:37:27 -0800
Message-Id: <20200225073731.465270-3-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233743_103018_0C3C2FF4 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VVAR page layout depends on whether a task belongs to the root or
non-root time namespace. Whenever a task changes its namespace, the VVAR
page tables are cleared and then they will be re-faulted with a
corresponding layout.

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 290c36d74e03..6ac9cdeac5be 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -131,6 +131,38 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 	return 0;
 }
 
+#ifdef CONFIG_TIME_NS
+/*
+ * The vvar page layout depends on whether a task belongs to the root or
+ * non-root time namespace. Whenever a task changes its namespace, the VVAR
+ * page tables are cleared and then they will re-faulted with a
+ * corresponding layout.
+ * See also the comment near timens_setup_vdso_data() for details.
+ */
+int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
+{
+	struct mm_struct *mm = task->mm;
+	struct vm_area_struct *vma;
+
+	if (down_write_killable(&mm->mmap_sem))
+		return -EINTR;
+
+	for (vma = mm->mmap; vma; vma = vma->vm_next) {
+		unsigned long size = vma->vm_end - vma->vm_start;
+
+		if (vma_is_special_mapping(vma, vdso_lookup[ARM64_VDSO].dm))
+			zap_page_range(vma, vma->vm_start, size);
+#ifdef CONFIG_COMPAT_VDSO
+		if (vma_is_special_mapping(vma, vdso_lookup[ARM64_VDSO32].dm))
+			zap_page_range(vma, vma->vm_start, size);
+#endif
+	}
+
+	up_write(&mm->mmap_sem);
+	return 0;
+}
+#endif
+
 static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
 			     struct vm_area_struct *vma, struct vm_fault *vmf)
 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
