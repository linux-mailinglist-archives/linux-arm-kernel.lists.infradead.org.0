Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F9012D8D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRcG3X+58JSVECn8LN2YvYL3NrEiKTuhl4g+k0JtPtg=; b=GFsR9m8vWIomL5
	ZCfwCkGPNdGK9BEyvK7vw3CgWZ+0Vu6YKRYSeSzqNdrSCHVRyOTVCJ6/H7LcQouTxkASkMPGDqLc9
	uVoYy99b4NuPcAt9Ff5rElLFw5lXklvRNWK7y7B0zJyvdMRQdrNZws1E057B7BFrNBGhCJSmd96BT
	GJDmHJh95raVK88p2ky2qhkBVeN0uMPrF6xaeF4jyTCIfNnsQZe+VzGApO0Q53MPQjDMgMf7Z2WI/
	MZaa2nrES2XsIDKsFW1g1u2nxY0ngd2VxqqKUVPZU+F0nEEka+csVIkPWmPVwj87Sa0qJbVCEXe6w
	JP7tVxlTZyT4b5U76hqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHF5-0006UZ-30; Tue, 31 Dec 2019 13:07:23 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDn-0005i4-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d5so1171350pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BeM5/vE72SAcfQsVVuZ380ILSoWPQPjSG9XVgKrQqeI=;
 b=UH2yrbjYmgnQDGO/LNq2e0XhLJ1Ka6A1yR30mvYQH3aXQKLXFPBUb5SIjhCESRnJ4N
 +jlgWk0XPtyzUxlN+K9gw760vP/KchdsXJFwvvKE+J4XyW6+ZBplorJO+lQDgTeuW2Xo
 GVR+9y/PLF6sKT6oBzAf2P7OzaIPDoz5Vv91g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BeM5/vE72SAcfQsVVuZ380ILSoWPQPjSG9XVgKrQqeI=;
 b=XWxI0GdoPQ88E5JaOYiwvhU1uqgaWq5na4zn0Bga4ydR4BuO1u4CYvtR7z//YPmRWp
 FtG7mSPA/xh+/4AieC+kSwPGrT7XIhCvmInmAnSmV55wlSk8b7lGzqo3Mxd9YhxPiCBm
 sT8yYS/fIeHnMUpjTXR40I1VWisymYQSoOfZfQ66y4s7QJF38HNS40tktH0VhlobOv3F
 wJZx0ZD3Qtv5ipVanSqZWzOJtvW5xX9s9lAzE4nlUeSAdhukXBw4rJzKbMZI9H69r43E
 80woMIv7IIiTj9qOi5fJuEjV7GywrZPK/5YVtppE8+QCHa3RBhZ0UwDTaT4yv95cVwxM
 82OA==
X-Gm-Message-State: APjAAAU15TOlGi5rDAdhOSPTjygSe5hfqb0p9qHqm4CaTkLd3GNzUR2b
 ZzngAiew5oXBDgsea2e5nHnCBA==
X-Google-Smtp-Source: APXvYqy5IX5WCJoCb/LEDCamEWRBDTmMw7gKLEU1Ln9QZTBxaTcQiP9kWA9CGOMXxEfx4WlBPy051g==
X-Received: by 2002:a17:902:b104:: with SMTP id
 q4mr64632455plr.132.1577797562596; 
 Tue, 31 Dec 2019 05:06:02 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:02 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 4/9] drm/sun4i: tcon_top: Use clock name index macros
Date: Tue, 31 Dec 2019 18:35:23 +0530
Message-Id: <20191231130528.20669-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050603_572475_E1B6B6D0 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

TCON TOP mux blocks in R40 are registering clock using
tcon top clock index numbers.

Right now the code is using, real numbers start with 0, but
we have proper macros that defined these name index numbers.

Use the existing macros, instead of real numbers for more
code readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 75d8e60c149d..e0b3c5330b9a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -194,19 +194,22 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	clk_data->hws[CLK_TCON_TOP_TV0] =
 		sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
 					     &tcon_top->reg_lock,
-					     TCON_TOP_TCON_TV0_GATE, 0);
+					     TCON_TOP_TCON_TV0_GATE,
+					     CLK_TCON_TOP_TV0);
 
 	if (quirks->has_tcon_tv1)
 		clk_data->hws[CLK_TCON_TOP_TV1] =
 			sun8i_tcon_top_register_gate(dev, "tcon-tv1", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_TV1_GATE, 1);
+						     TCON_TOP_TCON_TV1_GATE,
+						     CLK_TCON_TOP_TV1);
 
 	if (quirks->has_dsi)
 		clk_data->hws[CLK_TCON_TOP_DSI] =
 			sun8i_tcon_top_register_gate(dev, "dsi", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_DSI_GATE, 2);
+						     TCON_TOP_TCON_DSI_GATE,
+						     CLK_TCON_TOP_DSI);
 
 	for (i = 0; i < CLK_NUM; i++)
 		if (IS_ERR(clk_data->hws[i])) {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
