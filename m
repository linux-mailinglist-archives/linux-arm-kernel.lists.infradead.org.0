Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3A570936
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVztPtZDjcyvgjRqCteHaxsFBxELKWrUtLaDg/EfAgQ=; b=ZJKCxyu3WQ/5hB
	z0X/FzYYivbNKVx8KHL58SexzV00Y91TGnj9zs0PugSLjHalGb0W38BuNtIU+nA3QeaAiq6NBSbw8
	5yDZ5EsKkrh8/yL6WoP9rNbFcUUzQnjGzjB+Y39XXAbszvFFysfKMQUE71DOICfKeMiGYMa3qQ4o+
	SpvOLZUKA2y4sYNWZ3pXFqFdf4pMr/JTz2ot/b+KGsNEbHdAqM9/cvN3XojGcJp8yFKur2RBzdMiz
	NDpYshHFvKAHI1jBXkbnUWnCVHqmeXRbInkY93OmqJZyRe62+xAnww/tMqtpYsSo8rYl+h7u3dASr
	YDPeAA75m55g+SpHBqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdZs-0000QH-3Z; Mon, 22 Jul 2019 19:02:28 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXW-0006Os-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:00:04 +0000
Received: by mail-pg1-x52d.google.com with SMTP id i70so7360098pgd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2EEUYjnGaUl9ucppac7Vlvrro4YfGIW1udHJMvAbzNY=;
 b=Gg6zxIa6eGeXZJ5jeI3xk/ohzr7R/9FakiB0Et0JQ7OLf045kqWgM5Z4jCn3z98YDq
 8mv1O2RP/m+mehED//4JTwExwiKGHC1puq7pWHOsd17aIMk08qIUrn5FuZR00W5sv4Xn
 Ijci7yEv4aurL2RO3SpR3nN63uIa0QtYzT5XfFD25v7eCcu44gSjbNtB7ZqZuI2+LNH3
 HX5+JWfhuTx4u/x4R81PVLuFYFTMHa3aHjpPn9SrHXUufn+hDCySZGPXc4Ge8SCuancR
 qQ8Mbo+LbXtqbbh1qRXKlIGkEoi6aF5vxZM4HqofExFcLJ/az6jy2O/YKzV0KhX9oX8P
 1c6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2EEUYjnGaUl9ucppac7Vlvrro4YfGIW1udHJMvAbzNY=;
 b=F0QGHpJXwhmsmJCUdV++hxoqzk036BuwMbn73oVoS5yBdxYSM366DGnpFIgxw2HWIW
 q6nL3wzY2P8otYyidnxQyL1thxLn+O5MskU/yscN8jy1KFR3yS5ulOYnWRpjd6X7qJUM
 5Ts6B7UJGFswhs9SeRbaBmOarLaw611lalN2uYkPLnWUY49m9MpyQCKSEtB0rXyOljIF
 R3+Vaz83m2hyfgdskIifjkYqXr3/xvk5hO7X+/FuxWsQ7VzLnHlZv6hqoTmxjhu0h/bu
 sgzzZEDvKMco53IslcijANT9r3gm15ReMJ4PGvr9+26KnLn40PJdXg8vMbSL3h2jJXTW
 i8qw==
X-Gm-Message-State: APjAAAXTBpYy0QSMKD6/vKHjhhl6oHYHkUGJ5qdO/EkJoWXDFkp24/d/
 psh89e7vw6507cBrEXd8idWLoOsO5XE=
X-Google-Smtp-Source: APXvYqweoCQrdRLyt6Lvlwgf0GH+d0SEoqwkDbqTeK4Vj3mPKooNv35TnANWukNaspcRrOetUJ6eDg==
X-Received: by 2002:a17:90a:c70c:: with SMTP id
 o12mr52841519pjt.62.1563822001690; 
 Mon, 22 Jul 2019 12:00:01 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 12:00:01 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 5/5] phy: exynos5-usbdrd: drop duplicate setting PIPE3 tune
 signal
Date: Tue, 23 Jul 2019 00:29:38 +0530
Message-Id: <20190722185938.9043-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722185938.9043-1-linux.amoon@gmail.com>
References: <20190722185938.9043-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_120003_050523_5AD9FF88 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop duplicate configuration setting of PIPE tune signal.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 4f16c4f82ae5..f6d2f359d88a 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -410,12 +410,6 @@ static void exynos5_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
 		PHYPARAM0_COMPDISTUNE(0x6));
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
 
-	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
-	/* Set Tx De-Emphasis level */
-	reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
-	reg |=	PHYPARAM1_PCS_TXDEEMPH;
-	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
-
 	/* UTMI Power Control */
 	writel(PHYUTMI_OTGDISABLE, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
