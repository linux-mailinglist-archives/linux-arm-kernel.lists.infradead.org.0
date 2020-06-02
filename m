Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5071EC193
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IJdaKhR6yHuDXdDpD7fCyb+d/6URuz0nY/0/x5nv0v4=; b=TF0aLOyDr6PJ6Rwh0Afcl/NIvo
	6cqb5ePvSo3mxC31LBlNjlnXp3m1tjiY1RM1pBSAg8zfnuCCrfSSY9H+DE5L51q+BvHxUBgR7tGUD
	zmFHjsuiVdm4bMo6fpBBkweOs/lV8QpcXP+eScLII/dTnWIw3c60JRPUZktCoSWcSZvjGRg0dKP5C
	DpM4r9N7B4MCwwbJtzOKFcolR5cbCR3wmeZaBeQPqeqNRUvhSk7PrV56djWpVqgtPepK6t4Aw5zYz
	dDim93532HCyOYwZKUatPw99E1dx+GlCq2cHLxRub5kx39UdpPR3x/1PNHtbu0otPUggR2xNpapYZ
	ASKfcWSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBGU-0003DY-EP; Tue, 02 Jun 2020 18:03:54 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFj-0002gE-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:09 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q24so1895675pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xduVDJsRlgliJcQL58QqcKbDz/BTgkkM9d/dUnD0dlk=;
 b=hc9Kjh5Ksvxx2g/UwK/Xg+LMKcfr/E0AwwubQnwak+KnY2nYmkOMubnJvCD4cB5PeN
 QclEVzxQDq0N4VsdQnF/KvRsiMbh31TO+kFea8DLl1YPdOyGXCzdartKJvEsPoiIvAiF
 461Pe0ucsyGy+BwIiJBYNg3A1t7bIpiNRonOCq3AWAHULVqjSNA1XI6lpk92ZhKV6YBc
 5Ime/Yulu3Ju/sqEgIIa0P+IEB8b8y8uj0L6WIgav9J1H9NgDAJOPyJXOhdyYBIJ41yo
 R8N2Qc0L7POcZKwzBoIlj48/ItBOA/fcknTSIByEIOZx9Gv/f9K+p0OzrzUI4dVpIwGx
 p70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xduVDJsRlgliJcQL58QqcKbDz/BTgkkM9d/dUnD0dlk=;
 b=DJ5zyZewl7M5sW37MWa1pW2l83iMH8thLLGHt28Y/7Tn4k9i1aadH2HE084hEzI6Rf
 8jw6pIslo+4iF39L1CwtRmgReMoShqLAuTLQOAsc8Sn+hk1PkTomL6i7gjhtis9Ve3vi
 SLCRgTtMiiw2NVOrf5e5Ogrm7sqqymWOhcQENe/6TxB8hxGZo2JEE8bgtCjLjbV3TMZF
 WjcGkmQyePkYtu7qsxd6p0Ibr4ZmOZAvy86QIMevcCpB5UumoZv9QLnBv2nDwDPmt24z
 MvDW8vVbNyESLCvEOb9eX1URRJFnNb6blHGtAXtMAFjVx30cUwDFfLRziV62jhQ9QAaC
 D65g==
X-Gm-Message-State: AOAM530vg4CNLpyCqs/plHAWw1l7e4HB7vAR8ftpJe1sWksTsznu6K8g
 +CcRtTgRf2CutrAVrm+IxJuZFlP4
X-Google-Smtp-Source: ABdhPJxaac7TRGf9B4Yfc6/Q7f2PY21P8UBX0Wnr5Ek/4NanfVovw9W+nvYjLwPpbDHD/J3IgwviJg==
X-Received: by 2002:a17:90b:4c0f:: with SMTP id
 na15mr423404pjb.112.1591120986740; 
 Tue, 02 Jun 2020 11:03:06 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:06 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Date: Tue,  2 Jun 2020 11:02:55 -0700
Message-Id: <20200602180259.76361-3-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110307_773209_80006F81 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
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
index 031ee1a8d4a8..33df3cdf7982 100644
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
