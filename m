Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E899E1BA4FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDav264Cjg3V33X0H5ece+u/nWk29nYyU6rbjmTdg3k=; b=guSP3zP8xmO4QA
	01jHoSkHleOzF+pxvewpmzsqjqsnpiNXAfdSXXOzT+zMfyAOXnuVsn3vTa/CAY5zboVcymp8nTm5/
	2HJAk46ow/mAedFWSWDhVnolQh4Yc7Gpkvi+0u8B0o7Rm11lNllMKYFjV83rvGHBBkh9Rx072G0Dl
	lbgK2OzLi7AHZ2K59USXKylB2DJrnP6yCM7Bf/SMbrlo7orEZ2ZJ7j1b7XJvlUIo0kFDU/MyU5Wih
	FbvqFjqKEwt4VmgIE6xjD0N7DuyJmy29grxYckUX5o21CqRm/tL+cfOzVbbenaKpqX0Ds8jXR84BQ
	h+BeVL54C5klj+zSr6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT40t-0004PS-39; Mon, 27 Apr 2020 13:41:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT408-0003w2-Na
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:40:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so20586782wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wMGGl/RQGQGl3Tw0MqZYpAx5bAhfZ7cMnl8wQSYyYX4=;
 b=bBvWnAwPttxWPqi+FB6EnQYGIS6iy13c+V47NjPym6tFachGQ8LlSVV9d1LZt1IgJ2
 kuyHenHVCmuM1sO4Bo639XJGxVLEArIpXUSh4A5ixGh8kUypH4lr61WoufBhV93u66+L
 NB5m/QXHT3nmCUjtDvbix1e8pGtMFjO/lbwFm1zVjiMy2wun/YDRmXr2jse+dqLUrcO4
 CmuGweedt9tVddX0SRbaOekAZ44OGSwH9fi5TgdRJAEobfCHQ+bdHAErWCHQFuscHkzc
 tDyld+9CQczAB6hD+2SBretDJsa9Aih2DXwENjIe9jtC4mQsZxtQLntvE5WRt305CR4W
 dgQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wMGGl/RQGQGl3Tw0MqZYpAx5bAhfZ7cMnl8wQSYyYX4=;
 b=qo9pvuOyDDK4hAfvjbYwAd+PjCpfZ9X6EG2qWMZu9uf7u83KhctfV9ywtSq2xIiEtP
 uVPAXrlVcoYbdKawXdtmwOtt3nNYisfAJq+a9SDyDhRbZPT3cYr+7O5L5sw6sbyNAK/v
 Od5w4gVs5d9WsuMqCeR+7HPCwfrmqNhk77EuWRVb+3WK3qHA/Nken4sqXO6pDlikD7ov
 hhDd5LLw13Xv7qpPXKpg8e4RdlKBdgVpeN9TKM6aiTZgdegsfc2aiINo3CLaUUElYMW2
 bBXYER+sDxqg/urdEhlVDpeYKKdVZ+305DavQOO2wIGDD4BJI8pxt1/rLgSeYHFq8YnM
 wUrA==
X-Gm-Message-State: AGi0Puaza2WLfTj85h6umFindZndCkQtMJdI9sivbDh9KGmeoh4ax+8S
 MehYrVLeytzpxuDAN+HX/Xs=
X-Google-Smtp-Source: APiQypJ+vpd3j8uFk33qsEeNwSqj96zUOachqA2BOBjSIjOt1H2vebbvjiOSu5MZ7Av6DR3rhS+zWA==
X-Received: by 2002:a5d:6188:: with SMTP id j8mr26599361wru.119.1587994847336; 
 Mon, 27 Apr 2020 06:40:47 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id g186sm16290640wme.7.2020.04.27.06.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:40:46 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>,
	soc@kernel.org
Subject: [PATCH v3 2/5] arm64: defconfig: add DRM_DISPLAY_CONNECTOR
Date: Mon, 27 Apr 2020 15:40:00 +0200
Message-Id: <20200427134003.45188-3-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427134003.45188-1-max.krummenacher@toradex.com>
References: <20200427134003.45188-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064048_772705_3480DA41 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DRM_DISPLAY_CONNECTOR. This got introduced with the bridge rework
Which renamed among others DRM_DUMB_VGA_DAC.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

---

Changes in v3: None
Changes in v2:
- additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5033cfdde3d8d..218aa4fa74734 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -615,6 +615,7 @@ CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_THINE_THC63LVD1024=m
 CONFIG_DRM_TI_SN65DSI86=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
