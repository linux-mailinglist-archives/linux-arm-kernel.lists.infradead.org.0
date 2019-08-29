Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0668CA1914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7e+eJi4s9KVLZ8DuWfzK4MJ1almm9M0BRCRnGc95xw=; b=o8wRk+iIzBe8hI
	fprX8ygITHI6SqTsLLoqukfH42W3prEgotKiRWtlBDOBx7rZ9EzPHmi0u18J3tmHb8Kd9llq/ZMpa
	rTnprXGd3UxXpvO7ZO11jD2D0SJ3ia4k/gnKojg8sWvULnIBBxgqBJfbXTyRI6UnRkHz8Qvcpmcuu
	tQDNZrHo866wGYnFElSYc1PHBQaGhAZfs+1Pfb4K/XPpkKTVYogQ6k8dk7DIrmxN9RAgntZ4im7p6
	m+d5pJ6qreu9Jc1EpQQmpDAEGDn0+bHoks1FBWVaXK+GPQSjaPZLnrjfcPtrk8kd50RQrYvg/uNsG
	7WL7DqUZZqhwkiKPgCAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iob-0004B6-1I; Thu, 29 Aug 2019 11:42:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiW-0006fU-Ul
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so1430386pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=EKkXXo+25/F2wHAvxwC+L41EuvRc64ZuVgzd/LPBxjuYWjUOugeBxX/JmSX8/pPuWi
 tcTrkn9aLyId59ixMbK5XFkaU3wK0vKNY3VK/rHHrRBg/dPSckEW+9rmjlNWuQM9Tisx
 0KJ3e7msSb2P0/kZmniWPexAfGtt/YjGycG7slVs+YzEMUXsFeD2Aewrk9WB7F+DPfeI
 TTd0iWFy2hXN8TbqyaK53fAVy0kmnGxF83t3lGsQU142ZiTORguncJKiCnZh3bb1pSpG
 YnyCr7j6D258ztcvLdFikS1wRddMjD+luCPjxUZUU/kiSvqvN5wsIEBuOgsJZ320VmEd
 wT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=N9iMsVWzdA7qCkUxKyLkYEZUL0FAwQV0isN+0hmmWdS1Cc5UF5jRlJd1BSLboYbeqf
 OtUgw7hCigFXqN0VnCaptSGR5FJvmnisaDvy25fsT6wJpTTmXfRkJZxn5Ek/o8n9xBld
 etSJiW0BWCHWQPfNcwXedJuHhiv1XD9O3sMepRLch3hCVqLkemc0Z1UcbedKCLYDg0gH
 +sO6dd4AFpjS1zH99CFlp4+ONG+E6xHVh+0TJRuQaN3/nCi3o/K8hr2oSfVlPNHJ3uFI
 ly7moG4JsJZDt/5KirujdOtOHl17r9U6O1bz6zRmP6sFXztbgtXOAjsqRtL5jjMbmLCh
 XeEg==
X-Gm-Message-State: APjAAAXCib6RrURP6Qzhagttrr44lHXdUahLHrO2EkW8bfsqcqqoz3qg
 GUdvpSb/+85el5IPGa/8kezKyQ==
X-Google-Smtp-Source: APXvYqwyRqyVrCjmXqfEVcoS++1F677bWD4W2x6l2td9wpndpwTN/jv+TLo91zKWOXfA3/0yBbtMTA==
X-Received: by 2002:a17:90b:8c1:: with SMTP id
 ds1mr9513477pjb.114.1567078551685; 
 Thu, 29 Aug 2019 04:35:51 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id c199sm3767496pfb.28.2019.08.29.04.35.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:50 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 22/44] drivers/firmware: Expose psci_get_version
 through psci_ops structure
Date: Thu, 29 Aug 2019 17:04:07 +0530
Message-Id: <116c1fadc5685b62ab36b1a368eede3f9b1bb9da.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043553_214364_86095BA9 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
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
