Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1536319E756
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 21:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s4IzleQr6kCCwEnFWlLP5nM0YJFmkAa1iX7XwkEo0vk=; b=baGFhKOAol8Buj
	n5NDrlghNfZ+gQv6IViudRiE3b62hptb9GzNCb2ms6CKHd+7OuChk98ytuJPZTqmrhq6EpDCxPyHZ
	O7dOfLeQuA5qnTgjRwgy3p8mV4jorM0YrDbZN1dLhu/WMrrt1ncjTZ0WF4l+LtJn2LvbbrdA2iZE0
	VxL2U8XeHC/8tu/vnIXvQcCRRkS10q/PVOnCG6KhrDXrxnVvdGd3WPFGuZ3QKyko4ilhKN22s0kuM
	wRJXvGODLkYQxUasUL7eYqEo1WC+ItNLKccWi8+T2lInJfPxtac2UE2Z0x9PAQBzqIXYWZy4Pzqy6
	Ft6q/lFHC+DeV19Ukjyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKoTy-00061d-IE; Sat, 04 Apr 2020 19:29:30 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKoTr-00061C-Mu
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 19:29:25 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e88e0040000>; Sat, 04 Apr 2020 12:29:09 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 04 Apr 2020 12:29:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 04 Apr 2020 12:29:22 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 4 Apr
 2020 19:29:21 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Sat, 4 Apr 2020 19:29:21 +0000
Received: from sumitg-l4t.nvidia.com (Not Verified[10.24.37.103]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e88e00e0000>; Sat, 04 Apr 2020 12:29:21 -0700
From: Sumit Gupta <sumitg@nvidia.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, 
 <will@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <talho@nvidia.com>, <linux-pm@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [TEGRA194_CPUFREQ Patch v2 0/3] Add cpufreq driver for Tegra194 
Date: Sun, 5 Apr 2020 00:59:04 +0530
Message-ID: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
X-Mailer: git-send-email 2.7.4
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586028549; bh=ITK3P8Lpo3/BUJoeRA6qOlDnXfyv8xAa8YmjBZBRX2o=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=O3RWMiL78Yri78v66kd2ilnAGd0zonL7JvmgbMnVo9ZURwhZZRVaYR95PJV8eHXCe
 0MtuxKwZ5kZBwCtYmJ0qaydDUCpiTEfUIScBK65yM8qzt3areo2cMmRMCw9r8ERlC+
 jrM+oqV/oLAbi2HreKbIDbKXhOehsbfgVm1Mzhcgps+HeI5sQxJb9AmILbrDto03bv
 PcqNCG+aL1UTWex68BN0OYJmbyzCaDRNKiMwu3ybZG2NZ0bdLMvefc8Miq1OBPHTP3
 ScoS5lZAahHg7gJKgtY5RhS7PiOOU4lUxo/TbzP358iH57vFDSJ+muBmHDGuN+OXdH
 wAw14V+fcMJxQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_122923_751426_4E1A9799 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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

The patch series adds cpufreq driver for Tegra194 SOC.

v1[1] -> v2:
- Remove cpufreq_lock mutex from tegra194_cpufreq_set_target [Viresh].
- Remove CPUFREQ_ASYNC_NOTIFICATION flag [Viresh].
- Remove redundant _begin|end() call from tegra194_cpufreq_set_target.
- Rename opp_table to freq_table [Viresh].

Sumit Gupta (3):
  firmware: tegra: adding function to get BPMP data
  cpufreq: Add Tegra194 cpufreq driver
  arm64: defconfig: Enable CONFIG_ARM_TEGRA194_CPUFREQ

 arch/arm64/configs/defconfig       |   1 +
 drivers/cpufreq/Kconfig.arm        |   6 +
 drivers/cpufreq/Makefile           |   1 +
 drivers/cpufreq/tegra194-cpufreq.c | 412 +++++++++++++++++++++++++++++++++++++
 drivers/firmware/tegra/bpmp.c      |  38 ++++
 include/soc/tegra/bpmp.h           |   5 +
 6 files changed, 463 insertions(+)
 create mode 100644 drivers/cpufreq/tegra194-cpufreq.c

[1] https://marc.info/?t=157539452300001&r=1&w=2
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
