Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A517D79C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xw9+fP/sylsxrRS7pHjATKR7Xjgrj0rwMqSoD/ph9EE=; b=Hiq+o5qm8tKGF3
	3BwyG9qrZDlFNDagI3Sc4RzddbWKDGDIJH+Y42RRZ3CjueWUgXA1PvsN4E4ybXgxn3AxUA2LLZeMt
	3dSjfhe9alIGG7WAipTWoXpnrdBhyUwgSr/iuFfqMjQN5JaiqVV2ajdF1YLkoox3DrFZd8i2qWaec
	f4eJREhilRbS74nsBrFbKH3XzM0sb1a09QUVq9TJaU4e3Drs79zQAtvYpQJOo1P2QB33a7gnFyRus
	RclmBr4nDAxBm8Dqp7rdLH6ktKgEEafjo/QSwoCKsPrBu4nvkJMLjrLo64U2zDAb10hjM86/p1XtK
	sLM8DQf+jQXWI4N2eRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6SZ-0006rz-2c; Thu, 01 Aug 2019 08:29:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6LB-0003xo-8q
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so31877134plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vRfP6jZwD5k91GsO2EtwWgU9vmyZBDy37/lZXGzi3aU=;
 b=uCU3Z3Dd1P1FIooMb8g3/Yirwuf5gsToAiV9JYhukWAquCpOpLJOBCMoG93ZDCjBIJ
 btZaaTRhQMPYjtnilwUJTPxmpmuOa4OSnVouxkTRriItjzbs/k59piXQ+dz0rue37I54
 jWgdNzREAD+kvsjZ7QRuA9AOa7zA0MSwjYD1mwFv3fmmirUdTHnq5OC9tDAS3419s9pd
 +ifs9FqauXsMYjmTt38hWLWb1QTU5UJ0UTt6fYxxN/QGNDipHnlelXreXhCWDUMaVJVU
 1I9iNOsaPNQUDjeRv12Z4tcolTbd3/T/jvKxcOy1d/3XVOBwmdPAitFxF3bblCPruDBv
 yYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vRfP6jZwD5k91GsO2EtwWgU9vmyZBDy37/lZXGzi3aU=;
 b=pnkgj8A/BgAzKJ88CZeGF2Yjf/n3R/dTlQ+Lsu8ZF/nRnif3aCWXE/GNwSELYJKvVl
 wZMyk9dhj3xpgl4+7JQyi2bbo+7vlYxqUQniCPpF1wxmnnGsRjNMf4V5i4M9k/SXSrY2
 TgwHWw8gee13jRVOBGRM2yu65lDpW7K1uiYfvKQJYiAHF5QFW0fOFNfYWk5FhTf4Loxh
 OxPJX6CCmfXyzXeXMlTAPScTZ6ughirQiJ0o+wMVFd4d1oqHj6h5S1UnOSxGzbTw1X4E
 U3fLVLPk5WVI2ahZqbH897UU5761KDG/8RthBXzLbi4XZBC4KTIVXOhXLPWBeiAr6xog
 jIDw==
X-Gm-Message-State: APjAAAUjQyPXKiEmRfgEeqenMf9g5TxhBj8SeVXGAwK2frahxMmiXpbc
 1xI3dG2SrbDB4VCtH5cLxqM3hg==
X-Google-Smtp-Source: APXvYqy3bdFxraBtYPacUshSMabHdK1w+qknRAhTGD8v1pvTWLe1HAEYxa1g5Dfr6tEWO/e9NGOV3A==
X-Received: by 2002:a17:902:4b:: with SMTP id
 69mr123879677pla.89.1564647696697; 
 Thu, 01 Aug 2019 01:21:36 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id y194sm47248614pfg.116.2019.08.01.01.21.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:36 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 47/47] ARM: fix the cockup in the previous patch
Date: Thu,  1 Aug 2019 13:46:31 +0530
Message-Id: <455094dcf249c379282166ebbb866fee091d8c9f.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012137_360867_CB9D05ED 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit d6951f582cc50ba0ad22ef46b599740966599b14 upstream.

The intention in the previous patch was to only place the processor
tables in the .rodata section if big.Little was being built and we
wanted the branch target hardening, but instead (due to the way it
was tested) it ended up always placing the tables into the .rodata
section.

Although harmless, let's correct this anyway.

Fixes: 3a4d0c2172bc ("ARM: ensure that processor vtables is not lost after boot")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/proc-macros.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index d36a283b4099..e6bfdcc381f8 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -263,7 +263,7 @@
  * If we are building for big.Little with branch predictor hardening,
  * we need the processor function tables to remain available after boot.
  */
-#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+#if defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
 	.section ".rodata"
 #endif
 	.type	\name\()_processor_functions, #object
@@ -301,7 +301,7 @@ ENTRY(\name\()_processor_functions)
 	.endif
 
 	.size	\name\()_processor_functions, . - \name\()_processor_functions
-#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+#if defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
 	.previous
 #endif
 .endm
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
