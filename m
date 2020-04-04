Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62A719E761
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 21:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhS4g8ZXvfFq+zyBL3c80QM0WHAykxOu2L1Rjeljv2I=; b=fuwwyAAiKYTJPn
	ltZC+NHBAjkeoeYnydIkROgOWkIp/gdDuXtr2xmPETt7ACGLkNw9A58Sag2jiMPmj7fas8tCuURbg
	zo84csmBcFdCfoYjab9fEIY3Z+f6tRmhorDLamQYxAOW+jPwY/StRR56jZgUJ1a8H0VA6lkYtDXWc
	tMMmZ5AuvKgyW/9YrJF9ZyHkseDf34/T3x+r2TyDZF4uV2pO9Duz7/cvLQPgQgIvyzJV0yllwkwiX
	FgtBJcicdKztIBAWtbMbS9A1sRUcrpMIAKaJI77tjPJCCUKjenXpV/IJkfPGStUtGFJ+Hd8ebcseU
	CEiT+dOv0W+7e7ln8cKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKoV3-0000rD-3K; Sat, 04 Apr 2020 19:30:37 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKoUC-0006Mf-Kf
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 19:29:47 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e88dfc30000>; Sat, 04 Apr 2020 12:28:04 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 04 Apr 2020 12:29:43 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 04 Apr 2020 12:29:43 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 4 Apr
 2020 19:29:43 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Sat, 4 Apr 2020 19:29:43 +0000
Received: from sumitg-l4t.nvidia.com (Not Verified[10.24.37.103]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e88e0240000>; Sat, 04 Apr 2020 12:29:43 -0700
From: Sumit Gupta <sumitg@nvidia.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, 
 <will@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <talho@nvidia.com>, <linux-pm@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [TEGRA194_CPUFREQ Patch v2 3/3] arm64: defconfig: Enable
 CONFIG_ARM_TEGRA194_CPUFREQ
Date: Sun, 5 Apr 2020 00:59:07 +0530
Message-ID: <1586028547-14993-4-git-send-email-sumitg@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586028484; bh=b+iJd85eLTzjFvAEBon3IVxdm6w1fZJjJXVaVJhMvwU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=K+0GYzj1eqRD4IdgpCdKpPoo/6PkOv7eVH0ArflmEjfXF/ofbnyh56ARD5f3F9v4S
 iQlbzxFkOMIj1nDJOd0C0BtpgHYwh32EBKDKZG59Ee8t5AC/uqwsaeaigLondOLy88
 IVqfLZTwK+kOP6QPDMjxXG/gVo3pHc0wqzFzLQcFViXoS0pe7K6g3bPSKU262aCsEO
 iJUcPSx+3mP/NfyH3O3NNRFjfKfCjkcdpDtEudAsubgZyNPzX7V6/kgIzNZ7L1TwA3
 ZIKRtZhiVFAu5VCx0xI7eHbHiFcZykiPIMe/mz5lVCuDjbJ3jWGcktrfpUW52Cw5fG
 uN6LMhNyZfMqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_122945_191402_CA5C4F71 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sumitg@nvidia.com, bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable Tegra194 CPU frequency scaling support by default.

Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8a5f8d6..7ae746e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -87,6 +87,7 @@ CONFIG_ARM_SCPI_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=m
 CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
 CONFIG_ARM_TEGRA186_CPUFREQ=y
+CONFIG_ARM_TEGRA194_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
