Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B561DE655
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVtqHxRgphgKmhems7mArdA6PBQNGonXBe8eGaKk564=; b=Tqt1GmBWgM+7aN
	VN3NT4FZSg9ghAmwMzAqzzZm83qI8MlCLC0eYNnftj/6bqy08M/X/+8LRg1WBUDCx05+2PMz0M0tc
	2jdflg5HebfEOcn0Tb0/NfAEERVvWRbPeuWisTZAGl+8T7zByEQyjcp7AHRtRd+0xmtUS06vAjriV
	remSXsPGoCCIrMBfpfMWMmQdhC1HUjIbFL/BB9LigIog/Snd0NQ5y0EV6HG4CmqzS6kJ2D0+MCq8k
	cJn3eiBL0Oh9V3nIZqgxeXWWsB0gQdynjR681tfnAvRYuLWijWEKNsoaeSE9fOIa/1tsXxNMtrF/6
	Fs+CGeh83dibs3lq93aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6UT-0004wN-Ic; Fri, 22 May 2020 12:09:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SW-0003JF-Bs
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id u1so8429586wmn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=BJ3OIkLmKDJd8mJGXMOAEO0RYtZ+BzOIsHcG2UTpazbPreZ6uDY2fuZCBNsWnHPZjT
 xuescNUhGBE8SFaTTfNfcabLq8y2VIiMaEMMogTnG1fWAg7mF5jI42aIffPUTPA+iePW
 H1+GJn6TtGrfuwlTv2N2j+z+8FJe8t5Tkty0XiPLO8fEfBDLOX5xVk8vM2bkcyuYUIiG
 6s5XAFWCd8aPysT8MuuczJuWiSYnGUnSFXTw1UdujFdRbRa6bEVoWEbUCrd77lm4pXBG
 BJzOUC0xV1s37znu6SdHGwFgX+Imn6MDlvjRUTS+1uVNKUo0q6QE4VM7f6spU26/iS3X
 hWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=MEt/UaqLclXz3eC2u2FwOo8pMHemTt8a44kGu9zo8k4PF551HD9K52qI7bkVwwuGkR
 cs7fcops4kyEIIcBPvzfxRpze92j4cL8OndyO5GFgSAXKHog0IuWWoPmPkFXb4EfwSJh
 gk1YkSwwQb141QvtVhYGspzlAVKx8dJHF1RCMeRA5xqwU/BldTeTmmhi5n3lxWzIx1us
 3PtkSRB2lUEkH2zwN7CGVd8aN2r3bldo0d77cbgh+kHy22i8J1yzV0VLPNXA24itVtp8
 MegGzMrL7krtrywVsqbnAdnE4Sn/9yQ91gDdAMoBoiNCC2FZKf6OS2a0j6fBMLKeiiPs
 tgvA==
X-Gm-Message-State: AOAM530/50CfYEkDFmhGNI9F7CHXhCXt71qt2ICei2IFoboJ3dhNENXx
 1JHYib9lD6TGBSi7Q0NMtrI4aw==
X-Google-Smtp-Source: ABdhPJzPM9n4wz+olrOocFVpzas4NvH7xuF1o9DtfGChG8Sh1pIB0aDKJyKMN7cmRko0riD9kvETNg==
X-Received: by 2002:a05:600c:2146:: with SMTP id
 v6mr13654376wml.142.1590149246036; 
 Fri, 22 May 2020 05:07:26 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:25 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 04/11] net: ethernet: mediatek: rename Kconfig prompt
Date: Fri, 22 May 2020 14:06:53 +0200
Message-Id: <20200522120700.838-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050728_456145_A76FD0AF 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We'll soon by adding a second MediaTek Ethernet driver so modify the
Kconfig prompt.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
index 4968352ba188..5079b8090f16 100644
--- a/drivers/net/ethernet/mediatek/Kconfig
+++ b/drivers/net/ethernet/mediatek/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config NET_VENDOR_MEDIATEK
-	bool "MediaTek ethernet driver"
+	bool "MediaTek devices"
 	depends on ARCH_MEDIATEK || SOC_MT7621 || SOC_MT7620
 	---help---
 	  If you have a Mediatek SoC with ethernet, say Y.
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
