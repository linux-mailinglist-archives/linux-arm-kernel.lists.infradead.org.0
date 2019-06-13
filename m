Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C92644B5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0hUL2vSk+392wrdgZRgpItajLMVjTWsotWhTzk2tKM=; b=eBsbeV/txTFDRu
	su8t71AZdhlbTfEjLjoKuJLq2gKzAILjfXBueStYw6qqwzyfyb/FMrNz3qBbZcjx3nZ8Pid9bOKmj
	BLwrkG9/XN1WnY7UYrZlrHGmSGRT3yKBmdx1/6AE/N1pSKSOmk/98cMNXhElK5F8tKcB6CuRg3NuG
	1ldWlm48fCrVjQ1G2ijIWl/s3I5XjJam+kkSocqznRB6sUhQNSwCTBOJk0S82I6R81oPutaHdGd5h
	Z7uJwAGB2lYalOPGk42t7pAVLJvwswb7C2i1pbgiFkKnA3A8q3uPq3yt2WPJaxjwHgRax1zDGblUA
	t4DfgO3waaCbtOIj9gQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUsh-00073g-5v; Thu, 13 Jun 2019 18:55:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrP-0005nG-BX
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id v9so12235pgr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
 b=aJ8KuW1/a6+tHfGMTMvAFMkE+bE512jfVE8Ts4fTzh36vUnZpd+YOgfEhA4vkVqhT9
 /IqxU6qDHF8aTkLeF/19ZAFzqB0zV8mcUhuKGrxQLVSZVICNkaUrWBm82hc2XyUcWIKC
 j7qefAWyIFHU22ZcbluSMxnkMZvJGGqgeAX2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
 b=ixjQHhtZy3hqy5rTWhGAKW5OHzJ9FkY19UkYPK4JA1WVsuzT7W1sSW4R2rBrMWzppc
 1HkJS51u21bOU3qRGR3T+bK0kuhl22pBy/B2O3q6A6esDHCBUuYsuEwSmLhYRIq34QKX
 eqiq06NlAtiPn2sVJTpRVUvRwaeb5Xchg9ulDE5YNAS9Esg81RKcvIUkULZ9ojOVNoZf
 eXRILV8wPqimEXgKZIW7VLHtzLOioiWjxVuzf9WYnABY3jI2a2lb1FvSk+B0bHw/CRWZ
 KWhzg80frMH8OpRCor0BVFe/2D1LdC+aCsPAdx8ok9+WyR5yMPVsuf9wtxs0v0EiYjGf
 QaoA==
X-Gm-Message-State: APjAAAXOHCS+ob08+wE63iyW13E4F+k5ykyLXxBLlQj8YEx0EbaXbLiu
 rPMbPQqFtGuu0/3tWItAHhdapg==
X-Google-Smtp-Source: APXvYqxrRxrN92j6nLSvDJAzSmADkZczeGaGVbTYryt+foAPqo3y92wRc9rutMzZqwiIuC90V9eyBg==
X-Received: by 2002:a63:ec02:: with SMTP id j2mr33010098pgh.340.1560452045846; 
 Thu, 13 Jun 2019 11:54:05 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 4/9] drm/sun4i: tcon_top: Use clock name index macros
Date: Fri, 14 Jun 2019 00:22:36 +0530
Message-Id: <20190613185241.22800-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115407_460305_456AF378 
X-CRM114-Status: GOOD (  12.78  )
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
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
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 3267d0f9b9b2..465e9b0cdfee 100644
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
