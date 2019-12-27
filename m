Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E563712B675
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p07f4oiWGcWeYyVsfQEF2uda/klWTNNbUQC0MQR9WSg=; b=jaXB647UQWGPJH
	f2+9L0o/H2nB0Eu4qjzhSascEgmXH0Yn3Xxp78TMvac1AKA5mbrqrz1NWYCGlhi/7w6Z+mttOG6AU
	BzUykXhFAn0mANWL5HPLeEujjiRSX7JkJEg1FSYzKDM2FKBVlvQlMHFytRjyXpscb3ediqMLmn7Bb
	gCt5rcOlbPREFXXk1Miv0c+4fWzTG9SE+7tll4Pwbv446CGIb95AAAhmecYZnUcFIW3eo5Df7vBrW
	h9VuGL3/fdS5/2kmC1vMhq5/kYV4aLF/bBwdvtTV0diJIyWOI0PVjfs5AmHE6hxOrYaa8ENXMoAOE
	rNeN4hkbtoDpBbj14SYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktdW-0008Nk-Vc; Fri, 27 Dec 2019 17:42:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktcZ-0007nv-9H
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:41:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BCBE21D7E;
 Fri, 27 Dec 2019 17:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468514;
 bh=xYHCqeSqTyw7YMuYYvLayPiWngIzGhgLfcAOH/sluAY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pPX4HnfrphBP8ln/fWl2yzFEk5lrA0IECFZ9h5UOstSh70hVWUBskl/aZ6GJ14oG5
 y1cw2khDQx885oRrQQ5q24bDlP4Q8WCmSNTb/kfQkqBAjL6+IuVjVF8IupXWQbevEd
 IMgeM0M9ucaRpfdDfBSyAYJ909pmYl33UKEeqiFU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 047/187] ARM: exynos_defconfig: Restore debugfs
 support
Date: Fri, 27 Dec 2019 12:38:35 -0500
Message-Id: <20191227174055.4923-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094155_384519_BBC8F410 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit a2315d3aea5976acd919d3d3fcf82f752562c25b ]

Commit 9f532d26c75c ("ARM: exynos_defconfig: Trim and reorganize with
savedefconfig") removed explicit enable line for CONFIG_DEBUG_FS, because
that feature has been selected by other enabled options: CONFIG_TRACING,
which in turn had been selected by CONFIG_PERF_EVENTS and
CONFIG_PROVE_LOCKING.

In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
dependency") removed the dependency between CONFIG_DEBUG_FS and
CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.

Enable it again explicitly, as debugfs support is essential for various
automated testing tools.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/configs/exynos_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index 08db1c83eb2d..736ed7a7bcf8 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -348,6 +348,7 @@ CONFIG_PRINTK_TIME=y
 CONFIG_DYNAMIC_DEBUG=y
 CONFIG_DEBUG_INFO=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_KERNEL=y
 CONFIG_SOFTLOCKUP_DETECTOR=y
 # CONFIG_DETECT_HUNG_TASK is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
