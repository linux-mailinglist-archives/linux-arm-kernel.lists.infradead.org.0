Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A3FE9390
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q5qzROpHdSahdtJJ+qdzzZlNDj0Enf5/CWWsgY3gZ5I=; b=NwtAxCbmCemwOt
	wOo7oMP7gsdk37QCups/U34Y+IjaKoLmxaNQjB2LVgPIdrSavj+v9jvBpd55M1E+4eJkuPzvzIspj
	SpVQlGGlgBcfMWhEMU1QTdyGecxkb9cE2pua8BwXVgja2aGlOjhLO1n6PeXUCJ+wUSEUh7JzaIRpy
	LPozu764kcYfxUun032P5hBsn41F9/19Xu5pQ8EiLZv8YsXgz+AyJGh3h8SZaRYu1mUjBI2KFP8bv
	udUy0Xn86/ZMmde+KtwOsWQXEyJpCPFSL2bu2a1jOv1W1aVxugGNyDLYA99bBci0KnU6hSeS4wCX/
	ywZR/ed78MQ8/TAcFnBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPau2-0002Ku-3J; Tue, 29 Oct 2019 23:27:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPatr-0002KR-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:27:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id y24so49605plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 16:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ACl3OaVOTym+qDwRiwEDHteytsmPG8qRkDZ/xp8Jsfs=;
 b=Sg0u4cvybiJKNJ2yk93E2dB2T47O85yhZ0eGiygp5ebFLX8FXezKujJzdiva88wV/8
 Zg9GPLhEFk4fP51MbMbYuBFfk6V505AMJniXLB0aL//ZQrrk086ByYlv/uYxl4s+qdgI
 YptgAvtlYL2Tr2cRDl2DMTc8kyJJhDQjpsSbrYX9iIr7Q2hQxkAvCt1dhy8714CcAqIC
 zJuJavMzQeTIiyzRXrqcd4kFFnwpPvnWveIOHNon8Y4R7o9fBbUm+7J/JTzYcf3fI3lr
 ISkDKmeM2glo/AHCqjlFq2Ra55NGniPP1aj+IXTdznBwbGZfMf6oisKYkVulczJnXkV9
 izPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ACl3OaVOTym+qDwRiwEDHteytsmPG8qRkDZ/xp8Jsfs=;
 b=HCo3eYx+5AO6bxw6M+rXw8snX22P1X+DNmN62HnhQ4fJCQug3AoAKi89CzSTBie7C/
 tPiFS3iB6oDV0kEstiHl2dNecUYb5Guxj8Tm6a8FTtI/88tXia7Iv932XnuOQpqk5jin
 ktIi9vdXPklsF9wCkhxWtgI095QjlcsaYLpH/+AYVnzxEMZnfgF67OhGArJTzXXeKCYu
 GBTrEJcNpn6Vu83mnqKI/l4VyCxRb9Bv/AgvwpwDliiiIsmLB8t2YwGA99GbpGy37vIM
 v1LqNWNsM7mao+OSKsIwwtPzmEpDcccZkdvIOlHemABhH9LxyRxd+2xiT2B7m6uaIyBN
 TI4w==
X-Gm-Message-State: APjAAAUfOjPINayXykqoU4HJogcmu9LWEGnHfGkzij51RWAYx3kiB6pX
 5fEVASjOGz9989RNpFWYOGHr7g==
X-Google-Smtp-Source: APXvYqxOTPAX0Pab8uisqVInBDEc0929OSy+5xrNgVs1Q/j1JgZT6U0hX+J++tV2P0onHll9jWcFpw==
X-Received: by 2002:a17:902:b116:: with SMTP id
 q22mr1259148plr.201.1572391662476; 
 Tue, 29 Oct 2019 16:27:42 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v19sm211050pff.46.2019.10.29.16.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:27:41 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor errata 1009 for
 Kryo
Date: Tue, 29 Oct 2019 16:27:38 -0700
Message-Id: <20191029232738.1483923-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_162743_819632_53840560 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes since v1:
- Use is_kryo_midr(), rather than listing each individual model.

 arch/arm64/kernel/cpu_errata.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 3facd5ca52ed..613075817abe 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -623,17 +623,23 @@ static const struct midr_range arm64_harden_el2_vectors[] = {
 #endif
 
 #ifdef CONFIG_ARM64_WORKAROUND_REPEAT_TLBI
-
-static const struct midr_range arm64_repeat_tlbi_cpus[] = {
+static const struct arm64_cpu_capabilities arm64_repeat_tlbi_list[] = {
 #ifdef CONFIG_QCOM_FALKOR_ERRATUM_1009
-	MIDR_RANGE(MIDR_QCOM_FALKOR_V1, 0, 0, 0, 0),
+	{
+		ERRATA_MIDR_REV(MIDR_QCOM_FALKOR_V1, 0, 0)
+	},
+	{
+		.midr_range.model = MIDR_QCOM_KRYO,
+		.matches = is_kryo_midr,
+	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_1286807
-	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 3, 0),
+	{
+		ERRATA_MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 3, 0),
+	},
 #endif
 	{},
 };
-
 #endif
 
 #ifdef CONFIG_CAVIUM_ERRATUM_27456
@@ -789,7 +795,9 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
 		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
-		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = cpucap_multi_entry_cap_matches,
+		.match_list = arm64_repeat_tlbi_list,
 	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_858921
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
