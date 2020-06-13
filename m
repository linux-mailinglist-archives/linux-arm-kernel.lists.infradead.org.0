Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EEB1F85AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 00:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OU3fWBno6FrDyDeHfhrz6CSys57nvwGvenadvu/B0KM=; b=qN6yoY3F56JzBi
	WQHCeNcDam4Q0nKY7CPnQJTQhmEQOekKTZWAN/XMUE/A6pxKKGFNrUFDTVRCCvt9KMWUuvkF3q9mz
	guWgHvuFelGkuduTtbKMOSwIl4UVo/ZU52Ksj/ejCFP+Hs+JRMfu4FNfvoY6thcdC1Cu0FXKLE07I
	ByogWammgw+YurgOKlsHu6sdu4eOr7+dVwbtWO5w4VoQp9+AMjAml+anEp1XeN30+rGt3od4bhVDh
	t9NwbDulj97gKHmyZM6bSFUSZzuFfAUUpIo/5Cg5z7tUXOXEGv+8Z9XcwPCty55m1cr+J8b6D1qmH
	HgOl47zdEL72Q906/OdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkEfk-0005s0-D1; Sat, 13 Jun 2020 22:30:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkEfc-0005rI-SO
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 22:30:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id e4so15003076ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 15:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZVmpYpdcLJwl2DSPAje1OikSpkykl0PP+kQhQUL22OQ=;
 b=k4TzTSdw7lly8trfcqMwra4DmSkI4MQ/iTmYv7KHHtfai16TeRlOPF0uSFdmNbyi5g
 rtMMuGe5pWYw3pEYqvgHDJJfaHO3EgQG33NxwnAwZhNthAMjXOEFPcIIyZDNFYUo93UB
 At4lNZq/62wBKTh/QCAbpRGNFHu5ckD/ijsF1ujB2kzVl65vavcGYKg7UXiAx7dbdSZ/
 brjIHKxQC2Owfa4xg0gYWccVr6JzZVTlLjFvzG3BRKNx/bkV0ZwBSIu42MKCALiS0VP9
 17EGLm6OfpU92sJx+VPd9qbH7pQtSBgwy6gd+1uW3HsMvqwtV/ETGb08aLScAncpot7Y
 jBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZVmpYpdcLJwl2DSPAje1OikSpkykl0PP+kQhQUL22OQ=;
 b=i1zSZycsATLLuTvwqURtbLV3OkM8mCwkgcDP8L5HZGmAXeJVCnssCUHqVJX6AV7r2w
 gKhlc0IIyCuXfOsv9X72FDjv7i2Y+Uj4g62Q6e4Ycpii9gekWbx0x0SjxYeKmVWnOCi8
 C8pMiyZIGJGxoGAo/a9T3lUm1FeZEP+khP1DmOe3wZuF0N74tVYw56ghDVJ524p6g1iG
 WM5hk2RjT5y5aYHXXjcjUaszkcSOBx1oha7DrinzYOw+4BocFwDc28FtT+ypm0+ZnI44
 FEK3LID1+LmI+f6xTArAaBjcChnIp+kBd9ol/yaWGoLaGCzI+ZW0hATBMS/qTckumttg
 YMjw==
X-Gm-Message-State: AOAM532NaU4BMcEQBhPfe5VB9A11gCw4Tg0gWsyY0c9lFYLRqs3tidsa
 lLb1hJHuekq8coZapDvFFXCMGA==
X-Google-Smtp-Source: ABdhPJyUf7EfwBdgX4MbsmqireeqO0m6LckflQVhSKKESBt72onjFwr5HHppP0IHQAqEb2dZF9/h2Q==
X-Received: by 2002:a2e:818f:: with SMTP id e15mr9433758ljg.376.1592087434532; 
 Sat, 13 Jun 2020 15:30:34 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id 15sm2888027ljw.46.2020.06.13.15.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 15:30:33 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>
Subject: [PATCH 1/2] drm: mcde: Fix display initialization problem
Date: Sun, 14 Jun 2020 00:30:26 +0200
Message-Id: <20200613223027.4189309-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_153036_952229_F1662415 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following bug appeared in the MCDE driver/display
initialization during the recent merge window.

First the place we call drm_fbdev_generic_setup() in the
wrong place: this needs to be called AFTER calling
drm_dev_register() else we get this splat:

 ------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at ../drivers/gpu/drm/drm_fb_helper.c:2198 drm_fbdev_generic_setup+0x164/0x1a8
mcde a0350000.mcde: Device has not been registered.
Modules linked in:
Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
[<c010e704>] (unwind_backtrace) from [<c010a86c>] (show_stack+0x10/0x14)
[<c010a86c>] (show_stack) from [<c0414f38>] (dump_stack+0x9c/0xb0)
[<c0414f38>] (dump_stack) from [<c0121c8c>] (__warn+0xb8/0xd0)
[<c0121c8c>] (__warn) from [<c0121d18>] (warn_slowpath_fmt+0x74/0xb8)
[<c0121d18>] (warn_slowpath_fmt) from [<c04b154c>] (drm_fbdev_generic_setup+0x164/0x1a8)
[<c04b154c>] (drm_fbdev_generic_setup) from [<c04ed278>] (mcde_drm_bind+0xc4/0x160)
[<c04ed278>] (mcde_drm_bind) from [<c04f06b8>] (try_to_bring_up_master+0x15c/0x1a4)
(...)

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index 84f3e2dbd77b..80082d6dce3a 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -209,7 +209,6 @@ static int mcde_modeset_init(struct drm_device *drm)
 
 	drm_mode_config_reset(drm);
 	drm_kms_helper_poll_init(drm);
-	drm_fbdev_generic_setup(drm, 32);
 
 	return 0;
 }
@@ -264,6 +263,8 @@ static int mcde_drm_bind(struct device *dev)
 	if (ret < 0)
 		goto unbind;
 
+	drm_fbdev_generic_setup(drm, 32);
+
 	return 0;
 
 unbind:
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
