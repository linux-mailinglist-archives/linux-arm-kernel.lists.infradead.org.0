Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F82DFC71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9rlWPoGYpafJlqzKvVQ5hE9uZxnI4uY/Qt+xN1Aa/WA=; b=fmi+eWPMx2HAK3
	/m+HGuY/3dvd8SfRIHFABCCFAwKAkh8UEEVrmyg4/6PveZFcnwNfN/BkHcDO16KeHAQjKW0uqkFRZ
	zwxxwVDDmpZQV5CG4eygz4fjzLWerw3xOZHLuaodMsdjDvjy1/wTQF5F3qT3YbUkJh+j8iqo6jdhI
	U63Clqr1/aKkaNCfvXQ72eC5UA2eDiSqeKIdUj64eWN7rKPyacwUg6cFp57Iv9v1l5iJ/cGEp4MCH
	vnab7aO+1ObHVe1b43wnBPAvXtZ9jDugPBhjdQk8NjXAbuz8taXV/o+fau2aZYPdlbaIwg0fHUZ+3
	ymuqcXcpOzOKrO2JDf8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlQI-0004X1-VT; Tue, 22 Oct 2019 04:05:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlQ6-0004Vo-La
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:05:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id f14so9097541pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+tqVQlmpYbKEQqz/LYnPk32KTCBBbtiav0ASd6VB5NE=;
 b=i/214hpf7wvYxD9v/fgfbdtiBtl5Bs+SnscMBpL/2lzvQWT7sXAZvuLbMTWNlK5xm0
 tvfYC2ImMIeKkKGVf11mSHmyETghwWhWwK163avKwH0SIm7Z30LdQvi3jpY8MWpWCnFc
 Lzc2D5fhtQT09QMN4LpmXerk3fI4vIlqfk8n+CYs9yyIupSC9Bd8GTY//VgaepwTX6P3
 0apgoSNMvvxt+X8NWO5Lzbq9XlnfyJB/sVycfDB3UKi0Y9qoVFOkPuN03ywgjBL60W0s
 aV/4MXYeC/jTd7kfPUmNxZImvE60RFM0jZnuEEyTokZQHUKlThRbrSLhh1PMVXanJyyL
 LxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+tqVQlmpYbKEQqz/LYnPk32KTCBBbtiav0ASd6VB5NE=;
 b=StLB4X9Kq+D8Ka9oEIsjQ2H9rigNySy9FpZjH1E/bOIi42MmFzFgM3via5b6cbByUH
 S0KpDa5SODUWYLg20qqk64n6IAkf8II0hY8QITkYrvHWMCZazRkmGI5sxFxmI2SMB/2A
 fjX4pPiOT4aoE3TJUKDcEL2e5VqJ3dv3tmLGJRqtPlBKFcsuwbyPoJ+a/pzXYv5tas12
 zEXw/ExosAMjVenYP+MMT3HSQFbEBcDMozEZ2wu6pumnHtTY2cmjWek66EIEJQuqBhvc
 prKYI8RE3sjPmEGIazJ0PUmqzD20YLWl9DyAyoKp2C2K4ejClDs9pFY55nb8XcDKhffi
 u6iA==
X-Gm-Message-State: APjAAAVifI66cmMIn2d5lR9YpcgFV1XTIDl9FpA7tVRMNN1V9OHy4a0v
 TvcNc3rRE8U+oNFwzcBu1tf2WKS5
X-Google-Smtp-Source: APXvYqxW6RK0vPwcTo1TK3+/lgsKJy8SU7DOqulv97WZbOLknsig5dtUm97efwIv0jkhAu3T4PYraA==
X-Received: by 2002:aa7:8249:: with SMTP id e9mr1754026pfn.46.1571717117207;
 Mon, 21 Oct 2019 21:05:17 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id n3sm18778738pff.102.2019.10.21.21.05.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 21:05:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6qdl-zii-rdu2: Drop GPIO_ACTIVE_LOW form
 reg_5p0v_user_usb
Date: Mon, 21 Oct 2019 21:04:58 -0700
Message-Id: <20191022040500.18548-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_210518_729026_81A175BB 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop GPIO_ACTIVE_LOW form reg_5p0v_user_usb since it is ignored by the
gpiolib and results in a warning.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 93be00a60c88..8d46f7b2722b 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -68,7 +68,7 @@
 		regulator-name = "5V_USER_USB";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
+		gpio = <&gpio3 22 0>;
 		startup-delay-us = <1000>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
