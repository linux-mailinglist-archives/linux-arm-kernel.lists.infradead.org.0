Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94AA8F775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 01:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cP+ZMKlHrZx2lhC5XB71fzb03Lw1xoEl6P1kwpqoSgg=; b=j4o5zFBFDSobip
	3sPMDy7NcWMmTnlYDDG76icKJqJI1w+pc8ohWHjFrHqixVV/yxEdoJjpB+U0uMJOEgQ8vTa33sv2D
	PmWNHrgry0JkxFtoXt6EmdSmpx7xieI61JwhhioTu/ctFomHE+LzqApWpybWgX4YsjOKK4nBrnWOK
	aHY5vsoULT82Z/5LmsiLop111v9qsGYvcLF9Bz3QPcBJrbpH/KWiPkGL3VaPERtrJBa/7FHicp4ev
	t9/m/97ysu/3tUsSMa42+lqOHY6e+Wklr+WFgTSRxHJNTZ0IieQmhhbQFd8btm8hCqprC5JhsBdEn
	Qt8Vs0Cf0ly02ANyLdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOvk-0002Ns-0q; Thu, 15 Aug 2019 23:13:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyOvX-0002NM-Fh
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 23:13:04 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1A532083B;
 Thu, 15 Aug 2019 23:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565910781;
 bh=n1G99AO0+4F0TAsOZJkK9K+Gvj/ZsKUu68DXs9S8wBo=;
 h=From:To:Cc:Subject:Date:From;
 b=PehgSaVgU2oM8K0VKpc414mprVAZtD7tjQCKsmbZ1ghx247vFQ/M7yncSCLjLYtgC
 XHsFDBTZN2vEj/EYVIOmbgu9pFG8GkGhG2yT0wZJSJws5DOhrwjnF5BFclyxUtsEZo
 ZDjawza2OqtxFGReILgvjUQCZ98scqjdCOzXW3FI=
From: Dinh Nguyen <dinguyen@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable the DesignWare watchdog
Date: Thu, 15 Aug 2019 18:12:52 -0500
Message-Id: <20190815231252.21772-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_161303_547583_785EF213 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: olof@lixom.net, dinguyen@kernel.org, will@kernel.org, shawnguo@kernel.org,
 catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the DesignWare watchdog driver that is present on the Intel
Stratix10 and Agilex platforms.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..69c19d82d936 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -445,6 +445,7 @@ CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
+CONFIG_DW_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=m
 CONFIG_IMX2_WDT=y
 CONFIG_IMX_SC_WDT=m
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
