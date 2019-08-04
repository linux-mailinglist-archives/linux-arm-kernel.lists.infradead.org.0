Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF23380C86
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOM75hn/STCKqR5fjftuldvkqIeLNPhDVvYkVFtqIAg=; b=kc3+gfw4pWgS5Y
	wHjE17a7MIUdNQUPmt0+3o7FojzjDxD97lyP4bEFHDu6BRC0egt0z6ZGmjygNm9mMs106wosDq/ed
	bnUE1xfcLbZv7GhbeG7m9atPKeZqYEFkzHxXLinAOQQhY9bEF/ZWIOgWrxHxkWRJlQFlRWQP8TdES
	euO56WzRYPG89DX976NkriFoaY0JTzm7bSkrWTG3acN9Efd58yX9vO7At8xydXYDO7OoY1GgdW4sV
	KyvgV2tkjZ2x1BDPuSETt0JqeN772Y97gjlt3ZGRM4TVylwwLS6NsqhaCAIivae5w34URZT+9cS/o
	ncGi5C/Fkk66KOa+5SpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMxb-0001TB-0i; Sun, 04 Aug 2019 20:18:31 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwU-0000BU-QW
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id s19so56360811lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OxHLOBnK1lNWSIGtczNLCozsQ3QtlSsdUZb5LP3kT0Y=;
 b=gAaQXpYAm1KYEI8rTb/OJS5eorTrd92AMU7Pgi3cS8X6yqya7FjBl9kj9ebkyM+BQ/
 kG4QjvdGy6WXSKN7R/ZQNoAxeSgQCgA1VuMB+nBFs6rk8efjjkFyzh2SrNKwlNtKxRv2
 iqFdb18qXUBYcmOjBQMer7IjewoVURBwU1mO6clB1CjpoYwMbL0dpBv5c5OlKDDciWGs
 +6s7JssXa+Tp4Fw6Xv9rE4h/pvUSUTj+AGdJZ0Y1bIflrUTi9w/c11SxgFj2XGUzbSor
 Ih7r/DdnsvWE0Xa5m0vqrhXL8QpXxKHJ2L7jKQ5/4zZoKB6An4mvQ34TzIHSV8u5sEtD
 kaxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=OxHLOBnK1lNWSIGtczNLCozsQ3QtlSsdUZb5LP3kT0Y=;
 b=UKrhm8xl+OCA31bGnrXhvuiG75ZSu8bKEA37Jp2XbK2wY8Z8hvlTJnK5j+5yHDuQn1
 zUFKfjmsuv6+UCngmbnV4k8KyW2z8jx6UH/O0Fpy2XsbOpgG9yJZ8bqRHNVKDz/ZeB5x
 QzzjgK17+8jH6uvJClXEAY7JgcdZwSF1A9AznVPuzJqexyGC77Vt1zQKIqwubnsBgMCG
 SRorbXgnCPQ3FCcAREq9zgL/Gpn0pznzh2tr2omEEdwH6rr5iZ0m9+4sYg1W1mURT8sb
 SrPe/ya1nj5M4jOCfna12uL//CuwxN+//3YUs0HSWcRCKACaCjQW/NxCZ7zo0YN78z/U
 P3Ew==
X-Gm-Message-State: APjAAAUJQwhqWMrIMBXRp/x3M4fFJPC1c6DwXwqg5Fffr3QWQGD/FoQz
 sn6JicK31UNh53BN+r6XlOk=
X-Google-Smtp-Source: APXvYqz3M5CTobM4ucLU8BcfTgw1LTrA2m/uc+fEekEh6iImfAPIvEukRCN6dkkcG2PkH6QhUumtFg==
X-Received: by 2002:ac2:4242:: with SMTP id m2mr7496505lfl.121.1564949841198; 
 Sun, 04 Aug 2019 13:17:21 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:20 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 07/16] drm/mxsfb: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:28 +0200
Message-Id: <20190804201637.1240-8-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131722_878735_007683EB 
X-CRM114-Status: GOOD (  15.45  )
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

Use the drm_panel_get_modes() function.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/mxsfb/mxsfb_out.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c b/drivers/gpu/drm/mxsfb/mxsfb_out.c
index 231d016c6f47..be36f4d6cc96 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
@@ -30,7 +30,7 @@ static int mxsfb_panel_get_modes(struct drm_connector *connector)
 			drm_connector_to_mxsfb_drm_private(connector);
 
 	if (mxsfb->panel)
-		return mxsfb->panel->funcs->get_modes(mxsfb->panel);
+		return drm_panel_get_modes(mxsfb->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
