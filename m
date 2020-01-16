Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EF613E431
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h0qrWobax2hcasVOlrOtaGZSb2OpV9OY/8sqKzcHtA=; b=soyyyeH3mU7az4
	RKuDyuTF438ZHxS9S7smAfOLoiAv9ECWhyTWzGdplgw7WYSzxYdIZWH93S54RwywERTbQP5rjuIaZ
	iKIMPOyblgWwNzexpKtHOj22590FRrkoaXicqZlO3Q4QxkZmnoLEzWemeoHsdJIR9VT3gB+mBGqKH
	QyMndxQj3tEBl8va4+E7q5aK/sRxw+tgFI/7FgP6BKAL20FyzupPxoklsYFPcqh3RGEs3k33trjfL
	OLwjWMwP4Qtz0hSZRgm6GYaCjBhWXO8PVksVXDJ64Fm14FqiBVhT99bHx5FFD+a0LzcTxOUGAtT0o
	KSfBN8ds+0YmWO1oDKIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8bg-0008Dt-54; Thu, 16 Jan 2020 17:06:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8SV-0005IE-0X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:57:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 983BF2467E;
 Thu, 16 Jan 2020 16:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193846;
 bh=LWfOhuUCSRHlkBTUYtRzpo2sbP9fou7RPxTKLQqvUxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GTfODH++/Jf/b3aFCy3tDQ7/ffBVSnPUTI6ndtZLk1lCcjpKJa4xq93+Uzr5uKu2u
 qQY4bkGfGoYwp7MTd6TVlYN+MOS4x4e/hbDC/1W/z+EPtWM2/KiFWs0HonBJ3x5kKa
 Dru8a8DQRFAM59cscwcA4dzQsfnG+feobVPSHj8A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 099/671] arm64: defconfig: Re-enable
 bcm2835-thermal driver
Date: Thu, 16 Jan 2020 11:45:30 -0500
Message-Id: <20200116165502.8838-99-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085727_164071_2D027ED1 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <stefan.wahren@i2se.com>

[ Upstream commit 4d9226fd9a0d747030575d7cb184b30c6e64f155 ]

The bcm2835-thermal driver was added with commit ac178e4280e6
("ARM64: bcm2835: add thermal driver to default config"). Unfortunately
this was accidentally dropped by commit eb1e6716cc9c
("arm64: defconfig: sync with savedefconfig"). So enable the driver again.

Fixes: eb1e6716cc9c ("arm64: defconfig: sync with savedefconfig")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index db8d364f8476..1a4f8b67bbe8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -365,6 +365,7 @@ CONFIG_THERMAL_EMULATION=y
 CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
 CONFIG_TEGRA_BPMP_THERMAL=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
