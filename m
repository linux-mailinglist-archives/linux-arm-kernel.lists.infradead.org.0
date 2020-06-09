Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ECE1F37E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OL2h0rUx1WAnTuDUoioNraxYuygd6gMbv7OAbdSd49Y=; b=f8bW90nigye1ZYnGJsL2slDOUa
	thwLKOX+hyoPuydlYG2zwwO2ErnquO26s8W5GmsSxGZcYTnVFt8NQPQShYUkgSk+/UTKZDbmdAvXN
	mTcLeqIuuByzwQn0M9mIJyWCrGRAPLGxqHLzAGr8MegmexnJwf3tCiADLmF7DB/UbDhkLVsk+yWWI
	B3zZ0KB1ZBCE93hx41PThfilV/rvZTYQMfHVZiLfF4oHQF9kHseOO+ySOPfFI83/yQWleyUE3culs
	lpX+8b2HMkq+v2DGfEJzJ4tcQYvah7vC4FQh5yekxxUlnlb2ZCnpqvYq61G9WNA66dEB2lfS2Ua+m
	CyQZS9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibMy-0007KU-Pp; Tue, 09 Jun 2020 10:20:36 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKm-0005bt-5z; Tue, 09 Jun 2020 10:18:24 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d6so1207527pjs.3;
 Tue, 09 Jun 2020 03:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=acQt2SkaRoRSIkj+Wwww9zFIV+WDcbOdsThKWoJ9LTo=;
 b=QyiKk/+W/t5VVEbt8B7jTiKYYdAF/9eeWmvLklcjqc87SPm5gzlP/2PXvOw3UIVCE6
 9d/B5dtljk+oixS4JnwGwBZMH07RKPMFA7ll+fBRa3HWN5msS77cj1+sbwbmd6NGj8Av
 oZk71dLnwOteVznh5mUhygt9gPLfC2DX0KjNIcnutDhogavaqutXj78VYo2CZraj4zp5
 nJVsufdjjhuRE0rJ4+9e8ZM1WDgAqJ2TmQOkYyjSPB+/xzpU/glLA/mz0y0M8X/ELkMr
 qAwd1iMn6fLmk4h0tmXVNGiF59+v/jE9/gSbOTcYxTEKUORuXYwkTb14o7QwvFz+xpaK
 RJzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=acQt2SkaRoRSIkj+Wwww9zFIV+WDcbOdsThKWoJ9LTo=;
 b=IO7vU2eG/0mO5zXDRlivcOWNaLOexIyxid+On2olp0EPEO1TB8BANJooGY9wvFWmRg
 nbxDot9aUMxlLo9b7DBQZQvfqrkK9MePGwnjRBAYEH5m2ad7NGmIBBXmGz5j9YLMLfR5
 iOzIPJSV+cvZAogM/YhVOGFOz+fWwHqd5qQbM35K6pErogSd9ZwoW0WnKt+lIfFF6ceU
 g8ZEWaiMycQIsx9FEObuAIdlJQJAM8iSWEooYn7EnPT3ta8OLGDXKVp4Khg4tOfsLEUv
 wOS1yVrHy6er5Q3BYGbqPz7hGoX5lkd6u+k6Y1KC9lekXIvfSAxRURu4gY68PMXSnthE
 FPbw==
X-Gm-Message-State: AOAM531s7tQKYWUOtvGVHkz7RhjxI49VtyOZHx4BKr2cCW8d/3+2+NOo
 opDR6TcfH8SYzz8JxCEF43M=
X-Google-Smtp-Source: ABdhPJx9voH2sXqtHqYO+DI6O8uAoudvXBbpaYomU9v4iR44LTpKLBTSlNBXN6lLvbAQqha+Dp24aw==
X-Received: by 2002:a17:90a:f3d6:: with SMTP id
 ha22mr3868718pjb.193.1591697899064; 
 Tue, 09 Jun 2020 03:18:19 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.18.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:18:18 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v4 09/10] arm64: dts: actions: Add MMC controller support for
 S700
Date: Tue,  9 Jun 2020 15:47:09 +0530
Message-Id: <1591697830-16311-10-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031820_476850_AB741336 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commits adds support for MMC controllers present on Actions S700 SoC,
there are 3 MMC controllers in this SoC which can be used for accessing
SD/EMMC/SDIO cards.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v3:
        * No change.
Changes since v2:
        * No change.
Changes since v1:
        * Added SoC specific compatibe string.
Changes since RFC:
        * No change
---
 arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2c78caebf515..9ed88aafc2da 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -259,5 +259,38 @@
 			clocks = <&cmu CLK_DMAC>;
 			power-domains = <&sps S700_PD_DMA>;
 		};
+
+		mmc0: mmc@e0210000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0210000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc1: mmc@e0214000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0214000 0x0 0x4000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD1>;
+			resets = <&cmu RESET_SD1>;
+			dmas = <&dma 3>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc2: mmc@e0218000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0218000 0x0 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD2>;
+			resets = <&cmu RESET_SD2>;
+			dmas = <&dma 4>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
