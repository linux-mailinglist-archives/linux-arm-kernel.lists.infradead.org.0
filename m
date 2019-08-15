Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0FC8E22B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4p2kbYxQwYcrWje0dkpUvNXThkjAqOoTpuvFSs/eOJY=; b=Ta6/Fw+5+bJP0R
	/TGecMZRhBJM9P5JvA2JRkBc9RUhs6wuOjwJu32KZmyazEseSs7ljd91Je1W08rJFD6RjaDPLA0wL
	tm7fpvWwXNTp/Cq9yj1VvSUg7oxBdLXkb5MKC6VX9s+YBamWswTfY/7IkgKW2yBp5F4ylHhJj4EkP
	7l9sP1x2hhmNshkwgpzB5d/jE4/sR9KS4GOE0WSY1VR1fhnX5Iwygb5f/Xo30InSxzLmAn7/cLf2V
	3AA7QFHHOeHuMaEvMI3woAggnR7cLHzoZCbiyITnbZSxhLtlEfODObkdOWSNSWhz8MvRD9O24LWXW
	ueeAk7BkT/S0XVmAI4kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3zo-0007QW-E4; Thu, 15 Aug 2019 00:52:04 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x6-0004cG-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:18 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 718363EA1E;
 Thu, 15 Aug 2019 00:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830156;
 bh=RQi7NgzWoBfqg8AYplLP5izcyVgpI38ozyAN9bUXL0o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EWhD6+a7wngQEzTa1GokP9KHGWvgK5XoZo2l4cdMlZVpQDtOEpWl3pik4MKSVH/9W
 QX8TFjUKALlS3Q+3aEv2im8IE1HpEngE04TtzouMNESZmwd34RuXUoKDy8ululGHJ3
 h9MqhZZoYUJIY8DJDykIjtu7akNaFybaiMmq82fc=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 07/11] ARM: qcom_defconfig: add CONFIG_DRM_ANALOGIX_ANX78XX
Date: Wed, 14 Aug 2019 20:48:50 -0400
Message-Id: <20190815004854.19860-8-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174916_740597_8B949A02 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CONFIG_DRM_ANALOGIX_ANX78XX as a module so that the external display
can be used on the Nexus 5 phones.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 arch/arm/configs/qcom_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 34433bf5885d..139e6610f034 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -148,6 +148,7 @@ CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_DRM=y
 CONFIG_DRM_PANEL_SIMPLE=y
+CONFIG_DRM_ANALOGIX_ANX78XX=m
 CONFIG_FB=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 # CONFIG_LCD_CLASS_DEVICE is not set
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
