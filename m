Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDAFE8DD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=691rOjVWMO+G14zKfd5U9iu+SJbrNWJxwLuRfe+lV7o=; b=ZGddfuKOTSBySM
	2AvinNZDc1n9hshEUZr89kwKvgX0u1DfnHA/m9vh30rug0lT0dwoVZNSYJ+IoScHfR+rvgBJQTa9a
	oAMDh9cxOOCRwySe1o78sJV9IMRCq4Ls54k4r3ogOV4iLWAy5yv0LuuPOm9syG1UlBy/GccbE2re6
	EDrbAa4KRDfEFMGM+ASZPi5LdmqUpON8RyojvrNbZlFOc/WHU/mRlKcf8YqcfJu2C0poU9X205O7j
	1HN4L3fuNXx48iem5/By+dV4+d/wmgOmAOJ2gfz5we6iqQQyLIVQUYESf7olkgC13fYyOsEgH7aW1
	XdoTJe4oOFXhF0e+4jDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV61-0000Jv-Sf; Tue, 29 Oct 2019 17:15:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV5s-0000JM-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:15:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id u9so5305375pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPvOmc0/9TpQb/8Qxi0JQ5la+jao1khGxB6lKFFKzew=;
 b=R7+usZpBcWpVXE+FLlVBsTM9NuG0BoC1IIax/WUN+gFKQeqLG1uQKUczFVE/9qDH8o
 ACd1hNgjCpebJHt0uh2su5/iCVyoHoTJZTJciPwRzxrwbfU6MAd45umkzfetCrcfpfQa
 VeCjcXaoKY2k5CRrDv58zVmykx0Dbj4fS2okoW257p9GbITirHjYuNFJ9+XNIcKyKArA
 fDSKC0stgRsH8I9w5CjsPh+hlXMQywP31glkq89/yjMS2EPtJsLK0nBYlMGe9Jd/NzlK
 ad9PyLFTjXxVmGk09IRLRq9tjD2IqqKpj3rmQ4+qAOKOaD7OwXbDqEvfJnwSMg2UsmPe
 +ErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPvOmc0/9TpQb/8Qxi0JQ5la+jao1khGxB6lKFFKzew=;
 b=jzMtpv+b8gGYVizqJr4QHykBKtKQUg8UCneEsiumL6cCEyE2oJJOysHj6oPpUAlOQo
 ja9jRROM2RyE7JlOGDZksWn2341IUw1mIHROoaJsz4syr96y0V4aDh4B+cmRL6TpBWuH
 3W7yIT/uAAR8T7qj+G99t/KI67NrH2qaf67CGUhhiUrhVCw4YigbmnaIKZxsvpA4LR8z
 Kg2cfDF3xQvMZ1UeOqF6kwFisX45so9btwkoiDE0WBKN73O6/V5XQPsyjuF7DVT/KhHI
 teA9eendL1P8i5X9uUpmYUhnXr9+9ppQEKZMzU+PeJRwUos3gjjKHfyxCmCb9w4DmGed
 TYjA==
X-Gm-Message-State: APjAAAXYdvk6wAjPL47TSB+xOBHSIUoaY/JW749SHnHOyp2qapY3BGmW
 pWwCKpRUH8Kt8cvbMTPj2l3SkA==
X-Google-Smtp-Source: APXvYqwcArvskwTt/briK2R0NWofQWUQRavqOKZNfIuUedWTw3VXeZ3Jg7wUlLPyePGdTau9dKnA4A==
X-Received: by 2002:aa7:8287:: with SMTP id s7mr28672910pfm.82.1572369343750; 
 Tue, 29 Oct 2019 10:15:43 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a5sm6449894pfk.172.2019.10.29.10.15.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:15:42 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor/Kryo errata 1003
Date: Tue, 29 Oct 2019 10:15:39 -0700
Message-Id: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101544_403382_FB87582F 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-arm-msm@vger.kernel.org, stable@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
entries based on a given mask")' the Qualcomm Falkor/Kryo errata 1003 is
no long applied.

The result of not applying errata 1003 is that MSM8996 runs into various
RCU stalls and fails to boot most of the times.

Give 1003 a "type" to ensure they are not filtered out in
update_cpu_capabilities().

Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
Cc: stable@vger.kernel.org
Reported-by: Mark Brown <broonie@kernel.org>
Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- s/ARM64_CPUCAP_SCOPE_LOCAL_CPU/ARM64_CPUCAP_LOCAL_CPU_ERRATUM/
- Dropped 1009 "fix" as it already had a type from ERRATA_MIDR_RANGE_LIST()

 arch/arm64/kernel/cpu_errata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index df9465120e2f..3facd5ca52ed 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
 		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = cpucap_multi_entry_cap_matches,
 		.match_list = qcom_erratum_1003_list,
 	},
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
