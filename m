Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A876668F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl5+AR8uxOGh0U9Zlc1OBpGZbi6Uw3x3INAeq5pewYU=; b=RF+b8s4LOrrgDv
	iS0KrXtN76VrHSpKT/z0GlA7dH3gzne25oX7u53rUIZxY73UTZhqtIXNppVuaAm9+DsGWl5ELuz9r
	RCknjnpBjVgmBY1vSvMBTIM5+nWWYGQRraFwfc8wxxzSxon+nDL8gzoNynrw5p9g/zxBf7HqZ3xA4
	AaPs6Qb3ti/HV8baj3TwRagnJbO9ewvQDpFSeK2v11JJVp8ERkcd5Xzwcq8dawMSQk9q11A9uFJMF
	WtYJ5n5of063qc8iF9MygyNU7KY5IZ4SBE3L/W7dkncaH2wL0GGWBaGViBjU30rlIwK23gTdzumYZ
	tnGHGNdT6Y6akGc3fndQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloMB-0004M4-RH; Fri, 12 Jul 2019 05:44:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8c-0002b0-Co
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so4215411plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dkWh8S1DsW6tSZCYoLWe69ClR5UVvKugQ1/Th9fCzhU=;
 b=SMwR+6pdVG1+jVLkxuQVbtP/+BVTEx6rGEByEY4qdeK029SHABdRrCTMiXb+4nre45
 h8O859XSPNC1NRkmJg2+4GipJ9ze5HOA/R6idJQ+Pt7C/gT7400+oVGtmwIU7nb7ULsX
 Oj54EVb6tOLF1SlsBurQ5iK3J3FAGqldb9vJuYmTP1R4tXxxxiXMf8TsxhbeUBNW3N0J
 UeWGq6ZtKrNGNghl5q2gRSIQzgEYpgWnrZ7JrGf/e5RvYg1+EE5//gzM/tZ9I+IV8fEQ
 OSKDS5JI3fNrLgVpfcqmN9DeAephhosWwadHtDNS6bmi0higyU99JwprNFVc7BjMjVJ9
 0F+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dkWh8S1DsW6tSZCYoLWe69ClR5UVvKugQ1/Th9fCzhU=;
 b=WAcjh51P+CrYj4BmmkbJoeW6dI+lKs7eKhpNYArW0q7cCeJ7SQCSg9NyAFnfXErLoK
 CTqIYorNlwxhYKBID8gqLKCvNF/qacF+c9sazWVVBSQoNOfJUtbquGGDOgCGr56YdTdc
 UlavbpOi94xmv6GoI9ofZRWVzmpL2bpWSgryMvrmTyyVYNLq+4kB0nZ0ppS7zd6sl5pq
 e4EMXmyh0KNBv5UWeZJ/JACh66T7DBll+VSBatnckkMbv8xPJjCwNUrdFbMVYJWxwEIg
 sRdnp6ZPu1t2iN7jZZ4nQLNcJqS7gyu2QBlLvhsiBuU/BNqHRAb1dq9khonCUXZ2MdGo
 vaSw==
X-Gm-Message-State: APjAAAVkBqxgwkmFlg68O0rUQ4hsbCmg/MD5ujAf4jbwfq3g47tbovDh
 /2Xav9wv4dBPRIur7bgq1gaTvw==
X-Google-Smtp-Source: APXvYqwRenMg8VtbpqXdjHaBLDPx/1GaF/9bujmKaumpC/Ey9xVpZHK0cPZvCTDJ4FIQxxoez1R/jw==
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr8879363plb.183.1562909429452; 
 Thu, 11 Jul 2019 22:30:29 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 14sm6731541pgp.37.2019.07.11.22.30.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 33/43] arm64: Branch predictor hardening for Cavium
 ThunderX2
Date: Fri, 12 Jul 2019 10:58:21 +0530
Message-Id: <ba3f93fd7b5b88cc90c6fc201cb9bd64d754d57e.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223030_618077_4A311CBE 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

From: Jayachandran C <jnair@caviumnetworks.com>

commit f3d795d9b360523beca6d13ba64c2c532f601149 upstream.

Use PSCI based mitigation for speculative execution attacks targeting
the branch predictor. We use the same mechanism as the one used for
Cortex-A CPUs, we expect the PSCI version call to have a side effect
of clearing the BTBs.

Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index dbd7b944a37e..ff22915a2865 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -234,6 +234,16 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A75),
 		.enable = enable_psci_bp_hardening,
 	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_BRCM_VULCAN),
+		.enable = enable_psci_bp_hardening,
+	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CAVIUM_THUNDERX2),
+		.enable = enable_psci_bp_hardening,
+	},
 #endif
 	{
 	}
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
