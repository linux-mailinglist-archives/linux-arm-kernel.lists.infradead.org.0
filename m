Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F6320049C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzhjNF5bDWmXqea3Y/c7tHgP+mcZl8+4DZzBkHF/O9I=; b=RJlhY5k3a0z79u
	mcyHQCUoADVXWcKYM3FhjARS+nT+KEjAGeS7MwT43mvDdqrZRo15Poim1Mkx0OP2u5YX0/zcg4F1g
	c35gfBgZ0h10DMHWsM16tT8DNZolJw2+9V2sck7qmyjJOJCkM/RWA3KFXCtbNJ7Vaub6NaYq31YYf
	vS0+IY6RJPVKRx9aRxa7eFm6MD+/JCUtx9b0z4H65KcS+99w6g9R88tmkYRSyMwNZhkVrbkbitWjX
	bC7LzP4rd3aPeOlbQriZy9/QlA0M1u5UdDV/upn7+dWqJvBhHMWcufqHyxMM89aGrvR7gf4WgeJz9
	R9IUdWAqresCIgI6NhWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCza-0003tN-OQ; Fri, 19 Jun 2020 09:07:22 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCz5-0003id-CZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:06:52 +0000
Received: by mail-ej1-x642.google.com with SMTP id dr13so9405078ejc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5mEvzhD8ZDNfnKNW5KPSqhD16ebDefQ348OLXK7WNy4=;
 b=X1XJo4xQqza5Gpmu5TS6+sFT/+90kfsxQwDVnSGPwQaL6hbFdH21IfK5LnIvWKmlTj
 gaFsYadBj8FbAs0pNrTKRZlA2+66YP2SeubU9X26yVbBRXWPqGIEO4OICu2sRQ+9lY5e
 EmZukeqFRzEyTIrBogjX7YxfkkdIGPAdOsFtIZG/LitU3ZAAJzNsjJN0pk79wYWA/Pc1
 zGxL6jpw6nuzBg6Xo7s8ntORdfcO4qJ71Z2wnBSOYm4n3qiTtJbILegg5sR2/ArWTZpt
 bBCGfw+hcBzTiosEQbvpF8Jo//TjbtthL0cHnwhvniO8Rva4MAeOcucbi5FK/wEdjmQN
 sWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5mEvzhD8ZDNfnKNW5KPSqhD16ebDefQ348OLXK7WNy4=;
 b=gGJYgPtAmL2ToODF3HitYkoarF9PEDAwbcGA7nKQemDOaA9sv2h9r2ahx1YN1jzwdT
 TBmsv1rY1FQZobNyNYTjLDpHKm1I3t+zPC+ch6Zv4+GuUE4yHtfcyU0d68q+bmSIryoU
 wV+0h23oYJjzoiv3VoCplJ9B+AdkO2tPsYEJGdLuDgPHbDDf5xjAmYxp6b+Uo+rzZnAt
 5PZjZSzLyE43WyoPD0wBEM7YnugYYQX5mhipv+qS+TRmmgVDgDHkHgmErk+50LV4O4RC
 4D/sOBvhORdVlU/n/RypywuR/wt4sbCckS4dFr4x9lTVh0iAv0K7IXdciWJuwKls+nLI
 M1xQ==
X-Gm-Message-State: AOAM530SAI25oaTZ+LYrGt4un3Hurqx+XCGrFUEbH/eqtyHwS0cNu7IP
 4QlNlh1g3cCy6+lEhfih4jIL+w==
X-Google-Smtp-Source: ABdhPJzO4kbHdFvwlDaJ4wJ4m/s3iIdkdw6eY8mxMyd30QFl7MlUDUx58T6KaBdKzzwhRHx6KyznLA==
X-Received: by 2002:a17:907:35c2:: with SMTP id
 ap2mr2547627ejc.530.1592557609833; 
 Fri, 19 Jun 2020 02:06:49 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:16b8:5c68:7901:5c06:6064:338b:4004])
 by smtp.gmail.com with ESMTPSA id dm1sm4653650ejc.99.2020.06.19.02.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:06:48 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH v2 1/3] ARM: dts: change AM33XX_PADCONF macro separate conf
 and mux
Date: Fri, 19 Jun 2020 11:06:06 +0200
Message-Id: <20200619090608.94948-2-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619090608.94948-1-drew@beagleboard.org>
References: <20200619090608.94948-1-drew@beagleboard.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020651_422944_0FF52E74 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AM33XX_PADCONF macro is modified to keep pin conf and pin mux separate.

This requires #pinctrl-cells = 2 in am33xx-l4.dtsi

pinctrl-single.c but also be changed to support "pinctrl-single,pins"
with 3 arguments (offset, conf, mux)

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
v2 change:
- remove outer parentheses from AM33XX_PADCONF macro as it causes a
  compile error in dtc.  I had added it per suggestion from checkpatch
  about having parentheses around complex values.

 include/dt-bindings/pinctrl/omap.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/pinctrl/omap.h b/include/dt-bindings/pinctrl/omap.h
index 625718042413..2d2a8c737822 100644
--- a/include/dt-bindings/pinctrl/omap.h
+++ b/include/dt-bindings/pinctrl/omap.h
@@ -65,7 +65,7 @@
 #define DM814X_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
 #define DM816X_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
 #define AM33XX_IOPAD(pa, val)		OMAP_IOPAD_OFFSET((pa), 0x0800) (val)
-#define AM33XX_PADCONF(pa, dir, mux)	OMAP_IOPAD_OFFSET((pa), 0x0800) ((dir) | (mux))
+#define AM33XX_PADCONF(pa, conf, mux)	OMAP_IOPAD_OFFSET((pa), 0x0800) (conf) (mux)
 
 /*
  * Macros to allow using the offset from the padconf physical address
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
