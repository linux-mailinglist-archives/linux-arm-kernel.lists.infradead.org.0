Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B3566695
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Tb6lLJaz2ZVakSy4Knqmqaad25btOTIJa6H1Qs7XH4=; b=Qks6zaVAMZwZig
	AkONZNEEWvmjAHqkm0lcOnn8TzaickvaSzXu3Smy98rAaMTyxppe6pZAJf29bQdrj3fAOxycQvNLW
	M6XdJM2Ah6GW8NvfOPjf/kjhNO0Mzp1FtMaGZc1Z2gjOhx4pig98x/oZ3Ggp8jwEAbgIZh4UmX4cp
	zroW+lrnZlG42wbEa+iXYc2UVOzagZy3/tWAAaw+fUqFyB2HpR6MpCav64IzW+a9H22Rpi6mWrTR7
	h1B5DItxS03udsN2P1jgt2PWbUTVJNITMveQ/vTJgl7kv+vOhRRG63IOJmI4FNbOz0co/H9J3UdEb
	6/EruFTVOW7Y7RdNx3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloO1-0006ki-OQ; Fri, 12 Jul 2019 05:46:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8n-0002iD-9i
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so4001460pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=G2tEld9uv2oYMaQUCTBFxqa1q7vQCKFskzW+3vZ7KHoRZZE+eDzTb/9OoIHlmsgi5c
 dQcUGOLOIGWi7YGfHeUtx8CUU5a3d7VTyMVMNWiB6+JlPzSOxYezRtPnPUWdsotWuoVI
 YWbywnI5sVGB9p3r2gnWsGDeW8PY73vperHXyfQacTZcENcb9fQTHVIl35QFWMDitbCg
 hL9iaDqU7Jo8vVmiQg9Q+bRxP3RoTlvcD1ELyEuvVDADwr0Mzy3CbY41NKGps22/HgG4
 ur76uc+Vf0fE0iBa00iavivhq6nMmZqiLxgZSnfiIiUfjjtBnFgIo5Vzu9L9WjeOQtOM
 xs0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lhetsf/v1WHqsODDPiuS8lCaAlBwJqZTnWnIuf4OhuE=;
 b=eXWXsptrKmCQbSQIlPUaqozinYlL6xuQMyg5duw+rJQz+e74t0PTRFyIA+1Dtq5iVp
 0C6HhS88nK/K9lm1v617f+o5HtsSeSaTxTex1dAy+GHy5r2Q1T40oDyxCQmfdLO6P7bi
 3Old8+FWy1XH7D39vm7YeodM6/xGj9rBpOkPKhXRbzsxJenQs9Ln1S/FI+7z3PB+onNj
 4uO6syXty917i37anSQe64BwJRs4PbVW9vocD2gfmZNRDlIZT+VW80xo9RNi1hP+aDaL
 WgvI4cke52sAGAbtUrOqDIWQhQueDv3s1jMD0fm1V5aJtrg/7OqmoIbc7Tt37yAksTob
 6AeA==
X-Gm-Message-State: APjAAAXOXgn6WyBx/6IUqKJE8xA78oCEugl6fwMhyAXB60oKmyMSVJDk
 ZdYC/Xxh/G/Nzu08h3LelyJ/4g==
X-Google-Smtp-Source: APXvYqyU0wwjX1RQ1LS7189K6fCPtBPHn7spxLEhn1E3i0ZYo68woYmUYydbYl3EUP9FbO9sVq//1A==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr9552818pjb.30.1562909440598; 
 Thu, 11 Jul 2019 22:30:40 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f19sm10134578pfk.180.2019.07.11.22.30.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:40 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 37/43] firmware/psci: Expose PSCI conduit
Date: Fri, 12 Jul 2019 10:58:25 +0530
Message-Id: <896d2efd09dbe687aa3132c5e03f6b11feb6da9b.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223041_357966_0FD1CE68 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
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
