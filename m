Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FECE79B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cn2x9ljFFuZKB8UCeO+64e4ihONl2hWWXnBE6pW1+tI=; b=HdNBt4M7QYyIce
	754SuOWG31it64kS8eXdKl+Uy68XbT5xn2aitFfXokjXNDobNOHjSFiqjBG5OZ4HbMncNzSk4FpHu
	nN4e7ZMefz30WpuQGUcJM4LMMoIrgUMHued58AR/l3PKf4uZS3HQ9LEWe69gdeWH3YnJtuG8kfqGm
	am/RThZ1IBktGahj/O8FbLmPrSWQn1bKDUWrsJD/YiuEih3ACrHgIIGNWs08XaqMCmJNnFMotynod
	kaX8HQ6inzeOI7XsiCCQyUJpAUYVyWxie7iwAbnB/8fK080Srlduj59LDzw2LgK/pGCb7P5Ujq03S
	XvEb9jGQ9WrENY/fT+yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBLD-0008RO-30; Mon, 28 Oct 2019 20:10:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBKv-0008Qw-B5
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:09:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id p13so6217032pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 13:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=wl+iKNA5Jfay9ywIg9f4O45/2oXRJ3Weq7J5t6Tjfas=;
 b=FvvSzQZhtAbnnhD9fehuY1IndRKkyeQFH/Ja4KzmDtuFlsQ4yWC3wDD/uKvTzXdO77
 mRJu3Rm77YcfdaMIXRi38XW4xrNXJmd6jtwnIsHlAISpgUIJEssbEyHw/cJkryhevPZN
 Fgqyy4Br72CBLdf3A6KK7MEGAW5jd/5I3c4hqfd5FEdFkBqtv0DDJ5Dy/73NCCMJFirJ
 NKZDseP2xVBrVl7fL1syApRx1CoyuebQsBP14yBd4bHW2RejGkytU2DR5JTFikrscNYx
 lt1lu33+alUjvvyA5YuTJKMFad3WBiTaJAY0PfsUs5EYRX3iHeUBoYkNhgssY8TS9POy
 VbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=wl+iKNA5Jfay9ywIg9f4O45/2oXRJ3Weq7J5t6Tjfas=;
 b=sJySTbOdi684y/dSrYjXw3XkK5BWt9MB+XkfjrXjDsTMLDAEBup7H4HD7u+jU6G+35
 uJ1cUlnLRr7qVuCmYUv3zN5EWoqVwCfajfU64UiuYNHpnkhdemmeuT/F4Be3uNlLm5pH
 2cAHi7hpetwdu+1Lj2AqAXpfAiMThrkvZeSGRhBj1gsfbCOifI3bKFgTOagDE1jf1BAQ
 vooFnykHzpLWuHOBI+iLkF21ordyVbPWVgMTmQ0118KCD055ts8xGasCBnfE5PFzpuYP
 +1H3jSgQXQn9JUJUc8ye4erOGBoo8coDz64KnSdICOYHVVu/7c9Uj7T885RKIR1VO7ZH
 dppg==
X-Gm-Message-State: APjAAAXiaGfSCqXHQqINVxF+0s1GIv2tYRYPyNPC60dGF6xatUGaOIqM
 WTJ0b/vt3pNzchx9LRwUp74=
X-Google-Smtp-Source: APXvYqyajeo0OC7xTlcmXfY/Y+R89i/qbP/KRbraF3xD5S+oVDl7mzcP/13Ma6RUFsB5gyTb/AAAbA==
X-Received: by 2002:a17:902:a503:: with SMTP id
 s3mr20180655plq.203.1572293396691; 
 Mon, 28 Oct 2019 13:09:56 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id 31sm12360941pgy.63.2019.10.28.13.09.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 13:09:56 -0700 (PDT)
Date: Tue, 29 Oct 2019 01:39:50 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: sgoutham@cavium.com, rric@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cavium: thunder: Fix use true/false for bool type
Message-ID: <20191028200949.GA28902@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_130957_379145_00D7D03D 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

use true/false on bool type variables for assignment.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index acb016834f04..1e09fdb63c4f 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -1007,14 +1007,14 @@ static void bgx_poll_for_link(struct work_struct *work)
 
 	if ((spu_link & SPU_STATUS1_RCV_LNK) &&
 	    !(smu_link & SMU_RX_CTL_STATUS)) {
-		lmac->link_up = 1;
+		lmac->link_up = true;
 		if (lmac->lmac_type == BGX_MODE_XLAUI)
 			lmac->last_speed = SPEED_40000;
 		else
 			lmac->last_speed = SPEED_10000;
 		lmac->last_duplex = DUPLEX_FULL;
 	} else {
-		lmac->link_up = 0;
+		lmac->link_up = false;
 		lmac->last_speed = SPEED_UNKNOWN;
 		lmac->last_duplex = DUPLEX_UNKNOWN;
 	}
@@ -1023,7 +1023,7 @@ static void bgx_poll_for_link(struct work_struct *work)
 		if (lmac->link_up) {
 			if (bgx_xaui_check_link(lmac)) {
 				/* Errors, clear link_up state */
-				lmac->link_up = 0;
+				lmac->link_up = false;
 				lmac->last_speed = SPEED_UNKNOWN;
 				lmac->last_duplex = DUPLEX_UNKNOWN;
 			}
@@ -1055,11 +1055,11 @@ static int bgx_lmac_enable(struct bgx *bgx, u8 lmacid)
 	if ((lmac->lmac_type == BGX_MODE_SGMII) ||
 	    (lmac->lmac_type == BGX_MODE_QSGMII) ||
 	    (lmac->lmac_type == BGX_MODE_RGMII)) {
-		lmac->is_sgmii = 1;
+		lmac->is_sgmii = true;
 		if (bgx_lmac_sgmii_init(bgx, lmac))
 			return -1;
 	} else {
-		lmac->is_sgmii = 0;
+		lmac->is_sgmii = false;
 		if (bgx_lmac_xaui_init(bgx, lmac))
 			return -1;
 	}
@@ -1304,7 +1304,7 @@ static void lmac_set_training(struct bgx *bgx, struct lmac *lmac, int lmacid)
 {
 	if ((lmac->lmac_type != BGX_MODE_10G_KR) &&
 	    (lmac->lmac_type != BGX_MODE_40G_KR)) {
-		lmac->use_training = 0;
+		lmac->use_training = false;
 		return;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
