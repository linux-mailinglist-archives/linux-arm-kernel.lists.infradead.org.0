Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB999E800F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 07:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0O44j9kF9ulZbiinyf40hlDWrrcMdL+nO/UUseDj6qQ=; b=XricONlC48bQDW
	/6pf7qdE1QAMiKMXSPB97WFJrmqQ+3N3u5mpxhW6DmsB5OQx5kqGv1a3UYVwTxzHpmAQgKZz6e4mW
	ZF9gtmc783YLPWEkZS7ebQ+ihJv0Vj6Nq9CwMM0kmL5ICcnRvUthPP/UXX2z3YrcBahm5IHJ3IUMZ
	1oJdZyLnMXqtFPaQfrs5ZQ6Z5WVkHAqFdYJPIGNdDdLIpJokGM/PJkpYlAEJkZ+k5vFq2RE33Kf3q
	MAPF5ld+R2OINkgF8eTJbf3tEXcZXfZP8q/N3azVGkxhnU/DISJi9cMqS+luzN4ddcsUhcqvccH3u
	3Hd2oVxsk0V9rbfWEJ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKe2-0004dj-Et; Tue, 29 Oct 2019 06:06:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKdt-0004cq-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 06:06:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id u9so4041590pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 23:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XSl5Mq1aXdP9mDitN2B9984N8enXsTbudBuTAQpDf4A=;
 b=mBF1kW9k32AH+Uq/epZa5VJuVFAV+dfxNcwQ+SvNSmYsIj3Yrfc5N4llW2d5WV5nQ7
 UvA/WyFn3AGdLV/5PW2ekn4U/OC5DzmUQc2u7QTeQA/KQl7iKJ3WXBSoP6HW8Zu4Na7q
 LrcIg3+TYu3J/F8X2UCGM/CyRoI0bTXy2pENLHP83ycUVwP98SLntHn2JN2Ah4YkNiay
 aRvs1X9uHQ2VMZhWnC15Ag0he920kmenq3c/Tx+adBBy1CS1VDTF+P408U8Sr7bjItQn
 MHDSjKW38AWmZqj/FvbGeQcDZkrSbkN+u5PoW9ftVLODGHaYUxVUnJMKN971VHaqUDdF
 JHiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XSl5Mq1aXdP9mDitN2B9984N8enXsTbudBuTAQpDf4A=;
 b=LaA+V/y4ww9YLJXHantjXlP4fs15cReGPmS2Pzs/qgp42cCgXdVQhEzBFs3YVnCn9f
 SVXvJLmfbZ7ounJDpxwj2O2r8q7VIZoSOjkKsMSsOmiYA7TXYBhcnF8qXm4u4WouI0KY
 u9t6GbiMwo4+CUIDtPVb1D+zlymOptbMbxSH7xfx2CAifqzJBqVjwpcFOy/E9Syn5Owr
 RBznWSOf/UemJ35G4nSJIDUsDYkM3N1xn0FDREW5pmr2aXQZcqhYmAR78pGthOU0eNdF
 N6kf8BKfZJoiPVDPaaatBjTgS1kjTroaROp2uxzJuc6aCxFOqk7ZNYynUvrX9d0g5jda
 ItAg==
X-Gm-Message-State: APjAAAW9Kl3xzMJTHwiWyJS0+xrUlLAErCfsTUc7h8brARwiVoqWz/LQ
 2935iY05Y85PujsA6TAZUheH8g==
X-Google-Smtp-Source: APXvYqxGfypuwDtLCryzyPWbVGJu9TbSRAaq10XpCWBppzPp0GXUWgtvRhIXDneTOqs9Smyi9ODnmg==
X-Received: by 2002:a62:62c2:: with SMTP id w185mr25609223pfb.6.1572329168008; 
 Mon, 28 Oct 2019 23:06:08 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s14sm12132145pfe.52.2019.10.28.23.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 23:06:07 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009 for Kryo
Date: Mon, 28 Oct 2019 23:06:04 -0700
Message-Id: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_230609_547032_8FB67CD0 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Kryo cores share errata 1009 with Falkor, so add their model
definitions and enable it for them as well.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 4 ++++
 arch/arm64/kernel/cpu_errata.c   | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index b1454d117cd2..8067476ea2e4 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -84,6 +84,8 @@
 #define QCOM_CPU_PART_FALKOR_V1		0x800
 #define QCOM_CPU_PART_FALKOR		0xC00
 #define QCOM_CPU_PART_KRYO		0x200
+#define QCOM_CPU_PART_KRYO_GOLD		0x211
+#define QCOM_CPU_PART_KRYO_SILVER	0x205
 
 #define NVIDIA_CPU_PART_DENVER		0x003
 #define NVIDIA_CPU_PART_CARMEL		0x004
@@ -109,6 +111,8 @@
 #define MIDR_QCOM_FALKOR_V1 MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR_V1)
 #define MIDR_QCOM_FALKOR MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_FALKOR)
 #define MIDR_QCOM_KRYO MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO)
+#define MIDR_QCOM_KRYO_GOLD MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO_GOLD)
+#define MIDR_QCOM_KRYO_SILVER MIDR_CPU_MODEL(ARM_CPU_IMP_QCOM, QCOM_CPU_PART_KRYO_SILVER)
 #define MIDR_NVIDIA_DENVER MIDR_CPU_MODEL(ARM_CPU_IMP_NVIDIA, NVIDIA_CPU_PART_DENVER)
 #define MIDR_NVIDIA_CARMEL MIDR_CPU_MODEL(ARM_CPU_IMP_NVIDIA, NVIDIA_CPU_PART_CARMEL)
 #define MIDR_FUJITSU_A64FX MIDR_CPU_MODEL(ARM_CPU_IMP_FUJITSU, FUJITSU_CPU_PART_A64FX)
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index cdd8df033536..315780e7bee7 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -627,6 +627,8 @@ static const struct midr_range arm64_harden_el2_vectors[] = {
 static const struct midr_range arm64_repeat_tlbi_cpus[] = {
 #ifdef CONFIG_QCOM_FALKOR_ERRATUM_1009
 	MIDR_RANGE(MIDR_QCOM_FALKOR_V1, 0, 0, 0, 0),
+	MIDR_ALL_VERSIONS(MIDR_QCOM_KRYO_GOLD),
+	MIDR_ALL_VERSIONS(MIDR_QCOM_KRYO_SILVER),
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_1286807
 	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 3, 0),
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
