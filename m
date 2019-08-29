Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BE3A1921
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ddm/VvqKy6OF2hh+Nqhy31swCPBVG4AcUesrwG18PUM=; b=GK4HefWWrHiy8c
	Ah4q+ygWPWKxdBF3FZRVnRCOJzUzKzA8RjPRt1tugR5UD9EFts7CDjDF5OMDfaXwCp5uKbTj6nYjr
	6z9kZAOoPyARBvEZBE3JT1b9ZjAOQnZbbNFuH7k+O1jQBohTcjm3IUO7O5Dnx1j0edqzLlzpyHz/r
	RLMcvU/vGNlrbLaKF+Qi+y09A5zLkfHUwSoPTRMS+Q0uQ+tGFsFN8k+BkDeNvYHNv2wFdCV80oh7H
	tPPUnHFeCTJtQBnS6Pl5ZtZuNSgKpWBPloTC9bGf1yZgLDM8K3wBmFQHq2y+gPAiUxn+SGreum7jt
	xs/zgKil43SmrH2w82jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IrW-0006ee-1W; Thu, 29 Aug 2019 11:45:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iiz-00079r-CT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id c81so1852194pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=Xmq4KtCB2MgdeuspBG4G9Poq1/jtOphEjCwUX4JBS0tTbJR6EsrIcbbYtsH4aMlJJU
 zF5NFzJ1mQDB9rIzf7r+6kkfO2oqqW3pmymoydoaRIHU48YwvkASRwwpa8vKfG7PxDK2
 I+N6jsRG7GqPT9PHnLowmTx6SNnP1Iz+8eIuUt19E83TRz9K1U/l40AlV2y5byn48NYF
 61ybmSlsjqJM3sndxzmVlQF2Ekx1XeqcCttUdUkgpYlpN7uuibesHDGoxHdRGxesTYyU
 cG5/iWvOwrjqJx1QqirV1O2xGFIIMHybQbVZsh8MgxA3fz3Nk7V2y02cDqhm0jJk30iN
 NYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBbWRB3LgLlv2c3U4FxHDhn97v+yXFInuDLMYZ1aFeE=;
 b=ZC54Mv7esAahh7RW6i1HvMpU7vtAg1NcF0jTSU2GgCyTPPVl+ENrWQ3ZKgeFd1TmOC
 MLRiN4gz5aXkZaVHq0n4AanP6jxXwYgQg2CBlZHkGdRQBKp8bke4RqX+6Hkc/W+BOV6d
 x6zLG2OX2o3NtGXGe9suNap1NaJ/XNbF8doYQQRPjZuN4ybZcgQKL1c7oTT+213Uw+cC
 pVCzj/yloED8h3ohHli4nyJ19yhI+K5Xh6qCtBPlqRJ6Y1m7YJojBkCp1Cn2IxYlpFKF
 OgSx7ec6jBfkgzmLmc44eD+kYd6+4UgpXiJJDZY8qFurPNZ4YNVfLiQMzQ6A8Il776mY
 R3CA==
X-Gm-Message-State: APjAAAVa4BXxfEeKh/IP3WG9CVKtDdOEfmNbncnerYAywaH2tJ5G+Z5u
 0YzzYh+zIF6aMbSvX+nlqzlF2A==
X-Google-Smtp-Source: APXvYqwMT0cFTHEugZCxJSQq4bSDACB+Sgk4BpR3n0Se1eB7cKTLjqyvZhASM7jxAvssWS5gOWCocg==
X-Received: by 2002:a65:534c:: with SMTP id w12mr7899421pgr.51.1567078580556; 
 Thu, 29 Aug 2019 04:36:20 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id w207sm2838820pff.93.2019.08.29.04.36.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:19 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 33/44] arm64: cputype: Add MIDR values for
 Cavium ThunderX2 CPUs
Date: Thu, 29 Aug 2019 17:04:18 +0530
Message-Id: <30a3c51e3b96d3db1c1ac10800c22b67c484a377.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043621_526168_32B6C6D4 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

From: Jayachandran C <jnair@caviumnetworks.com>

commit 0d90718871fe80f019b7295ec9d2b23121e396fb upstream.

Add the older Broadcom ID as well as the new Cavium ID for ThunderX2
CPUs.

Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index c6976dd6c32a..9cc7d485c812 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -87,6 +87,7 @@
 #define APM_CPU_PART_POTENZA		0x000
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
+#define CAVIUM_CPU_PART_THUNDERX2	0x0AF
 
 #define BRCM_CPU_PART_VULCAN		0x516
 
@@ -94,6 +95,8 @@
 #define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
 #define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
 #define MIDR_CORTEX_A75 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A75)
+#define MIDR_CAVIUM_THUNDERX2 MIDR_CPU_PART(ARM_CPU_IMP_CAVIUM, CAVIUM_CPU_PART_THUNDERX2)
+#define MIDR_BRCM_VULCAN MIDR_CPU_PART(ARM_CPU_IMP_BRCM, BRCM_CPU_PART_VULCAN)
 
 #ifndef __ASSEMBLY__
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
