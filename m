Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B75103B8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iG7XQDNUNrmhpy1DmIfM9TJ/uPY7rBJThh/qdn7Ipus=; b=UBi
	2fz9R+l+jT0o3PtHmTA6KCNqdS8I7QdVlZGPvG/a8POxdalWrs3YRU6NnlGsjlPpe0vYFt2/DvgbU
	oNbNDU03mng2BwePMvxwNYoBJdUloUNImNhQqTBtYbh/cmDOxsnT5hFe5nFg/jl4cv0KaPMLiXfKe
	eICUqacrIfgxiJpL0HkLRS1xXaG2guFp8PZK0scVbv2V5J8ia6HJANYI1RbvEsi0acTnhrqQtlibz
	MNoXtGjroKmfV7B+npW9aMVqTnH6fWTD+fzcDPoEMTJTwvKBGP8rJW/OEvO0gtN3wbU6ZNytjBgqE
	cWGeij1nNzO4NKk9QTBY/dmiWFxk6Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ7e-0008F5-Jq; Wed, 20 Nov 2019 13:34:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ7G-000805-Db; Wed, 20 Nov 2019 13:33:57 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87976219FA;
 Wed, 20 Nov 2019 13:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574256833;
 bh=I2ItxMWjRTEwYmAhHosn5S3+pzi92xqBKTYGklWPoUI=;
 h=From:To:Cc:Subject:Date:From;
 b=DXLsXb1V6t+zEdcUm0IV+EcRRH5mN6kgkgu5xpppSYvdEfjEDweqKnvvNe2Jq1PgL
 UyiNDWj3EFBVqrvpPkA5X0jWyW2Zc8pS0qkrN+NMx7QBl5WukUMYSnzLE2Q9kSWchf
 3sk5RnjK+QqRXtVk5CA8HYUnBzW9Z8m4aAOz0tQ4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:33:48 +0800
Message-Id: <20191120133348.6640-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053355_748268_9A56A93B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/gpu/drm/rockchip/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 6f4222f8beeb..1670a5cae3c7 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -28,17 +28,17 @@ config ROCKCHIP_ANALOGIX_DP
 	  on RK3288 or RK3399 based SoC, you should select this option.
 
 config ROCKCHIP_CDN_DP
-        bool "Rockchip cdn DP"
+	bool "Rockchip cdn DP"
 	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
-        help
+	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the cdn DP driver. If you want to enable Dp on
 	  RK3399 based SoC, you should select this
 	  option.
 
 config ROCKCHIP_DW_HDMI
-        bool "Rockchip specific extensions for Synopsys DW HDMI"
-        help
+	bool "Rockchip specific extensions for Synopsys DW HDMI"
+	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Synopsys DesignWare HDMI driver. If you want to
 	  enable HDMI on RK3288 or RK3399 based SoC, you should select
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
