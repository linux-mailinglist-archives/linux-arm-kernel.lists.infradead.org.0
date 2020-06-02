Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9ED1EC197
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HdEaJsySBnUjiJt5+fvpkXhFEims8OLGVkizdTTVPx0=; b=s0lpCbUwaFadFQ1gf4+0Ogo3jM
	vcXmwbC9Pwd8s4Am4X6J4WT13StoRrdUXvguwoTORCe3GjPCyu2Xd2s0fk9Xb+wJSRaO0gkadpMRQ
	04fRNx2SC4thHTJIC6/UQHMAYzv5dNVStaqayWGoSJY4Hr/jPZ8bNP1Aig0KO02w9y7T36FnFGHwW
	IXbwzXp0G/hN6PmZEL803XY9xMM4MKOtPKIeC+QoAdD4oJrvnC8/pdx+MVwh89DPKo7ZGkG+6aQor
	Fo/S660NZmoxN+0A22PPgUKOqPcVS6+uVsfHKRc4ZxNl72Ex3d2gO0IetmFiGiQCleGVk4zomUxil
	0nzpFolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBHB-0003xn-Lp; Tue, 02 Jun 2020 18:04:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFn-0002ix-Nj
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id o6so5449028pgh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0ff3kXbnY7mWoXT4ZLxtxnZ86nFn96gKFYgcZDXTiq4=;
 b=Pz2n9CXwBlKq8PW7Clg8W4f/AinwzKiB+1ZAHlMPryHhTCOrwPxRw4xVn3lGiwP8rO
 EcVeshytONp7z69W8S2CQ/9E/fSe+hmf2Z+RUjSkLQz7o7Je/OpRWCUiJFidLTEf/kI1
 HZ/ShoxY8TiY8m2yA9q9zGz+Cdquf+8PmU6BnRrc2isbe6OuPXiIXLqKTluopPjOB4at
 6c7Na0whmCZlO0YLC5QQgO3pGzF7cayFsq8ux4P796I2iaww5Xq+AnZdgzfmm7AOePfU
 UDkwsZ7Vn3XHjJ24T1QpIReFhzDhACVocPW5v4E39Dr4+3ynDwFfw5VGhylX6N9+y5zU
 UasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0ff3kXbnY7mWoXT4ZLxtxnZ86nFn96gKFYgcZDXTiq4=;
 b=eRu/A7kyvSQvC6uQfP9BKlqjJ4ioupKbYB9HvqTspeZc/TgITzbXnVikxBlD/n941Q
 gxOfuHRre8zaF3tt3+zdhVUqZtdW/tZP6WoCSb84cVMEcFsX2vhPrnRSC3siLBPsO9+p
 H9F+NS1yO0mZugl5wNOUs+v70w+pRY5ONz8bfF5A/iu18Od41zqwGCMai/oU+HzngXpv
 9n1eM1gvMqIDCumqkXZ5TZUFxi0ktzb6RoKYta7PMCwfWHtEjz3JrwLaB7yTl8UAZK1D
 +RelBfgVb0SYn3tDAtlV+srcjmpXOLkIkwKic7bqSuDMT3TjcjN6i8cq9Q6v6E87d3BI
 JRxA==
X-Gm-Message-State: AOAM533+oVTtc4crwFQ/qD2C1KEO8wfz6tZE5XrRj4hasUvW6xPTZ/7u
 qhUk9jz58vEYOKYXfVZL/rvNUBvr
X-Google-Smtp-Source: ABdhPJyeJEHpH4P3opkCS6VQefDLqAL7wW0kPJHO1aE4Rm6Ng+v9CzZH4XZaXxORa/Ol5Hh9sA0z3Q==
X-Received: by 2002:a63:9319:: with SMTP id b25mr26017714pge.374.1591120990153; 
 Tue, 02 Jun 2020 11:03:10 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:09 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 5/6] arm64/vdso: Restrict splitting VVAR VMA
Date: Tue,  2 Jun 2020 11:02:58 -0700
Message-Id: <20200602180259.76361-6-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
References: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110311_787306_9432F70B 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Forbid splitting VVAR VMA resulting in a stricter ABI and reducing the
amount of corner-cases to consider while working further on VDSO time
namespace support.

As the offset from timens to VVAR page is computed compile-time, the pages
in VVAR should stay together and not being partically mremap()'ed.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/kernel/vdso.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index f3baecd8edfb..8b17d7d10729 100644
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
@@ -317,6 +328,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
 	{
 		.name = "[vvar]",
 		.fault = vvar_fault,
+		.mremap = vvar_mremap,
 	},
 	{
 		.name = "[vdso]",
@@ -488,6 +500,7 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
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
