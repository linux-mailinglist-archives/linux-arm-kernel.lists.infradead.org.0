Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4180D4529C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7e+eJi4s9KVLZ8DuWfzK4MJ1almm9M0BRCRnGc95xw=; b=nf8oJ6ALJjNfAJ
	EKjP6/e6KJIbdb2kJOLcCikuhZLIzBm+haVbC93ui9ad2l49mI4dIq+wBI0Dg947i8otG5d2vKdnj
	VD1mQdaj7STS7tAwfbgbeVOTPC062xvWC3rEK1LqGVUxCuF6hLhnbTbGVPocqt1Qsv+/bYq3Y9lk9
	c4fITmHje5cyEQrHo6VMTKg8sW+W2ZE9nVSLWymEKJlfNyXc3a1daSbqV28OGcyN1fk3QfXIyJLbQ
	ACzsK5yJhhajz6mcdjaWzBccr2aGNLMl4SD3JWnnc5KuKrzeNpLtU7ByflpcVVp5Z4nIdXZf/y0EO
	MSzZGxwgXyh43I6jK1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcik-0005rq-NW; Fri, 14 Jun 2019 03:17:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdk-0000No-Pb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so368161plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=G2wmSB0wl3ZSst3wBKM0lmkGVB3EAHRbdwUzF55iA5Zc7PyVUPSzOlglM3cYPWwRdH
 kG5s+Oc45ZUBoFc7mYCpXBsXAu5XGmy/7ktcJKN5fvs5gGGo+RUG59zBtu0U0c7OD1G5
 rCdw3QRLYuHQN2CR2z5SNEW280SeN+8hmo3JnWq17WmQ0XAbAnBQB+8kSzeiv2GOos6N
 i3DZfvNnVkzqtXL9ayx0CfRlKWcSGFcOx2QhOmHPWcoJi1efyzQBp+8/rbWneAGyAo7p
 6b75570FcqLite+nlTb86LYO3NmyJ9+l6P9/g2w84R7+Ws1R4y+j1181T/YYXzDR4xsa
 qF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=GlD5oBDm90oUccpFpTj0CB9k8r620NhzPKnhCjvYw3PxOz89shN/9WIxru0JqAcNqD
 2QVNUfL/aTtitLovRA0g+xXv4AiLDEzcd4SoB3p4KuqoXPjhpNsuk90j3kMR9pBBJRqF
 HgQYGln7+zCFAXy/eKulFvCIwPb+M05l4K7lwgcuDoa/uyEFZdJkCY5yGZBduMoz1aVu
 gUdKtd7tyVzVspHjjwrM1fKJegLVpBacVdn6rX6WWHY/qfv/M1rJFYz0dE2fhfw9XaE1
 OgDwrrx82ZQe7Zl/DlvDF8m6JWGEOAlMJIU6kcWDCu8R6lDtp933fog0rrTEg23UbGIT
 33CA==
X-Gm-Message-State: APjAAAVe691A22yBy8i84iFnOoUNls65plhnqM6MgIvvNkxi/ElVk8xf
 eYtZdTQtQRuAj13ON9meG9//0dbiSbU=
X-Google-Smtp-Source: APXvYqy0h/l06dEAqb68tyJjmoqTO4IsmomXMrOr3ePgip3/iFchSjUdjaq0IfSo5o/2v8S6XIqJCw==
X-Received: by 2002:a17:902:522:: with SMTP id
 31mr86143113plf.296.1560481951066; 
 Thu, 13 Jun 2019 20:12:31 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id p68sm1036348pfb.80.2019.06.13.20.12.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:30 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 14/45] drivers/firmware: Expose psci_get_version through
 psci_ops structure
Date: Fri, 14 Jun 2019 08:37:57 +0530
Message-Id: <5f5b6ed2828ebd885fa4bc8e764483d81f419bc5.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201232_929613_3566D058 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit d68e3ba5303f7e1099f51fdcd155f5263da8569b upstream.

Entry into recent versions of ARM Trusted Firmware will invalidate the CPU
branch predictor state in order to protect against aliasing attacks.

This patch exposes the PSCI "VERSION" function via psci_ops, so that it
can be invoked outside of the PSCI driver where necessary.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 2 ++
 include/linux/psci.h    | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index ae70d2485ca1..290f8982e7b3 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -305,6 +305,8 @@ static void __init psci_init_migrate(void)
 static void __init psci_0_2_set_functions(void)
 {
 	pr_info("Using standard PSCI v0.2 function IDs\n");
+	psci_ops.get_version = psci_get_version;
+
 	psci_function_id[PSCI_FN_CPU_SUSPEND] =
 					PSCI_FN_NATIVE(0_2, CPU_SUSPEND);
 	psci_ops.cpu_suspend = psci_cpu_suspend;
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 12c4865457ad..04b4d92c7791 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -25,6 +25,7 @@ bool psci_power_state_loses_context(u32 state);
 bool psci_power_state_is_valid(u32 state);
 
 struct psci_operations {
+	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
 	int (*cpu_off)(u32 state);
 	int (*cpu_on)(unsigned long cpuid, unsigned long entry_point);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
