Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470138BE53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zTRD8B7TsosCkjgcDx/abCkgQCKHRhCYMxMtK61ap18=; b=NOPAP8ZQ6qltUTu5MiTD4vTkk9
	nB0InFXqxoTd+ie4WY0woxXu0MnCm/efz43R8EO532VhVkbpZrWhjpw8AmVm00gegtPYrDh4uKBEL
	LTZNmSwL9LIRRONfVc2cenf53vNBDuzlfvp5WyOjXpfdyyXakha4SkWS0+nFLv6nKo1TgRJeEcRJj
	9x8tGbqOAEc1xBcNKrzdn0YwcIRSlkY0813k5QvGP+MtQO08trjT5+LL+AA+X+OSL0pSu6JZkvrhE
	rzHW/5wwO0gQfkuRkrKdO8dN8nYDk6lzej0iR+butP8IkigRuzTQhb2fwXhvD8X4rh5dsIoaKM7Mp
	J0OmXmgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZYq-0000WS-5k; Tue, 13 Aug 2019 16:22:12 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008Mt-Co; Tue, 13 Aug 2019 16:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713259;
 bh=dcbp9wyo3uwTgq6UFIx/2q7he00MX7X5KQnY77LIfhw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VhqxHnO/VCxDXppsYNbwakKFGN/6gX3zR0T0aL5FXCg1MRU6CjP8pQBsJSP6kqQVJ
 lfGehUcXza5qQAWQszx4JZ7fijQ3vEjE3pWpQzhMN5LWNVedCVuSbLZc2cSd9fow/v
 pswoGLzMKer8FCm2EHf6rwGKMkLZru4xhZ6dJzBM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mr9Bk-1ibZFt1nWw-00oGiA; Tue, 13 Aug 2019 18:20:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 06/13] clk: bcm2835: Mark PLLD_PER as CRITICAL
Date: Tue, 13 Aug 2019 18:20:41 +0200
Message-Id: <1565713248-4906-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:IHISipDPkgSEtuerZ9YeqAdbuOcqfx1WWZSpdue+ABrqodCLh8L
 WOgb+7OoOmRjx9vcoUBPxzV8jzAd+hz60S8LROQ66M2sU9RBMNpc+ez02VAYhQHxZuXHmoT
 0HIHHaQRnOFGKbENNspO17RhUFzXPwf6UUTeQxcNlK+KBSsg2ga2GI+B1xzV6XC2VAsDivu
 cq1pL8PogxkL5fO98sLQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S/vGA3BKd6Q=:DdZMNsh5Yyf+gZY+8I2lMf
 eBujfU4NY6iid0Wp4iR3MQ4Q0WhuA2To6M2STPNgodnv3HPT0FVKDezOVz/hN4cbfAFOlMMhu
 eOQ1NHAMFV10tTFUKjqsojKhaA3WajBp/XU5BrCscsMztiDNtCwlq/D+Tv4R98gKC5F+cxoeX
 rkjepfac6Ykz5t/k58g/AMJy4UQkzbsnp253g9pnZWjNqOeJT0JsGRdZAcf9HzoUuHFy8bCP3
 tT628OxdViueKVf154hRfbfBBIT4PL4IGOs4wmKsKOPIPY6HpWJHZpXzn89CdluBBFlKReU95
 oiVcqhap50qWJn3aKeL//4BXCoKF43eI8+luLXsR8HzNsuikTSk1/wrDGFPDKDng3mLlq+6/x
 5sLngt+Js7MnXZKZUOAr0yxCXt5kCbA9KE0B973FXIenJosQ+7uYAk0kJPkA6PwagqG9E9tOx
 NzLIx1ZAlBDp5UI5uJrPeKMnpLcMyk65pItZOcHuVy/Dw1eJDA2XXHRplLgjO4GtDGhcw6gOZ
 O0qLEkOIqBeGmXRBHpwX9HDI0xZ758+qGXurphN5oqOC0tixgxxaD27VRvK/dq1K3HGb2g1da
 cX1p12pOy2Cp/NOWWrcnTUsd121smpkbD794yaWYvlt8hmGnfhrQLy7Uc8HiZtF8+7ZvOhRsm
 uCaUdLvnRjakTk27cH/YxwjfvSCcYlNDYaMzkeQ7aUI8xYsnzQkOZR5ZWVC9wHgHjhTLnIh8l
 A46MLFhD4u7R3ndrZyqnP3qoXLDGh72xnf+H1RBxkRVtO7Yh3lLevSUqFOnEUjfb5NkrLTL5j
 Jck0zb0Azl6YurGfPlIjcYwi3hFWTwrLMKWKYvQbPgsG7/YYbpD8lUdD4aE1N9hzXCtb4/+fD
 i2WBW5uOVrt0zxlp5q5BI60hCQe0u9SfNU+mFxzXfqBs1MdiTCzqKxvJGZf3mlod0b472HjvQ
 wtesTYl+JEdrRpBDnVUc3v/RPiFctz4RbX8YpCl/SXzU7WayFAGcNeO1i5LrIB/gIzu++7BnH
 2jI/IcFgiqt6JED9mP/5tYKxPtdKo6ewZLvFrg/rN4xRfy3pQWLi8QJe9A0dmwuHibZ0hOSra
 bXRiZ5UV1KSqx3Rn/BwVliK1GnDOsny/ZIKvYAfnp5jpLOrdkhC8L6RHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_728261_FB189033 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VPU firmware assume that the PLLD_PER isn't modified by the ARM core.
Otherwise this could cause firmware lookups. So mark the clock as critical
to avoid this.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index fdf672a..b62052e 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1785,7 +1785,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.load_mask = CM_PLLD_LOADPER,
 		.hold_mask = CM_PLLD_HOLDPER,
 		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT),
+		.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT),
 	[BCM2835_PLLD_DSI0]	= REGISTER_PLL_DIV(
 		SOC_ALL,
 		.name = "plld_dsi0",
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
