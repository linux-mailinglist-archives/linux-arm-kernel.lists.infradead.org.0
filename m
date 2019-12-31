Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A2312D8CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoAJmSRzHhMbzXmj2/YrQYPGGlKlI3hZu2luH0NVAi8=; b=iCw3qGUnSFREPO
	q0tQpbegxVwkjpZbikBr0Ek4b+hca3QOTIHbDPEe307UhUb08YJrfaIrFl54wCZ8rwv0omX4kmr7V
	Ji3tm2u9kWIy530r4d0QtwPh0jTwssqK4eLCBoTi/yfKQNbk2NEel3vyVoTbDFW1JYZUU5jzXkpZg
	uX4qJpVMpbul+PndZGfCzBAmCrwnqF/qUluIEg84SehvJLcaUSumhoAd3rGp0CzRNw5hAgtENm7Z/
	aUKQcvzBlMNm/DJcs9jNzRsIkYBotBYws6VdBSwemDadrd0mUyNfa6z8Nk7Fn0noESYHgEDjgsk69
	/XDiOtZNXObafmI/apKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHEX-00062m-F0; Tue, 31 Dec 2019 13:06:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDd-0005ZV-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:05:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id z124so19501627pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EOyi5tzl/4nxk9xqAyclAM+URcfve5OZPh7MV8YnBrQ=;
 b=C1XNMIIrb2O3OzCmOxnI3KLkToL36K1e3oVnIkwDhOb7qAi+rVBZHeA8Ow4beqvyc3
 OmRIH1tZbE4YUFbem4RfF1tsmO1bJxhPU7MzEGXb5kR6yPVL68dQrzwJzF/N+TayzcL9
 gRZfFtDZn4otpmgJFfnrf8tUKpSIthlspA4+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EOyi5tzl/4nxk9xqAyclAM+URcfve5OZPh7MV8YnBrQ=;
 b=BiFxLMxbCaa/MPDBDNc9Br4z3aBBvMHcLV2VbOpdLimdpUElIPE8eun35g7v+xPWbq
 93/+NYZ/2n/FLpviqiy1LNvXQx696wZFAqv8kSBzY8NUXE2oCjjJQ+ykbpI72q2pDWyR
 5J5dH5KiR6QUKWSskDjQTYDHWIv2+E9hp15TMze+NOPnqUFf9bVeuOiXiWw4BDiIw+14
 h6jwnhH4xaU4d2PtU2diehBc23ZAsHh3oR3hyK0B9ZX+/gqARw1wrMEdOOK/O+ahpjX0
 aROk3jKcvJk7dm8DTtDAYN3qMguYFFlyS5Swy/ykJiAmv3vvqRQQDNE2B1Cy5Y8plKRt
 NAaw==
X-Gm-Message-State: APjAAAWPGoByfY6tKq3ARSalK8Ti8HcE8jTHnFMbhOVJRG70FbzgXesa
 CsyViCS98uCEuS2n8x/YwyYdSZWloAY=
X-Google-Smtp-Source: APXvYqyYk9aV+EnROERG9fjC1KYiBt7tIzfsFrbzcVxWJhg/zyJNc52rgXItMppvEfsBzE5giSw/mg==
X-Received: by 2002:a62:ddd0:: with SMTP id w199mr75715315pff.1.1577797552360; 
 Tue, 31 Dec 2019 05:05:52 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:05:51 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date: Tue, 31 Dec 2019 18:35:21 +0530
Message-Id: <20191231130528.20669-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050553_655779_54285158 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TCON LCD0, LCD1 in allwinner R40, are used for managing
LCD interfaces like RGB, LVDS and DSI.

Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
tcon top.

Add support for it, in tcon driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index fad72799b8df..69611d38c844 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	/* TODO Need to support TCON output muxing via GPIO pins */
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.set_mux		= sun8i_r40_tcon_tv_set_mux,
@@ -1500,6 +1507,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
