Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E22106708
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWlDmBS6M8HDsc2DQiBq9SxP0oKj7aHZwY/xcx5lCsM=; b=gquB2+4M78f3Eh
	6sCENYXXFDp3ZrLUt7FnsW6zXvB0fJknm5yGVlwzFzjCIpmikaB6MX4U35n6+nWmAJgjfZvFpM1jK
	jxP9s/O6+QrROQ9FXa2/KIRQ9JA8IAeBWSOK5TWNhyg7ZO73jthVK9Q+WmKnk5hGG21DvsrodEXvV
	TekIBZnCRGF4lrY9Q4eyNpcfTbLF+wY/lY6f4c3UwATrSyoux4f4Fgk2gdSsvep+eyWLusPVXST6e
	2jCVhiUKkVDszcWI2rHNkoD2++5Q5Hu+9iL1kwU+c9zUsuUL24V6yHz22rckRP3sSkdxlXA5ahVlY
	uvw1v6osnO3lzgPV/jww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3Jr-0005WI-7C; Fri, 22 Nov 2019 07:25:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3JZ-0005Qo-HG
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 07:25:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so2857096lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 23:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XWYrspY3sqn5IhheES0xFmh++L5u8QGvgjG4njd5/Go=;
 b=w6oWmXgC7g4lyOX/a2UvHPOQbdHjewIuLYi+MGrVTij75HtwmCU7FSbdL90m7TNcAj
 EEYW7ekQsCdSpCLowDnFAWips+9Mj75k1D7Gv6RP7fi/s1IOTj0jmNrkJuCBPTJFD+1C
 fy0HBf7oEipoAIdsfeyeqsDcH/JnOg8+E2fdvffRe34ZgUwQMqctqoQ8mqEtw41kf1GS
 TCuWW0UlYY9GgvCx3GeNQjAM+c+dzOLLRhf9LVRmAy9OyRsM3AgniRPSwb/+0W95KJ6S
 JJrVaDlXoDs0ICQ1woZRL5V+v2nfo8/btS3UKwlIOqCKKBv4eSnJUb19CmTbpwSgrvc1
 HxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XWYrspY3sqn5IhheES0xFmh++L5u8QGvgjG4njd5/Go=;
 b=eIPmKJX0m16qa+lISOOYCp3Rqn+rF6Ew8hqtHvUYYvPfZj30NQ2FZd8YjEPCKe9gJA
 9WZckVTVdLrUEEotGIgqyEP8iqpeiFNHvsQVIwPo4Tfd7ljZkEKwga/2kRrNo+jcuSV8
 KvLXcUJVgi+ZEJo+VPP2dsjIwejbTkg5jc3NawmjU27RHmE6dBg7ty2xl+ZxZVYpLPKT
 pidVsERZ8KTTDXa5zE2WWuwu4sRECCKSkNuqSvOk/V0tf/PlbOfNnyKciQpp/963W+bq
 xFa2XHaGHQXVsukuP1oxwXje4hXXMVUCpSuwpOPsTY8JKe2SY+u5dsq+xpiHbor/K1dR
 DPbQ==
X-Gm-Message-State: APjAAAV83CcfPZQGZ0CBGat3ZqG1E1t5+BIZBdjN6u7Bi0u7b3X+QkjI
 YZzWXe1G4B9zrys2OUb/wJ+eOQ==
X-Google-Smtp-Source: APXvYqzIWcSmkySkCPav+tdRJKcqwNHvCv8x+Fg1Tt9wqk1g4zaEkLfqyRjeQ/xuCpiF4Ip4gOFU2A==
X-Received: by 2002:ac2:44af:: with SMTP id c15mr11040869lfm.39.1574407511506; 
 Thu, 21 Nov 2019 23:25:11 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id f14sm2651394lfa.67.2019.11.21.23.25.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 23:25:10 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 2/2] drm/mcde: Do not needlessly logically and with 3
Date: Fri, 22 Nov 2019 08:25:08 +0100
Message-Id: <20191122072508.25677-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_232513_596132_1E4A8C5E 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i index i always 0..3 in these statements so there
is no need to tag "& 3" to clamp it to 3 here. Make
the operator precedence explicit even if it's correct
as it is, the paranthesis creates less cognitive stress
for humans.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index dc07b534f01f..21cee4d9d2fd 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -237,25 +237,25 @@ static ssize_t mcde_dsi_host_transfer(struct mipi_dsi_host *host,
 	if (txlen > 0) {
 		val = 0;
 		for (i = 0; i < 4 && i < txlen; i++)
-			val |= tx[i] << (i & 3) * 8;
+			val |= tx[i] << (i * 8);
 	}
 	writel(val, d->regs + DSI_DIRECT_CMD_WRDAT0);
 	if (txlen > 4) {
 		val = 0;
 		for (i = 0; i < 4 && (i + 4) < txlen; i++)
-			val |= tx[i + 4] << (i & 3) * 8;
+			val |= tx[i + 4] << (i * 8);
 		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT1);
 	}
 	if (txlen > 8) {
 		val = 0;
 		for (i = 0; i < 4 && (i + 8) < txlen; i++)
-			val |= tx[i + 8] << (i & 3) * 8;
+			val |= tx[i + 8] << (i * 8);
 		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT2);
 	}
 	if (txlen > 12) {
 		val = 0;
 		for (i = 0; i < 4 && (i + 12) < txlen; i++)
-			val |= tx[i + 12] << (i & 3) * 8;
+			val |= tx[i + 12] << (i * 8);
 		writel(val, d->regs + DSI_DIRECT_CMD_WRDAT3);
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
