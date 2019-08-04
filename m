Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F101C80C88
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2saV2gaRHs/wxJhPAoawzXnJ9i/Rn7EBraeyT5Mbr4=; b=DsvmgYEHNnT165
	/ArpL/3AvEr1OGid5UsYnJvFf5tCC42H5snc+Ic454J/rsuracf9C7lkscFSajyUwSRfQi7HVjIDb
	LisiswbIivIaUySQWX2CXBo3rN+hklqwD0vRLL46lWjBSz0Ch51OrhR+yYlaiuMcgGKi5V7EF5PSu
	vK6WvgnoAQ4+Vbu//AdKQEGXDB6WQ8z53rh9SayXOe+IoQeo3tnFjG5uhgkDrvedqt53ELAzpPDXV
	HO5LY2p1dS3ScuZWnk591knclmMPeYwsYLnC1oPJxZqFmlMg9tgkBR2fGuN1w0bs9K4WTEijkMNau
	svINPWd1TxoXVFZlJ1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMxt-0001wz-DC; Sun, 04 Aug 2019 20:18:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwa-0000Hx-Fm
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id s19so56360894lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wk6pfousIAMCDI6Uyo+lM1td1MgXZzePdo2c6E2Onic=;
 b=tOCty/gZdEJZyOP/LNSmnWRovYxXff7HblVK8JBUwNKGrmTZ+mYA0XLKKLgk4z4yh/
 fBO9mOHvoad0V1tr1vvpw8D9YeCxA6tK5vJcEFMZJnwPoPsbHn+HSREVKkWjPSp9hJxn
 6O+7mFpQuChXeq8lCOSF1rKrQa9RJOuWSEaLRkkGuFO5ra4yL2+dKAYsbR4/XMyVHkWy
 Z1ut/fRIY+7glcUvkTmq+AArGP1m25gmupSXINZcKexEnrAEP9Y2L6S8eT5ly7N5HAK1
 H6xR/uxZns5l6A8wH2ZL1OO1aRJCaRQSPfhd90PwVcC82louRVZsNLqZAULk7h65wV5X
 uqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=wk6pfousIAMCDI6Uyo+lM1td1MgXZzePdo2c6E2Onic=;
 b=ReaJXNdcNr9FaB9HZYQ+Ob45eidN3u7+NqWrvxjr+QuZJJnhH0TmBeYznJ3PwAu9Lb
 rDzyX6Zo3TFqwOklvjUasCuZFAKO/Z+5GqhP+wd2DATxxSOKn2SJtAPZBXYgB84hw6s7
 mXykHCxI7QcY6vbWQd5Q6G3qftz5m2qVTH/kMBDeTXvxqcuLq8P6tEuk0MTGptR9WzAT
 xIgmSOQGlPed1KJBQXh5DMYDtEyK3RSL6i9DAWo390kHim/Cxb+5SnPmLhCMAPYfIKjN
 6nvPXjC1yDryXJHPSAME/2tynQupK8LCu7f4/vPR3TRwuKJIAKSX5cnpw9j3bPmmDMf7
 rEWw==
X-Gm-Message-State: APjAAAWOsNHax3MWHNuL8J1GQph0YrOS0g++fk8fmdKG4IdrY4qp0Iy8
 9mJHhaE5tlq7D4/h7NjEYZw=
X-Google-Smtp-Source: APXvYqyLrFVeZI/lzYw2iRoU+pX5u/EBCoveXbxfKssjwJUGzKx1R2K/aZs1vIVE+lwZRLrksTI4Hg==
X-Received: by 2002:ac2:5dc3:: with SMTP id x3mr30142069lfq.168.1564949846990; 
 Sun, 04 Aug 2019 13:17:26 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:26 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 09/16] drm/tegra: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:30 +0200
Message-Id: <20190804201637.1240-10-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131728_541778_8726C757 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Allison Randal <allison@lohutok.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the drm_panel_get_modes function.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-tegra@vger.kernel.org
---
 drivers/gpu/drm/tegra/output.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tegra/output.c b/drivers/gpu/drm/tegra/output.c
index 274cb955e2e1..52b8396ec2dc 100644
--- a/drivers/gpu/drm/tegra/output.c
+++ b/drivers/gpu/drm/tegra/output.c
@@ -23,7 +23,7 @@ int tegra_output_connector_get_modes(struct drm_connector *connector)
 	 * ignore any other means of obtaining a mode.
 	 */
 	if (output->panel) {
-		err = output->panel->funcs->get_modes(output->panel);
+		err = drm_panel_get_modes(output->panel);
 		if (err > 0)
 			return err;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
