Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2041E056C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XGTO5smc+bbVITgsSplooC0+Gx0kiZRP3Xjiyxsuags=; b=X4RYEFxkVHb/2CWxWEw5qtVTO5
	goaQkWt+WhjE/vCxIxF+wT4LunFHC0BP7WdJ81sJEMLJLvAyt4cpYp/xfNtMmzXEW2GJc0mACodCS
	3kXQsMCtuBxmGReGcmfhRNjOp6Rlp8xVTOYEFmg5GeaRAQL5GNz2xScLeHTngq916+E/u4r+cfdf4
	6Gpq9Y44Eq9BIk+rvoZGnrKXLBZb0k6ttFqNOT6fhMXiVfyskUJReLQ5ktMohhIy9roQ4pTQXinch
	UVwtUHez+2erBwWX/suDnPTiZlg82Q4KQh0aVce8lOGwWnhXKO9rzZPTlx4nbHebtCxOgv5bytnFq
	5LjD0lxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd427-0004O4-3B; Mon, 25 May 2020 03:44:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3zq-0002qD-8h
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:41:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so8129189pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Eu+Ho/X9r7MZN52F/RomcQQtgjiQ+X/m9AkGhdRXtC0=;
 b=PmqbvbjfQbPp8aCgYV4adtOizlxzzoYkkP3BmW00smgp2fP0Bgb6gdyaUQ4hSIboyv
 v17woXHMmCbO+WITpNoew3ZTtwk+GINDY8hwKAcYqbhKR5mfY5n8Sx6wOC3DKlVsJ254
 LC94GQMZAP7XMrauRY3joLeFA5EyYlu3MTIORwdh5K6lKQ4XbdESZQCBS+FTPbumlf4A
 WElSv97Cre7PEAgs33dgrOqpa7Caw6r+g2WUAH+gf6a6dTsV05j64XII4l4nOrXjlXB5
 lVAnOeQ9wLz5J4uOpLCjlTipqGfMETbFE4vqCnbX2n8GsVykhRXpzBRU8Xuzqeu9NO5H
 w0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Eu+Ho/X9r7MZN52F/RomcQQtgjiQ+X/m9AkGhdRXtC0=;
 b=Zo+0fQ23S1AS9CR9lQulu6agnNpJGZ5OfxUWmkZXQOgIJBcizLCVM4TqQfVoSMm2fA
 pFIqj2oqM39/kPddiWPYp3/F25GbYTMZRhJ0wsR9xmrOfARDvyll30B0lm+zS+ZH0emm
 smTGdlDyjAOWq8+gyYGUuAocXAfBYwXA15PaCmWCkiwMl13WVMR22BN20plXDxtD8JCL
 1l//bwszIIy/1wD8Hoh9XwKjw0k3jfMxNEOVCNpJ3cBqqxMcje0ED+QLWMgFlg6ooyIR
 WW+qsbsLJsZGJ998Y69YUQj98aNUdEJqoTaqUFwbKwfy57H1gH1ejYjJSb3Ftr0PLjJT
 GlLw==
X-Gm-Message-State: AOAM533wc2CgALaSRzpkzRC0Q27RSWV8hd+DhEYrikHcchFrkEQ8PjaZ
 MLUE93USbTdgSPi8R4TFY8c=
X-Google-Smtp-Source: ABdhPJxIuHMaJzv5SBEYVh6aGCYw3zkHcCsCQujjuOk1hJAg5OSAvXpvA0RjBvenltA1HqrMvGbYhQ==
X-Received: by 2002:a65:41c8:: with SMTP id b8mr23889318pgq.265.1590378108951; 
 Sun, 24 May 2020 20:41:48 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id 7sm11981695pfc.203.2020.05.24.20.41.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:41:48 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org
Subject: [PATCH v5 8/8] spi: flags 'SPI_CONTROLLER_MUST_RX' and
 'SPI_CONTROLLER_MUST_TX' can't be coexit with 'SPI_3WIRE' mode
Date: Mon, 25 May 2020 11:41:02 +0800
Message-Id: <1590378062-7965-9-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
References: <broonie@kernel.org>
 <1590378062-7965-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204150_422648_0AFAA6B0 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

since chip spi driver need get the transfer direction by 'tx_buf' and
'rx_buf' of 'struct spi_transfer' in 'SPI_3WIRE' mode.

so, we need bypass 'SPI_CONTROLLER_MUST_RX' and 'SPI_CONTROLLER_MUST_TX'
feature in 'SPI_3WIRE' mode

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/spi/spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c92c894..f884411 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1023,7 +1023,8 @@ static int spi_map_msg(struct spi_controller *ctlr, struct spi_message *msg)
 	void *tmp;
 	unsigned int max_tx, max_rx;
 
-	if (ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) {
+	if ((ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX))
+		&& !(msg->spi->mode & SPI_3WIRE)) {
 		max_tx = 0;
 		max_rx = 0;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
