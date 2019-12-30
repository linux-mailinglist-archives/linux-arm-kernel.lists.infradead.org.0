Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD3E12D136
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A1cZrU558y+zW/dGaePcZOIcdFbMx1yQXdIhDC5LC9Q=; b=PTWzGrpcChIju+wbHM+LoUXG7H
	7TvswSHA1dQwte7WPgNAAOlwissw4Cjd7piwFIQLK4qYEzKE/qjt2tQ+4tPFsn4QYfWqs4dKfBJOZ
	v9aC2Lglsqkv6h4py2YPP/JIZs12Kv0LaHMUNWJD2YMmppzlKjhXtqSZQDVuevZ9EUencVPYzwqgx
	/txxkU/tPXO4eCyuRyvUwa04nAbjth0JcR+xXLJTtYHosa8Bv0UvdmVfuKctTKrODp5nLQhSOk2X1
	T6V1Y2j0ugBjFMIh9hu8iN4ASoMwzjOHlkkmNIFScBi9h7JrAu0krcSxhkM0U2AftoAIkeemjaw9D
	SfVfu/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwNd-0004ac-Q0; Mon, 30 Dec 2019 14:50:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHH-0005EL-IH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so25259121lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=krY1+EzVUJ6sQ3sUZo42Ne6/cEpafTpvxV4MO9ew0Qs=;
 b=Gc+Fg4TmSoUG1xWh3kAAiPa4hscTTHTe6IdrmSqns5W0W+f7yJrWKqBYznZ+x0PfgH
 NXbjsuw2UWFrmRxEtu+ztS7HJpjnO0pQMsTaHMpUkWCneB+VdUs4fpaxwI4jqRs1A/0h
 HmWRvjF8FTPMxeZXibm2xawvWvneqvZysoeI74fqb3JuHPQ6wc9t52l/qvM9Xi1BIGbr
 Xm2ICKSM+SPWCTmZkaqkmasmkFKPO744rJ8SrsfKkjQQpjcXbjzrdM+UBEz2ONQJv4hM
 Eue69/Oc3VVQtL6NLjIDPyUe3oBQcFFKMow3ZJ7rP0IwzTXPWtSqWDS1snHLUYOL6hAG
 YM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=krY1+EzVUJ6sQ3sUZo42Ne6/cEpafTpvxV4MO9ew0Qs=;
 b=kQE6L9WmD36AR93iTBYnaR5w1av2/6h8O367amHouyBqiGmgqqL9b+JPnyazlEygwY
 +aUyg34cnzrwF+jDlS0hgMuiveLCYLETH0XlqYAYho6JPjONhrj5CPWg9K4IOmN1a27l
 aI6FDAnRcZL5NaHzdmmtrq+SW+lS9qL68mTNe/oM4ggB00zWsx47lFl8RfTF15YZ9v31
 u8Fen3VSGoBtKSlqayvFuz4JC5wSSYaBGvHmGjdzDQFIusWWWQxaTp4QnWwqm0/8tT+o
 qwne0ZYxqP+eJAFU9O/cJNlYwP8GDwehGWr+9Sn8cEkMfgi2kJVe6HftGB1wIFSYWglV
 745Q==
X-Gm-Message-State: APjAAAXM//+ZxoI2QbalRMGh+i+IVl95Q51NqlPJBVnKJ1lfryPXxwfa
 myg1cdOSgnDa/I8ELf/xlyzGOw==
X-Google-Smtp-Source: APXvYqwJxfxFlD3Cgmg6BuZVIx15qUnVkISMIx+ar2b16DDxv2vUZ23t0kZT/+jP5v39VcqlR5CAmQ==
X-Received: by 2002:a19:8a06:: with SMTP id m6mr35878357lfd.99.1577717053708; 
 Mon, 30 Dec 2019 06:44:13 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:13 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 03/15] firmware: psci: Export functions to manage the OSI
 mode
Date: Mon, 30 Dec 2019 15:43:50 +0100
Message-Id: <20191230144402.30195-4-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064415_785513_60F73076 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To allow subsequent changes to implement support for OSI mode through the
cpuidle-psci driver, export the existing psci_has_osi_support(). Export
also a new function, psci_set_osi_mode(), that allows its caller to enable
the OS-initiated CPU-suspend mode in the PSCI FW.

To deal with backwards compatibility for a kernel started through a kexec
call, default to set the CPU-suspend mode to the Platform Coordinated mode
during boot.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v5:
	- None.

---
 drivers/firmware/psci/psci.c | 18 ++++++++++++++++--
 include/linux/psci.h         |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index b3b6c15e7b36..2937d44b5df4 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -97,7 +97,7 @@ static inline bool psci_has_ext_power_state(void)
 				PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK;
 }
 
-static inline bool psci_has_osi_support(void)
+bool psci_has_osi_support(void)
 {
 	return psci_cpu_suspend_feature & PSCI_1_0_OS_INITIATED;
 }
@@ -162,6 +162,15 @@ static u32 psci_get_version(void)
 	return invoke_psci_fn(PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0);
 }
 
+int psci_set_osi_mode(void)
+{
+	int err;
+
+	err = invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			     PSCI_1_0_SUSPEND_MODE_OSI, 0, 0);
+	return psci_to_linux_errno(err);
+}
+
 static int psci_cpu_suspend(u32 state, unsigned long entry_point)
 {
 	int err;
@@ -544,9 +553,14 @@ static int __init psci_1_0_init(struct device_node *np)
 	if (err)
 		return err;
 
-	if (psci_has_osi_support())
+	if (psci_has_osi_support()) {
 		pr_info("OSI mode supported.\n");
 
+		/* Default to PC mode. */
+		invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			       PSCI_1_0_SUSPEND_MODE_PC, 0, 0);
+	}
+
 	return 0;
 }
 
diff --git a/include/linux/psci.h b/include/linux/psci.h
index ebe0a881d13d..a67712b73b6c 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -18,6 +18,8 @@ bool psci_tos_resident_on(int cpu);
 
 int psci_cpu_suspend_enter(u32 state);
 bool psci_power_state_is_valid(u32 state);
+int psci_set_osi_mode(void);
+bool psci_has_osi_support(void);
 
 enum smccc_version {
 	SMCCC_VERSION_1_0,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
