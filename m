Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4070C8BD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mtmWdGGlGkUpk+HH91glX6KljUc4A3tvu9Lm4Il6Xew=; b=EVvLyCeRzANKSI
	d+ouwQeSPKGGuiOP/s9rEcwCNBRksMqx7wDCioHgaGTbQQqiEQ4J1YuZR973hYPdbWgBDqntLa/Y4
	a2vsrXpeFP3Yrij4DKkftN94718Z4psP/injBetTrUxa1GKVhhQPdbSAAmbySgmCB8wIuWoO3jNJe
	dJVpWf/2gA3wAHU4aV+R8c0VSeURTdqb+C2jj5SJ2J+8qa4a5Csff9LY1qUlW0/1vV5I0YY5Dj/04
	O7SbGPJaLn0Il5uncppOw9sKJX2EOAooYwyNNF4GUKjtOA67WaomrG2oqYYwtYMTNB6MpZ/HlPOe9
	UdDyrNprHCFpNSw1Vb9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfx3-0000VU-54; Wed, 02 Oct 2019 14:50:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfwt-0000TE-03
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:49:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id i16so7544548wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 07:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MRX7MVzKV2NasOdGGBHZN5dKTeuEyw7WMiE2n0MgQj4=;
 b=en2MMk6iqR1ZVTx19B7QV5SSFiGdBrMrfCdmWNvgQZsf35VRZTwiIslnhd+/vgIybT
 l/dhyN7HvsyfFuvjnCFl3KTC92yK7jbh8u+BYLyOOJR8d5Jyl1g4/gyY6lsn/3AQECOJ
 rS24HXnqRGmQI6jJyWi9TfrLx25ELJfZeykeeGY3jl2e0QXGaL9X63goT51Kq0R7dTWC
 kmaCXoCAfBkL4i1SkrcNO9XHPM3aA786CjIv+hB9zqmsi9gPIz5VZwrzLUCKFyz6+MEO
 iiIqsObBjmCDeMU6WEendmJBrQwu1C8Aqd89QEVuEaeR4bW6K5FJJkCfQRk0jjdcd44w
 /mOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MRX7MVzKV2NasOdGGBHZN5dKTeuEyw7WMiE2n0MgQj4=;
 b=IMzYRH1X18C2OgwTmbmQ6EB/pRYFLHtfWlaq6COxJAvyfcr4ifkITIQmfWXxl6knka
 /eeB4GwOGwKK3pugDo2I6QYoQxoIvR4jS0JLcnDo5UpDqsPIvZUfV+0TfwQbvL5K/kZF
 kxCfGxw+VPbB77RpzOApD/ykarGv7HHp3Q84SVhlEyEPLh1luqF0sUCutoQuGHkBoH3H
 YpT6eY8wUcuteUjD0ly6z1quvyKAm0eRA1SRbAx0c8/RwRSpzIPevAnYEHiIvBHJi/lh
 D1qQ01HrrfQyM5CvE5VtWfvZ9buhmSUnpUxxClQ0R7DcflX038QTA9WvQwUps9np+C2Z
 F2Mw==
X-Gm-Message-State: APjAAAVkEF905EImhXbDKMCAvswSQE4Qj2EP8irEKk+P7cd5pFrS/Odw
 1soEEWnjCM/IZM9uY7dD7rE=
X-Google-Smtp-Source: APXvYqxcrs2DsroGKSrdpkWYOirroFKSyCTTGszuiL4Cvd7AIj6WKmnnHD6tEhs6eZ4x1BFazvUPaA==
X-Received: by 2002:a7b:ce0a:: with SMTP id m10mr3397067wmc.167.1570027789092; 
 Wed, 02 Oct 2019 07:49:49 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id l10sm27877457wrh.20.2019.10.02.07.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:49:47 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net] net: stmmac: Avoid deadlock on suspend/resume
Date: Wed,  2 Oct 2019 16:49:46 +0200
Message-Id: <20191002144946.176976-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_074951_038081_C106438D 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The stmmac driver will try to acquire its private mutex during suspend
via phylink_resolve() -> stmmac_mac_link_down() -> stmmac_eee_init().
However, the phylink configuration is updated with the private mutex
held already, which causes a deadlock during suspend.

Fix this by moving the phylink configuration updates out of the region
of code protected by the private mutex.

Fixes: 19e13cb27b99 ("net: stmmac: Hold rtnl lock in suspend/resume callbacks")
Suggested-by: Bitan Biswas <bbiswas@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 843d53e084b7..c76a1336a451 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4716,10 +4716,10 @@ int stmmac_suspend(struct device *dev)
 	if (!ndev || !netif_running(ndev))
 		return 0;
 
-	mutex_lock(&priv->lock);
-
 	phylink_mac_change(priv->phylink, false);
 
+	mutex_lock(&priv->lock);
+
 	netif_device_detach(ndev);
 	stmmac_stop_all_queues(priv);
 
@@ -4733,9 +4733,11 @@ int stmmac_suspend(struct device *dev)
 		stmmac_pmt(priv, priv->hw, priv->wolopts);
 		priv->irq_wake = 1;
 	} else {
+		mutex_unlock(&priv->lock);
 		rtnl_lock();
 		phylink_stop(priv->phylink);
 		rtnl_unlock();
+		mutex_lock(&priv->lock);
 
 		stmmac_mac_set(priv, priv->ioaddr, false);
 		pinctrl_pm_select_sleep_state(priv->device);
@@ -4827,6 +4829,8 @@ int stmmac_resume(struct device *dev)
 
 	stmmac_start_all_queues(priv);
 
+	mutex_unlock(&priv->lock);
+
 	if (!device_may_wakeup(priv->device)) {
 		rtnl_lock();
 		phylink_start(priv->phylink);
@@ -4835,8 +4839,6 @@ int stmmac_resume(struct device *dev)
 
 	phylink_mac_change(priv->phylink, true);
 
-	mutex_unlock(&priv->lock);
-
 	return 0;
 }
 EXPORT_SYMBOL_GPL(stmmac_resume);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
