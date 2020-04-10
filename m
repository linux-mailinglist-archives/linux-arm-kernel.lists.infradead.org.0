Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6111A4288
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 08:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8BHgvi+pipApfBMblg//g0Pmq0brm8JYsxaEz28mWk=; b=ii/Dw4sab7dcMo5mFqeaElMR6i
	vvwx5oYtSowWNKrDmz1AKaxEb29byX77urPAnGyg5Lj7xg0iBwvQDoxXVK1qMvwJ26+m00udG3lIe
	FHz/JXtJThgW4SdH3EWM0ISYqjWBqNYWJO/3fHqUuI+jzvsLFOHyiZLLSrd/7YSk/teWvxOGZhn91
	kv3wP3E87qTmqu9UwV5Zl46pyV4x/aQCg7NF5FZgbKCzi3b9Tw9FNB7fKtf+IsLWJxxBm8vAMYHxT
	dH5nMe6+BU43Hnufz1MLsBQWwymoL+uwVq/h6sh38LlNN/9ooxVcM55pw2HwwVvkEoSZCVhz8Cl2n
	IRgTr9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnFg-0006Dk-3b; Fri, 10 Apr 2020 06:34:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnFY-0006C8-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 06:34:50 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6CB302007A2;
 Fri, 10 Apr 2020 08:34:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71A572007A4;
 Fri, 10 Apr 2020 08:34:40 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 16A70402D5;
 Fri, 10 Apr 2020 14:34:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: imx: Select TPM driver by default
Date: Fri, 10 Apr 2020 14:26:48 +0800
Message-Id: <1586500008-4418-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586500008-4418-1-git-send-email-Anson.Huang@nxp.com>
References: <1586500008-4418-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_233448_851302_D2459E66 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Select CLKSRC_IMX_TPM for ARCH_MXC by default.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cf..3e9011c 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -169,6 +169,7 @@ config ARCH_MXC
 	bool "ARMv8 based NXP i.MX SoC family"
 	select ARM64_ERRATUM_843419
 	select ARM64_ERRATUM_845719 if COMPAT
+	select CLKSRC_IMX_TPM
 	select IMX_GPCV2
 	select IMX_GPCV2_PM_DOMAINS
 	select PM
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
