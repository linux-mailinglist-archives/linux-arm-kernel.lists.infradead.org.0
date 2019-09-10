Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21601AEBB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=urTsV7D3TzDrulyGa+cO/a4hzXZ6vkZrBfRJDnGfBto=; b=ayN
	aEPnyHY/a+95ODzmshtazVIQjGypPzqtKVJvHtzix9jUO4eUb6gX7oAsVGtuM5hoX05OtpVKUVZ1b
	WLcZJVaKkCNYw5ofLLPw8L6AegavkLz8qahGCuz3ebTgp++gV29eUCia3EbkUD/HsL3TPgk//CcWD
	76K/p94jMVzptmCx47jU/1zjB3+h1CHsD4qdJDR/9GkXcqLlVjs4qnR13BO3YGdnwrjKqLo+hl+O2
	6WVHstIWcBUWq6QuQFHN0iclQgNgFNZ+ajq28wZ4/VgnXp1RloS7HRbadIFMYuosuD2CtnBU+gANi
	ehorEkTK7bPexIqsubnWizRUHsRmgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gLO-0002qc-9d; Tue, 10 Sep 2019 13:38:06 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gLF-0002pt-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:37:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 06:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="189345404"
Received: from marshy.an.intel.com ([10.122.105.159])
 by orsmga006.jf.intel.com with ESMTP; 10 Sep 2019 06:37:52 -0700
From: richard.gong@linux.intel.com
To: catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 olof@lixom.net, mripard@kernel.org, bjorn.andersson@linaro.org,
 arnd@arndb.de, dinguyen@kernel.org, marcin.juszkiewicz@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCHv1] arm64: defconfig: enable rsu driver
Date: Tue, 10 Sep 2019 08:49:46 -0500
Message-Id: <1568123386-530-1-git-send-email-richard.gong@linux.intel.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_063757_101874_E9E96453 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Gong <richard.gong@intel.com>, richard.gong@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richard Gong <richard.gong@intel.com>

Enable Intel Stratix10 Remote System Update (RSU) driver

The Intel Remote System Update (RSU) driver provides a way for customers
to update the boot configuration of a Intel Stratix 10 SoC device with
significantly reduced risk of corrupting the bitstream storage and
bricking the system.

Signed-off-by: Richard Gong <richard.gong@intel.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8c7b664..7325115 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -90,6 +90,7 @@ CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
+CONFIG_INTEL_STRATIX10_RSU=m
 CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_EFI_CAPSULE_LOADER=y
 CONFIG_IMX_SCU=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
