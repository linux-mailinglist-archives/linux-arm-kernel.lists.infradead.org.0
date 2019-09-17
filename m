Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245E2B4B72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4z7egMyrg8mqyXhtPxvy3Sf6UtRBHC5lDBZwF2f+umA=; b=QGv
	pg5GgoFZYK7XQcINmi++IWmhIwA5PKHwsvUfwVIOdXjlxrR8XuCl5KCsjuqhtKwLpvjO0e3srNZ+G
	VNs3cb+NsqLicrMZ9CHmPPMrAjszq2OSJHqoG2kbdzdweqTOGSZKRSD9u9+OMsXGNnVMoL44A91ak
	zphhGC3+78S44BMEg91CsNaldS0wPt9T3ddw46XQr9oQsAf8SehF8rSux5MtF3TMQEzaUaWRH4SAG
	mVWb8Zzd4MAUhXOuEdRkGv6LZwgk5D+3Pktpiwnya5nXelJfRvg1bnU2gONy+k+tm7ZnLdKNKsY6s
	n9YsE6cC35zLLluiqzSIsPbGBsIOIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAKP-00082O-9r; Tue, 17 Sep 2019 10:03:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAJt-0007tm-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 10:02:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id o18so2401202wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 03:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=JugQhyARoBEh6axn1GkenUD1F8NS4zAnUz5g+2UjW9Y=;
 b=q/Lr9BOq/L69g4WCoKZCQ9TczATMdKu2UawnxeFAE+hhNHZC76GVOZJCaSxtRLRMi4
 hkww4gqPUO130c9uk0yzzLEpRWXquoI4YYvL1Z8XV4HfAgn45Zjk2Yb+ogUj2fbaj4js
 BtYrJMb6vHZyh/cZTduvyN8X2er9+XHOVcfOg+z/VJMtfts6WzKUdX5FPAvNW3OATEFU
 Yt5ad+VCWxlEuhQRRKjESvaqIOFBGf1TI1VfoMA9PBmo9Q6INw9uFPjKAv98Gclwv0IB
 Q6G3JXvEiT8BaNzZBYDDifwAndqQ4Fz7SMDkuA+DbQ2glFx7Aag70O2VNnVHdkA1ib+6
 RmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JugQhyARoBEh6axn1GkenUD1F8NS4zAnUz5g+2UjW9Y=;
 b=W2RNNdo3/lecws++Qi5ASyZQiNZu5qLbD4QXYOZo4pwrn7nMEoFkDe4wQmjSUzRPgk
 RoUaQiuevegCb46J1CfxUGgeUkwRzqNly6WO05BzAb9YZm9EzligS3iZaP/pIgmaRd0i
 jS3KGpf43lq6Ur7lRCTWrsGkJOMnNLS+gkJaBb6zzLD9CQo7XrLuILA+SEtcbaQ6b0vc
 QV9RcYWnoaLse55jAofY+LlulB/nqR6fOlNvoLtisFogYiC7PzAUbnW7QGnWz46MN5rR
 x3JU5D/qnNjG6Zemf8UIYyXlxu0N3HTNl6V6XbSBHusEY5TtEgdNtkvGJUuNIOT02CqP
 3kGA==
X-Gm-Message-State: APjAAAUXrtndF86biKI8vUu91ZZ89n9Kfa3zsKi5omSovv1eDsW1c4zj
 0V1FGs0cjONTyeGHqJDvq7yfDA==
X-Google-Smtp-Source: APXvYqzvMSwZS6tqlEUY4Ih4eSot5R1sNRe66bMyvpYWdYsCrq4qlgih6+Z/KU8adcjHmpU7LoqqgQ==
X-Received: by 2002:a5d:6951:: with SMTP id r17mr2232769wrw.208.1568714567756; 
 Tue, 17 Sep 2019 03:02:47 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id x129sm1606696wmg.8.2019.09.17.03.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 17 Sep 2019 03:02:46 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Russell King <linux@armlinux.org.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] net: stmmac: Fix ASSERT_RTNL() warning on suspend/resume
Date: Tue, 17 Sep 2019 12:02:36 +0200
Message-Id: <1568714556-25024-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_030249_486224_8629CC86 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

rtnl_lock needs to be taken before calling phylink_start/stop to lock the
network stack.
Fix ASSERT_RTNL() warnings by protecting such calls with lock/unlock.

Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index fd54c7c87485..485f33f57b43 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4451,7 +4451,9 @@ int stmmac_suspend(struct device *dev)
 	if (!ndev || !netif_running(ndev))
 		return 0;
 
+	rtnl_lock();
 	phylink_stop(priv->phylink);
+	rtnl_unlock();
 
 	mutex_lock(&priv->lock);
 
@@ -4560,7 +4562,9 @@ int stmmac_resume(struct device *dev)
 
 	mutex_unlock(&priv->lock);
 
+	rtnl_lock();
 	phylink_start(priv->phylink);
+	rtnl_unlock();
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
