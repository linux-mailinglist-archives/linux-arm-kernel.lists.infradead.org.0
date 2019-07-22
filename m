Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D173370928
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5TXh7JcBGdQWiWzET9fMbAbgFk5oaYIVWBIqe7MThM=; b=Q/xKlCeWtI9x+i
	WCzXMRRdtMoL2ME/2pxmaXN0AG1LNW2w0cn/Yx4/sYdpn6Rugi1mwbmK6IaTDPpBTGrPUQOCdnhjE
	Q2KjwgAB3g4HsRvYOjvz5lAtNYcG4GnC+HR6cUxRWr6XvXdR5H6G4+EsW1n8H4rHNtfhRqkSp122P
	XBEOFP0TdFyu97gqtKE5pPZt9arajmmaTedOUG2uWjpRWhAXu60fRrHHNkQVHQQwUElHdVuJ+lEDJ
	f57Lj7rMFfl94oonmQOzcEiVactrjK4EnUSA+s1SrnWUm6OxeOYqN1/3qkcUVUd0LkOgrbXl+uyO6
	FZrlPRK8QxPIyyDXQSig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdYH-0007jV-M1; Mon, 22 Jul 2019 19:00:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdXJ-0006DZ-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:59:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so19480775pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+BPPPji4KmMPm/LztN/u6Pt6WF0WdMzxA5bRmk4V+jc=;
 b=K5kBznP9TrTX6mK2UwTBWA0b1ZHBf7PBwvgbGv7SGT6Nsob+xzS03qXm7sk3xh7GkJ
 0NKg2BQA9BWzMFULMSN7zIkCox5HpecJKFh3NqUuX/6m0dvv39wieOWOS32YFBobK2zy
 Agb4M74KgFJ3FjCkVbOa7kQVLmC0q9MjQxrMeKhki4T4g5u3y9epGkMBjNMzesVIGa8v
 yCxzI9qV7+5q7xgF9rLiSzpWeaEPJz/tP10MfgPkTlAQRDigFJG1HX/TCt57t/UL2Ox+
 +TNodYNdPctkqKX3JvAt7F7tHA7wOPpRBgQdJjtHGI3VsLiNXHRqkkRAtB3hu0DU9g1f
 RoxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+BPPPji4KmMPm/LztN/u6Pt6WF0WdMzxA5bRmk4V+jc=;
 b=oz8z2O6NTu2w+GslXuMAJJMss6DRqhMtAk//0HeRovMuqqm00vrn/lresv0PQT4eMZ
 Ofu7jgbosJ0OJEEyW3H+8+WCplWB5TtYeTpPfgfinEk2IKixAmItdfySOppOQ5/eFMbN
 kcM6yBH0uvjrWHBY1QUVKWolORMmRbbt9XlvEUzlXmp2ux701ZwIdjz9444PMCAOVwDl
 QAuM6dTdT1f9iGt3Ajfgt7oc5jlJsryH81bW8M7V7h817hOqlh7AvsPF7oBK2UB1CEoK
 s4vC8DUG/Nuvy5M1ZXbqQ18qvi/7ITlwItrr4RDXlcpAucOReegNyTHLH1GIVAR6X5lb
 CfZw==
X-Gm-Message-State: APjAAAVqYBHv9yiSh1LmpokhEPd+cWNF+yGxrAvG8wc61r21655Fjxz2
 vBqgWmaLgtaE8sUTkG423uA=
X-Google-Smtp-Source: APXvYqxmBWHEKsY7z47iIqt7mkTYxNQkFloTQSjYLhZvsRcNoJkjHyvFOCmLFzxEi7Lf3myeENUJ2A==
X-Received: by 2002:a17:902:ba96:: with SMTP id
 k22mr78590271pls.44.1563821989510; 
 Mon, 22 Jul 2019 11:59:49 -0700 (PDT)
Received: from localhost.localdomain ([103.51.73.174])
 by smtp.gmail.com with ESMTPSA id h1sm30777675pgv.93.2019.07.22.11.59.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:59:49 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC/RFT 1/5] phy: exynos5-usbdrd: read from correct offset of xhci
 linksystem
Date: Tue, 23 Jul 2019 00:29:34 +0530
Message-Id: <20190722185938.9043-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722185938.9043-1-linux.amoon@gmail.com>
References: <20190722185938.9043-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115949_994256_29F7791B 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Read from linksystem offset to update the xhci version.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 646259bee909..3c14bf7718c1 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -397,7 +397,8 @@ static int exynos5_usbdrd_phy_init(struct phy *phy)
 	 * Setting the Frame length Adj value[6:1] to default 0x20
 	 * See xHCI 1.0 spec, 5.2.4
 	 */
-	reg =	LINKSYSTEM_XHCI_VERSION_CONTROL |
+	reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
+	reg |=	LINKSYSTEM_XHCI_VERSION_CONTROL |
 		LINKSYSTEM_FLADJ(0x20);
 	writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
