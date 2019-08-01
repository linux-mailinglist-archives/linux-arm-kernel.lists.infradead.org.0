Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2827DA26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:Date
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VDCOkjHyuyAzY1gDQEf2Y3vdJ1q2g07I5wJUnc5fbOA=; b=lmS+9kqfTUH4PR
	7pT9slY5wwjShpO8iIesHO2GWYesoQOIboJCcBLM0wFDcaUmECS0fK4X/UQBNKtpGHu5m/7YWpW0U
	0lQJHh0cTNC9vf39/3zjIZWWYgWSvaG32oZSHFPeMhv2IFdPejMLkAGieru1kJIcFxj67cUwsr9mb
	jGrfT7Yw/32wE7/jMkxdSNM6y/u0bjzA5WrBYYVl7+frSa1g2rxqIxCiZ0NC7XAQ/f10RXokvKjTk
	euFGa39AMnkQxMmSpHcwltVdZWr6/7kLgccT+FNmtkCgkhRuEPY2CZiqmNcslkrO8ZhDEJaBk9QLr
	0soO/anJfKmrFbdFDfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht971-0006Yt-NA; Thu, 01 Aug 2019 11:19:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht96o-0006YL-JB
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:19:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so73187682wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 04:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:date:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LeVi3M3rABqtJE3t2RPfqLsPOq3zZyV/m8kt+qnj1zQ=;
 b=cMBE9seZV2rlWrwD2KSNK2iWozGJLstP/lvQ+YuIn90t6OWhU12fBOEveO6RbxX9aL
 RMm9jrco/0XpmcQmpbqsEjqHIW7hrZYavnobjlr+r0u81MoRD7JcNL0o7RT40C4uCFr3
 SpUhON10c6PLS13qVPaUoTIPpxcc/CrnNpASxtihabzo0fcrkp4FrISwWzBhlVLYJO6S
 SDT9V5OeGeyKMNHBgviitf5enbpmM51k/73Rfbz8Rd734Uq8HnkMA/ZncJ29p4bXqhts
 Xog6k+u/97wt5HmBnP1cmlRrsWLDbKCq3Oh3xcKOcssc0iK0VHZwHS0KW4HZb3IeMt33
 TP1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LeVi3M3rABqtJE3t2RPfqLsPOq3zZyV/m8kt+qnj1zQ=;
 b=QMdqSfgOtsjQVsxXdFKE7q+KukF1v2D2bS/fY5nuVH73ebFOIZoTNR0EEOArTHATx/
 MZuW0zFerd/aLu5pXXf161oRbHeSTgF0rVDF/+wgzk0yz3QgZBvQkPECEIAxfZKvatN2
 NhSFAc5Ez9dPhA09YjzD9+TA8sZf7jdM/XWxNoZYN/NfaG+xTy3pyUTBKw9v7M+EMtnG
 K02bqUhJRFYk1sSgojIjsLbDHjRLpDqx5znv0XHNo528WLuRWPopDCwvRMhomWY1ELNo
 Jt9awZLeQ4ZPGhOzlZAuVYJA+L+t50bPTuEOpk69FYOtp0X3DgWQ7SZDiAzntpREExgQ
 k6rA==
X-Gm-Message-State: APjAAAUe2/VGV234I+pBKKcV8sbVE+RpZx63+Zvdu6iv4OluA0XsJ9DE
 SnjALeqkboH6MDjxibNrq9U=
X-Google-Smtp-Source: APXvYqzkBr+Wu2cLABxcKSHKUUQ0ibXMKozvJEjKAQG4ccxFTxDQ1e/E7TFcA1iSTj9mjHfYdmRdag==
X-Received: by 2002:adf:cd81:: with SMTP id q1mr138879876wrj.16.1564658336375; 
 Thu, 01 Aug 2019 04:18:56 -0700 (PDT)
Received: from villeb-dev (mail.bytesnap.co.uk. [94.198.185.106])
 by smtp.gmail.com with ESMTPSA id v29sm138629wrv.74.2019.08.01.04.18.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 01 Aug 2019 04:18:55 -0700 (PDT)
From: Ville Baillie <vmbaillie@googlemail.com>
X-Google-Original-From: Ville Baillie <villeb@bytesnap.co.uk>
Date: Thu, 1 Aug 2019 11:18:53 +0000
To: marex@denx.de, stefan@agner.ch, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] mxsfb: allow attachment of display bridges
Message-ID: <20190801111853.GA24574@villeb-dev>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_041858_656960_7C27CAC7 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vmbaillie[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 20 ++++++++++++++++----
 drivers/gpu/drm/mxsfb/mxsfb_drv.h |  1 +
 drivers/gpu/drm/mxsfb/mxsfb_out.c | 14 +++++++++++---
 3 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 6fafc90da4ec..c19a7b7aa3a6 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -229,10 +229,22 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
 		goto err_vblank;
 	}
 
-	ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
-	if (ret) {
-		dev_err(drm->dev, "Cannot connect panel\n");
-		goto err_vblank;
+	if (mxsfb->panel) {
+		ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
+		if (ret) {
+			dev_err(drm->dev, "Cannot connect panel\n");
+			goto err_vblank;
+		}
+	} else if (mxsfb->bridge) {
+		ret = drm_bridge_attach(&mxsfb->pipe.encoder, mxsfb->bridge,
+				NULL);
+		if (ret) {
+			dev_err(drm->dev, "Cannot connect bridge\n");
+			goto err_vblank;
+		}
+	} else {
+		dev_err(drm->dev, "No panel or bridge\n");
+		return -EINVAL;
 	}
 
 	drm->mode_config.min_width	= MXSFB_MIN_XRES;
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
index d975300dca05..436fe4bbb47a 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
@@ -29,6 +29,7 @@ struct mxsfb_drm_private {
 	struct drm_simple_display_pipe	pipe;
 	struct drm_connector		connector;
 	struct drm_panel		*panel;
+	struct drm_bridge		*bridge;
 };
 
 int mxsfb_setup_crtc(struct drm_device *dev);
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c b/drivers/gpu/drm/mxsfb/mxsfb_out.c
index 91e76f9cead6..77e03eb0fca6 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
@@ -78,9 +78,11 @@ int mxsfb_create_output(struct drm_device *drm)
 {
 	struct mxsfb_drm_private *mxsfb = drm->dev_private;
 	struct drm_panel *panel;
+	struct drm_bridge *bridge;
 	int ret;
 
-	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel, NULL);
+	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel,
+			&bridge);
 	if (ret)
 		return ret;
 
@@ -91,8 +93,14 @@ int mxsfb_create_output(struct drm_device *drm)
 	ret = drm_connector_init(drm, &mxsfb->connector,
 				 &mxsfb_panel_connector_funcs,
 				 DRM_MODE_CONNECTOR_Unknown);
-	if (!ret)
-		mxsfb->panel = panel;
+	if (!ret) {
+		if (panel)
+			mxsfb->panel = panel;
+		else if (bridge)
+			mxsfb->bridge = bridge;
+		else
+			return -EINVAL;
+	}
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
