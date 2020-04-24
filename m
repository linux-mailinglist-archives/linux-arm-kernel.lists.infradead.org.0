Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161151B7200
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LLIIHX76vYf4gtI9dKwQMi/NJ11Bfb0TGux4DAHPZSA=; b=EJzFAFH30R6cW5
	bPtxUN3FggjWtHTQzS/eCb25Fe+JqFPqnr7UqGo+l6Zm1XWegG/HOjgfRcSZSBwbPKzbUKScfcoy1
	efRtIgCX1GTrm6m/jFSuV9m9xX6GqfNDhUXITQi5g/c7aAXrUmtbE0PtL3p7LaRaeR90mYD0D1Pyn
	JbUCZtqZ64m8a47Ru6aOoEntS7hcoQDz+hNd8jvkLb7rk+du+vP1bba+nHdooDZeAgXoiZDA6Kdm3
	dNjlgfPAFrfz/wxILXp0A4sUa5G4LTMlhg2uJ43soNzZnG794fzu7JOQXtWrguAKv3cLn0QHoo9Xf
	SsvOdWPE+bYw47qcRG7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvbD-0002CQ-Bo; Fri, 24 Apr 2020 10:30:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvb1-00023p-1w
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:30:12 +0000
Received: from localhost.localdomain (unknown [117.99.83.91])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA00F2071E;
 Fri, 24 Apr 2020 10:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587724210;
 bh=EK33FmOk+ha98O+uI3Cs0pGl+RYBYtokDBlp6oaw4LU=;
 h=From:To:Cc:Subject:Date:From;
 b=0+4R6LQdseuGlJ8FsJA28AgJpnFebAo9u4pH9xtbpAap3FVD7Ujq1nei+3+KN4TnR
 lBSeYsaiSBIOQnBu6mW/HytjSee/xE8lPscbx3c0uurTorJH5sZnu1oiYSlMKyroT6
 dyK21RjRA5RkdOb5G471skJVds063O85T0rkM9Xs=
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable SM8250 GCC driver
Date: Fri, 24 Apr 2020 15:59:43 +0530
Message-Id: <20200424102943.2368764-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_033011_130536_9620F73F 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the SM8250 GCC driver so that we can boot to shell with defconfig

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a546a153604f..3b67211aa2f7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -809,6 +809,7 @@ CONFIG_SDM_GCC_845=y
 CONFIG_SDM_GPUCC_845=y
 CONFIG_SDM_DISPCC_845=y
 CONFIG_SM_GCC_8150=y
+CONFIG_SM_GCC_8250=y
 CONFIG_QCOM_HFPLL=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
