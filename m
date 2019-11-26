Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF4D109DFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=70sn/203cM6LoN53LKZgm99fBDNp8JnJGn0iGqo/k2E=; b=iVio38ar8e5wKZ
	EVxr2C+eFiOW5+EY84vK6r1NyETbHBiXIp8nbS+j7X8qbjArsrRK9PtnWPatLtNyYxOk4Jdzpp4Qc
	pGg7JSrL3aSHj5hrFQKH/p3euhmVLw0Sudl1tKhN4+GTIOjg3RMDklafywiAvzcc97tvb/erZR90k
	cYkvTEosy1vvpXpJGD3dbLDC+64N0TRcmZuQhFfMwxpEyJdJg9x20rLsJMn9jZOjHdAofPKz0/uAT
	Z4IzhVaQ2z9Jdo5bSfaD4TmLZxLX7Gk3LtHNR30nFh0ti3Hf9VXJ+lDVS8jFcLu9uLVzjMV1mz2/S
	dXQS3J0cz4Im7ZXKQBGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZa0K-000201-JU; Tue, 26 Nov 2019 12:31:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZa02-0001Xe-UJ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:31:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id m6so12631090ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oqu4jm69c4KeY6OhFeOlzo5Pu7AsCvpOEozLippWZOc=;
 b=yXbbXQLYkknV0+Da1GkQAHHSs6ReCkAH8I77vUwsKhjLYbzusWYdKCnQVZJfkNak/D
 jynIzWWNI3+rX7hBW42Zvip1pgNLzQGQlGWE4YEgXTPh1f042dHveQPJPKQgQErOeFuT
 0GhzW/9712qXkBx/P0uc+Y+nVx0onOB6/idaR0vzyWKP+/hzYd3dT++Tccd4eSHQpElw
 C6ta0d0kTOkUPfSadwGE5Hpdi7RfHIXujKBUC459dI0mvmjo4mRPYRLl2uE8c6VIupki
 64Dkj5jLrBbhYi6voyH3+mQghVr3f+NfXUPaC958bN2UMAjOUL2lIazgpDwF0RIOrRCR
 NqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oqu4jm69c4KeY6OhFeOlzo5Pu7AsCvpOEozLippWZOc=;
 b=TMmRFzD9sDAaq1Y9v9D9RciE9wodoqpE+uU3NAadxSyDel75H69/WJUcprLvltnPOs
 OPMdAkerY388/ytNXtPuDMGLsi7Z/YrZA6t9ObvVKIR3XP+lpr8hRX2cM3llHuw3CbvG
 C71I5ireV6ja+kUn4TC3q0DGxA8keyJyh8BYt3oEI61fygoqrY6fyVwu15dbG4Da7sxB
 ZindIRAD5syzSHdAFugIHAK7TDZiTdbaVRB0mE+d4o43LjVfbYO2bCVQO9FPswyaBT5m
 LGtQ6o53TEBt/VmP3lwoKvVkF23L7fr3DW3cFXsLFHAKgW8SMNdN0RtQGI7Q1GhkyvfL
 OPoA==
X-Gm-Message-State: APjAAAVYUY94S1fKpD2NxYsQVrwo0RHCNVjuepBXKZb/bws4ocpbTEgM
 jrN4wjg67msXa3EHccIHqMhS2YGpSjE=
X-Google-Smtp-Source: APXvYqyDe6ESuo29p9pG1DtiqwgCOd6RgP5nTMTaXbb4bFKfjmfQNYIn6KEoUYX4yi7LwyUTutIX9w==
X-Received: by 2002:a05:651c:1066:: with SMTP id
 y6mr27182444ljm.96.1574771480984; 
 Tue, 26 Nov 2019 04:31:20 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d24sm12838lja.82.2019.11.26.04.31.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 04:31:19 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ux500: Drop pulls on I2C buses
Date: Tue, 26 Nov 2019 13:31:16 +0100
Message-Id: <20191126123116.56244-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_043123_000407_47FB5C10 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C block in the Ux500 uses internal pull-ups on the
SoC, in fact it has to: in HS mode, the I2C block will need
to autonomously take control over the pull-up line to do
its job. This can be clearly seen from the SoC manual which
states that the silicon has a line named "en_cspu_hs" which
enables current source pull-up for high speed mode. Another
hint is that the vendor code tree never enabled the pull
up on these lines, despite being deployed on boards that
lack external pull-up resistors.

Tested on the Ux500 reference designs without any problems.

Cc: Stephan Gerhold <stephan@gerhold.net>
Reported-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
index e85a08ad2ea7..7bf7a2d34cbc 100644
--- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
@@ -130,7 +130,7 @@
 			};
 			default_cfg1 {
 				pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
-				ste,config = <&in_pu>;
+				ste,config = <&in_nopull>;
 			};
 		};
 
@@ -150,7 +150,7 @@
 			};
 			default_cfg1 {
 				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
-				ste,config = <&in_pu>;
+				ste,config = <&in_nopull>;
 			};
 		};
 
@@ -170,7 +170,7 @@
 			};
 			default_cfg1 {
 				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
-				ste,config = <&in_pu>;
+				ste,config = <&in_nopull>;
 			};
 		};
 
@@ -190,7 +190,7 @@
 			};
 			default_cfg1 {
 				pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
-				ste,config = <&in_pu>;
+				ste,config = <&in_nopull>;
 			};
 		};
 
@@ -214,7 +214,7 @@
 			};
 			default_cfg1 {
 				pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
-				ste,config = <&in_pu>;
+				ste,config = <&in_nopull>;
 			};
 		};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
