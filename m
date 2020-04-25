Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1FA1B8676
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 14:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CIa3/6RmoVCLDbkl+LHheyYvFDwT9TLo/vwwP+HVrvo=; b=R8e
	1aMwZ7xuTOBkK52CYu1BZSM0uYWDJaX3KTIuOxcSnjcS4JbVm+VuZdg4gDawUNsVFz8AKRa9VIqUO
	Ir3qLpxAUlTLLp2vLry98RPMigHU9Udf+9di2s7lQVeQ3WVXcP/XJjekEM471SgzaoA6/CWw894Um
	QjPJdYiRAq570pTWd5bSzcfLubMqSC+hsLq3NfN9EmMldH6eaJ9o4X3DKXtq8t+RpDYpEvcer+pr1
	3iNdDJeaTxN934gu/UsreYzmQZRWmnfzL88BPlWPFt/zVLzze7Zb/795yhi4kWzIFVYcV4ohdMgII
	6YBmVl5lMwOVnzpvVCyJPHS9SQpyWpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSJqm-0006CK-MI; Sat, 25 Apr 2020 12:24:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSJqd-0006Bl-U9; Sat, 25 Apr 2020 12:23:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so13969720wrt.5;
 Sat, 25 Apr 2020 05:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=c08OzdbQ1jE2QKx73owHlaSBf5XrQfOgZDyVrQRe5NE=;
 b=Uh/YxgYrTgZm8cH7x+rLL64FIq82XOzzZDijkhS9sHgRdyfLMD/FImyOANWUtI0X3Z
 MGtQg53S8vd8vXVy0dZQDwHprtF0QDAjizqUCMyFFlRqAaAZiYkEchZr7uDlaryCrDrt
 7Otk2t/c6Nr85RCeC2V163G1cXTCBflRW7hOomfmDjQdH1VLPppXS3gHbZdKarWReiKs
 srkiAdwQ7LFjNUO21rK/JS0vR35lr2NV5jEFjWfAH/4igFTtSD0jwnvScl9nJ9LSxA7U
 yxhFKMjLoD5qWB3POqMKhwqWvDJe36uIdpFEnfOA7z+P7Klhz90Q3fEn0oRq8J9TuP7O
 1U9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=c08OzdbQ1jE2QKx73owHlaSBf5XrQfOgZDyVrQRe5NE=;
 b=R03RnxQMkBjCegTYVZZiQlenzqM/kOpLL42lMHLb9B43fBcViS+EfuT4V7SrDl64M3
 6YOgDpZ3wi/2Yl2sS+xZ/q+SBt5SP0GgiyM91ItJ66JWwBO6NcXnuTQM0wG6Rye0qOui
 SjpAKfpCvSQREU0HM8Tt1oGnNoZaSaqMeGzecLLVcuRdSuGSFKfVweEz2dRaPRh4tv+j
 3EdiYOCgrP5rfx7wfzSCAi+nrEZW6oBZ1vOQ/hVv3pVYsKxSo28qFILugkgmHQd+Xqm9
 X24wpAuIuID/IpuvdwcYBUSMilojJL7+LR0yAZHddX5rKCY7gliulogiaPm3HKCJlPo7
 ztug==
X-Gm-Message-State: AGi0Pua0SndCUVQ2IG+j8w3USgR/XnGKzsCWnn7I9ybJwtDCNO+MOgRi
 J+Rnu89Sqja+cNPw9G2HUw0=
X-Google-Smtp-Source: APiQypKqV1QTBOAvxcY1sOfn6lI7/CzLvVHNS8erVBArRldAOpnsmJD7HkBmATIOd07gEBWAxue0aw==
X-Received: by 2002:adf:e3c2:: with SMTP id k2mr16436150wrm.287.1587817432474; 
 Sat, 25 Apr 2020 05:23:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o6sm3248461wrw.63.2020.04.25.05.23.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 05:23:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: remove extra assigned-clocks
 property from &gmac2phy node in rk3328-evb.dts
Date: Sat, 25 Apr 2020 14:23:44 +0200
Message-Id: <20200425122345.12902-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_052355_993596_268F6458 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 2 'assigned-clocks' properties in the '&gmac2phy'
node in 'rk3328-evb.dts', so remove one of them.

Info from clk-rk3328.c:

MUXGRF(SCLK_MAC2PHY, "clk_mac2phy", mux_mac2phy_src_p,
CLK_SET_RATE_NO_REPARENT,
RK3328_GRF_MAC_CON2, 10, 1, MFLAGS),

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 49c4b96da..ab69b493d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -82,7 +82,6 @@
 &gmac2phy {
 	phy-supply = <&vcc_phy>;
 	clock_in_out = "output";
-	assigned-clocks = <&cru SCLK_MAC2PHY_SRC>;
 	assigned-clock-rate = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
