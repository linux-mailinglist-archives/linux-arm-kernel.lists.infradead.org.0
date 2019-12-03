Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D9B110394
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoUk+G4//FXh2LL8fH7HravRjQimJ+hhRPXsEk2uras=; b=A/k+xy8HUtbMWa
	0g1rwyCYUw9gQbAJdrJwJolQ8xzLEzKZrxKp+L8ORF8Fc6jxauoZjaUNfnFAbpSGJu4gQnKaxLvLK
	j9xvLfKMzEQzDhFsFPrqF8dEnU35CsY516hFbgyUtE4SGelJU/lKc1B5AAKceszQIt6pNU3NR7deH
	foWw4n7d81TOPTChEcUHJi62KaGhA9WsziO6y7fqw7ilxXqQq1+/FAHh5F++YDnRuRhnHJHwGTcGx
	xmEG5LXD7RK4xBi+PkJLk9j8YZamRhhNMyLK+pr5jhIuvFhqP7XT0u+K9bYvrjuJsJJ4JGcUm71ez
	PPwV2O9Z152SQ1njQ1ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icC35-00070d-93; Tue, 03 Dec 2019 17:33:19 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icC2Z-0006hG-9C
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:32:48 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5de69c300000>; Tue, 03 Dec 2019 09:32:32 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 03 Dec 2019 09:32:46 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 03 Dec 2019 09:32:46 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Dec
 2019 17:32:45 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Tue, 3 Dec 2019 17:32:45 +0000
Received: from sumitg-l4t.nvidia.com (Not Verified[10.24.37.103]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5de69c3a0003>; Tue, 03 Dec 2019 09:32:45 -0800
From: Sumit Gupta <sumitg@nvidia.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, 
 <will@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <talho@nvidia.com>, <linux-pm@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [TEGRA194_CPUFREQ Patch 3/3] arm64: defconfig: Enable
 CONFIG_ARM_TEGRA194_CPUFREQ
Date: Tue, 3 Dec 2019 23:02:28 +0530
Message-ID: <1575394348-17649-3-git-send-email-sumitg@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1575394352; bh=A6anPAejKE9RJXAAgaIcSlAZDzhB1bmf+AyApY6ranU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=K2UhGXH7j7C7AeNus1zpHqShZ294S+tcrLzVd9rarKiLA+OHbWsl2UYmnz2V3ZPd5
 eQX4A5T7HkbsSG7YBw1ScqEKEs6/q/9Iif5p0iAgTVWXNt4hlzPBvtXVx8y8xoIxOK
 jiHlKve/SyrbBxBCgtK4wYWlRFyvp0PvWJiSFEPj9JQOmhwYT3YDvgmupi4Rs4W+10
 qTdbqHo6wOTZPvKL7X2QM7Y/kq18XpbS66Iv86M1O5ZNma+yI8FhKzX1oBZ2UobKff
 TSZtpf9REozsy+89gbFniETUx53JbFVOIlNYEfbXPT9EE5WF2K0Pst5zkj/tdRSw6d
 UocHHdRmJIZFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_093247_341767_70B994CA 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 995a15f..c8e818b 100644
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
