Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E655C107837
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1raUXaijwNQp82q/RAtAib5GSbP14Oas1bpE/NkH/k=; b=laalN4UUUIKKhV
	punrlRQu33Lc3wkZw73NqeVgKVTGGLLd/oNQuDLZ7kOkGWX3Jo9zHHY8AK8jPEgBW9dFOq+I/iwTB
	Xyu7KiAjVj4YE0PfE+8h9EMzwDJE0HtEA8pfJMAuEVpcu3ajR+5eruFF6wVev2/RQzQO8b2w5bDE8
	18IG5y7tTBgq3mMLSX+TZ1pkj66hAONv7Fy9EJjcp7zTH3IMucUgfihL0uvHsvltQ0Pmz3LmKXyiZ
	qH5QKUWlty9hM2BRDDvsDZiK+S28R3Lcnui974GHs6HWUl4ltfsrwYjwBAY2D73JXlkiYXwVQS4QL
	ZoKfOhxtv5+B0RZMD0rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYEvl-0006SA-1x; Fri, 22 Nov 2019 19:49:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYEvd-0006Qq-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:49:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 218CC2071F;
 Fri, 22 Nov 2019 19:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574452155;
 bh=Mpu/ReJMOFNKMRYs/AEeNTxpA1xP5T5VDaCkFifPux0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d7SYN9Es6UgV4b4imWHsVlUHVg0gLAZXtyX3FCAV9pVQRrtkkXLMlIymcERFG3qTa
 SidkQ78wmYDsEc4OdRYJxEOKg250wv/rqT2UgWrMvnqkZWx91lNqhUnvw9p7LyAdqg
 93zFFzqRhBIGE3B8UanobHWAcLTfIqAJbUnr/fbw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 13/25] drm/sun4i: tcon: Set min division of
 TCON0_DCLK to 1.
Date: Fri, 22 Nov 2019 14:48:46 -0500
Message-Id: <20191122194859.24508-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122194859.24508-1-sashal@kernel.org>
References: <20191122194859.24508-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_114917_076392_449E7E3D 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, Yunhao Tian <t123yh@outlook.com>,
 Maxime Ripard <maxime@cerno.tech>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yunhao Tian <t123yh@outlook.com>

[ Upstream commit 0b8e7bbde5e7e2c419567e1ee29587dae3b78ee3 ]

The datasheet of V3s (and various other chips) wrote
that TCON0_DCLK_DIV can be >= 1 if only dclk is used,
and must >= 6 if dclk1 or dclk2 is used. As currently
neither dclk1 nor dclk2 is used (no writes to these
bits), let's set minimal division to 1.

If this minimal division is 6, some common dot clock
frequencies can't be produced (e.g. 30MHz will not be
possible and will fallback to 25MHz), which is
obviously not an expected behaviour.

Signed-off-by: Yunhao Tian <t123yh@outlook.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Link: https://lore.kernel.org/linux-arm-kernel/MN2PR08MB57905AD8A00C08DA219377C989760@MN2PR08MB5790.namprd08.prod.outlook.com/
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 8c31c9ab06f8b..fda1ae12069a7 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -423,7 +423,7 @@ static void sun4i_tcon0_mode_set_rgb(struct sun4i_tcon *tcon,
 
 	WARN_ON(!tcon->quirks->has_channel_0);
 
-	tcon->dclk_min_div = 6;
+	tcon->dclk_min_div = 1;
 	tcon->dclk_max_div = 127;
 	sun4i_tcon0_mode_set_common(tcon, mode);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
