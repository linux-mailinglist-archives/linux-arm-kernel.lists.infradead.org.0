Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C5316BADC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ASSY+mkd5rZUdiUfn11z5xPPZnjNZLBhowSEsCT0DBc=; b=jGfD5YrR7O72fmSXnH1aQbo7co
	Efu6gbmeSifcHuLGeCWmuVdb29tO84yXzjp7HQ6zDYTSsyv2+YOFGy3h7WWjgPaamiXb2UiDyecGF
	rxSpWrzunpvCRw/tN0kac9IDg5QRdR8IOeklFXbAMvsY5grcdR2O+8mEIQPRHgxwlCpj5OlS8bxPj
	RnOGCiZLeo14wNgEBo7RKV3hMkUIrWYergzPF7BsSKd6siY4ih+r3yppJn96/JWmOLfMksTYIzzjC
	J0csZV309Q0RFhB2eQGdRmS0K/R3Du3unl2eVGfckdBG7QA4GqyN5hsmzW5Cp0racVpEjikHYRvFM
	prPbiwhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Uob-0001cn-FC; Tue, 25 Feb 2020 07:39:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Umq-0000Bm-4R
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id n7so6736217pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ug72A/vgrdmHIVdpr3zMNCL3H56NFZ8NAXeJKxd5VIo=;
 b=pDEi1gYlasNmPGrqygmBasm60r/FtjxKJbgu4k+fU01Lpbbws9FwI+l0FyggrMrfw8
 0TywUcVUcE6eDH/x1tLCESNAOLg5GflR/tj1V62c4ij6I0lqgBQCuSOB0ZEO4LteZdlj
 lCamjaH8M6JaLgIu50NR1uYkqcxu/vEJNkUeYLwHCKUrGVYrDjEdUg4CJBiLgwgRV8EM
 21cz3AhcL/QT09ImUvOvYnfvW7gSxFXeQJ9BePtmuJbMsKdK4I9GO55KmKdzYFu6Gxr8
 E8/GMCSYYqKE5Z0UJJP3Tp2X+lv0AcZo20RDJwsgdK3zNUZEv7fyreYvwuC5JS86DFxJ
 Y6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ug72A/vgrdmHIVdpr3zMNCL3H56NFZ8NAXeJKxd5VIo=;
 b=HJAZC80dr/vi7ApQxbCk6LXBdDqtYy00XT6/cFYYcv8ESUCv2OHbF394u0dEQ6J4hT
 9Ebb23rTXPnd/UdzBBClSUpxzuJ//kzZNUMYDW+3s3S1EQB8ASzvQKZa3B7iXWXJiQEu
 ITd4/HjNcybVTtTNcyLNCOa1x/EA5izoJ/gpdKrI564b2syEQY4261bZT6eT/3rrQX+B
 AMY6J3wvKfgtn/g/VhJ4hHR4RfNa68XnlyMglcU2ArEyYB3r+i69QjNHN0EUud8ZZdSJ
 XATnXq4SQGtpWNTfbzxPhfjPgUG3xThAfpOj5biDHi2SgCoI2/EpNdJe+9R3gYN938Ft
 +iBg==
X-Gm-Message-State: APjAAAWxntXbejMveO7JfUWdUUT2NxNWAaPHbzGmFSSk8WbrUa9p7BsA
 sHKKFK7SsPtdacRtGA9Ca+Y=
X-Google-Smtp-Source: APXvYqwBnc/F3BTx7cSSKx9yuCG9NgaaS6u4J8P5NdiroM5iqOC7DIhqEjPmkP0xhbxHaeNsEvHanw==
X-Received: by 2002:a63:d845:: with SMTP id k5mr54501802pgj.183.1582616265720; 
 Mon, 24 Feb 2020 23:37:45 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:45 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 5/6] arm64/vdso: Restrict splitting VVAR VMA
Date: Mon, 24 Feb 2020 23:37:30 -0800
Message-Id: <20200225073731.465270-6-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233748_199586_6CE45859 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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

Forbid splitting VVAR VMA resulting in a stricter ABI and reducing the
amount of corner-cases to consider while working further on VDSO time
namespace support.

As the offset from timens to VVAR page is computed compile-time, the pages
in VVAR should stay together and not being partically mremap()'ed.

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index fb32c6f76078..c003f7ee383a 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -235,6 +235,17 @@ static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
 	return vmf_insert_pfn(vma, vmf->address, pfn);
 }
 
+static int vvar_mremap(const struct vm_special_mapping *sm,
+		       struct vm_area_struct *new_vma)
+{
+	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
+
+	if (new_size != VVAR_NR_PAGES * PAGE_SIZE)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int __setup_additional_pages(enum arch_vdso_type arch_index,
 				    struct mm_struct *mm,
 				    struct linux_binprm *bprm,
@@ -315,6 +326,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name = "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name = "[vdso]",
@@ -497,6 +509,7 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
 	{
 		.name	= "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name	= "[vdso]",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
