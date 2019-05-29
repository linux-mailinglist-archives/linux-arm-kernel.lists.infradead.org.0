Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F572DB3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zm/r0PdPS1qnZP8Z4p4iv1yHfq2HWgP6BzDABf62Bo8=; b=dnfm2JvPRLGScM
	SmeE+PyIgqS9GM09a951MbDzsYKAnvFG1HO5mYYwFiUBEPV8LFxv/+/f0k7U2g9tCdq8Sn/B49iBJ
	4KqjLBite5pD4t6f6qieb3IzhegmVT1IQ3Eg2gs9hRdPosx79bnIdEm8M4KiQINd94xtsi7YQn/5E
	vPmjVZ6FgP40u3FxyFohkc/7/1xW+3wP4QRIipTPP2NCLiQTMChRQkr3VYNInnMyCsj55eMKMtAaL
	KglQ8+r48zjNd+LL2IndS0/1ou6yTl+H1+m4Acd71w/IOJnwB+C1JndofKCMQ2JTLV49T9ib7JHA8
	iVWDMn1b9TDmgZPbhctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwH8-00061y-TS; Wed, 29 May 2019 10:57:42 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwGS-0005JT-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:57:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id 20so276543pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iSfl8JfPaQ3eWtHD/XH3XcXi2ZhQvwGTja3e/CsvDhE=;
 b=BqMnNZJPVSyBNKhXZnG6jfq6xiFnuJvAVG5+M7y4c5sF/jqrlNUUSyuZGwy9Ue1GAl
 /ZCmlEhIuIZTCKvvoYUcUillYwzG0xAmYGy4+fzPByhP8dxCPBpbm0pgxJ2zppZ+Te2Y
 BZ4uWoRTtZDRHvbsNoPw0gJh6BQWkj2hEe6LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iSfl8JfPaQ3eWtHD/XH3XcXi2ZhQvwGTja3e/CsvDhE=;
 b=hG+rh5c/wtqlqUA4Ai2TLZ9BhGuwWDe/abut8JELQjz1oAc+5luTleZ5jMgBJ+FL8b
 vcPINkjPfMHPq0+glr74Hia82AKuYqOqMxp8JeRzKjQDJm0hj79kD57ILWTQ8NyfXcSk
 NJZISCFcRiT5YHXy/zxcCuPJIJXrtSaEmv04OE3mITfEAW5YsMcM+zCCRI8fafA0YZgY
 ooCPdXRCdkmJEn68zoG4q9Qbzx4LUUcBJfQEQNSnfies4KuRhB6sTPryndNLNSJmLAym
 xfxuqmIWUBJNbxcDPJ5ZxTetflbmd958/8ZkXzSrwsqfWBQ+UMSe1CwHL8Wk71r7vHx2
 BmYA==
X-Gm-Message-State: APjAAAUUxxwdqI+hef5FgqIrJmLg0zR8pdHisTwtRINcFs47Hl+F08+W
 RDuLzDBdqvtYC5xKolVMedd3Pw==
X-Google-Smtp-Source: APXvYqwjQXmck+YR2a+RbiuBNeM9299Ahq/O4xsRX52B+BRoeJVrH63dlJOqwyKqlbylxBRGMHiCMQ==
X-Received: by 2002:a17:90a:240c:: with SMTP id
 h12mr11640162pje.12.1559127419415; 
 Wed, 29 May 2019 03:56:59 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:56:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 4/9] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Wed, 29 May 2019 16:26:10 +0530
Message-Id: <20190529105615.14027-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_035700_299797_8061120A 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Ryan Pannell <ryan@osukl.com>,
 bshah@mykolab.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so add compatible
for Allwinner A64 with uninitialized has_mod_clk driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index ef878175a79b..dd68fd0888c9 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1304,11 +1304,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
 	.has_mod_clk = true,
 };
 
+static const struct sun6i_dsi_variant sun50i_a64_mipi_dsi = {
+};
+
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{
 		.compatible = "allwinner,sun6i-a31-mipi-dsi",
 		.data = &sun6i_a31_mipi_dsi,
 	},
+	{
+		.compatible = "allwinner,sun50i-a64-mipi-dsi",
+		.data = &sun50i_a64_mipi_dsi,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
