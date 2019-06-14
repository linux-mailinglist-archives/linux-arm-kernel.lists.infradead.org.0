Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8115452E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Tb6lLJaz2ZVakSy4Knqmqaad25btOTIJa6H1Qs7XH4=; b=Fawsl6rsf4JiKu
	c/+K8k58SBZ0P4h239lNjm4w5+Vdp1EuaA5XNYO4Im/lF+0Kcp0TBQPF6AMIvARQVpqnkM9cZWoiU
	zghqWyI9daTTIDliuo2zBzoCR8dcnamrsGLO7wJmvmL/uVqBkl2jGEOH8xi+fxHnDJI+gRXKWuRqY
	rRd97bAqJArCuuYGfyTEVqIpJPXAwxpLxgQK4t3d6AB4R303vXKA/ECuB7/6bBt404QjuVeEWtk9t
	I27iUbWptvOHYeVFFaJriBBPr+KvA9KIQGPel4QlTM692BkgKaSjNkI7Pp2e0jmNYEyOcgVDwhStZ
	5lx8AOAOEpasSptUYdlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcql-0006WF-1A; Fri, 14 Jun 2019 03:25:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcen-0001BF-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id k187so691224pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=dzAIXfjMtBl0yLP99Ks992Mq6IPJZ1HUk7Cbh9sMLFPdCk0tjIbGqG2zuQ02QyxMll
 jM+kUdcPwm9JdTju9yvrbg8ThgOP88bOWYBqRNTKKJVn7ijo43+wsVsQbqUJItl1uuqC
 kl9DITbxr1DjaaV0vry/PlU/VBmSmjfWu86CuurkeLAk6rmmhbUx61UfBSdkvXJWnXHx
 w4RX182pDEgAvFqcb21IReDHbX6IVx3u7uvXz5GUI3/M3RcKN1eDoJ1I7TfEw5jqHGKc
 445EMtA6G9UfW0AnEtq03m5nA8StW9sR8G/tiN2bQeZCRzDw4CNP02qyubxU8Axkf4CU
 WLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=YJp2atD5Xk1HkdAdQHGMi4S6RbMeKSF0+TO20nnWzDk9DmDx1q5y7h+55nTzD/XHH+
 AhaTLT16NZ2KZQljv6raYxroCL2ndJ/QLLUXPhLIzmynUTDvKNiQLQKBNf4hnQN8Lxrh
 WXqniV1dgBBNlQ9yKsP4r3BCAm/xXcyUfv3C0jyF8OHXAGGW0qpSNiHeyztowc8HFErV
 oiRqsP2+5o53zcunmwyaf8Tulnkk3k3cSwnXFhlTi+gxAaX+J/U4nlK3bmdjD43+nuXR
 RdtKEpySiZ2JpD4lc0GRj1PmBprRTLervoRe9qDwuzCDNrrPzEpR93pWbXj4zThXDcmI
 y0vw==
X-Gm-Message-State: APjAAAUPXhCMHpkP56wP3Y0aI2rwF1I7NUC3/CpU/+X6Y2TTAoA5Tmba
 V6aGX5I81mirnnVbh7oC3GdgsuJtQ08=
X-Google-Smtp-Source: APXvYqymprJXCY9sWZAo+ui3FwuWMtd42W1wCE4AxPI6bvvdcG3IBLtauENKMMN6WtacSFzztkW8Fg==
X-Received: by 2002:a63:1b56:: with SMTP id b22mr32193643pgm.87.1560482016730; 
 Thu, 13 Jun 2019 20:13:36 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id e22sm1107255pgb.9.2019.06.13.20.13.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:36 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 39/45] firmware/psci: Expose PSCI conduit
Date: Fri, 14 Jun 2019 08:38:22 +0530
Message-Id: <8b5c248d26b432206c3e019d8630da59e18dfb3d.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201337_793431_7D710747 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit 09a8d6d48499f93e2abde691f5800081cd858726 upstream.

In order to call into the firmware to apply workarounds, it is
useful to find out whether we're using HVC or SMC. Let's expose
this through the psci_ops.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 28 +++++++++++++++++++++++-----
 include/linux/psci.h    |  7 +++++++
 2 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index 290f8982e7b3..7b2665f6b38d 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -54,7 +54,9 @@ bool psci_tos_resident_on(int cpu)
 	return cpu == resident_cpu;
 }
 
-struct psci_operations psci_ops;
+struct psci_operations psci_ops = {
+	.conduit = PSCI_CONDUIT_NONE,
+};
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
@@ -187,6 +189,22 @@ static unsigned long psci_migrate_info_up_cpu(void)
 			      0, 0, 0);
 }
 
+static void set_conduit(enum psci_conduit conduit)
+{
+	switch (conduit) {
+	case PSCI_CONDUIT_HVC:
+		invoke_psci_fn = __invoke_psci_fn_hvc;
+		break;
+	case PSCI_CONDUIT_SMC:
+		invoke_psci_fn = __invoke_psci_fn_smc;
+		break;
+	default:
+		WARN(1, "Unexpected PSCI conduit %d\n", conduit);
+	}
+
+	psci_ops.conduit = conduit;
+}
+
 static int get_set_conduit_method(struct device_node *np)
 {
 	const char *method;
@@ -199,9 +217,9 @@ static int get_set_conduit_method(struct device_node *np)
 	}
 
 	if (!strcmp("hvc", method)) {
-		invoke_psci_fn = __invoke_psci_fn_hvc;
+		set_conduit(PSCI_CONDUIT_HVC);
 	} else if (!strcmp("smc", method)) {
-		invoke_psci_fn = __invoke_psci_fn_smc;
+		set_conduit(PSCI_CONDUIT_SMC);
 	} else {
 		pr_warn("invalid \"method\" property: %s\n", method);
 		return -EINVAL;
@@ -463,9 +481,9 @@ int __init psci_acpi_init(void)
 	pr_info("probing for conduit method from ACPI.\n");
 
 	if (acpi_psci_use_hvc())
-		invoke_psci_fn = __invoke_psci_fn_hvc;
+		set_conduit(PSCI_CONDUIT_HVC);
 	else
-		invoke_psci_fn = __invoke_psci_fn_smc;
+		set_conduit(PSCI_CONDUIT_SMC);
 
 	return psci_probe();
 }
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 04b4d92c7791..e071a1b8ddb5 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -24,6 +24,12 @@ bool psci_tos_resident_on(int cpu);
 bool psci_power_state_loses_context(u32 state);
 bool psci_power_state_is_valid(u32 state);
 
+enum psci_conduit {
+	PSCI_CONDUIT_NONE,
+	PSCI_CONDUIT_SMC,
+	PSCI_CONDUIT_HVC,
+};
+
 struct psci_operations {
 	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
@@ -33,6 +39,7 @@ struct psci_operations {
 	int (*affinity_info)(unsigned long target_affinity,
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
+	enum psci_conduit conduit;
 };
 
 extern struct psci_operations psci_ops;
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
