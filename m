Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95215152027
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 19:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9dcQugUiB66M5NwPjZubQWwsB4I3AoNFRZKLYf4iuOk=; b=IypsHbkuTmRkarEdzg0H7wBHrA
	q22uWsrL5oyCjjizRQsvz22FU7ZyVn3Nc7kkAnpcbu/oGrQeJaYr4oVXul+uFGiOFo8IeI0owR5DR
	za9ieTi1CPjGz24X2FUroOgC4unH7qYpmZnMxKKqHnwWNvCZgitbOSoL2IPWzBgvh5q0Qt/2YewyY
	BhJmJmngnrnf1ytnrbx7ARuBfGZLFPvAuL+6OfoCOYWQKY39tcdvbQ/XthVd4vJ6pPk1Xz6AvhVm3
	szAVEaqqPR6e5lMExuTV6SM9aMkrvTutJBjmJBgz2UOBTFFdY04VV5skloNu+KGpWIYKwJeI+aGC4
	BoAdix2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2VK-0001RN-VW; Tue, 04 Feb 2020 18:00:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Ty-0007bZ-Sj
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id k29so9820843pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JyMzGy1x0Bon4+AzM/Sj0HNrbhuXPMQCx6Z9N3h13AI=;
 b=UI3nq/p9II8ri8gMr7xe4jx5TsTT5VWWhbBR7v+ihCbko9aZN9SZ1sO8nro5JpLhNI
 EK48Cl3ywcSaRhchOJXm1FYtGAJFWf8rKE1of5WvcC1GPSpYi2MAowQyiHBwkhbFJbfv
 6ns+r7NVnz/0MX1TwyA7zFwrIRmqfiAMNOc3R0/VBdH+p1zKGvql9LZ2yZCRjml/vXGj
 TBsu7RPFMwRMm/WTz3k9ZzWdtVrAJp1YVe/Ha9nPQKj33UPVFNqO7txSOBrzN60lTGQ8
 Zr5EpXwvVtutXXkTyQh9O/bprChPTWnAMhKvx671mDx9/Ye0P/brBW39AT4A7iMZLcOU
 FYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JyMzGy1x0Bon4+AzM/Sj0HNrbhuXPMQCx6Z9N3h13AI=;
 b=DFafEdUclgSwalXTwH4gUu6KvUuXZ0Hq/thL7iTjWvH6holWVtBjV7606whyZRDr8I
 r53znUCM5UY3Z1UPpAC9C0A9k5CVMlFLGQLaiLyOY+x5as4OizX82wejlAAGfiEkQwHa
 3DVeWKTtLce5oxhqQ/1cR94AjTFgNlU3utj9JZuhcTC486iwiHOpgfPMwEsATb3Gyea1
 Eew1sZXq9OJt3yS9qgRSgOLIhPgzpRWVRgszEPICPCsq3kiwKnU1WEaUhb6P8PZyu0U/
 iydcn1qAct4TVFukbIE6bCHXG/aN2yrJkIS6lrG+h6BGItnqsUHi0353vv9AxngbLWH8
 nHZg==
X-Gm-Message-State: APjAAAU9IWfrgUMv7819OVt5jA5mg0hBLaB9O7ri2TNP4tnSwYuGhhWT
 HyvEcXUE5LkJSrTkViuX+cI=
X-Google-Smtp-Source: APXvYqwVVGMbq4U6Mx/8kHYp68Lm5UDq8ejfa6s44BKqQGNs00hDz/L86IOvGdVpIQoM+QmiUsAd+Q==
X-Received: by 2002:a62:f243:: with SMTP id y3mr32842181pfl.146.1580839169558; 
 Tue, 04 Feb 2020 09:59:29 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:28 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 5/5] arm64/vdso: Restrict splitting VVAR VMA
Date: Tue,  4 Feb 2020 09:59:13 -0800
Message-Id: <20200204175913.74901-6-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095931_008415_82AF6827 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
index 2e553468b183..e6ebdc184c1e 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -229,6 +229,17 @@ static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
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
@@ -311,6 +322,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name = "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name = "[vdso]",
@@ -493,6 +505,7 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
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
