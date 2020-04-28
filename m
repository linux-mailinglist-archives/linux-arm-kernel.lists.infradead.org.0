Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129061BCF1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lku239qucNtfwJ1UA6fSqwk6zEvYJL9R1UMw7gLzF48=; b=S/cIPVKH0WE6Ef
	UBiOyh8ja5s6opGzUnAOQ2Drj1Jzs0ljTqn4HuHDOPTPRbAVK5bxe0Lzr6Sc8R1axgnxJMXsVX9A0
	pMEkoVMSG4Wfw7fABWK26AX5sqSqH2dOi9InCRXS0k2rYnAuwiDjAoA0EnSly4UzwI8EEI7mfaiMg
	fy+KWtyzVE4mCtkCP94gvaBjQn47dpQJYkILEY699OBfUmuHSz1mXAS97rnknFlj2Gnd9VOUSNuzf
	Wcr5HQZoRc/JSYumxI3SfSGyC93L+PHUPAOVbjMh1zPuuSUG/dZeOpquPJnqcPg2g2TDlPpjUZg6E
	E2kewtZjBsFq5H1sOngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTY8g-0001KV-Uw; Tue, 28 Apr 2020 21:51:38 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTY8Y-0001JT-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:51:32 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N7AAk-1j6MzP3hIC-017VGL; Tue, 28 Apr 2020 23:51:08 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH] sun6i: dsi: fix gcc-4.8
Date: Tue, 28 Apr 2020 23:50:51 +0200
Message-Id: <20200428215105.3928459-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZCiPoCu8/855vOssuIX2vsSYggCrutxY7YqutVaEtw8vkoiYlac
 WBX5+ko8ZP9Ip4FKT0MD3GhktaC1cPL2IQ/BknsVuZM+TiljwqGtrD0srufseUoHu89z5Zy
 B9vIsYQ6+OhLLthZXlwg0U6/H2FsXn9Fsq0g/DLuoFxAs8R6HWuMtU6O5Ss32iwmSHhNMTn
 8QChzsiIHvoJLoeSnUlNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dMrOdCxlzLU=:gyzdDk8yRNLgMLyznqO5J5
 2u4nv6+y1voA0toC7pcEB0shGPEY7bcFHPBhCb9lL06AVSNCgfnX/Ah5gZaJqHB2ppweEtb66
 KhZz/UQrBkiQEQ2jEBVlVkhSE1Y6Nn9opIr7E80c1v6lASPoK2kWw48cC5Q/9xj8pJazIstgC
 ra8kBoWhD4lHUSqZtj5CkD5Dx8nQ5olWf6z7ddi/7AjsWy/9RT+LExYKyhDI7oXhgHt8iJtEA
 zUrq40Ye2C7gZwROwgBqeiu6uABIYDcu2P03FXLPNsL/rdBYLGTd3VYm713gQSlo8qU/plOX6
 yQiWIY2R9PRItx+72ib11XgMkxu8lEll/ey2+ZW6vHD+QotiQOWAfddDBao7L/7EOsGF/myUZ
 AtlAJIE5esPdGU03yUQC6rWrDl9TPTs8vc5D9UZb9GGWN9B4llvED1sb7cKGW3NHNEeUtg9Kw
 ASzXZnF4Jxhm33PyYjXsvfoGlBj5P19yAo9+le0pjF/OUcBhbpIBHlkp/1yFDaA7W1og7g2k7
 p8Dysp5TKkcYN04Js4i7V45sC9fb3cQ+SBDySBUiCqLjox+6onOF2qUn9LKPdla9zlA6FOMPr
 vdOPj55nP30K0XPCKFlwu8Pj8VsQbajs+vSIrnlJuGEghxQPIJs/nhqA4H3miLQU974BluVEx
 LZXFES/9HCeUpodhbq5Lt8npFg4eIKAgLYLvwVLSCRhJLICfwdVDhuzT3VBpnUtpUBSV82bkB
 XF9b6cLO2/SCNuZDk3kX16LJBS3II6eYoOvjnH59rF8+MFAUOLMt12qtgn7vJtDcvVvFXibIn
 5iyJ7OiXAUxDVksg7wwQVYTYaSQU9c8G6Ej9fbvqgRyVVUph+g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_145131_289809_D320FEFF 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, Arnd Bergmann <arnd@arndb.de>,
 Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Older compilers warn about initializers with incorrect curly
braces:

drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c: In function 'sun6i_dsi_encoder_enable':
drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: missing braces around initializer [-Werror=missing-braces]
  union phy_configure_opts opts = { 0 };
        ^
drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: (near initialization for 'opts.mipi_dphy') [-Werror=missing-braces]

Use the GNU empty initializer extension to avoid this.

Fixes: bb3b6fcb6849 ("sun6i: dsi: Convert to generic phy handling")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index f6c67dd87a05..aa67cb037e9d 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -718,7 +718,7 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 	struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);
 	struct mipi_dsi_device *device = dsi->device;
-	union phy_configure_opts opts = { 0 };
+	union phy_configure_opts opts = { };
 	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
 	u16 delay;
 	int err;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
