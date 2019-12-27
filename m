Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7BA12B686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/KZ9YMr9XZRMwIENZneQW8dg+1Fb/nkmpEBmRizsnA=; b=rIOQo6VBlviwVe
	RdxxcwxzVLoMdmb3lJI0Y4mZF2WSk+ORpSaIq3HkF5RIy6uamIORYoxGgj971NM6q6E45nEMye3nk
	EhJEi3V9SB6rzr68oM3Outx1TXHlKb4+KNnLy/UiL6+tFc9aivCyjBOvtFh6alJcFHKLKxZm02CSR
	VX9XpjFVoh87KvvBvwTkKUIZkvO63wS/BH2iINH4oxVzcvcqjFNw1J0uLAzNuju5L/e2qWoca0Keo
	DXv7DvCMQa4rm7sIDb1P1/s150rkxH7YAcRNdKw3kXFj4YXqnIoIaf6x8dd7KQuQcON/qa2L587yL
	cMzoENJyf3k8UA6viZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikte1-0000SW-QO; Fri, 27 Dec 2019 17:43:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktct-00085o-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:42:16 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C8D2222C2;
 Fri, 27 Dec 2019 17:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468535;
 bh=QOJ/HmWlN3DYN2V57jaXJYrIYWXf794kujwxayZsLBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JxoEvSyG7M7z4RAg7yVy67aiArDTFUORHRUdFA/NiS1jwed9DiQCgS4JvyR16Blt4
 YLFm6BSjrBF4Z8m71roglSl26HGS3y5cYIxhXWfPy7U2HnWKwSEqA54ABa06QtrbGR
 uzjj2toxs7jMn+184KGcBHS6i0n9+wb+l2tV4vLI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 065/187] ARM: omap2plus_defconfig: Add back
 DEBUG_FS
Date: Fri, 27 Dec 2019 12:38:53 -0500
Message-Id: <20191227174055.4923-65-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094215_721083_B2611776 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit e00b59d30506dc9ef91caf2f3c584209cc9f61e4 ]

Commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
removed select for DEBUG_FS but we still need it at least for enabling
deeper idle states for the SoCs.

Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/configs/omap2plus_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index 40d7f1a4fc45..4ec69fb8a698 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -552,5 +552,6 @@ CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_INFO_SPLIT=y
 CONFIG_DEBUG_INFO_DWARF4=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 CONFIG_SCHEDSTATS=y
 # CONFIG_DEBUG_BUGVERBOSE is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
