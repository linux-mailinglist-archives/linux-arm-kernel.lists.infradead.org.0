Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C13BF054A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hmBjn0g35uPUAK3M+tXsDL2IaRkHSC6adfEvgFfRxpU=; b=XsYxKvz3yxU3YR
	TLOyLk8rF/IqmhLtaXQ1+hdLH5xeqQBYqSkOI+G8huNWvZIFjiRHZMO7MEifAiHoOqcKK55hbyfkJ
	xxPlXfeATjz0G9CVlw17KB8O7prKMVHQROiYiK5MO6LJL1C4EsAPWEIjvVPmBPEyruqFw3ZZG2VLC
	ybeWJN9AMAkZ5WsXbfacz5Tiff1IUpxBg8gLNoCa0MYnFZRNvio4H03woClCF8ce6BPUGnEavTU1c
	CTK/TWjRU49SeoJfX/JOxviL9m7wW1SbqBGzVaE9LqHPgYGglj537DCJj35jKORHU1Vwl70CRBmfw
	nYbbUw14z8ULAAUiHtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3pi-0003D9-PY; Tue, 05 Nov 2019 18:45:38 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3pZ-0003Ck-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:45:30 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dc1c34f0000>; Tue, 05 Nov 2019 10:45:35 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 05 Nov 2019 10:45:28 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 05 Nov 2019 10:45:28 -0800
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 5 Nov
 2019 18:45:28 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Tue, 5 Nov 2019 18:45:28 +0000
Received: from rwileyLinux.nvidia.com (Not Verified[172.17.136.178]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dc1c3470000>; Tue, 05 Nov 2019 10:45:27 -0800
From: Rich Wiley <rwiley@nvidia.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: kpti: Add NVIDIA's Carmel core to the KPTI whitelist
Date: Tue, 5 Nov 2019 10:45:10 -0800
Message-ID: <1572979510-792-1-git-send-email-rwiley@nvidia.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1572979535; bh=LSq7ZgQrGt5CzqRd50ioovGg97ZF5CUTy/YYWoG+6Bc=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:Content-Type;
 b=fc3CHmVEd85zqiHHuvukD9QqiJvk9SXzAToGZAyJBaNE2lICVRY2/5ToAlC1CAsvD
 LHinmxTEnSa/jOzx2X3U+IV7usyY/F9I3YTJZVYpKxR+ADcO1POafRN70qNEJFwVao
 J99bCzvQC+1Tp4m4jE/O6Dtqda4fWueEzuXIGZcubJ14qJP1VDYMApINKtPMoolHS2
 ISz+bsJSA8xEPQJMWkPWWdaIn1uZjlsN5fX6OJmIbc6IrSBkYyvNrnQ9vOc9PjuEO0
 nBwmlPyWEfUUm7kxra4HbKvfD1e30obmDKzbriZ0g+71RMK5ofAG1VtaPzdZP3iC0O
 2NrhwdSxS3cjw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_104529_559050_5C59030B 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 Rich Wiley <rwiley@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NVIDIA Carmel CPUs don't implement ID_AA64PFR0_EL1.CSV3 but
aren't susceptible to Meltdown, so add Carmel to kpti_safe_list[].

Signed-off-by: Rich Wiley <rwiley@nvidia.com>
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9323bcc..2ec60eb 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -976,6 +976,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A72),
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A73),
 		MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
+		MIDR_ALL_VERSIONS(MIDR_NVIDIA_CARMEL),
 		{ /* sentinel */ }
 	};
 	char const *str = "kpti command line option";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
