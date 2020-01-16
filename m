Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B916C13E334
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCcYXuxlyRcCgVp2XFsLjfjb9VQTgwQM1LC01QVHSao=; b=exz6q55WiydY75
	Qj6oiedyVazmz+P/H1U7w3MbSFQJkQFGsQiwOQpmQzPLt0MHSo50FGh8NqoVLb5HCfh8CC6J3xT12
	/hXahzW4jaHaiLFZ5wOlOd/bh+ZzjGdazXZ/rZCSxcZTrcFci+WiYbIS9z7enLqb67JtDQMtkC4SY
	I7NIyUDPgIocWMlpyIh0NssgI7xllJVAuf8Sf8KRj4yzlYfzuGsBGsQ4BQv6RyyZ97FQrbPgiZaF+
	FsNvLmoU90pShJZNZuwuNyZfV5zEc4LVMDMpKWa0sdFik16DcApxerIMkIuOjz5XTq8KyoImUpAlo
	QNu7DOfSNIUPJOf0zQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8VY-0000cp-Oe; Thu, 16 Jan 2020 17:00:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8QN-0002vq-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:55:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B53A2467A;
 Thu, 16 Jan 2020 16:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193714;
 bh=klIKoTMA6lF5peF5ulNsoGKugOg5LPRiZi3nziNWFJk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QX7HSAm21TH7/fKsGEiXztMOGuVMkSlZL4knblr1NL+TptW4vQWoEDRBWHNBRG5v9
 A3LfW1RFuGslOafPPsA933Wctk6MtHHWq3S7OzXGRKJFAkj2PdJYCENb6aQO4mD8Vz
 UshUBePUqlBJIOfDUh5hvToTkcIZMefPh8zb9rKg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 010/671] ARM: qcom_defconfig: Enable MAILBOX
Date: Thu, 16 Jan 2020 11:44:01 -0500
Message-Id: <20200116165502.8838-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085515_523167_80285416 
X-CRM114-Status: UNSURE (   9.71  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Gross <andy.gross@linaro.org>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Frank Rowand <frank.rowand@sony.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frank Rowand <frank.rowand@sony.com>

[ Upstream commit 54c2678cd198f61555796bbda5e1727e6e1858f1 ]

Problem:
ab460a2e72da ("rpmsg: qcom_smd: Access APCS through mailbox framework"
added a "depends on MAILBOX") to RPMSG_QCOM_SMD, thus RPMSG_QCOM_SMD
becomes unset since MAILBOX was not enabled in qcom_defconfig and is
not otherwise selected for the dragonboard.  When the resulting
kernel is booted the mmc device which contains the root file system
is not available.

Fix:
add CONFIG_MAILBOX to qcom_defconfig

Fixes: ab460a2e72da ("rpmsg: qcom_smd: Access APCS through mailbox framework"
added a "depends on MAILBOX")

Signed-off-by: Frank Rowand <frank.rowand@sony.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Andy Gross <andy.gross@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/configs/qcom_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 6aa7046fb91f..bd6440f23493 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -207,6 +207,7 @@ CONFIG_MSM_MMCC_8974=y
 CONFIG_MSM_IOMMU=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
+CONFIG_MAILBOX=y
 CONFIG_REMOTEPROC=y
 CONFIG_QCOM_ADSP_PIL=y
 CONFIG_QCOM_Q6V5_PIL=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
