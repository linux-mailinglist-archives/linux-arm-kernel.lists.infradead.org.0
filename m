Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E261A5616
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvwFkxvelWnQ9Jx8fGQJRVP9quAx/2sdQna1TGjKvLQ=; b=S2ZcV6QMbGf+Gg
	NViqJJc5n8LhNqZ/YCVceZCPoqVNZeJQF8/pW4IWM7PWzvGU7wUNOMZ3178SxEyp7fnKTnJq1ltT3
	fEBPpiD6c68S5fT8PahIyJt5vfelcGoMm5dizKSNPo82UsCAvzJE4ZSvaUP1liqHsDBv6hZO/2T9x
	0fyxE0lORaRuocCZbyr49JrcPD5AZa8lggcZtZa18BcySoAQddLBAR9n5eFd4z+HfJJnNhd/2OhjE
	yQsij+PFkMXoni1O//yZaUBpA4mXzm8aNfvNmTnPdocw1XjvKRGYY67oC1F6dAJ69lSzxvNlNVsBL
	yok2UzbjOr0M7EhvIhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPKV-0001YS-6S; Sat, 11 Apr 2020 23:14:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPFL-000372-3T
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:08 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52C7121744;
 Sat, 11 Apr 2020 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646546;
 bh=vkkBVzW/sRQX6NVpM58Zt+UhlaswQDSkXRNwMThHjj4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=utviRmTT12LrF6rVLu6DjxeyrzY4XegpPqKwyBP4VIBnGRCcwJADUIwT9g1tB83ag
 qOP5L4qTg+am+JqRusUq8w6SWkN5oRb8zBAfuYx8raCySYs0WsKQFfLgAMhgnfeYyQ
 xJ6TGrJfoKCN6FMYHX3dX867FYUdnm/ufdQl4smg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 097/121] ASoC: stm32: spdifrx: fix regmap status
 check
Date: Sat, 11 Apr 2020 19:06:42 -0400
Message-Id: <20200411230706.23855-97-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160907_190623_E91FAEA3 
X-CRM114-Status: UNSURE (   9.12  )
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
 Olivier Moysan <olivier.moysan@st.com>, Mark Brown <broonie@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Olivier Moysan <olivier.moysan@st.com>

[ Upstream commit a168dae5ea14283e8992d5282237bb0d6a3e1c06 ]

Release resources when exiting on error.

Fixes: 1a5c0b28fc56 ("ASoC: stm32: spdifrx: manage identification registers")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200318144125.9163-2-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/stm/stm32_spdifrx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index 3769d9ce5dbef..e6e75897cce83 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -1009,6 +1009,8 @@ static int stm32_spdifrx_probe(struct platform_device *pdev)
 
 	if (idr == SPDIFRX_IPIDR_NUMBER) {
 		ret = regmap_read(spdifrx->regmap, STM32_SPDIFRX_VERR, &ver);
+		if (ret)
+			goto error;
 
 		dev_dbg(&pdev->dev, "SPDIFRX version: %lu.%lu registered\n",
 			FIELD_GET(SPDIFRX_VERR_MAJ_MASK, ver),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
