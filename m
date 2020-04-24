Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA281B72CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gc4WPwK3U5fgxQI5EOiq6i+TzUzfFRxRzUh6PrZZeR4=; b=GpFfijAwH0UyfT+dK/A+KlJBkQ
	vjiDftQGFgK9WqvtNgkXfGDjaGXBnr8P85aZnuoCT7yAwXbRMPSyaQGRRh/w/cnbTohuiTT6/hUhV
	DEfyqCfSRfFsWKk2Re2ga3VgsjoaSbhbO5Q/KjaZKVKtvtNaucVycwvPl1IhMBxm2m0jJx3qzgWHS
	GLVmtxW70lN9h03Hmct2zpNPgGWCc7Kdh/QZc2W4M+PtzNCuBOzhL+7GdtgfBr4fijGn6kPoU6FJ+
	j1IvWHzNOtScrDk5vi1ckM33WKWReTwmsQW+hyaI+RK1bXljyvMZ9ZLpbXCyJqoctS4AMexcWKkik
	KsgPqwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwFo-0005FV-Uf; Fri, 24 Apr 2020 11:12:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwFJ-0004xz-2I
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:11:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id x26so4475415pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 04:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VxQ4o9PvJLeDXlCdKC6FnBvF+Rh/OB42QR1xOvGVmug=;
 b=YacZq7PZlYzawRE/JiR4rFErkePmBp3ThfIGiML8t+nhfJ0kt+oFtkRos1HE7c/4zM
 9jNUz/wb7GU1eHxtS4Qg6wF38dlfF6j7kM7V4Zm7PXK8tJL6Am8vbaImoAlhnfqg4jmJ
 GIXimV9vmSiTSuISRhnd4c1lvIPs4lOfv7oJO4IaCm5Xa/6PrUz6X97dC54BXanvgqOa
 ZfaRNIK7Sht6YUCwwj9ezBpg5CS0Y51cepH8ZiCazq0sdoZ1uCyiL1fzgRGVwjnPwHKJ
 g7MEvkNL1pv1CHsK2gOWkQx4if0WwWMILQaviXmVHfBjNenrJOgSgFm2aQjtmNc/SkHJ
 Zdsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VxQ4o9PvJLeDXlCdKC6FnBvF+Rh/OB42QR1xOvGVmug=;
 b=na546CyHMjL6hbZFQuCH/TZYnGmzzSgnlPkKBSy9K0s9gi9sIjH40MtGI4aZLbAKOR
 d5VIvSUChFaoy/NfA3qRZjb4rWEy7K5M9Ce2tYNQ+bgv6k6Tp7GvWk63GkuosF/nkolT
 0TjVo3nYCQ1ZcsmWRqzpTwDDT8zCbdwbIWEQgx5lAzqCd1wScNWidKGjVUWyNIoIEixj
 XAoKE1Z4VEWafrF2STQzLZEAT1t+JHkd1vtuTIwQap//1B72htz7uNw5IO6nXtW3Kh4N
 kmf6Bt3Wwpc/eSf4f6nA/0gOGbdoy1ObXP2RfMedgSDIkr61eW4uOpolM9OJ/evhN/rZ
 v1aA==
X-Gm-Message-State: AGi0Pua40ftnaZZmh0MUt+WZ8afYXOdRKJ+x4EKtVdKLcGnebvslyhiP
 JGLbF0WuydxTrHIAhCIJhL02rYxH1Ju+XA==
X-Google-Smtp-Source: APiQypKsve8n7Z+70T9CcZrjuYG102mPugIIPPAH3Qu3Es+6cyhZhldMNasw9Iy9/gJxspU7QTFreA==
X-Received: by 2002:aa7:874f:: with SMTP id g15mr9462253pfo.45.1587726706941; 
 Fri, 24 Apr 2020 04:11:46 -0700 (PDT)
Received: from localhost.localdomain ([117.252.71.186])
 by smtp.gmail.com with ESMTPSA id o11sm4637628pgd.58.2020.04.24.04.11.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 04:11:46 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC Patch v1 3/4] irqchip/gic-v3: Enable arch specific IPI as pseudo
 NMI
Date: Fri, 24 Apr 2020 16:39:13 +0530
Message-Id: <1587726554-32018-4-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_041149_302844_7E0E1B5A 
X-CRM114-Status: GOOD (  12.05  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to mark arch specific IPI as pseudo NMI. Currently its used
to allows arm64 specific IPI_CALL_NMI_FUNC to be marked as pseudo NMI.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/kernel/smp.c      |  5 +++++
 drivers/irqchip/irq-gic-v3.c | 14 ++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 42fe7bb..27c8ee1 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -802,6 +802,11 @@ static const char *ipi_types[NR_IPI] __tracepoint_string = {
 	S(IPI_CALL_NMI_FUNC, "NMI function call interrupts"),
 };
 
+int arch_get_ipinr_nmi(void)
+{
+	return IPI_CALL_NMI_FUNC;
+}
+
 static void smp_cross_call(const struct cpumask *target, unsigned int ipinr)
 {
 	trace_ipi_raise(target, ipi_types[ipinr]);
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index be361bf..a3d2cf3 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1048,6 +1048,11 @@ static int gic_dist_supports_lpis(void)
 		!gicv3_nolpi);
 }
 
+int __weak arch_get_ipinr_nmi(void)
+{
+	return -1;
+}
+
 static void gic_cpu_init(void)
 {
 	void __iomem *rbase;
@@ -1072,6 +1077,15 @@ static void gic_cpu_init(void)
 
 	gic_cpu_config(rbase, gic_data.ppi_nr + 16, gic_redist_wait_for_rwp);
 
+	if (gic_supports_nmi()) {
+		int ipinr;
+
+		ipinr = arch_get_ipinr_nmi();
+		if (ipinr >= 0 && ipinr < 16)
+			writeb_relaxed(GICD_INT_NMI_PRI,
+				       rbase + GICD_IPRIORITYR + ipinr);
+	}
+
 	/* initialise system registers */
 	gic_cpu_sys_reg_init();
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
