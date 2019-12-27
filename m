Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936A912B6AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 18:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WRrjPkSMXbqJVpZcK8Sy3cfY8vkjVgsRiLp+sEqubk=; b=ORoWvGF1reCRPr
	IMJkAkxW2WF06DlDIdTw5sQoBqLmJiGhLj5Pg+Er649UNoGsQsiGEoxtyzPtW0YRKfeX3Zo2nB0xE
	b1zAMTpjbk55YnTj53zXGMO0KqU5vYDbzXiC90UswifU+bMWDjaKiwenETd58dbeNguO66JipNIqU
	KbexKBfucLrlTul4RFeFpZGbErzD9+/4p0Z8dNqFNCQETuCeMYo6JbTwjBeWmuojubeT21Cq99RB+
	j5JBn5MV2fzVXirKh5TH1JGXGVVavJ6DzCXsX0/fF8R5fWUhpdVPNzj5RPuppEru9+hxO677e3F5k
	6+7nOAb2IIbXxEnY9q0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktey-0001HQ-C7; Fri, 27 Dec 2019 17:44:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktdF-0008QV-Je
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 17:42:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F680218AC;
 Fri, 27 Dec 2019 17:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468557;
 bh=Cj40zb+AUa3NBq6HJj8kQ+SYKunwgnUJaZ+Ud1eZDWc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I6Rc3aw9y80fLXCeFHRzJUDEyXj8DVs8hJbzqyVL5O17kgbQi7O8KBw/LT50B76fN
 bX1XPmB1hg96yvlCsQrAsEY2CCn8+APDth/CQ5jEAAu36MMvPiI4SSZcJydT2zcrmC
 sPqek1OOAQo898IgPUvSBU6+B4DdadzoS7ifIsck=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 083/187] ARM: imx_v6_v7_defconfig: Explicitly
 restore CONFIG_DEBUG_FS
Date: Fri, 27 Dec 2019 12:39:11 -0500
Message-Id: <20191227174055.4923-83-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094237_699200_FBED5306 
X-CRM114-Status: UNSURE (   9.74  )
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
Cc: Sasha Levin <sashal@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>

[ Upstream commit 46db63abb79524209c15c683feccfba116746757 ]

This is currently off and that's not desirable: default imx config is
meant to be generally useful for development and debugging.

Running git bisect between v5.4 and v5.5-rc1 finds this started from
commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")

Explicit CONFIG_DEBUG_FS=y was earlier removed by
commit c29d541f590c ("ARM: imx_v6_v7_defconfig: Remove unneeded options")

A very similar fix was required before:
commit 7e9eb6268809 ("ARM: imx_v6_v7_defconfig: Explicitly restore CONFIG_DEBUG_FS")

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 0f7381ee0c37..dabb80453249 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -460,6 +460,7 @@ CONFIG_FONT_8x8=y
 CONFIG_FONT_8x16=y
 CONFIG_PRINTK_TIME=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 # CONFIG_SCHED_DEBUG is not set
 CONFIG_PROVE_LOCKING=y
 # CONFIG_DEBUG_BUGVERBOSE is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
