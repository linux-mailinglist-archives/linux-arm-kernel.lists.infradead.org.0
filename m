Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FCD124A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 00:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIsw4v7cCoA49/G0COv5GpEw/V3rrXgg5YpicwC4Nds=; b=r3v/4QWcyA+/c/
	KBAAGpSWh0MbtHLpiDMNG+47vwGJ43UKv/jRLFO7mohYakdDgyQ8X+Ngeyn38ArTrio4gJt5bQWTZ
	95jV+U+fli8reHGkPYIucfy5Q/gi9p3+rAPgcxhwZlVSrur9cXnB+wQrPkhmMjpd2TSaR+vTlv8Da
	KxYohc9t3yCVTSJs24s8y4GIjM2okCzzUX6iC6qwg7f4+jsOJUjz3rkE9jlIYCFI8AtJBW/wLM40v
	qPSA8h5Mk9j5Pa3BRKh0NXxh5EYZwIeKtgMmIoDCZjY8nWrqVMPxSKydZVOqL2syPUxBk1meBKuBL
	UyyS6gE82bsxCee1IUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKLg-0007im-Ml; Thu, 02 May 2019 22:38:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKLY-0007hA-Ul
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 22:38:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id j26so1716461pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 15:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBFW9ct9L9kxaMD7soK1MmMiGB02h+kun9/xHdLdz90=;
 b=T2KhVqVdwh/tHXA/wuJoYTbXZFKGkASbAuQ7K5ZNHDkBqe7WFxueRi4ZQzm45gLf4R
 Eprg1hoU+uGGZPCaZsQ10mK8879RYaj1HzX7E6Gkx+D50IZ2JbFyfHeg0wUOiVob+Vuq
 GJ/ylfxE9UI2yU1NYWDMzrpIvzCZQxrMahzGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBFW9ct9L9kxaMD7soK1MmMiGB02h+kun9/xHdLdz90=;
 b=P6q4EczgHVzXUazxbFswL1TkoBNCOuSTwK6co05fuX4y5pO8IN36AMggEa3fgbjtHR
 gQxPVZYv2o/JSpyrAk+zN6pl9b8Pf3BePHtVza1z8M1gl+l7lJ5+oTB1m+6zstb8ce7F
 CXxRSO+7wajyz1FrnZ9Nc4I0CtpR/jlTuMMth9zi9Xm2YdoO4rktPRyf1kKao+4PTrWm
 cFyBz47B+JeQ3tSXJBTTlLoyZyrLIldjbsOEydrK7o8TkVjLJT9YEzxxE757HsQxjDbc
 6SOeyuQL9atyugotkdWWI/8BWDznv05LFaQ/S0gizi7MAVhIZdekJpMnuKVlQNKG8zUi
 hk2g==
X-Gm-Message-State: APjAAAVZsLiiMsZWXswQio93smCGlJnZW6J6REDc3DvmoZ+naM1AHBib
 TKxAXUCuzKLajcojcVMwbKD4ow==
X-Google-Smtp-Source: APXvYqzq5JvWDWnU2WBxay5i7m7nGGZ4xrgcUbqlp6Nq6J2U3j8kQ26AAp/Vh8DDfS/M+iUafD66nQ==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr6416756pgd.91.1556836712382; 
 Thu, 02 May 2019 15:38:32 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id k186sm244151pfc.137.2019.05.02.15.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:38:31 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu,  2 May 2019 15:38:08 -0700
Message-Id: <20190502223808.185180-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502223808.185180-1-dianders@chromium.org>
References: <20190502223808.185180-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_153832_988078_629D7B27 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's call the core dw-hdmi's suspend/resume functions to restore
things.

NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
"late/early" versions of suspend/resume because we found that the VOP
was sometimes resuming before dw_hdmi and then calling into us before
we were fully resumed.  For now I have gone back to the normal
suspend/resume because I can't reproduce the problems.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c2e5..deb0e8c30c03 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -542,11 +542,31 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused dw_hdmi_rockchip_suspend(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_suspend(hdmi->hdmi);
+}
+
+static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_resume(hdmi->hdmi);
+}
+
+const struct dev_pm_ops dw_hdmi_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(dw_hdmi_rockchip_suspend,
+				dw_hdmi_rockchip_resume)
+};
+
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
 	.probe  = dw_hdmi_rockchip_probe,
 	.remove = dw_hdmi_rockchip_remove,
 	.driver = {
 		.name = "dwhdmi-rockchip",
+		.pm = &dw_hdmi_rockchip_pm,
 		.of_match_table = dw_hdmi_rockchip_dt_ids,
 	},
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
