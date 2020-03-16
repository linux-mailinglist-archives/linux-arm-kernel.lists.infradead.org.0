Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40D186353
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9crGeOLF65FNro79zlI1pxAnJp3uFNSxSLSIqp0IEU=; b=q3isgOQhfAiZmQ
	DGp4VpamVEAoc4DQ1aqv8HfMnSIpNTD65VFMXO5QnOCW2NYVIA5hlj3kxjz1rQ23FJmhZDlg9quWP
	AFgeWJHwAYPp9nhXeHRbUnySHthF7/dzSM0QlpL5NqJuv4ir8bawXpoE4UYQlaLfhopP2LSJHWZDQ
	W8ky3nMdxTGpkhieOJgI74fwWO8MTpcSC42L8ECtNo0/cVk/hk9y+lI+229pClb6Y/XLJbOBBv0hb
	i2Ey3Jqr3xbkY4Th2oir5Orlre9hyij+8ELeAtddP1LCdhXPBTp1VR0JOgOAuNvNt2Y2Xirx+46NJ
	GTHMMLFk4T/cz8IMsRIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfkb-00073F-3V; Mon, 16 Mar 2020 02:45:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfbF-0004wR-3A
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:35:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93BAF20739;
 Mon, 16 Mar 2020 02:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326128;
 bh=hcFVzkbMZ5T5KVnuAu+sozg4JHN3abbJHwxGfbqguWo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P6ZqLGPbMwz4QBnNsA5rUtq9/Fdz2VnYX0P/wQboCuVbBWoTIlnTrtdtRmqWBm3Ye
 oYlHJKiS9GQLvvVIEJ3CnrH2/A0fyDofRAGIbcyEkC9xNDmCzaEpgdnwaoGwE/nOEF
 ctCwm2lK8hlJxYDqJUfEfGNtah2UiBccvhfC1uCI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 07/15] drm/exynos: dsi: propagate error value and
 silence meaningless warning
Date: Sun, 15 Mar 2020 22:35:11 -0400
Message-Id: <20200316023519.2050-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023519.2050-1-sashal@kernel.org>
References: <20200316023519.2050-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193529_177022_A56E14DF 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit 0a9d1e3f3f038785ebc72d53f1c409d07f6b4ff5 ]

Properly propagate error value from devm_regulator_bulk_get() and don't
confuse user with meaningless warning about failure in getting regulators
in case of deferred probe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Inki Dae <inki.dae@samsung.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 7904ffa9abfb9..aef18f807e383 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1739,8 +1739,9 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dsi->supplies),
 				      dsi->supplies);
 	if (ret) {
-		dev_info(dev, "failed to get regulators: %d\n", ret);
-		return -EPROBE_DEFER;
+		if (ret != -EPROBE_DEFER)
+			dev_info(dev, "failed to get regulators: %d\n", ret);
+		return ret;
 	}
 
 	dsi->clks = devm_kzalloc(dev,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
