Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8E452D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmsKq4EQRH6W1iHqLZR3z1lLwYnwQUnS15JX2nq+uIo=; b=uL3Yzn8I9uYh/L
	oBLBb1f9LV1xkzhCQRsXqSFWSgR+298TbCPXiIa6DtNZBwyYiZwIAoS4/3VoMvc79j+Gaw5gb/NMD
	xxo+nn+fXN7sszp62pG2jV3wcdER/2ALZ2GGA5d+Z8fxpbjsyzAz2Czna3xXLRBeGttTI5/9A+CVh
	Q+WNuH+GDKVtBknWT3A44G59+wPSgsJSw7WTFllo3Rg90LLjRqGZOm6Qf4zKcGaurVtqeyXSWgso8
	Na+QtrlAvWhDCt8bDRWSQprhqEOhXwETShmgGJssyDCS3Fm97d1hm26BM+0nME6HVIjPFvrWrBQtR
	mg8NIvRMu5EZIrab0GZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcnS-0002ct-6c; Fri, 14 Jun 2019 03:22:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceL-0000o2-Ro
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id f21so683133pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fVKkVoGiJxBpY/NXd6uIeAwk4xxuAE9w4l4OvZBARVM=;
 b=tUqDZcoUraxwG46Xeay+MFqyETdSKrFiQ7Gh0/OWx/XXFYMi6UQB+xOalfhkzID3sX
 5kLYRx6UOnuG3TSV43Q3dbf8C/niEWCUP4pE83i6ppenYnk65grSDn3DLBzvyMZvwxMk
 JNG2CjE1GnHwJco6jXQ9E3c5OjRxwJYoaKBcFt4wXZkMN8tvY2UJzZwLfrvYIUmEYcML
 xHYJe5Ztq4pKtE3UW5YQbxpePDrOedXnzsVPaOhH1ax5SWUPQWH7Q180LHhT9TJ9rJ73
 c+Zjq5teYrb3dG7emzzZu0HjNPB+M+j8SFWZvoy3DfyAIPoVpcuyKxppGT/tYyOo/iC1
 JhlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fVKkVoGiJxBpY/NXd6uIeAwk4xxuAE9w4l4OvZBARVM=;
 b=qOxSizkYkII4TCF0iY/HpdOZlYnOrT/a1yN3XihmnJhJOsuMH70GdHxAnDgl8qW3tF
 M8yvKxKXuriBYFcsW+pO6QhN0XBxH1XOKqgazNX1GhRBNfzd1HjQv8UtP0BE1/z1uoka
 jrR1sad/NGoID6JdU5bcV92qljwrL4UDFoazxenDdXaMc2PdE/I5VNCU88xSbBaDZ1Bw
 yv0xXCPSJFgg5ejjVS96OC5ou4bM1a589r0g6Pc+1F7CYQWU4a9fVL7HvbOsBLSqoDLg
 hOTROkrZb5VyxKAauJSsFDdzdc05d+5hKKGXA4IPKl2qyXCZvzN91LhPjA2aMulRWRox
 JlCg==
X-Gm-Message-State: APjAAAUfTrtGyvN/SqQMlZwsf0OV3xNNZEkmOxG9UxtgnetoJXduPZEY
 YXDJp7VfTfAgW+lZQiI1DhHxFeeL94c=
X-Google-Smtp-Source: APXvYqxNmsCRWqADtuzG1r9aGg4DCwXXgHLlsrDbSseGecbvZNh2TjzmVpfh7V1Kv2cORUPu5aNPng==
X-Received: by 2002:a65:4c4c:: with SMTP id l12mr31225440pgr.404.1560481988190; 
 Thu, 13 Jun 2019 20:13:08 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id r15sm1002341pfh.121.2019.06.13.20.13.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:07 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 28/45] arm64: Branch predictor hardening for Cavium
 ThunderX2
Date: Fri, 14 Jun 2019 08:38:11 +0530
Message-Id: <3ec694103e8b96a19e776e3649ed286926978486.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201310_080033_F6ADEDFE 
X-CRM114-Status: GOOD (  11.80  )
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
index aa9cd47b5c6f..da861bf24780 100644
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
