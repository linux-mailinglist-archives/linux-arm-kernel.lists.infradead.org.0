Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5A31F774D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qylh0atk6AJYPXmjPMQ44jtRYKp3noZnr6JwZ7saLgQ=; b=iVkR5Qt5yhlhKN
	3j/aiNtClWIP6lAWWbi5dGGAf0XfliON9YJcyG1IBHTWLipxGN0r+F48kPuVi0/2c519y6de/+Hrn
	zNosFEAk/vpyQmu1neyL6uaQ7AdDyuuwvbmWoen89ORoiz1cj5n9MH355QvqolJFYb7but837dXY3
	K6k7slWLl0K51BLDqR/vH1BDVKJfv2ew61TzFsAncczx/Jx9BxxFmq46kwkSKNx2JXnEX1r34Uq0Q
	pfFyGluSWDNLdQSnru8LwWbDmFZ8BqCcQdXzXyA685tqWHEvKxxxSN2WBhS9C+VXyGCjFDrs76Oko
	4Y44YZn+8uX2CIE80ymQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhr1-0005yc-Ai; Fri, 12 Jun 2020 11:28:11 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhqu-0005xl-1y
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:28:05 +0000
Received: by mail-ej1-x643.google.com with SMTP id l12so9708326ejn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 04:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=x+EzCa13oBkDmmedkJhpOdOSq/9OAyMQhRjI6L6Gk/o=;
 b=S9sT7t5ZIpfYCDAbMcB8jwtLa9MGKk4nqPnImEddN0kepR2Z2qESMoSN67etrUmroP
 5QE5GwFi7YDu7pm2Eqp1OZ7LmU+DXSlFqm3Js6tHBg6u2TDbxzqtQu940+Cgd+XtqYhl
 //2bmHmnG6qgnSQSqHZ/epqvSiZ1jb8gbfaJX0fko6dCVNmJs4BFRpdReRJ9d76Ui4vY
 qgwSALEkjxQjQiiTAhpqu1t/sst2pzjGpuSjiz+7iL5YL6q9Yf4rqQBCxWyw1U2TplfR
 ou4iHSigiIisVr6BInNL7yCRKp2Uz+nkp1juM7ujUqL0KImK8i0aA00J+oiEpe6FJLet
 V0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=x+EzCa13oBkDmmedkJhpOdOSq/9OAyMQhRjI6L6Gk/o=;
 b=hggxPegovszsIaGUh1F0BCrdbS6M18XknBOl4Ds+e7GTUh4/VU48wTgM4ZmRqz4SNi
 85pKdoeQqd4IBcJaN4IwIp9Z/l79MGzOmY7dbOgNSLZWllUcSeXBZxy08Eq/xjCTw2M5
 PMhwIr74rQovgp33mPwKaJ8ZkiZ8QQVgjfpseZh+c2n+ejaCJA83dOEOBOdS1iOGuSHA
 cW+gfRExFoYr2OU3r2sdhyI6nlhPemOlU+h66yMcu7zADtNu3NSy+ynYTEgTTsrlbeXR
 WKM8TkwN2Iie59eM5kjZe4m31EOn79PX9q/uZSdcjTHQ5iW8NIZZ1tpq+C7c/s9+tBtx
 UaWg==
X-Gm-Message-State: AOAM531qH2mU3DmXgAeq+SZCgljhA42EYCt09/2lavRYL2gkMw4LIen3
 F6W55sm60pLh3NhGfbVr7+R1dA==
X-Google-Smtp-Source: ABdhPJz41qD396e8oQ3tm1hW5XAIn/LJUid1p+0iAEYyEf4Y0r8td0r8b0A9+lQuL6oaAsmx37Tuzg==
X-Received: by 2002:a17:906:3548:: with SMTP id
 s8mr12279231eja.202.1591961281224; 
 Fri, 12 Jun 2020 04:28:01 -0700 (PDT)
Received: from x1 (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id y62sm2957534edy.61.2020.06.12.04.28.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 04:28:00 -0700 (PDT)
Date: Fri, 12 Jun 2020 13:27:58 +0200
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: single: fix function name in documentation
Message-ID: <20200612112758.GA3407886@x1>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_042804_277538_8CC376DE 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
Cc: Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct the function name in the documentation for
"pcs_parse_one_pinctrl_entry()".

"smux_parse_one_pinctrl_entry()" appears to be an artifact from the
development of a prior patch series ("simple pinmux driver") which
transformed into pinctrl-single.

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 drivers/pinctrl/pinctrl-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index a9d511982780..02f677eb1d53 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -958,7 +958,7 @@ static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
 }
 
 /**
- * smux_parse_one_pinctrl_entry() - parses a device tree mux entry
+ * pcs_parse_one_pinctrl_entry() - parses a device tree mux entry
  * @pctldev: pin controller device
  * @pcs: pinctrl driver instance
  * @np: device node of the mux entry
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
