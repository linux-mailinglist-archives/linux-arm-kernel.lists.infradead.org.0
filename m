Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC7B46C89
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 00:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UXWubqSrW9ysR77CAObnOU67xFcr/Kta0ctBiuPxb7U=; b=rx4UZAhBWjork+
	ts23wWph4EmWh9k+9itZB8626i0/nHVJawfwVrvQzOQd1qtzMejmXnKLGr2Pk1NBM4x9THsiy+tmx
	r8yM3aRTNeGDbAFtEMOI99aIgUTE1Bo6/3cOLimziGittE29hy6BprL6Y8c4vSAb8UdclpF2yQdue
	TBkugZKUqXiUE7gG6+Kh1YLBLE+k4xfT+Gusx1LRR3BuA2tSiB48zq10xKlUJnE20yUB6GoN5nbb+
	h9iP4Maq+sJdvlX7uip8fMcQVkVlPJ5wWGxsoS3YafBuo21LUCuQ0NHWI87oLNb/DWA20t9H2SHsy
	TPiTnKrpP9ya3Zd2PwBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbuzO-0002cn-FJ; Fri, 14 Jun 2019 22:48:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbuzD-0002aW-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 22:47:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so2223152pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 15:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B/paYYaNElnUhrLCMfr9aofzvSpDY7fIjtUGwDwrL/w=;
 b=ApCzoYVFWJ+gmiLTLvrC4zRCv/sxTzAUuGigYReuCPkwv8+JbQtTQ1ujJvy8eXWLqB
 +IQTzppqRJKhqe+8V7UEuUHo4bd+AM07L3HjWFZQQdGpjnep077mDCdlHdC1RIk2DgQq
 5mJV4O++xveG92zkhvhU6kYaRMIla/IEBvu+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B/paYYaNElnUhrLCMfr9aofzvSpDY7fIjtUGwDwrL/w=;
 b=HRY4C+h1T4MLUGoO4xQM0GJU1Q4EmvGNb1NXnmmNgCFMwH8EQ/SJGRGeFyc5NGNRB2
 HIzkXi8gM5ZYidL0rk4i9d2js5ZRkRrfqGcQpice/JcZGyCOJZonKsTkGzC6Y71S+yVT
 jCPeEURKnx0vmH1nMtpof3I2RWDpOnkMARcjZ2d1Hp5DrRcPRLwd/zJ9P53epXWMh1GZ
 gO5EMXtt4Yt3IaE8AVqWv6WlTa72FsBb90DGfeQqwOnGi7BDbbmd5YYoxNStddvf00ik
 yXKnqIXRX2iWjO4dSWF6wPq6M5XQ/yektfl5kFIuQ8jsSnYlDa901+p2hnoD42sXFX/3
 5ElA==
X-Gm-Message-State: APjAAAUzZjGQUqnX86QI2GevHOKALr0/idGm6m8pH4vBQN5qj7q/ArDv
 gvZZAxnOMfr2eNm+97cg4YMijg==
X-Google-Smtp-Source: APXvYqwCFm4zexZwb/yHk0T7k2vyRVj2XJif4vKx4gUkaC3e6ysgiT29t7k5lmVupIUZSX9ZhqMjSw==
X-Received: by 2002:a63:441c:: with SMTP id r28mr37978657pga.255.1560552475017; 
 Fri, 14 Jun 2019 15:47:55 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x7sm3706087pfm.82.2019.06.14.15.47.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 15:47:54 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de, seanpaul@chromium.org
Subject: [PATCH 1/2] drm/rockchip: Properly adjust to a true clock in
 adjusted_mode
Date: Fri, 14 Jun 2019 15:47:29 -0700
Message-Id: <20190614224730.98622-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_154756_017537_67AC6AA1 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Airlie <airlied@linux.ie>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 urjaman@gmail.com, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When fixing up the clock in vop_crtc_mode_fixup() we're not doing it
quite correctly.  Specifically if we've got the true clock 266666667 Hz,
we'll perform this calculation:
   266666667 / 1000 => 266666

Later when we try to set the clock we'll do clk_set_rate(266666 *
1000).  The common clock framework won't actually pick the proper clock
in this case since it always wants clocks <= the specified one.

Let's solve this by using DIV_ROUND_UP.

Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Reviewed-by: Yakir Yang <ykk@rock-chips.com>
---
Back in 2016 Mark Yao said he applied this to his drm fixes [1], but it's
2019 and it's still missing so I'm posting again.

[1] https://patchwork.freedesktop.org/patch/103872/

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index e4580d8f21e1..d124f34ab9fc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1006,7 +1006,8 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct vop *vop = to_vop(crtc);
 
 	adjusted_mode->clock =
-		clk_round_rate(vop->dclk, mode->clock * 1000) / 1000;
+		DIV_ROUND_UP(clk_round_rate(vop->dclk, mode->clock * 1000),
+			     1000);
 
 	return true;
 }
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
