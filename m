Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF251128E3A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 14:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20gSg9yZ+BssJawXQB30ZtoEkWWNh351j+Uyp8L4OLI=; b=FzGpqdIFhVES8I
	MEtJNL6/AFsCVpGzpJUyQKGS3m1R3tx/SvXF71xfxs5p8TyikPFp9u83wiZDxHnmTM7dhr7ipvCfX
	zWezdI8rg+S+nvJMpCtINwbJSn+Xf2GBF+LqaEq8gnPwNvPbk6969QStWd8ioE7ugCEEV5SufTfMS
	5ze9ZdajyeFhUchxn3vX91PDmvnahad6INtCmInlzpvVpFRYFDYYP5k92Z6yo72qpz/W3k+Z15kR+
	QVWBW49zw1fTYLYE8PKu6bHXVF7/3rleV9JFMMCtvkW1cjF8IffpKGZYe22YfZ99/NnKgdBn0u4md
	qFVl1tvM/T8pGj9f5DtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1Jc-0005Hq-7T; Sun, 22 Dec 2019 13:30:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1Ij-0003UX-Hl
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 13:29:43 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t101so6272985pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 05:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NRAz4ZoqKI0Nd9TLnyy5Bof8VE4wzHjzOviJFUDWFYU=;
 b=dNOsofgdHJWSE8kXto64TSNFpxvXSvTZtOGMWYtrAbWMsEWHOWfyZJKTWKxhM/tWbM
 AzxWaWz0PjEHFhYXmk9MIjDaDM8CUit4sGy/NLqKXDZxAxfI5cQfx55rk7JCf61gEnsQ
 6XQLOI6jPwnXWXY7UFUUb9Fhteq4HIuQHSf8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NRAz4ZoqKI0Nd9TLnyy5Bof8VE4wzHjzOviJFUDWFYU=;
 b=l5D7+U07InNuy8GLSK79ZRiA/MubxlWoUc4gfUhpjiJL9DD7OULx6oSIJ4N/Z3qnji
 S+LNBCuWor2vFEvDFA6d9eeGbM2LuC6eZpLmEDxbKKt8II2PbtfpbNYOwde4N4VQY+AF
 nGMsbdwVKOMtDiTbV5pgbIOfVcktDqFLudjAiEsMh2AfZXAa9REU/05o/xHWc1BA5Vds
 99acUMx7T8IbUg+dhJuGGqqI9n1+GKsQgRw9oQCJFNLaJzwhOgcLZlCuUHZbh/wqfOFJ
 +fUmD2t05CNxNgO38i4olU714I9XMIZONreyLB4L+BIyLN3cpOJbYNDPhoKh2XPbDIpN
 9toA==
X-Gm-Message-State: APjAAAVDWRPpwppGfl8NooYoHj/K64gAk5qOQSExdqD0GvCx8s9dgSl6
 BpZSVN7CAuJ2Fv/QuvCxeUDHoA==
X-Google-Smtp-Source: APXvYqzi7D0b+20qvpHdXr2HAOx7HQsXtaHE5dZtjtMXAPfngax/iDdiCqnpwtaqArWonhyBKuzS1A==
X-Received: by 2002:a17:90a:a4c4:: with SMTP id
 l4mr27148361pjw.48.1577021380573; 
 Sun, 22 Dec 2019 05:29:40 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
 by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 05:29:40 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v14 3/7] drm/sun4i: dsi: Get the mod clock for A31
Date: Sun, 22 Dec 2019 18:52:25 +0530
Message-Id: <20191222132229.30276-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_052941_624540_72C38410 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As per the user manual, look like mod clock is not mandatory
for all Allwinner MIPI DSI controllers, it is connected to
CLK_DSI_SCLK for A31 and not available in A64.

So, add compatible check for A31 and get mod clock accordingly.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v14:
- none

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index c958ca9bae63..68b88a3dc4c5 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1120,10 +1120,13 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->reset);
 	}
 
-	dsi->mod_clk = devm_clk_get(dev, "mod");
-	if (IS_ERR(dsi->mod_clk)) {
-		dev_err(dev, "Couldn't get the DSI mod clock\n");
-		return PTR_ERR(dsi->mod_clk);
+	if (of_device_is_compatible(dev->of_node,
+				    "allwinner,sun6i-a31-mipi-dsi")) {
+		dsi->mod_clk = devm_clk_get(dev, "mod");
+		if (IS_ERR(dsi->mod_clk)) {
+			dev_err(dev, "Couldn't get the DSI mod clock\n");
+			return PTR_ERR(dsi->mod_clk);
+		}
 	}
 
 	/*
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
