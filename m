Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4BD1FDEB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDkpoJMv2Ase6T37OzKZVLcab/dCAcAWpC3hqySuxZs=; b=Z60uHoshrfhnYW
	nw7JAac/+A36fUo9wz/oo1kHWcPwQrQDqhrm/R/o98+GFheoT1ssCjlnKKn60zN2qeGxQ8K5/qX4W
	K0BjusZAMn7pT5Y7QJgAS0f9V3H0rnZbL1LnC4qtov1ZqXGjyI09n+iVuPUP2eYUtMy/PAeRI62ze
	NHQ4tZ0h0npZ/l6PCQBEWf+ueW4nlTNMn8yem5+BRtFIKXfIVFkdydib4A1+D3Ujcx2qh+Kv6CeKc
	7iJzRq58qOtSDrAhI5a0bKg5zw4Cl4zA4PSfgmGFDQi+jqeAy8Mko8xTNx7VIcsLjp/rKoru2jn1d
	BUXbbL+lvVH1t1QkXYXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljVd-0000uP-I9; Thu, 18 Jun 2020 01:38:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljAV-0007e3-I3
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:16:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9F2C221EB;
 Thu, 18 Jun 2020 01:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442998;
 bh=1TLicUZauJHHS4QjENC7dQsJoviJc/aajGrqaoOUPoE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VzPLrvNfCVF9z/B3zRKxRuvQbTQElO5BrZ77TcOETvCzdIwyV63aCVtH9jVEo6CCb
 ZVj5MMTnVsSb2w2BWVLKAxjyXh+8O1y1rWsfP+mv7GfAbWszneL451yKXYgvU0Zsgq
 0Nr1jJ4+aP4nhru4DMBWzbqXPWih5bG20qyYurCM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 005/266] ASoC: SOF: imx8: Fix randbuild error
Date: Wed, 17 Jun 2020 21:12:10 -0400
Message-Id: <20200618011631.604574-5-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181639_694150_236A3116 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, alsa-devel@alsa-project.org,
 YueHaibing <yuehaibing@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Mark Brown <broonie@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel@lists.infradead.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

[ Upstream commit fe17e6cdc0fefca96ba9659be4b2b07487cbf0c5 ]

when do randconfig like this:
CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
CONFIG_SND_SOC_SOF_IMX8=y
CONFIG_SND_SOC_SOF_OF=y
CONFIG_IMX_DSP=m
CONFIG_IMX_SCU=y

there is a link error:

sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'

Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this

Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Link: https://lore.kernel.org/r/20200409071832.2039-2-daniel.baluta@oss.nxp.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/sof/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 71f318bc2c74..b4f0426685c4 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -14,7 +14,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
 config SND_SOC_SOF_IMX8_SUPPORT
 	bool "SOF support for i.MX8"
 	depends on IMX_SCU
-	depends on IMX_DSP
+	select IMX_DSP
 	help
           This adds support for Sound Open Firmware for NXP i.MX8 platforms
           Say Y if you have such a device.
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
