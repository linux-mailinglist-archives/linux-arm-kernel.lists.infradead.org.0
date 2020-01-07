Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7C113298C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 16:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z+uLhqjDZEPN1QP66bC8z7mnUJo4XcJ/J7N/e6+HS6M=; b=UFP
	uUyUIG9nvm+P4VAujYTQQ/TUWH/GvrTdOR1UHObqH6dLpPhsHl/CoGcHkM/SDo0FeqRQ+ewbAWG/m
	Ew1T8VyW8752NWN/7Bf1d2APu86aOZHAw1fDf0Aj8LS2xnpE6quTh3Hj44jFfUCRgYS0WhcTeJnyy
	zpqneQWJOa/wRxX7dUUYDbcyQNF3aV7jIukRst8HxvK22Qo4Eca+HDVm0SnEbAsvdFg5AWRbknt23
	Txb6eJaXdScxteqA1C3M767WR/VWkqiXzhFKiG19cQYeEQ056WDSsyWekRUJiSGPhdn4Q56VDVnlf
	0Uf4getij82IbRyJtolDV72g8O28UAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioqOB-0003VR-ER; Tue, 07 Jan 2020 15:03:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqO3-0003UZ-UR
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 15:03:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id x17so23312003pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 07:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7Vp5Vy5j9yM6zzEKiWqAsDsmN6F0gjsulGDFzYzW5ms=;
 b=FRdc/pEtLxybKATPi0gWX2OnrpPVH/gGawy/tcqojjMjvopFGGM068hu4YFt3qmt8A
 6R5y0yJvntjkO8rsWhyzfx23MOZxhzl/6e8Z+UKVVBc1Gihd/WO9l45YcNrgpYi9rKXD
 tWIIDANUvg28Kn7rZ9lTElzHP9SNKUJwcKPS6+aZR3KuKyMWVSR3aJ2aGRsUgKXN+aRD
 hUqAoVldM0Wyh88gr372bKNGydSXKln+wJOHPMUw8udR26H1B/JSx3TpR0H+RTBJJfYV
 huQgd0dDZJWNtdUEMbumFGCV7R864/LXirQdWi2VM5u/CpZOL4tJmLKL4i+gsWM2v2qk
 /wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7Vp5Vy5j9yM6zzEKiWqAsDsmN6F0gjsulGDFzYzW5ms=;
 b=hSzO+0IBZG/g4DQYFB3y/DJephxQQpDIfCEPvMGuL08D2ztK3GJkc3oeklg/gVzh47
 as02jBhfzdnA5jIQ2Iy81n5WItRMspYxCPdPUTHq0F8LiqSv3g94fKQyb4VdcQawITth
 rD82IgB2W3SlaIfTLqce/Bngfkc+6+rK3prWHVRhT52XEPuz3Ggt4Iqn3O1MVUAFYWYL
 SDKQSUjQf3Ox2Ffns2OL5leC3ZBuG2EvrCskMyYKu1Jl2tR5moFIs2kZ3xxHCbBMd1Cw
 LKFiSbsgSX6MKsEp9+Kf2IFIPzIuCtx+cpoFpOBMS96aJ5GNPpm72ATk9d9RqLwmcgxC
 BHIQ==
X-Gm-Message-State: APjAAAUI3ar5gaaldhxpwdCKZ11YJoG4c5IwlnoQH8w+2efUq9481c71
 Qkx6hbiezANQUtVzXi759h4=
X-Google-Smtp-Source: APXvYqzftM+e7fYt4IHv4fHcbdCZwaijynpYGwn5PKAuo5WlUzUl87fCknMZfMefV1A2363vPvEgwQ==
X-Received: by 2002:a17:902:654d:: with SMTP id
 d13mr33352pln.187.1578409392867; 
 Tue, 07 Jan 2020 07:03:12 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id h3sm35881215pfo.132.2020.01.07.07.03.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 07:03:12 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: davem@davemloft.net, corbet@lwn.net, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linus.walleij@linaro.org
Subject: [PATCH] Documentation: networking: device drivers: sync
 stmmac_mdio_bus_data info
Date: Tue,  7 Jan 2020 23:02:54 +0800
Message-Id: <20200107150254.28604-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_070315_980867_C127485D 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent changes in the stmmac driver, it removes the phy_reset hook
from struct stmmac_mdio_bus_data by commit <fead5b1b5838ba2>, and
add the member of needs_reset to struct stmmac_mdio_bus_data by
commit <1a981c0586c0387>.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 Documentation/networking/device_drivers/stmicro/stmmac.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/device_drivers/stmicro/stmmac.txt b/Documentation/networking/device_drivers/stmicro/stmmac.txt
index 1ae979fd90d2..3d8a83158309 100644
--- a/Documentation/networking/device_drivers/stmicro/stmmac.txt
+++ b/Documentation/networking/device_drivers/stmicro/stmmac.txt
@@ -190,17 +190,17 @@ Where:
 For MDIO bus The we have:
 
  struct stmmac_mdio_bus_data {
-	int (*phy_reset)(void *priv);
 	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
+	bool needs_reset;
  };
 
 Where:
- o phy_reset: hook to reset the phy device attached to the bus.
  o phy_mask: phy mask passed when register the MDIO bus within the driver.
  o irqs: list of IRQs, one per PHY.
  o probed_phy_irq: if irqs is NULL, use this for probed PHY.
+ o needs_reset: make MDIO bus reset optional.
 
 For DMA engine we have the following internal fields that should be
 tuned according to the HW capabilities.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
