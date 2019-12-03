Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16901103EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8J8EG5eIimmWypSdsfSHI9aEIGx0/MBnPlp4/TVKmzI=; b=aCszlwNvYc9azb
	rnhDGDCzzCI+ZztjTYjO3QVwvdEwNB4huJYpaA8i2pM6GHpgVTfneeygNujDZB+CWqC9Ph3vTirS1
	FsFrsdh8uRRVxnnKDtQ5OSNw943rQ5/4xGv9K4Qi/V/Z1587CububTzPmuZNs6aB1yqvfIE2pO/jY
	IFX46IXO3pGvOdO6NyUNM/ywwfF+aY4vpBbvIUwR6L9HJcQ2Xnv1OPBV7eD4mP2Yn6xudJDC0UlB9
	cGper1oKIsCmVckpzF6/o9Z6b6pzuZsiOTPiKPpGBTk+lA5YjIxvjnV9+Bd4gQKH8OqPTDUxPbK88
	M3r9UE/KjLYOMyAA6L3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icCTr-0001wn-E2; Tue, 03 Dec 2019 18:00:59 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icCTg-0001w8-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:00:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 10:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,274,1571727600"; d="scan'208";a="205062942"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 03 Dec 2019 10:00:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1icCTL-000Hg2-5h; Wed, 04 Dec 2019 02:00:27 +0800
Date: Wed, 4 Dec 2019 01:59:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [RFC PATCH nomadik] drm/panel: nt35510_send_long() can be static
Message-ID: <20191203175947.myelnvd3vlyrhj46@4978f4969bb8>
References: <201912040159.hVq7kws6%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201912040159.hVq7kws6%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_100048_337997_D257FF68 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: 40d1110621b1 ("drm/panel: Add driver for Novatek NT35510-based panels")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 panel-novatek-nt35510.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-novatek-nt35510.c b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
index 09447160a7951..045a1e619a31f 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt35510.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt35510.c
@@ -382,8 +382,8 @@ static inline struct nt35510 *panel_to_nt35510(struct drm_panel *panel)
 #define NT35510_ROTATE_0_SETTING	0x02
 #define NT35510_ROTATE_180_SETTING	0x00
 
-int nt35510_send_long(struct nt35510 *nt, struct mipi_dsi_device *dsi,
-		      u8 cmd, u8 cmdlen, const u8 *seq)
+static int nt35510_send_long(struct nt35510 *nt, struct mipi_dsi_device *dsi,
+			     u8 cmd, u8 cmdlen, const u8 *seq)
 {
 	const u8 *seqp = seq;
 	int cmdwritten = 0;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
