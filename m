Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2B83E61
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s4es5Kx5Cd35OhBQj01CAo1OlptCAc2it076KmMctWg=; b=KP8LLz4nlwnh4f
	Tm/wFNrizBPNESrnh6y7GstM37/UR/PKRGVHtVGE4V+IFgpWHMnXtUlviW/SSwLCkVR9UvC4MYJRD
	h72VnbRucZKaOH5CtcbfAU0nxbcLHWBAFQsF5tG7kRLHcXbQepDRP8LjI4MMEAZyQpLq1yjpcqlnB
	NA/jWaTCcF8+Oyqq5+s4cq9s03YKQSEpRsVDB+ZCbJ27g9jZTTRGbYIO0FpIXYjj3bN3KzpPoiyod
	sIS2yzooCiUNGJ/TyizEx/lO8tLe3mv3nNzRITvcVfOZ7xWXqT3tiWe0/Shi80ZpyFM9wAcaX8Lui
	Dm93SUY73hA6aJH0parg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9sG-0005tH-If; Wed, 07 Aug 2019 00:32:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9s5-0005st-Rf
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 00:32:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id p17so89558477wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 17:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GGs8MT6FGlCkbNNH7TTlHmnRq/ZZmT2kM4HCkC2iAKw=;
 b=az+UmsXmDuq0cUhWJaho5IgfxSfXKToHUabQ1qKX5d/vT3zH87nkJ2i5gDs/K+jCy1
 DQefVcwEeK7GXtQWtwnU8isjUoMThDEhn5YvyURbVwRC1ppp23CPg+idSb4c2+qqZABJ
 vI5QmFWHBrhwxE1ebD2Ahhi/8ItA4cw8m7cWaYspTCRxUwI8yEbX6XN7SFoQFZz+Pv+2
 +owVGTu2fr3Rt4XaTdrV9JScsafyA9POwGXWsmRNVDCqDiNsSLuDlc/zPwusE/2JERCZ
 9oWK3+0Aoz1yhxW5n58r5gNe3ZPPJfE8XXIAwnRzZjNnwy4nAg8osT246qbwoYnNP3Z9
 yKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GGs8MT6FGlCkbNNH7TTlHmnRq/ZZmT2kM4HCkC2iAKw=;
 b=bwMNj5d9LjWxRYoamljrYHk7r6OlYHcsks80UKYSMgRbyVc08IYy0hgzE2XEcy2zWT
 GMajvWVJ/d3aGLmjJ+KB1VM9PyFOyQ0iUv3Mnok4cs9oJCIrnoYm+gcK1NC6kqnSGXrd
 WVtpIxGO5s0JFouGaxSYXjXGFnsxGZA4onnN7wQopGrvOjyhQ3t+QsNLXByfaBu+c8h0
 eVlHHNcSyuM5RL89JP0uXCJJgx0AawpkkXu9W5jVgb7pD2fvM/YS6QIa20A1itOh4LVD
 AYqY7O/5B4XzB89ORMIrDNiUuAzhyO5pCzoDpY+oObiWoqXTVIRtvimOZdi6J3eOGplD
 p84w==
X-Gm-Message-State: APjAAAVnf5hUPaRf6W0QOdIMHNbKzC+z1JLQXG4wiBDvlyHcJui5jlFK
 AFGQbGVxBI1vRXbZsV7dGrE=
X-Google-Smtp-Source: APXvYqynFI9yVSwY6UqnrCwxba4J2DyfeETuCPqf8QdPoeXnlnppBxsfHbIvGeLFeGUQTKIz3twsdA==
X-Received: by 2002:adf:f646:: with SMTP id x6mr7256533wrp.18.1565137923815;
 Tue, 06 Aug 2019 17:32:03 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id 91sm183684963wrp.3.2019.08.06.17.32.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:32:03 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] pinctrl: aspeed: g6: Remove const specifier from
 aspeed_g6_sig_expr_set's ctx parameter
Date: Tue,  6 Aug 2019 17:30:37 -0700
Message-Id: <20190807003037.48457-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173205_916930_AEA38BF7 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed@lists.ozlabs.org, clang-built-linux@googlegroups.com,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang errors:

drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
[-Werror,-Wincompatible-pointer-types]
        .set = aspeed_g6_sig_expr_set,
               ^~~~~~~~~~~~~~~~~~~~~~
1 error generated.

Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
changed the set function pointer declaration and the g6 one wasn't
updated (I assume because it wasn't merged yet).

Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
Link: https://github.com/ClangBuiltLinux/linux/issues/632
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 6012d7d4a22a..648ddb7f038a 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -2267,7 +2267,7 @@ static const struct aspeed_pin_function aspeed_g6_functions[] = {
  * Return: 0 if the expression is configured as requested and a negative error
  * code otherwise
  */
-static int aspeed_g6_sig_expr_set(const struct aspeed_pinmux_data *ctx,
+static int aspeed_g6_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				  const struct aspeed_sig_expr *expr,
 				  bool enable)
 {
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
