Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484DF148F19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cDVVME4gJvH2TK8MBzUV4qL//R12bdM3+/XpCa9+Tgg=; b=dQA
	njGDUY4KtKFtt6AJATuU1/UTFCUq6ScFxzg4RL0jPw0qOKCiBzALND/1rWhX4unrGAURzL9Mc/XLG
	CxBEivFcmhJGnPs7ZdhNYUyzMrwN+JjwkIXKQUXlCcukRdeMFSJyaVW2mzB5A/7VAyEpFDnpzeHRB
	P5Q9Wf4Y/BT3Koakjx0Jz64KwdNtV5rr5/9YH3+qUDzGDA37IqdWje9oBGafSK3SuedtHwmIcgG+u
	kt9D88xpJtIRVeKfm50wk7vsy5DrA9hHayhp2/kSQ79HRuEMpCgN8A6q7DUMUNma1TpNTahEoYJaV
	98gx5jsei9rJ/RhlZDwEHMHY9updILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5Fz-0005l7-Po; Fri, 24 Jan 2020 20:08:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5Fp-0005kh-7E
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:08:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so1668458pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 12:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6ErqDnPmvotTKNe1KfqwWHr2o3aJpwAhGPt+q+2RIGY=;
 b=j5++EJNQx/pjiInQRmR1C7PmvfNsiq2RQhNl8BaqnCPdx4a+wAFMN8wLG7w7bb9Vnz
 ZjnuJhqdGlB3TU/IZ6LRpAEbanmwIjkvON4qMIlxY93ay8RMdS3SXC+K9crIPyTc48x0
 FHfk9xbI4rm9ZXqkp0/u7iGDyQvdrP/8MIbqWJ64ClmYb59cFFjuaIrKEcr2y7EDw4S2
 V8m9by4tOdeJsC8pq+oNl/2B5FmbXTl+1zkjRpofaN7M1dVBK0T9k+jDy5hOKqAP6EPi
 74O34mVEfi2AW+bEPmenVuKYw+KeHQkbVbqHMcIxi/rqLDdtQ2va5N/4NG7PIGcyNuNJ
 q7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6ErqDnPmvotTKNe1KfqwWHr2o3aJpwAhGPt+q+2RIGY=;
 b=qY6jtYDaGGzqUFZurqmwyh2cp2Yq2iMxaK7uGtq+qhO6mZwo07eCX2Uerm1Wo96FSB
 cuHx/aIZCtsqqB52ocXglHSplUtzKz801tv4kWxFeh5DLD0w8R6GkFKm87hlVw5Z98sL
 IifXjvA0N8vnY+/6njjG2blkrN077L53U7VqkBP0i2laI6J2Az3qH/rBZO1+gnZB6pFl
 WjLpQ48DzMmi+FOjUgyUNjYUIxteaKQt2Q5r0hdj/eYdIDpNE0h4Xqp48FFwMr7QhU2e
 +nCbcV691kKoORxitTr9HV1ds1Zd6J5rCmTIXxPREvBW0XGzWlmnHmWA5icZvFaWU8Lk
 4g4A==
X-Gm-Message-State: APjAAAUZKvTPQyBHdSfs1pd56htpoquqPH/AuPybuYrGxW3M6jnJDbFy
 +4w4++5KsqlcNDBsiwDJZcDHpyVL
X-Google-Smtp-Source: APXvYqyDX71JE8oPFq73PkIkrg9qSc6xt8FGKqhatmzDASLi9r0401eu++SsDf608mt+iTH/hcz4gg==
X-Received: by 2002:a63:5a23:: with SMTP id o35mr5912160pgb.4.1579896511412;
 Fri, 24 Jan 2020 12:08:31 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j38sm7363809pgj.27.2020.01.24.12.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 12:08:29 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH stable 4.9] arm64: kpti: Whitelist Cortex-A CPUs that don't
 implement the CSV3 field
Date: Fri, 24 Jan 2020 12:08:20 -0800
Message-Id: <20200124200820.18272-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_120833_289167_C543759B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sashal@kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 2a355ec25729053bb9a1a89b6c1d1cdd6c3b3fb1 upstream.

While the CSV3 field of the ID_AA64_PFR0 CPU ID register can be checked
to see if a CPU is susceptible to Meltdown and therefore requires kpti
to be enabled, existing CPUs do not implement this field.

We therefore whitelist all unaffected Cortex-A CPUs that do not implement
the CSV3 field.

Signed-off-by: Will Deacon <will.deacon@arm.com>
[florian: adjust whilelist location and table to stable-4.9.y]
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/kernel/cpufeature.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9a8e45dc36bd..8cf001baee21 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -789,6 +789,11 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 	switch (read_cpuid_id() & MIDR_CPU_MODEL_MASK) {
 	case MIDR_CAVIUM_THUNDERX2:
 	case MIDR_BRCM_VULCAN:
+	case MIDR_CORTEX_A53:
+	case MIDR_CORTEX_A55:
+	case MIDR_CORTEX_A57:
+	case MIDR_CORTEX_A72:
+	case MIDR_CORTEX_A73:
 		return false;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
