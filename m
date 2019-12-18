Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD53D125186
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92lYcsJ3on54VgGGEiv1+0/7Kg3uebaEd9ZyVG5P/nk=; b=K90QKI6DlAu5fn
	xsCsFEb+Phx6lly6N9sxs6kRUBsNzA4Th2l26R7uSdRA3PKbELzNJWJol7n52Q0XPN4RmBaZurtTz
	N6v9PzPkj9792heZvRDEhl7Dmkyf12sMPf6/QH2X3SrkjPQCUBMRSgEVHGLacDnPN1Dh3/G0ouqGo
	qOwD8BNmU7nUFpRM5YqSmyam4jc3khlaidTHcNKONZAKeZcRVY7mM4aEs1Vr4Upd8ypLF+7Sl4p77
	Zs7UlpPSZ9hUbZjRROCED71Y/1SlRceaLvuk1LounLafqYkNBckOa2ShgAPkr+tcXykHPyurG9Vey
	/DYYlcGPF8wUQG6zE6lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihejS-0001IZ-Jm; Wed, 18 Dec 2019 19:11:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheiY-0000eX-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so1399319plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hp8TQeL3yIB1KqyuldLYK5Mau4+1RzHQTjjW58JR+LE=;
 b=ahpP2VUFj07C+YAeNRzrA76nsNFKGCa58LATV1abYF6W3evqhgS4VjoXIZF5Rxs/Zl
 KojhYjea5pEydc4TKZ3PzW8hmG8ZtdgiQqcbtzZreiFvxQIj/c5GnNzPA0rjzyel3sRZ
 rypwNDaFKZeKjEZwHrGEr6XO1coStIFAo1GzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hp8TQeL3yIB1KqyuldLYK5Mau4+1RzHQTjjW58JR+LE=;
 b=mHTpqz0P5udoEqKK/pNLa0wfP77AyMT8PDfw3KFVO87xoiOhOy2xdXdjebmM/PkGbp
 43C/M4lkK8z6FnjSy6Exh8mlkiNSykgk5hvQ4hZkxcTYSSJ4z8mJPWNkUOCcqIUWwULW
 cgex+kLsDcSkvjwbdYDaCEQoSmMDl1vA4WZRJ5AX+BBKFJPc21E/8/OJT4RxgzcgbKtr
 e0LoabGFIYpblsWrC8nnZxvOMhP7Q8BgvxrSqfin6kBM8UELOf2Bwe8dTdwEHFHkMXOW
 4qKmIe7gElKXa8T3hZa1am5TtLH6C2Wd7BKEwy6UTwSc23cd7vdowydLWXisyLVvMJP9
 qQiw==
X-Gm-Message-State: APjAAAXZrt1bI7CWZ0X/Bn3lpfqafL88oIVvMiNeTQs1gqWAhru45ZBT
 tawBIyymrWnJ74bxzzKtuC4IRQ==
X-Google-Smtp-Source: APXvYqzbv5fA1hAkQ1/0DqEdeyLCZYo/j3p0FDLo1mRnWUjMlN5AwYLYhnlRpg3B5Bk1ug5tM+pzvQ==
X-Received: by 2002:a17:90a:fb4f:: with SMTP id
 iq15mr4735561pjb.86.1576696240895; 
 Wed, 18 Dec 2019 11:10:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:40 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 3/7] drm/sun4i: dsi: Get the mod clock for A31
Date: Thu, 19 Dec 2019 00:40:13 +0530
Message-Id: <20191218191017.2895-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191218191017.2895-1-jagan@amarulasolutions.com>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111042_700276_A9B8E01F 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Changes for v13:
- Drop has_mod_clk quirk as commented by Chen-Yu

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
