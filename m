Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9795F1D29E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnBCrQora9IriRhlHzoNPeGNtje4UxwT9Mpi9wwJbuo=; b=ZW2YgmI/zmV2m+7n/3JIvWck1W
	Hoqxw9Gp0ChNVon+G3S4W4bFG3sxY0VBW2y0AUDJQYs0YktesPVady98n2rpv6ZD7m/XunmMkhIwq
	Il+VZ7/SWro2LEd6T0kFhFnfxup7Pf+aW7UtUgPioU8v5ra1ht1vk5nIvpQYqrptqLwUJqkWzLTNq
	uC6xlUWS/UpIoQR5aR3ix7Nw7I23/djCX6NFVUvhwjMcJFEaZY++y0lNhmvT4rB9bcijRQwlcsKAf
	mmIQHdLwHubQlgVIIgXNVveqHhFsIJLHlnGhtAFZF04Y+pnG8JWoy0VJOUSPAnWcAQX33SQPIIPBp
	wLTpIg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ98V-0005R5-Td; Thu, 14 May 2020 08:22:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ98A-0005H1-QJ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:22:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id i15so2649449wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k8mN2LzDGdESlrPmoeh28g5LnWiU2ms8gKIo8DdwscE=;
 b=Im8mUJ2eggAAkZI/v80HzLPX9qqa36sDqko1J2LXPgGJ01bIFxWXlgiIUUXNItclyq
 YJlRxzQgOkAf/kpLwuBYUf5dtc+m0h2EEcAuX1bb4AUAkdTlnA29b+TMMrpi1fdeq+ma
 TxjSHAWmQy1WhQjz7iwmbrnUQL6tqPSO239Q9Abu4vr88QoBJRj1WB0mRCOoy2qFREeh
 xr2nuf1+hw65YDQL5CYVPpz6MXv+QWERLPpjdItghoMqKAp3d426gVFkWMtd315hgG1R
 4W5ayj35Q36DvrMwuQvCWWtefd4e28AsudKQBxPJ/kSU4emTzmR3iLPDU0tJJeuYDjH9
 +M9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k8mN2LzDGdESlrPmoeh28g5LnWiU2ms8gKIo8DdwscE=;
 b=b7wu26JdhbG6EgDNV7OBfzl5R6avWj1lc+6L5rnMgE+DhLLQKGvkjhZOQ9q/xFzcGQ
 n7zX6dUZzClMhUMa3nA5qecR2WIYl/jr8VemXaERJQ2mc9TRUYEGwv42Z0o1cZWFPjeW
 5xJvfcLFWvu6rWjho30lJ22igwd8MxdDsJv4sXm9JNl0xbzxxdmlocZzVxZkHRsDqUPX
 1hpjJFu0rjmQsP+oxGbCZ5nl5E6FG0qDfpzUxbN8MzSGFvyEdrODpLl9jdsuvCI+pcJS
 sQSjvMOb8qIkc7kiyihAlU/axU63TOimh6j03+rU4H+7UU1PKz84eop4CTSVNz98le3n
 wh7w==
X-Gm-Message-State: AOAM531I9R1gLCOh9cwTw2D9OOGe/okfV55hji6EpkhHvwzVF8d1VNS7
 2JC7mmlm4DGeE4r01JaEh5LBaA==
X-Google-Smtp-Source: ABdhPJxIKdKece7W45CJ1lsjnCRxxcI5n5xTf/PCcBjsJUpQs1DS6rnRmslbg7l2wJ6hCwF2p0o++w==
X-Received: by 2002:a05:6000:85:: with SMTP id
 m5mr3753246wrx.281.1589444532801; 
 Thu, 14 May 2020 01:22:12 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id l18sm9170002wmj.22.2020.05.14.01.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:22:12 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] firmware: psci: support SMCCC v1.2 for SMCCC conduit
Date: Thu, 14 May 2020 10:21:09 +0200
Message-Id: <20200514082109.27573-2-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514082109.27573-1-etienne.carriere@linaro.org>
References: <20200514082109.27573-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012214_847268_2E566C63 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, maz@kernel.org,
 steven.price@arm.com, alexios.zavras@intel.com, tglx@linutronix.de,
 etienne.carriere@linaro.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update PSCI driver to support SMCCC v1.2 reported by secure firmware
and indirectly make SMCCC conduit properly set when so. TF-A release
v2.3 implements and reports SMCCC v1.2 since commit [1].

Link: [1] https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/commit/?id=e34cc0cedca6e229847c232fe58d37fad2610ce9
Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/psci/psci.c | 14 ++++++++++----
 include/linux/psci.h         |  1 +
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 2937d44b5df4..80cf73bea4b0 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -409,11 +409,17 @@ static void __init psci_init_smccc(void)
 	feature = psci_features(ARM_SMCCC_VERSION_FUNC_ID);
 
 	if (feature != PSCI_RET_NOT_SUPPORTED) {
-		u32 ret;
-		ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
-		if (ret == ARM_SMCCC_VERSION_1_1) {
+		ver = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
+
+		switch (ver) {
+		case ARM_SMCCC_VERSION_1_1:
 			psci_ops.smccc_version = SMCCC_VERSION_1_1;
-			ver = ret;
+			break;
+		case ARM_SMCCC_VERSION_1_2:
+			psci_ops.smccc_version = SMCCC_VERSION_1_2;
+			break;
+		default:
+			break;
 		}
 	}
 
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a67712b73b6c..c7d99b7f34ed 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -24,6 +24,7 @@ bool psci_has_osi_support(void);
 enum smccc_version {
 	SMCCC_VERSION_1_0,
 	SMCCC_VERSION_1_1,
+	SMCCC_VERSION_1_2,
 };
 
 struct psci_operations {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
