Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEB612F92B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 15:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NXCsndwPiAC3mAg+wl30sboP/P6XT377qjrgji+G+J8=; b=ImTnEFCGG6aZic
	lVgv1rzw6WLmanSJbWBFfFJb/9gwVN7JrSXtGhFbkp84N3oEAeSOy4swymdIx6d6cP9jduLkbhM5I
	R8dQOKwJiQU8SBfIDFtKqFBaI77Mg2uVkgcOEoBR4hF1LpkXrLcmqjhEXJeSwykKmafRtyiH6UzGz
	GUkQMYkNKMT7tZKxeUYicbcv0u7XkTicdGq/hDZe97omv37EV8/+XVZV10CtIDx1yGzc9j5zyhW7S
	c3ZM01ErjEdC7kk9jDMKQuhuSPA+vwkaB2PdkNgejgakAbl9pVAYPRm/ENAyQgIYPSPz1OrFdLK51
	K7hJkF/ZW+gisppdTVZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inNso-0005ga-Ch; Fri, 03 Jan 2020 14:24:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inNsj-0005fc-9w
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 14:24:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so42600854wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 06:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bYev97gpHrXWD4cTObTlC4p8ry7Fm20e+8qBStccKgE=;
 b=GDM9D4o4PbDunO0UiTZRzvlOWD8xXQPVcNj72ji4rteRTGok3nKJKbt3APJknXNL2m
 kItNJhDkEISEfBHdY++LrlV+Q35N48uncWIJojH3E0jHflyPkNZwZBa8UUvoeyb8had3
 CVvJ9VVo0rDFV51OEgw17ggM6MKd82yo3/yppUIc3aV8VHVUujl+KjjKV15sSrLxfI4X
 sWB9RZreKdK5kHVPM85DzyMnZY/8nfykKq5IMwt3S938Me1qYgq5GGqCcKB5cPxPI4ch
 KNmKBpQkFBysoJAs4Gwf/Q/wUFpXJEvOSmnMpJH56DpZoKXfEFipPrVWvrIxscH2/e20
 LPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bYev97gpHrXWD4cTObTlC4p8ry7Fm20e+8qBStccKgE=;
 b=Hk+H3bJGPcMGDp28qCyWmReYlAARa3+8oMA3V2ZQxnyP7Ccg130REmq3TXPtht9kKi
 nDwivVSPg49Uh0h7nRovVTbMeDKMQvlRj7g2kt9T/rm9HU8ulZQ9zOavjNtUlBkGu6T0
 EX0li+JfRFCnjM+kZFiDGa4tqssgz4fx+G5yJSgOE3x69s+5zgP4Oe7UyBcWEUzbmqj3
 QLCUWYYJeLvrgQFCqM79PYENUT7nxidhWKHt+cfviem9SPNXS8YyAO0PIIk1JWfJeD0X
 iiHoTkL7h/ysZ6mUTAoyFkshr90jl1pcN30LiBTxm3pHa3GU4KHVQzlpawiG4ZK3A0gN
 Zpdg==
X-Gm-Message-State: APjAAAUkSAISLHHmJOg/hTiVUypEkd7smzpBVVnQ51PAh0aSY7m4eMRk
 f+Z3vM7gZOPP4AA5hTBGm+TNJQ==
X-Google-Smtp-Source: APXvYqxL3jhMkdKPNrLu2LvJpgrGgBdIz4w8yC2ATLMVXINdK6pccS5GSmwMvcuQFyuqoCukv5pzAw==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr91343474wrs.213.1578061488663; 
 Fri, 03 Jan 2020 06:24:48 -0800 (PST)
Received: from radium.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x132sm10311612wmg.0.2020.01.03.06.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 06:24:47 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] drm/mediatek: fix indentation
Date: Fri,  3 Jan 2020 15:24:45 +0100
Message-Id: <20200103142445.55036-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_062453_349200_094FDE98 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: p.zabel@pengutronix.de, Fabien Parent <fparent@baylibre.com>,
 airlied@linux.ie, matthias.bgg@gmail.com, daniel@ffwll.ch, ck.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix indentation in the Makefile by replacing spaces with tabs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/gpu/drm/mediatek/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 8067a4be8311..b2b523913164 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -21,7 +21,7 @@ obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
 mediatek-drm-hdmi-objs := mtk_cec.o \
 			  mtk_hdmi.o \
 			  mtk_hdmi_ddc.o \
-                          mtk_mt2701_hdmi_phy.o \
+			  mtk_mt2701_hdmi_phy.o \
 			  mtk_mt8173_hdmi_phy.o \
 			  mtk_hdmi_phy.o
 
-- 
2.25.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
