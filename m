Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673B91E3A93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gvKpGL2UmuAG3/OEJnNZn97ikYcPuSZUi51v4N+lP8k=; b=DcmubR1eDRiPkwhba2bil777ZZ
	jCXO8T2/yC+gE5hVMtGF9izKQoQ7y0ONkkEZ1IQaB2zp3LeUA4XgmKd/twP/WSyoI5DIwq02UD98Z
	ZkwkczPULRBe02j3LiK5Bl9PtH02tQiaLOolD1Y9kRnWjuIiApKefDSy4jtCraCZrGJJhGxd5p1Kz
	yUJWHZSYkSEVDUlYPphNgVQnkrB71qPgzy03hDzQqEe5R3wrmlfwmVg16pelikiv3m3dS1Ob33S6j
	73kGxkM7LEH8J8ezGdYUcZ466YEYrEH1FQa3rA+nNUdUfiKLmEUJ2mo12bYIkFOQaOu8/jg5dfie9
	wPzFquVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqWe-0007hW-OF; Wed, 27 May 2020 07:30:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqUH-0003VQ-BM
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id x11so8831057plv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/JV/008aPSkYotGfzM+L6zI+gJbJzTnEPoCKhdwlcaQ=;
 b=vVzh0duJ5UBz8i7EQglR29+3vO1ID79mbmwybvUcue74rvWvRigpxqp2ZVr0rab8e/
 Ry+7PIzSqJgossPgzHagNkc8BPkm3Z0LmHRCYUYMdsPKmv13jv5jgQTLyV598te+V/7S
 hqKUWRB04esPX6hcJbWLwzZbw/an7UI8rmCm4mnPxCTLeCBGBDFb+ZGq1l0/ewgwzmrC
 yyYNYr74oCMw9cpd4O/1QrtJhT0KIiKl20sUb1Sln7SGprcAslSYRWpjmIuzG+2ur+6K
 5JLbT+St99ieEkg+3fQ3MDwNRLoWeGDiEfLKkIt9bWYn039LtKtsXlf6lBBtvx3X2cNS
 QkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/JV/008aPSkYotGfzM+L6zI+gJbJzTnEPoCKhdwlcaQ=;
 b=H4N/Z+DRf8Jf8QpMiJ6Tz4xSA7j44dPXKgSQXM3cXQZkscLVI7zSZQ5TXMLZCiJt3U
 kx51nzTJJWm8IEVKDUgcBDuCD4Xrx/ZhxKHiB8hHUX2zu+4b5AnAHeX1/aO3CsjoqWq/
 IBch4ZEtN2xiWrD2JIojMrjq83BzGjuULq9f2CeL0k6R9v5G5Z+1txsddp2jTHMDB+nw
 Q4ssGsDCDnJui+93KJ1UJd0jP9klIkSOZ9+I5Glutdjy3TbkuXSWVCFr9Td1pWUDLE5r
 gl3INGCrRDpr+0sS7l+0Kcwn3lUg9fFkKFjuX9nYIzScVXf3QxmKE3VgBm50Xl1yxhK/
 XcVw==
X-Gm-Message-State: AOAM5325qR/5O18x6LQWaa4qO1mS4dxp7T5L5KmV1Hqp8xG+LyfnltkG
 kv9MkTUDdMRsomQwXlKc2sI=
X-Google-Smtp-Source: ABdhPJymWe4FoVyYbDrlihjLqkxCoTA9jfDcSnxcM8g8a/J8skMLtS/pkQ9CFWP8NSn447pUr7X8sg==
X-Received: by 2002:a17:90a:8c95:: with SMTP id
 b21mr3540607pjo.89.1590564508451; 
 Wed, 27 May 2020 00:28:28 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.28.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:28:28 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 9/9] spi: flags 'SPI_CONTROLLER_MUST_RX' and
 'SPI_CONTROLLER_MUST_TX' can't be coexit with 'SPI_3WIRE' mode
Date: Wed, 27 May 2020 15:27:33 +0800
Message-Id: <1590564453-24499-10-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002829_433127_43DD981A 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
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
index c92c89467e7e..f8844116f955 100644
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
