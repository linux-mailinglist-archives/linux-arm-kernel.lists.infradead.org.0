Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E3152023
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 19:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P/VY1UIQIl9dBzT4y31VkKMNbcAXJPo2rwr6SdVJJA4=; b=XFj9RTCUI23eiPrSL8Kso4yl0/
	y0CAl3FKwVyOcj+DfRsBCbtDyZgkLvn6A5pYYgRW5LIFEB9HoPW1XATz9NZQbBO7tnGegAvu4JZeO
	RCOFZeaRkhKVFiQ0AhsaRvHgWS9/12UA5UL1IzFFUUYgNhyl5SryULMo2ervqbTuQk5Jrxagqg28q
	1pmHBYuaAguxGrKmbVdtiqeg/Ew/9Qt1PeVu0yjydFhWtW2pe7ehzlgNRCsq66GLgWPL6tP20XSXj
	7Ujc0PpB9crincYXXR1Ong41lvSF8NrTk3NBbx9fQE4cmsdKnPvuLERlfjXE/hHUCNtEstFGXSsRM
	4qMJxuEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2Ud-0007x6-0t; Tue, 04 Feb 2020 18:00:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Tu-0007X0-NW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so7566911plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7Yq7DlP+MKcqgZ3wsjfCTguAnbXfIOKWROJvqxl0zoQ=;
 b=f2D9vquNX5DsXU5g1xuVZpuFt9sTH4kFwsIAWNMIjnxU4QKnljJhk9oBZx4jGkTBER
 L2lJn5kkTuXGKXMRxq1F7++Ge53ax+ujxh1P/CQHoT6Aa+x4zGIEGrGLIPiu3zV1MqqD
 IjnegYIZYOF9cHDeb5aYhnyZve7ybwBeT/ofK1QB2aM6Myt/7mATzhWcfhbwZm3rIOki
 By3TJYdZqvQBqPIxasrGkhNYd1py0kxsUijkqJ7xpQxmX8ygFycQ6L4uKslE7Jdc9pFV
 YQbTzpCfLKBG+UqTQqsBPCWELHqafw+dikqc9/SOsCJ9KcCXPR8uD9mRUrZxG41OinTK
 PT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7Yq7DlP+MKcqgZ3wsjfCTguAnbXfIOKWROJvqxl0zoQ=;
 b=AoDr2hdJWQ09lXPcENN0ZseKJE7SMtREp/rxbHc9J5PQ7vscF/xoFC8cuaKvNqidme
 58DRxxxHNlGexwlJpFcPCQRxzvXdTkDIpHWrco3SLjjP+LDD6ga9TZ+hR5p/5a4LrXgz
 c9lBLE+BrCPiNcRV//7Fn+E9z1JcbcT/WWbwZzoZ9+9klrlXeXnz5Xgy2UeVAxPi766H
 rRgfikcFrLexj2xS+R1J+fe24D55FzELTGh4ONiVD7sIvUp6AcmbX2OEthe3nDSh409j
 U2qwf/b6LfP3i1T42gMG3CBVh49VEB4nYtqg2KxhDB9agY0Buj65+2Oy5kH8ordUWVGs
 WyNw==
X-Gm-Message-State: APjAAAXsOQUnJ0wSMFbFQ/zYuyy03f5xgsarWDjsWxuNWwawPKAdnIRt
 zYheZpyCO/1HxekEQadNXt7HryEHwV8=
X-Google-Smtp-Source: APXvYqzZ3hxUy2pgjYnm+E5KKwzAk92s+OrDRAm4xSLtLf0eFvS2+/aSnkqwr9PMcUcTGFMIy3Fd9A==
X-Received: by 2002:a17:90a:1697:: with SMTP id
 o23mr363140pja.62.1580839165382; 
 Tue, 04 Feb 2020 09:59:25 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:24 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 2/5] arm64/vdso: Zap vvar pages when switching to a time
 namespace
Date: Tue,  4 Feb 2020 09:59:10 -0800
Message-Id: <20200204175913.74901-3-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095926_794339_0D332BC2 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index c4b4758eaf0b..5ef808ddf08c 100644
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
