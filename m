Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7654F1AB740
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1umFAaieuWkWxx4C0o1h/E/mED4NLiQnm0Ex8BcsyY8=; b=dLJVCQkDlyQfigV14W6YsfPx/n
	TLkvvaBEDsqfnr9Dr83yydhA2f+AhBl43lRjYfrvOEx5/smi/jgYlxccIsGo5B+RNDlwe8CDfcgBp
	j38LFjU6tcEIvBg8uE5JDpnCR9ePX6ZA1rVxt7U2+fEfkZZ85S5NL5pGna7Py7lZu7U0STyQ8H4eo
	8vAM1ng6R463tdljk5lHV6Y6h04opwkUrz1reoYOBn1oyIrKbgewpjEc7B0qUGBfsMyTXaV+Zr/D+
	6SrkflRB6v2gELVszicTIJbOT0xm1z2vH1VrqMaIc0h/GdNxoEYjLptE3ePodOZ8w8zNx9qb+3YZL
	3GZD9C5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx3j-0007D8-4d; Thu, 16 Apr 2020 05:27:31 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx2z-0006g9-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cl8so869877pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qrvi9cfOMWugmztCzSRhVUwuOgDWuroc1zUU7Jui6fE=;
 b=nEFR40jzawzbAo86Fn7AlbI47j6RcYuIHU57HJodL+mJEh/+ODMMd0houcnmMRTDQm
 CmNFos10maNtWktoQ/xvzPG0knqvXQR5Lj9P5NaI9lto16D140T3cud32vm4qRGYF7aN
 bEkIpF0d16foHYOPyDCbUIK3CCmetinOblwsamt90Rqtvta2GkhCPmXmU5J1HVybRdOS
 kYRb/4ivlnxk16x/UPxjYKNWtKjCOjYObTVuJbBg5kpbuaOmNH2E4JA4HXkXE7nemtEG
 BOZsq2UU0iOk8vh8GdP0OUNqkZjolusbFMks/2NAmsEHRaHca+9q2Ya9SzKX/Xd+A5FO
 fBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qrvi9cfOMWugmztCzSRhVUwuOgDWuroc1zUU7Jui6fE=;
 b=nYCK/7fPH+KLPA+QZlTEuGB2BU2WRbo2U8BodX/cAC6noq8DzUJDacn87MLluS6mjr
 TcbY5xrq8iEk+K7njbhq4PgQTYt7acj9C47vLiss0FklZNPBsd9WAVEpmA6xx7iNB6E0
 jgRkDgbrH8I0EhXzbUUC5UjQFR25ajtfdOwIbUDjRECmcYYRoAKrVNySuUK4ip0SEUc3
 aOw/pyLF8MOzlrqYYScuXebBl6EJb0xQ2T2ICuG0qz/wtMAHaiZ4jeytCaybpcmLI4KA
 5Vsushs5/GHKzMkuTzRvDXy+uOM9gDhh1ITJIpRBoZ0rf9ZhwN7JwBOCi25ShAUtzISJ
 xLRQ==
X-Gm-Message-State: AGi0PuZ2t6jJ97dV08Be5KYXnHwwF5j5GxkU6r1g227+XLxWQxdVBBwA
 2DdvtmMxpW/12OAV98SlbXU=
X-Google-Smtp-Source: APiQypKao4SzdhZEtr7vlpmK90LbMhqJidYVNIjSwySwr3ySDyw4BnlPpNR50T9Hw+R9x2EN5QA2EA==
X-Received: by 2002:a17:90a:3726:: with SMTP id
 u35mr3113764pjb.162.1587014804922; 
 Wed, 15 Apr 2020 22:26:44 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:44 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Date: Wed, 15 Apr 2020 22:26:14 -0700
Message-Id: <20200416052618.804515-3-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222645_900429_CDD4E9AB 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VVAR page layout depends on whether a task belongs to the root or
non-root time namespace. Whenever a task changes its namespace, the VVAR
page tables are cleared and then they will be re-faulted with a
corresponding layout.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
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
