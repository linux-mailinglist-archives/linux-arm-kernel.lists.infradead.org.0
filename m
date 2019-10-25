Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133A2E52CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfwnvybsGqMXmiqK3q7ZE5kT6vEeB4i9TFocQ63aAPo=; b=cWhLf0g6dBHB0+
	HPyvLqbFglMiI6ugCWWswjNoV2MrhMq/cXe+08ljYNDIZxFEcCLAGrFeaLdfEciaS6xjv7TLM2s88
	iDV6gPCI5DBIXlKW/Zog4O1cde8ZjodY2u3EoXd9kjxbqVHz5rcNxkan+Ra9Sin8mMZ7AEHFugA36
	k11A8ajOI5slWhWP6ikd8agmxFXHuMynkyxT6I+iICm5oW7rZt0A2ytUzKeyQBAZUvFB5kszdGOG+
	MW2ADuTJt7iooAHn2sI6dqtpNpIqypA7QdKqhl4FmsDZBjBRoKXvjDjdpwa/JxeJ5k467EAiRKf9X
	ZEC47S2mNtFDSFMSkgbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3qz-0003vl-0l; Fri, 25 Oct 2019 17:58:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3pq-00038c-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:57:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id q21so1610766plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P+ShWs2FSM+vAO8pDJrhjeu0D2BHwDqE1SNacXjaIBI=;
 b=GCFIrxMGvDu4anO9yWv5FSLPtn8GCu9UGwWlSFs+9Savi7Bbo5hViLED9RYTD7MP6H
 54jW5B3P3KfDJv9wUhchHXM4A2Thg4kojn3iT/MQ8+92+dzX/eXAyN+wqpiDReGizoaR
 Bc2Per+UzIOICEBJHScoH1tu4uvnM1QLWBU7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P+ShWs2FSM+vAO8pDJrhjeu0D2BHwDqE1SNacXjaIBI=;
 b=OFgvubw79ISNTvBsON3qOsmV8AT/lWa8ouHpVjfALipR5aYgC+YW3hoIZl5jKNhOMj
 VgXbyw6frnX/ZbTrc10WUS+4atQyOcpgQ0rEZ92NPqOYjxYAOZVo61q6L4JYuNEaKuBU
 egmPryb7wDyxVfCnTZXMO3NnfF2i/KrfYdMz6cTzG2RqrrbcnQzQPz714loYLBX1Yqmd
 hk8Fagl32qPzto4/Wj6PTCTtVORReXP7iNpvXqsQqdruTaOQtJoWbCDoh3hDYroNPu8/
 zeLbi0USu23Ouv/KQJ/Ie6xZvHfquAvoolwXEPg8sAaXmwU2VSv69QPD4bi8qRRBKvCA
 9E+g==
X-Gm-Message-State: APjAAAUP6WI2qbDbz9ubopqyZEhlEHIRVqhT6rb+dGYxFOjXiw79VIiK
 6TE3oiMvG2lzPgISsKTqq5QX6Qgev2w=
X-Google-Smtp-Source: APXvYqy2y4it2bBHhmVAciL+iQ/Bchja3gPtyMwHbnVNaDVG+gfU16WxFFqSrCI2gyiaQnXpjxrzxQ==
X-Received: by 2002:a17:902:6b45:: with SMTP id
 g5mr5151240plt.336.1572026233355; 
 Fri, 25 Oct 2019 10:57:13 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.57.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:57:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 5/7] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Fri, 25 Oct 2019 23:26:23 +0530
Message-Id: <20191025175625.8011-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105714_480570_13D1181E 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
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
index eacdfcff64ad..4dda96e0febd 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1251,11 +1251,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
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
