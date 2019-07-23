Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A394772262
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FMTqZb9Wh6HBPW6p5xrHRO7pOJlBeh1d3mWCudQvQgY=; b=Ees
	/q/4hBC7sbiDOPiKGdHmuwi5tL7Yga0iPy7eJanB/PtqdAxp5Ny+WIK+OWeC8heKp9jT30/4dS8nf
	L31FyHRLaoAkDcCaZf4bBKzvCeMx6AvoRbixbj6tCMCDAvsXbWJvMMXuIf0jmKKoc8DwX/hkryvVN
	8Oozu8dw1tKzjnZtZ49BZmvbapjiKhEX2ju2RC0zo7xPU3wLZcplJKZNL4sBO0g//dhiK10LRme+w
	LQraSSmsUEzFbc9uoK8dQ5jCmkysMR2lTRpmo+pOYo+QRQ51cZt/0VOLT0Y5olCaezoi9N43Xejg0
	Qq+wbSBF72I6uVB4IUNjK/LTiJd+jjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3H8-00058D-04; Tue, 23 Jul 2019 22:28:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3Gi-000560-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:28:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id g20so85283819ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 15:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pU9a7WDmDblNhHtORn5q1an88I7KvX3awfI/tpZswsc=;
 b=vTUBTfU3WRSbpoLXj3LQRCNpjzD333/dk4AToQ4R+yDDRRvC4KUPHKNSgN9l7LMX57
 3mt+PJntp8PCG3uGt29gQ4J9yoGL+R6fRpRO0WzvNPgtHeaSGxBavFHBsDkXX+ZTwNXq
 +G8KudPajVfM5q3ZSUAASyzViApUZN+Hs4u5iHJY06VgI0tsyEfbpSOxuyEutjEvw64G
 yVYw4ZwX9RCTYumtERA/by6KsC2fwayQBmcUcshaSSKFyIkpMm4YKmb/ldsZnrz02WKK
 2wGhkLNKm+xZEDgKN7x7aFgBXX6V3z4iJ4jmcr7+2ZWX/ACVuwkwcT7oWGoSWHqViAKH
 fTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pU9a7WDmDblNhHtORn5q1an88I7KvX3awfI/tpZswsc=;
 b=J+vP2auPrPvhXKpKfoCbk+M9VaUg+DovHgkPQsncywD1Z2RI7TEzG894MYRx8rFhDV
 GwwyvvxztC9q2liTzwIyZE5r0oNgtNwmnfbI+IpPbYX14/1P8g2JcyiSemJMrbEhZEZZ
 v4OtLYXWR9mL8lUBXOBG/tbTFoiZ+WgT+BaTyHuasojAGAbQDTY2mwfhofZA5tzaxQk2
 dz5E+ZFS35ZUaf5/2jkmkgIoGkSuUQfgrKJSoW7koUy7o3MThW4lPfAF52h0tBf0Gd0/
 QHUtzmmRDAsjEX3gUQ9MZy9JvQtlRg/+Y4x2g7B8CM0OFWgftz57Iub1wbs6+hRTPEV8
 KPoQ==
X-Gm-Message-State: APjAAAW1UU166ClaWIMsSkfctjftp9+m9VAiKQBuF8p6uar9MkeNQhCP
 iZ26KLU2CowHDx6V7wzbBT8=
X-Google-Smtp-Source: APXvYqw3itXpwcxCPWEGgT4oxNdiQSL++cL7fM7qnjdamhn1oCj7qCS8wG0y7AsQnIb8WWfLJWqK/Q==
X-Received: by 2002:a6b:dc17:: with SMTP id s23mr67568306ioc.56.1563920903840; 
 Tue, 23 Jul 2019 15:28:23 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id f17sm41593017ioc.2.2019.07.23.15.28.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 15:28:23 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] stmmac_dt_phy: null check the allocation
Date: Tue, 23 Jul 2019 17:28:09 -0500
Message-Id: <20190723222809.9752-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152824_884632_BA541E5E 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, secalert@redhat.com,
 netdev@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, emamd001@umn.edu,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, smccaman@umn.edu,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_kzalloc may fail and return NULL. So the null check is needed.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 73fc2524372e..392f8d9539c1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -342,10 +342,13 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 		mdio = true;
 	}
 
-	if (mdio)
+	if (mdio) {
 		plat->mdio_bus_data =
 			devm_kzalloc(dev, sizeof(struct stmmac_mdio_bus_data),
 				     GFP_KERNEL);
+		if (!plat->mdio_bus_data)
+			return -ENOMEM;
+	}
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
