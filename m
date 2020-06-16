Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE251FAA91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KfTVdaA7m1UDO3KwkvRiQ05Qx8pxvHGNI4AAulEQoEY=; b=UrkltjP525GIQy1r0Y88HYsIDL
	avbe3bl1iAiYTa0+lu6H1xi3OiKpgRBygfh70cmUQJHU8bMstGZHX59WviIRgo48ApeqPUgeIVne8
	zbakD09HS74HGYVhPazHDfuHGQc1YneRSqusquc03S8UrfrXrdk7Xojit5WWW8dNsxJp9sutFYqwD
	aiEDdidB2IJ+VxNcQPwBzHvPwJLHK/jtUAV+YSL/rojs3V82RVNo1EnKwJhUeqIbzwhjGpqi+J9m4
	erpaBkv3olS1URqYKV7y+67VOnesH0qWAR1NrKTn+sNeYLv36bbAIxF6bmWOB7zzQXhh0CBAR8/nf
	xJqzcatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6SX-0000W7-3C; Tue, 16 Jun 2020 07:56:41 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Rp-0008V2-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:55:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m2so1169710pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7Pc3zQ9D2av6U7xF9LkytuVQ3TEKU9mvAt7OV64zjjY=;
 b=HW8gH2+TWNb0LHKZx/L2PoIBSnyiXdbLTjOzJ/095pH2++lNTMOONJ7xnnd0H+jHXW
 cy2ds/KJlPcq6GvcObZ0FRsBjmMtjKWL04vJrlL98/z3To2opDDDxNgkBGN8RuF7Ae3x
 26fr4H4QJtPjynRAQ+ouigUzMUv/iRlDT0tVGf/ctsZen6y3c52pZY+T9a7+kTgc7hfX
 +JWpN6PEiFPBEQX8/EqL6YsmcotVfmmhSi+4UuWoXiZEhIsClFPnNzka2k7W8rVdpxFy
 p/t6p2eVOdaj9vQ12Q81vUnfC+XghwjgAFfIukI5h4ap265404FgcNAAVN7Y1VA0acZ9
 uP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7Pc3zQ9D2av6U7xF9LkytuVQ3TEKU9mvAt7OV64zjjY=;
 b=TCXlvVRvBMeXzA2k5/djbNZtFuWW7z2LF2ox/KS/c1Ju6rIvEO/irqGS2BQPdUV2rq
 JuvVAl/ZowjFTexwaU0yPrSbvOZeVu/B4wJ17od/Vuv79diN6s7MHMsq2B6w6qblU10f
 buTfv+TjjsQ8lP0gPdZRiluDVe62ety57PvCfNGCT5A+zK/aTdHnV75pmv2ZWdaxQZBb
 sXQJdsSfaLKOTvsafarfldivZwPaK/FucF16MFK8UZ4T9Re54lrLqO6L+yUBjVNjyISI
 y2vuhZCeGBgjbHN/5GPdnEkbS1nM85mXLuSAQG/YsYbm0abqTcB2PUwl4FMUucy6/2Gb
 satQ==
X-Gm-Message-State: AOAM530n6c1rkLwqeUrx2rB8+2dpKAzKibyb5uc2gr1W6QVNvicSKN6E
 XaQflKM6rW2ozZPAjO8DMuwMwCf0
X-Google-Smtp-Source: ABdhPJysK/fjxfmRiTrNZmw9EgjGa6tFHoxvuUSFZZaxSjSNA9SxfwRSCAcSao3vO+Osm947ZTQLzw==
X-Received: by 2002:a17:90b:3448:: with SMTP id
 lj8mr1567308pjb.163.1592294157009; 
 Tue, 16 Jun 2020 00:55:57 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:55:56 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/6] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Date: Tue, 16 Jun 2020 00:55:41 -0700
Message-Id: <20200616075545.312684-3-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005558_000880_81BB1350 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index b0aec4e8c9b4..df4bb736d28a 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -125,6 +125,38 @@ static int __vdso_init(enum vdso_abi abi)
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
+	if (mmap_write_lock_killable(mm))
+		return -EINTR;
+
+	for (vma = mm->mmap; vma; vma = vma->vm_next) {
+		unsigned long size = vma->vm_end - vma->vm_start;
+
+		if (vma_is_special_mapping(vma, vdso_info[VDSO_ABI_AA64].dm))
+			zap_page_range(vma, vma->vm_start, size);
+#ifdef CONFIG_COMPAT_VDSO
+		if (vma_is_special_mapping(vma, vdso_info[VDSO_ABI_AA32].dm))
+			zap_page_range(vma, vma->vm_start, size);
+#endif
+	}
+
+	mmap_write_unlock(mm);
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
