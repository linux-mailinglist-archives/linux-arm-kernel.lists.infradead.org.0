Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56051C57E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVtqHxRgphgKmhems7mArdA6PBQNGonXBe8eGaKk564=; b=lKtEBPjYmbd8WC
	dtV06jpVxvu1Vjrx2hC7SqTjqxOcQSm1SdCc1+1E3HOn93V2+OcvM3cRsUWFQEQkUDN2PR5U8mAUU
	/14azhocLth2dmxW4vsYlwKM9ucO8KjUEMaQZ3CxZjDHUsW0zx0Sv3tVutBE7MQ32SZWUqkvdeh3J
	mLtTf5JOHxR8Lxxx7/jSNjPTOBD+cHIVIZsu0tsdqTK3HccbGDhRUSpa7tAOtVbJArlyU/u0Z1bpl
	OwB7k71craZ2kog82KFv3n7se6g2MRU6IYX2vt2TDNoEQXAp/FGekQ2wxrRKIy0yTyrt08Upe0XRa
	PsCwPKaCvHSMqrnd0kbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyBV-0003Tt-6C; Tue, 05 May 2020 14:04:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAB-0002Fa-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id y4so2660277wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=kvPVV59bLwvQgCRXMMdalhwBGJXiNTAb3RXUaXffdzF/CnPAYnbZfbo5XFRy/U6Hmn
 UYDrC8U2QoSOzSL6kGoZRN+trWItJsZE5rzGhy9yuYPhWqlj27+0bcwhKKCOlWh3BJTz
 l98EqUfia2miyFfDeTxIe2M54ZAExtU1gQ4zySphZmhTJmKHOCSN/LRtVxgdZyy0jInD
 wO02lzvY3Qbg7bm454+9uzwwhlluP7XjN3Ti461uWWCrAgdX/Yj4Iw4pSLlI3+6vKsfZ
 1RqRrgrWqUsGXLeFN6IFuiLJoSlwRD/aG0+tqgvGYmGcLsB9nQQPQtqFBO1K/kBh/rYb
 XAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=bci6Nv7VqgAsBQj70eBI5SmtrIARX36BdmlOpAcbv3/Ag5fh4DMSXUk0X9Bme65GEu
 I//Mvcp8tnHIuEj7DiufIoAdEw3I7cWIhf4ZdEkID6T7ESEDxcjYotXwiVIRxZa3AVjy
 GZMxdapCdESVeeUmzvo1zbwwEu92JOUpBeRA+7GnK7CLxCyjQ7yTbcwjZI44TIugewB1
 /s1JtI4/WFvrKFk04Oeqld2dWwQP/s8ta6RhqZO5s1bAcA0ShiDXb7Y+nbSOQzHgGQDO
 sBt4ikfZoDt6gY4EYhYAUIWJbYXaFcuzbk/Kl3CaVP3pCJOMCS8zRWnHBkchzoa7RCWV
 IJSg==
X-Gm-Message-State: AGi0PuaunKJQn1yjtbRd7d5keuDkZkMkVrdCS0YXxy9kn0Wc6HWrphyZ
 j8gUlRM9zOPtjR/7zsjCgT0Nvg==
X-Google-Smtp-Source: APiQypIPk6Gmfh+TOm1lNpI6ui+UW11cc/DzL7lShUJ6Uv4UPglvQgiExWM6SHeIDM9Wlw/jZVJSDQ==
X-Received: by 2002:adf:8169:: with SMTP id 96mr3846446wrm.283.1588687388304; 
 Tue, 05 May 2020 07:03:08 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 03/11] net: ethernet: mediatek: rename Kconfig prompt
Date: Tue,  5 May 2020 16:02:23 +0200
Message-Id: <20200505140231.16600-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070311_390754_D4A9D9DD 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
