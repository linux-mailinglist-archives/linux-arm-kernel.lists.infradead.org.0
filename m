Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9211D3A06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLzSuEO8qB5kc9SeR+391ZXqi0vFclcUk7X1kfRfUcM=; b=Pahr14hgJfAV0a
	b7sPQfD215+8U+IYuNL9MigrALRyF7XpiA/PcqasjU1FTYVv7U067eOXPOTmFRUwP28EtIqXCjPUN
	08WocLaZFFtXK3j8DMGqXO+TDNJnLBhA3udqkuM3lfUzI4Qz9k8iOPTxpegmPT8uZ+7nlEhIAV7Ao
	cCxo0H252lnScO2jpvhZ8oxl4iJXO8bOlV4ukLqq8Uq7fqtKukYdWlTNgLfrSSkjwG12QvyAqR+Yw
	KsM4uRUjhGCdfYM46RTCBZnW64TyyhtcxN/mK40ILASuPC2AZW3BDHeG2PbwylAoSoQc5iQ00kpIu
	ylZGJkljRPWbtBgqHKOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIzq-0002np-GJ; Thu, 14 May 2020 18:54:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIzO-0002aZ-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 18:53:55 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C21920767;
 Thu, 14 May 2020 18:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589482430;
 bh=sCPjoIJecCKKcl4sRs7D5KHmbz3FxC1giUdKL3F29A0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aMBU3NtQDPHgpwV1OOq3Xz7b/j9nA9d3jtwnDm26iouQYbEtDmrKebV2laNa6U+1V
 pslo46m05pwcbLIdG6omdq7Mc15XX/T4w0WKnQKPPJoy0wO9j3v63OAulcTyudEX6c
 vi2poaWusRprKQDuFU9BUAa7ktk1dYQRXrvUmizU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 31/49] sun6i: dsi: fix gcc-4.8
Date: Thu, 14 May 2020 14:52:52 -0400
Message-Id: <20200514185311.20294-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185311.20294-1-sashal@kernel.org>
References: <20200514185311.20294-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_115350_407602_45D9B290 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 3a3a71f97c30983f1627c2c550d43566e9b634d2 ]

Older compilers warn about initializers with incorrect curly
braces:

drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c: In function 'sun6i_dsi_encoder_enable':
drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: missing braces around initializer [-Werror=missing-braces]
  union phy_configure_opts opts = { 0 };
        ^
drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:720:8: error: (near initialization for 'opts.mipi_dphy') [-Werror=missing-braces]

Use the GNU empty initializer extension to avoid this.

Fixes: bb3b6fcb6849 ("sun6i: dsi: Convert to generic phy handling")
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Link: https://patchwork.freedesktop.org/patch/msgid/20200428215105.3928459-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index f83522717488a..4f944ace665d5 100644
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
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
