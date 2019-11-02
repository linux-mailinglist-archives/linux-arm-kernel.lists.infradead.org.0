Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9259ECD99
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 07:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YstbAu5uop+BiD3R4yJ3i9KRbaJX5XEImpV5M3Vr7ok=; b=plfY6suvzF3GPi
	4o3zBvF/nA61RH5Lc287JpUc3R5BA6tUO2fhg9BIcWmEtdfTue/sA4pYB8lZd96GThYDar4YYBCuG
	nPhNVOo0kmyirICwjuX2EnK/OVJXJqghkJS2hiZwCwahHzFc+Eq8cYVmy1gJeO5xKHk8voahamZUs
	UPJSkwId/NfmP2VnXGXG/Vk8657SP0mbcrYZS3dxtBbGojNs9LCjORxMTyCdkwVBK0onDTlL+PEue
	Ick3sxt9SAN1dUUNLpPiTuPSqAf4eyRuk7lWUiNV9asbu/p/J4n8ayG1Fe77dVeX1VV7ct2WFE3Lf
	0R1lMLLBKQFmLGkL583Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQmnl-0007Rz-8Q; Sat, 02 Nov 2019 06:22:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQmnc-0007Rd-Tw
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 06:22:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so11637279wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 23:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zhzCe9gexEx43QvM7xg8LGu1dhIv2+i6xu5dgHafDF4=;
 b=kwLnMiSMatRxSK1C76ObCExaPa9R1/4BJEHxx4D1XjeiecZuJ2/NVbjoC4Ph/eJ/2c
 RBOFwFKJImzh6GFcR5REGOsZiPm1EyZf5LViYrAM2YRo+OXh4tecrokck7kfBE9RpxIC
 QTOvF1QlG0sdyLRcdI1muyz0WwVPzncurGKQH+losdQ7UINUTxzJfX+X4K54Au/xkqir
 7DR79TKROUSQJ3ZfNdWabSGR3v/9EzbgQVsO/Rg7M7WoolGWIkdKNd3/rhR9C7VruSXe
 HBwC7tDoUo57wB732gk+BCWqZL2be9kJ2Z3I/0Qq6H9cKZ81tv2Yl1078ZGLLf+APkTK
 i6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zhzCe9gexEx43QvM7xg8LGu1dhIv2+i6xu5dgHafDF4=;
 b=uXoszVjUG4R2S0qQQB/kXxEa4yzWIM9P5Egcg8gvmiNfQWA0SFj2iarFVsHfm6g8Qk
 F0JgsprNJIZvHDPRQaK2Xl4j35zo1+8tTaLLpVRwrTYqHbpvAiC+ksllnm2CNIfvvVBa
 il3x6j6n8H86cAAAmck3aRXSjujDGc0CP9i8n7uEcECHKkWs0fLmJ2CSpqT6/qjB4Pys
 ce7W/disk5FZKm28HFP/oY3akj0X1ea6hYY78ZWtTCYB+xw2xNPKTrqdv5mR6vPCHk3T
 0PcR0xxAgQGRyQSPXJkz0DY8sfzwN7WCIA3lqT5kmk1YnG9LZNqLltvWaxd3dsXMUDot
 gF1A==
X-Gm-Message-State: APjAAAXOQ0T/9PAuMf7Bp4miC7gFFZaSGsKOBgoVWS4g8VoYD6W7uZQj
 39EwSAuwA/URGUpfzIbThvU=
X-Google-Smtp-Source: APXvYqzU8cyqw+/oDcKoSvzWSB/BEN+evKPThPEccSytbmI1say7JB4C0XssYGtF7LAmI3cV/QR2KA==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr13307058wrq.255.1572675729879; 
 Fri, 01 Nov 2019 23:22:09 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u68sm11432918wmu.12.2019.11.01.23.22.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 23:22:09 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] i2c: imx-lpi2c: add clk_disable_unprepare calls
Date: Sat,  2 Nov 2019 14:21:49 +0800
Message-Id: <20191102062149.3957-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_232213_022991_84E0CC51 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver forgets to call clk_disable_unprepare when probe fails
and remove.
Add the two calls to fix the problem.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Adjust the call order to make it consistent in probe failure and
    removal.

 drivers/i2c/busses/i2c-imx-lpi2c.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index c92b56485fa6..f964693c0901 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -618,6 +618,7 @@ static int lpi2c_imx_probe(struct platform_device *pdev)
 	return 0;
 
 rpm_disable:
+	clk_disable_unprepare(lpi2c_imx->clk);
 	pm_runtime_put(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
@@ -630,6 +631,7 @@ static int lpi2c_imx_remove(struct platform_device *pdev)
 	struct lpi2c_imx_struct *lpi2c_imx = platform_get_drvdata(pdev);
 
 	i2c_del_adapter(&lpi2c_imx->adapter);
+	clk_disable_unprepare(lpi2c_imx->clk);
 
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
