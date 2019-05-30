Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047202F920
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xNF9BwuwSB9nOKaAcsbZb+m3NJZKxQUaixQ8umAgNIA=; b=YpqzQna4FJ20Wq
	hI2zoaibaLQLLD35TcgAnuCf+hdWJ75SiQD6iqM8fWv7aGrn/vkdQjD1Eh/g31A02Pmig634sH5tI
	7CMtx+M9Hnnz6cVycfXJK/u59MVNkoVdVQ0lidwRMgC8a+C0R6cTXotRWtj3RJNyRV/idDNoWXRnD
	BLg3imdm4qlUf7K3fEU/7tHUzBFnz1Nut09CIylQVoF2WOyNxdAQ5xQTz8i5kbZ7LNP08RLtvaO6b
	uZaRHDw5L+xfxZgwn0CBos1aoHIea7IRgW4Ywo+wvpLicTLXJgHoovCt0Klk19gXtlG5RQZd1soQM
	RiyA30Yt6rGPkbZlETWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHDC-0005PB-Mi; Thu, 30 May 2019 09:19:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHD5-0005OR-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:18:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id c9so311950pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 02:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AiM9lQChj12NVhLaqvQMt0hxwIJhnj7lqdz7I6Ifl9k=;
 b=CafCN9m8YypnM2GI7SEoCWLj8aK6f3cTJiEE3GUT0CIR1isix8CftjLmtVJNfjlFWw
 SPB9eFwkyaw6VXXg2KN2vlPYwFj0jhn1+6k3hZX3oAaJ8LMlzseUF7qEqNiHaqfdEL+a
 b3DdhF8j/Wt6ijQK6bSDDPS6TLrQZ+6ZbPfiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AiM9lQChj12NVhLaqvQMt0hxwIJhnj7lqdz7I6Ifl9k=;
 b=E5JBiJjHnq5UNO03jhtPWMCpgvymTcHhOaygJRgUtLU7l3Ra9nwPLUSYIpZvjklHWL
 mVxQRpsouK+bkPg5l1xYNgC7PAtPuEHiUyHijZC9lVu3D7h2qZJO9AGmRYOvf20SnZSU
 gE+q695Fkv/s/tSL92f/neFlk7wDcB36FHLHyksbgNq0saDwlOKkNYshh/o0K3RAStm/
 bIXP3q/EEXpquFEvMbB11zW0wNnPIA2H8Jy3bWSk66/UsruHpd84JMFrUEdKFNgmK6jx
 u6IS7GKk117xRI3bpgFCsxIQG85L562RyNi44oGOsrdNjtdbsULYHrxvqMoj/wGLcq5d
 kreQ==
X-Gm-Message-State: APjAAAVZgdr1mRJJ/p03MyQ20ATiWnh2DOWftxpM7P6/5FBEMqFrRRrc
 NGDF2vt5UidMEx6hh0hBqW1sbzCet5i2zA==
X-Google-Smtp-Source: APXvYqyR2TapAsuf4Y55MbptIVWHJtSABFxvasONsBUaove+y19OR5W0sbkiLKtro5lpzENh/qk8+g==
X-Received: by 2002:a05:6a00:cc:: with SMTP id
 e12mr2753772pfj.207.1559207933788; 
 Thu, 30 May 2019 02:18:53 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id o2sm1720924pgm.51.2019.05.30.02.18.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 30 May 2019 02:18:52 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
Date: Thu, 30 May 2019 17:18:47 +0800
Message-Id: <20190530091847.90263-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021855_122999_A0EBF719 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
happens sometimes when turning off the screen.

In drm_atomic_helper.c#disable_outputs(),
the calling sequence when turning off the screen is:

1. mtk_dsi_encoder_disable()
     --> mtk_output_dsi_disable()
       --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
       --> mtk_dsi_poweroff();
2. mtk_drm_crtc_atomic_disable()
     --> drm_crtc_wait_one_vblank();
     ...
       --> mtk_dsi_ddp_stop()
         --> mtk_dsi_poweroff();

mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
called in mtk_dsi_poweroff() when refcount is 0.

Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v3->v4:
* add comment in code.
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..730594a91440 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -630,6 +630,15 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
 	if (--dsi->refcount != 0)
 		return;
 
+	/* 
+	 * mtk_dsi_stop() and mtk_dsi_start() is asymmetric, since
+	 * mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(),
+	 * which needs irq for vblank, and mtk_dsi_stop() will disable irq.
+	 * mtk_dsi_start() needs to be called in mtk_output_dsi_enable(),
+	 * after dsi is fully set.
+	 */
+	mtk_dsi_stop(dsi);
+
 	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
 		if (dsi->panel) {
 			if (drm_panel_unprepare(dsi->panel)) {
@@ -696,7 +705,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 		}
 	}
 
-	mtk_dsi_stop(dsi);
 	mtk_dsi_poweroff(dsi);
 
 	dsi->enabled = false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
