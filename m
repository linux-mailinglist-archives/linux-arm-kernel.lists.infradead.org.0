Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7012C249
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 12:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FLpDjAG01S/uDQwvxdgtD8YguvvIuaiD+RlLihBJcoE=; b=PEH
	3deXEwSRa6pJ2getGC9/D8FRWW7qnYxcR+TELr6u3z1UTJERacaVzP/dkGvGMyjYsYdjmiYK1Enpr
	q4YXuRCaiYpOe1Bmu5BHTxrIEkarTWyR3Ab6NCTu5uOSAVQjwZQbs/oea4P2Ul153lXAua1lYnnFf
	dS/bjwsfwBPRT66V3u4L8BQQKJ3ivrCmSzSSJ1cKj8L03c1hasdrkic7oP9u+HFCd8ZGfme2ezORv
	c9Y3/Pl3Yx4TnJc7VNwgnL/ms6yHfFN5lE8iEwzRmCEh9jT3HWXRG1hLw1Ef0A8ZsvtlbqJBjn+55
	L/sajrBvbPLKj8WSjBt0TaspI5j+rSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilWZl-0003rR-M6; Sun, 29 Dec 2019 11:17:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilWZP-0003hc-AA
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 11:17:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id k25so16720625pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 03:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9kYL0AbI0K/3Y35gdAZ0mqdn7JZ3azuVmXkrAEbJZuQ=;
 b=JQ29jlrFR8SmXfg0BMdcNCVX/kFNDiG4O7lwF5Hpi9xG51ONSXfv6ZhILyXCGQR+Y8
 ft9/y2PpOKfbHaeFDCr2mIm6KIOJqoPnXtqSBe7xhTclymKj8lz1AgKEAxmou9HFt51Q
 R2L/FH5jjlcRrtjRTqIvMRbdRhfQwSBB3Mu3MOn/VRW+ySpog/PHlA9dY8ZC9+Ma1HKT
 EiaLAy40oeAdF9Y7j/d5yqESi7wK/TxtZ0NYloopLqJpj0eQAuLPOBQJWyqRZSFps1UG
 BXKSi2o/+KFGXSjVzj2R3zyTO4W4esoTeslIVVrWeYu3J45RgFXbLW8zwJsMBZX8m+3N
 pPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9kYL0AbI0K/3Y35gdAZ0mqdn7JZ3azuVmXkrAEbJZuQ=;
 b=blxBBkuWIwHa8kGIlz+LC+BOhn8/JoaMLTmaDGrZwFr6+RQ8gha8/TsLnAFxseLT68
 znverGS9uYin78DmgwdPp74Vo6KDY/7NXsg4SqYgn0PfYHUtY0PwdIdeTP8QqxMJ4Z2e
 yDfNXj1twAFHlRbleoFnefmGPxQAgm/JzMK0I0rcDhDs3A0K2+FpBTVYFmO80Dm/bkpy
 CpsNDSy42YhKdQgAqfusTRYrqNjS8eoTjSdhsw35y2gHTdQhwqEq+490VO5Kbyh9ri/4
 tc+1BHHrz/aSg6q4Yhw4G1QHTAcvrcJ/BIyHgDTtkkufBHqYirVUwtN6SI2TFh9EQ/ww
 0oCQ==
X-Gm-Message-State: APjAAAU+y0Wa6EYL1L6UdRUvngSDBrqpxh9ciKn3tgVKpD/lhOBthrNM
 DEXlkPSzvOO52macIQAfOA0=
X-Google-Smtp-Source: APXvYqzmFJSzaHjRWVCpHp2zsBHqqe7XHajN63Yudc2qAPEpuZfxjnD0DoLGNIQpwwh8FSkBtsOyew==
X-Received: by 2002:a63:551a:: with SMTP id j26mr65069179pgb.370.1577618231815; 
 Sun, 29 Dec 2019 03:17:11 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d1sm20867030pjx.6.2019.12.29.03.17.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 03:17:10 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: linux@armlinux.org.uk, mripard@kernel.org, wens@csie.org,
 catalin.marinas@arm.com, will@kernel.org, clabbe.montjoie@gmail.com,
 tiny.windzz@gmail.com, plaes@plaes.org, shawnguo@kernel.org,
 olof@lixom.net, Anson.Huang@nxp.com, dinguyen@kernel.org,
 leonard.crestez@nxp.com, marcin.juszkiewicz@linaro.org,
 aisheng.dong@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, anarsoul@gmail.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 p.zabel@pengutronix.de
Subject: [PATCH 1/2] arm64: defconfig: Enable CONFIG_SUN8I_THERMAL
Date: Sun, 29 Dec 2019 11:17:06 +0000
Message-Id: <20191229111707.16574-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_031715_380121_919C437A 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many sunxi based board needs CONFIG_SUN8I_THERMAL for thermal support.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2aea3e..c3c1cc900d4d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -438,6 +438,7 @@ CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_THERMAL_EMULATION=y
 CONFIG_QORIQ_THERMAL=m
+CONFIG_SUN8I_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
