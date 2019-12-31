Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6F512D8D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLuqw6nBkei6cTb+kbaQ9n9PxSfiSZftX1+0pWD9Srg=; b=tpcSIKni38KV4z
	BOZPE2ukWLVtwOuXD0qntP7awzynafzDpS9vM1bdi/qQd5lag5cnoV9ic39AkoaYtuHZ6cZRABBC8
	J9mr4NTUurUem/QXD9E38JvKMgskUqJXfRBCJl/EDu+rW4n3cBhguAbrfeKqIiGddp9n3SdIHe5uu
	G09QOEWS5hYcXLYwlh8AumOaUG5LGKwcHoNDlMBAXfhkwVK7M1Y0MiqG/dqfKulQ9gDUN8xxWok0z
	TIh26cSbyzVMkr32FUpZGsnYds8+ifjOj8eor2zRezu9K9nSN8jHqS54UEOYckRWNyaDUFBCRTRKy
	Qsb53hdvSpUkjI3BmBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHFJ-0006kA-66; Tue, 31 Dec 2019 13:07:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDs-0005mi-Qd
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so19732947pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ILMGQ7TE10GrDN5X2gxz42T2rcYYzl5utH4bizVuaeo=;
 b=DZP420mWfQnfVWlE37Mc5cOgEn4j+vFTaGXmym5C2WWLC5bTeIa5rgJQwtNJNNGWDR
 ZJgOgh0rngjU/6G9BK3E3+O2++mKx/KQxUcIUXPxIuQhz49olxOhu3BbifgeNYXlHOzT
 HON9n6PvwA76fYj2xGIJjx5+TNJ9pAfTXsZec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ILMGQ7TE10GrDN5X2gxz42T2rcYYzl5utH4bizVuaeo=;
 b=rH23wbnUazCy0llxMWZUunT0WI7Ui25LGP8y5b+vr9NLCsz4wsDq5Ud5vCK5jIgSvY
 CyYJ0OcSql+bHaA6zPMgBMD2rSoGq1fEuCcenxZmvwGclpzoptuTUOkGI1UqYsHWg3qZ
 NcbFg9GlwUWHji/+EZ6/rvbRhJ9MX/owzrLBcVH1aldVdfevDxbEe0ip9FoydFnYczTT
 xEABpxBsNgmnsph23EAz+ImjEiWzGgooGT+xO+pdNdP89U2wVDc5fEcpWk4UeggIPugp
 GqD+C1EzZXBcR6vCCAxnIrSC7yMMy08QhXryvQd++WXW2CTNG7nRYX0WOerBqpWoTHgQ
 dhrQ==
X-Gm-Message-State: APjAAAWWLl2MBdpYeIGq8/HiAgeewB8AtwGEFoAOQuiCQUvq9h4vlHs4
 Qq+g+JkIVBe1rJ8opX7dhi4Itg==
X-Google-Smtp-Source: APXvYqzYR9X9eEbz3QVs9vCw1ydwxY3WYB9x7Vgfh8FcbAGgp7o5CF2hQkexzWnq4JrUkzJbcSw0Wg==
X-Received: by 2002:a63:d00f:: with SMTP id z15mr77454505pgf.143.1577797567531; 
 Tue, 31 Dec 2019 05:06:07 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 5/9] drm/sun4i: tcon_top: Register reset,
 clock gates in probe
Date: Tue, 31 Dec 2019 18:35:24 +0530
Message-Id: <20191231130528.20669-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050608_886058_48BB1C9E 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

TCON TOP is processing clock gates and reset control for
TV0, TV1 and DSI channels during bind and release the same
during unbind component ops.

The usual DSI initialization would setup all controller
clocks along with DPHY clocking during probe.

Since the actual clock gates (along with DSI clock gate)
are initialized during ton top bind, the DPHY is failed to
get the DSI clock during that time.

To solve, this circular dependency move the reset control,
clock gate registration from bind to probe and release the
same from unbind to remove.

This eventually give a chance DPHY to initialize the DSI
clock gate.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- fixed comments from Chen-Yu
- move reset control methods into probe

 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 41 +++++++++++++-------------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index e0b3c5330b9a..732ac19b4371 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -124,7 +124,22 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
 static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 			       void *data)
 {
-	struct platform_device *pdev = to_platform_device(dev);
+	return 0;
+}
+
+static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
+				  void *data)
+{
+}
+
+static const struct component_ops sun8i_tcon_top_ops = {
+	.bind	= sun8i_tcon_top_bind,
+	.unbind	= sun8i_tcon_top_unbind,
+};
+
+static int sun8i_tcon_top_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
 	struct clk_hw_onecell_data *clk_data;
 	struct sun8i_tcon_top *tcon_top;
 	const struct sun8i_tcon_top_quirks *quirks;
@@ -132,7 +147,7 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	void __iomem *regs;
 	int ret, i;
 
-	quirks = of_device_get_match_data(&pdev->dev);
+	quirks = of_device_get_match_data(dev);
 
 	tcon_top = devm_kzalloc(dev, sizeof(*tcon_top), GFP_KERNEL);
 	if (!tcon_top)
@@ -226,22 +241,21 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 
 	dev_set_drvdata(dev, tcon_top);
 
-	return 0;
+	return component_add(dev, &sun8i_tcon_top_ops);
 
 err_unregister_gates:
 	for (i = 0; i < CLK_NUM; i++)
 		if (!IS_ERR_OR_NULL(clk_data->hws[i]))
 			clk_hw_unregister_gate(clk_data->hws[i]);
-	clk_disable_unprepare(tcon_top->bus);
 err_assert_reset:
 	reset_control_assert(tcon_top->rst);
 
 	return ret;
 }
 
-static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
-				  void *data)
+static int sun8i_tcon_top_remove(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
 	struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
 	int i;
@@ -253,21 +267,8 @@ static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
 
 	clk_disable_unprepare(tcon_top->bus);
 	reset_control_assert(tcon_top->rst);
-}
-
-static const struct component_ops sun8i_tcon_top_ops = {
-	.bind	= sun8i_tcon_top_bind,
-	.unbind	= sun8i_tcon_top_unbind,
-};
-
-static int sun8i_tcon_top_probe(struct platform_device *pdev)
-{
-	return component_add(&pdev->dev, &sun8i_tcon_top_ops);
-}
 
-static int sun8i_tcon_top_remove(struct platform_device *pdev)
-{
-	component_del(&pdev->dev, &sun8i_tcon_top_ops);
+	component_del(dev, &sun8i_tcon_top_ops);
 
 	return 0;
 }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
