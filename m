Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635B611E929
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 18:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTCiKKDxtXTa0xnF0VRqflpFmZ2astXaPayXFA/VtvQ=; b=eKEBQOdnAqSQNe
	c8tnlQe1GKNKWyejWoCfEzBoXNsjqzpoY0HiUJDjq+RC8kT2ZkrLDNng3riIaGlwIdWfosyrmHuBS
	SlpZeB07F2UKuEH0NXla2wMoBae3EaD8/3ZoczlGslI9aN0CSVjl9lJjxO+McyCmg8Fkp0ihRHD6L
	dfDHMJ+CD6pR8t0xKlqylrwzty4XA5G0zWkwrazHnwstgJm0ZBvEoUO1s/4ZSVvniu4+zuFepQWOn
	yCM3WpaujhHWtjHQRvG97YO0eHXdB2Ox/sa6FkMMOMYhENardpD+W6p52d1akT6bZHhLIPUXQMxwK
	0BSa1HExhmZxvEjXkElg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoi2-0005Yu-Hw; Fri, 13 Dec 2019 17:26:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifohq-0005XF-W7
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 17:26:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id q10so232386wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 09:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZKp83AbaxIS+4w7GqVdl0VoZ9O2XyHrFAUMYGF70UwE=;
 b=OfSrV5Vil2g/TEwGoE+9+3zrqIds/h9UcxYpcO1Rn6hlmJQNDcktKtFsUPESJyEuWw
 +44liXSdOqrdzz8uO3ia8fbjHat8SVJOYBEhnMsHPYuljCSpeHGKY96EolZPtUKyC2xk
 Q84vr2pn+WG67t6AEv1w/BZ7r2BjZKVc3qLDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZKp83AbaxIS+4w7GqVdl0VoZ9O2XyHrFAUMYGF70UwE=;
 b=Yjsh1zdrjI8Ky0r+OoCib54Yhql3Y/3auIfuD+2Wz0orYoDLFkZxcMcDfbHYrD4ShD
 tnhyPxjnQVoGhRC17N67pFmtxZ+qBtx5WanpkGYa+387GB/7co/JCQyHMkGpc5+xZS1l
 h3nNSNaIbLUK1XaXoTCXRTliTD8yRTdjVapD4odDmjETXI1gOj4ibGYo8eVy6b6b1e3a
 HeMaTdEZuY7gNcZxNJcEa0cBRJbmSWjqY0lwr3d4lkKuwv3mRO0XeYKyZtf2EZvVpp9V
 2i03JqedOHY1gFPKjKSpJNRUbp2P7ll+Vrh3g2x6WhAbk0NPKCQVuSqzVUyeQz31l1e0
 64BQ==
X-Gm-Message-State: APjAAAWz8jAdwY/hUC6MoI0GLSyqpTs0J0JEBqHsxmLIi4WSRq/EdIo9
 eZRJntmZowqc02hyHkpfEe2uqA==
X-Google-Smtp-Source: APXvYqxvAUdSOy0yUEjbwxNRm3JdVfrjHXjQ+h8EaoHNogxjjVS/vLJfUI+ItOofVgpZ02EmtD3iaw==
X-Received: by 2002:adf:ef8b:: with SMTP id d11mr13513872wro.45.1576257980601; 
 Fri, 13 Dec 2019 09:26:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id q15sm10689669wrr.11.2019.12.13.09.26.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 09:26:19 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 03/10] drm/atmel: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:05 +0100
Message-Id: <20191213172612.1514842-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_092623_100038_AD966CF6 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Checking both is one too much, so wrap a WARN_ON around it to stope
the copypasta.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index 034f202dfe8f..40800ec5700a 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -604,7 +604,7 @@ static int atmel_hlcdc_plane_atomic_check(struct drm_plane *p,
 	int ret;
 	int i;
 
-	if (!state->base.crtc || !fb)
+	if (!state->base.crtc || WARN_ON(!fb))
 		return 0;
 
 	crtc_state = drm_atomic_get_existing_crtc_state(s->state, s->crtc);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
