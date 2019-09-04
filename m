Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEA1A7B57
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwHmiSvok3ajhnH2sOdoUY8fiJDcN7rce0PGaFefn1o=; b=NH/nbJIcmhcVbi
	iDCwMuyPDNwPJDjjvvFILze2i/U1oWCPqNqGKpoaFZwOLHkNKb6Veso5VtbMHdKAUt9zZmB9haaoV
	OJUW/kv/Hb+g8wKwyYr9Q7t/w+stkqMLuSDnHGdDddyaLK+belJllMIHIcr8ZED7TE9SE8yharGYx
	GsydaZ5Tt7aAkcVkSCrXcM+KGXRJuUAZntgw+OJIhgFoFTvVT8wE+AzQPqm9meUujmOWPHMRKOlZF
	R9yRKKghDh2yWd0NwMMx01h4aYOYtbChQJe9npuN0be8s+ydVJ68LoLf/Nr1iVeTYSjKWvYKRYn22
	WfKSMNZ1sXn2QEaRQiuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OYf-0007fK-69; Wed, 04 Sep 2019 06:14:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OXp-00076p-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:13:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so10648501pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/J2boyPn+qcY/K0vnmvhFTTJFIHHHtzjypsfGFGhgdk=;
 b=T+AzYIEUXfUowK7oaDioOyQfgljXCgF5OaLeVOZDs5si9YNS62iHvZYF7QPPWxoMuD
 6HZoj9lzZMst3evVF0QG+nXAFRWyTTfNe+b4E+h9aBaBl8CaInKHf+pZGjQktMzzlEyS
 HPNpOSDNvBsS1d0T59kOyxX0yOuiQVzLIo1D/hymPSUPqgY+ZFRe3b3dSJPdOMgWbONz
 XvbCScG2k/yOAyjE4AfT144iEbaku+wFeuwj856zrB+uPkd+g7LsFBwlQVtZxyT5dwXx
 hb3V4Ke7j/tgHPb2wYdr0vtUMJXXvKhK8Lz9SZ5Ad7ed0rq0j23lIoyWDfziHTJgqVtW
 vamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/J2boyPn+qcY/K0vnmvhFTTJFIHHHtzjypsfGFGhgdk=;
 b=ZMqN27bBsVv4q3Eom+iPWcoFpK5wc2ZoY89woQuMWvJqcXCIHNkgi5aDZH64Hy+Du+
 xM9NBrW/kQbTt9sbh+KLakBtT3uNr8mho0hk4vpALjsilRydDsHmmTkrnIOoApli6r70
 lqSljEN46BrH6dlIN1RNyQfiiJQ99+M+ru8+7P/4xnlx5OmksVLSsAuiaxdHFfj23ngj
 4GCx+vZu5JFNcc2aU/BCJVKvGwtRJ5AILDKFxN1l6jIi/Kf56bnZAwBLHBYdViYInLTD
 7LikqA9D4/hhEm13VeEuZI0/CAxkilRu8i7diw8+VUheMd6XbE5M7f5l31Tdz1MPzhxz
 TF4w==
X-Gm-Message-State: APjAAAVvmQhBYamXBS0VF71G35YbJ1azmYOIfknyCS6EWKjZwXDLuugs
 Q0anEJZ2DkCBS+2rqzSH/CU=
X-Google-Smtp-Source: APXvYqx0ThSaW+fHUBqyw3dqUD0Oa30Gmx83hxepmA1ZcStILNrjdla4WSXq4PxIDnAoPGKQ4jNvJQ==
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr32988229pgt.73.1567577609134; 
 Tue, 03 Sep 2019 23:13:29 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id i9sm42443093pgo.46.2019.09.03.23.13.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 23:13:28 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 bgolaszewski@baylibre.com
Subject: [PATCH 4/4] gpio: Update documentation with ast2600 controllers
Date: Wed,  4 Sep 2019 16:12:45 +1000
Message-Id: <20190904061245.30770-4-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231330_009833_769C4AB5 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 Documentation/devicetree/bindings/gpio/gpio-aspeed.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt b/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
index 7e9b586770b0..cd388797e07c 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
@@ -2,7 +2,8 @@ Aspeed GPIO controller Device Tree Bindings
 -------------------------------------------
 
 Required properties:
-- compatible		: Either "aspeed,ast2400-gpio" or "aspeed,ast2500-gpio"
+- compatible		: Either "aspeed,ast2400-gpio", "aspeed,ast2500-gpio",
+					  "aspeed,ast2600-gpio", or "aspeed,ast2600-1-8v-gpio"
 
 - #gpio-cells 		: Should be two
 			  - First cell is the GPIO line number
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
