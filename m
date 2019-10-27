Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321DE6438
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:24:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pK/b5J9saVA4fiTENN5cI8dW65i7sDGagBclgoOAkxE=; b=sa10S5SeGvdhYr
	ZOy8bb9+rlpXTZtsPvYF/lBL1PWA7TqwEuRlWcCu+xfrmmJ8oSiQCoFoKekIvkZqQ1rILyGXj5Z2V
	unj+Mqjldw/H22FVwmuVg52Tv0snl2yG3EDY3rhKXOu3dTHQCULl3dA/1iLRYtjYHkBuRqv//lWZA
	M2eDk6VuX5HUpyrkv6Hum5WswJH3O/tAcKKQ9GX6asLMqT9QYoODJe0dwcEn2Swl6H2ORDo3E3Hf+
	JU/ZmIUEahodkZOWpSxiI5ZHqyyP8Tx81iIs8tmc2y3vbQicJu928ZQD3s6TXfdzGtBjEaw+Z4o/K
	vpR2nBbkNabxj9gHLuVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlLZ-00028E-Vj; Sun, 27 Oct 2019 16:24:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlKT-0001Dn-60; Sun, 27 Oct 2019 16:23:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id 11so6985869wmk.0;
 Sun, 27 Oct 2019 09:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=27lV1jSL1pOmY52iA2rX2+BpQ+8jMOYRMeA1UyL2hfM=;
 b=AoVinyap5keVi8HvLp0UH+/Ax8BHjP5n/rdFXmYx38j237nX+kj3HaXZQ1by5mX220
 tbhKnbprieqkKl5RGbhI08Homxfu6hHLXTSXHVGCQAfIyb5MFCeV0SDRXAwfghtEAi7M
 uysvJW9p3hDN4TyOCkRWcCp0QvFzNBSkRtqcFroX/xV9y36BE6q8NW7cLFvv5f4THy2j
 ajNqdk3d+JaAnDtXSF7gqtE/V/uSWkVPYL8d5N1eCj+diuwnUhNd76H0Hw6o5YKd+KLU
 lyjsq17tzYK6Nez7LyXI73gX9Rr/GcgMjNIY72tocZ8x9J5g8xNeVhNdd++HXAoltdD6
 XDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=27lV1jSL1pOmY52iA2rX2+BpQ+8jMOYRMeA1UyL2hfM=;
 b=YB3m+i9sUe3agt7O+/taFiEGhY3H4ouGX6SmDfE+N7Ebscqa8ayWHBDOhWYEMnNYCC
 1cAbfHOymLoEhqAhuejsBpXU96ut1cSJ8f5KABXN8VAWnKBB+ZDn2zfbXP2EjMx3XZ+t
 cSByZtu7Ev0rtJqtRJwDcvNqqYm1iAlDhO4UCRq0TyTDWQc+EEQYlo9kCTn1/lc9oqQ7
 9m4BSFgRvkTnSG93cGfV7Y5AK4odAlnkUhT2gwRzoQ4XQAIjphbOMqDloI0az5DMPDbD
 YnpNoxkXEGYtEuwSjxv0TxdFb8XwTz2C38SHiUUioIXamSw9JdLYdZ2LncuB9yJiZv/F
 i7XQ==
X-Gm-Message-State: APjAAAXjcdEsrUjDqgIiQxpkXC1J1/gQKoOA+WbO9/oMabyBCA/G9TPh
 OL1GdpvO4NL6S8gTmMUg5Dg=
X-Google-Smtp-Source: APXvYqwi3N77ux5v3XITqsvD7kw7Lzj/nkEw4EMddSAn2mY2cNYvaiD7bdCqGCK8e2C00e1OyUbxYA==
X-Received: by 2002:a1c:1fca:: with SMTP id f193mr5079801wmf.173.1572193423782; 
 Sun, 27 Oct 2019 09:23:43 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id 1sm8243299wrr.16.2019.10.27.09.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:23:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 3/5] clk: meson: meson8b: use of_clk_hw_register to
 register the clocks
Date: Sun, 27 Oct 2019 17:23:26 +0100
Message-Id: <20191027162328.1177402-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_092345_264253_7158DF55 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch from clk_hw_register to of_clk_hw_register so we can use
clk_parent_data.fw_name. This will be used to get the "xtal", "ddr_pll"
and possibly others from the .dtb.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 70ac6755607e..306b809deb49 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3696,7 +3696,7 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 		if (!clk_hw_onecell_data->hws[i])
 			continue;
 
-		ret = clk_hw_register(NULL, clk_hw_onecell_data->hws[i]);
+		ret = of_clk_hw_register(np, clk_hw_onecell_data->hws[i]);
 		if (ret)
 			return;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
