Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB64A97F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W0+ugJdgDaZPPwMziffH771VvOlA58poyxTmiZTPapI=; b=lvxfFVQOxc227w
	VSywrkgBINQt+i0viSjdc3ihfR0yqj0kAI0HVeVQXkW31SUizXC4iL8qg/AmQKDx1HlKn0qJXDY1Z
	3ugh5e3M47tcBgVRnrxuIz9Q1+iFibwJrxH8P+WQvwU2ywz5hEWYG5oXBDoFXkIgTHM8n6wIcH7xY
	CoNbFzof5hKnjOM26qe0jdBYg9gCn7Szg1Evm7qc1//ysQQAA8oqOodxjKS19mtsM5UV/RHLJrGwW
	6TU3F+t2E3WXr4C+GExOcWCJu9MWfBQKsP80ZetfEeB0UmzqrXemxaqVeLCY/+lCDhFJd81rNj7ut
	JHH60kyFkfTwaC64E5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gPk-0003VW-W6; Thu, 05 Sep 2019 01:18:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gPd-0003VB-0Y
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:18:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so428329plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tOKMw2jcpWSfAVFD5eBvmEjvr87ebRMD2VX465NN5Sg=;
 b=seYXsDbBVkkBeGmoRMlnqWzqu6QQDunzxm9EqggJOSnwwAy/0PDId09u4eRbrfJSy9
 k0AbCRVfBIzoY/qzzVPXqzhIMhLGcdo4rtdRoulpGnQEwgTdeSoFrRLN/JzZfU6G25CD
 zskgEN2eTbkH0iv6cgQH5YPhUOP1FDSvm4BGkHa4Q4T4FRocntm6qf3zmRk1wjL40Jh5
 PkZrAR5lq5QVY5iI3KeSfWUlftcv8mSaFoLqeoz0XSJUQIxsAhSMdJihljDhzBJYpkK5
 vQ6IyvMvrOz7T6qmB5+X8qQ5clqOT+qPBJnk6oKrsJF4zVQylWrTRxwGX+uwshJb/FcD
 n9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tOKMw2jcpWSfAVFD5eBvmEjvr87ebRMD2VX465NN5Sg=;
 b=rDRCaOuTmRWy1SqpQjKxygJtBgBysCV6uyFx3XXJlvcfa9CO0g11jqw+NcYVZZ3May
 69Q21yE997z2wH6laUBY7I14uvYueV59I9YNS7xjUlLwyi/u5XhFzljZDJfy6peOuCtv
 VsvZbl/DjTKR53lsjRUIYVwM2P0adnIahT1OTDVCOX3KlJlXTrzcFGJy2lCYU0rFcPwi
 VyzzP7JR6xm/hky4KNVLqBsMZDf2e8VbMrRc/0rUfK7bY6mdJVxDKpP+phDp1fJAhpVl
 3xLaBcJ0B0rjQV3nPtvmVugh7wvpwv1+0vb88n/xue/KdafEKykp4edV/7K7aa4Vrh/o
 4lGw==
X-Gm-Message-State: APjAAAXxCut3sX281tlJA6EcA0xx4kIba4/lLhLB2CqbQgGdSa39MxAe
 gLQ7/wKYc6ssuSepmmQMsr4=
X-Google-Smtp-Source: APXvYqx8uRB7lBCyyutl4aJiUHVVKVPeb3t1GNcMZplvM/Fu94gSyRW7iU7NMcCuQj+38WYmeNQvRA==
X-Received: by 2002:a17:902:b604:: with SMTP id b4mr679217pls.94.1567646292377; 
 Wed, 04 Sep 2019 18:18:12 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id u24sm315924pgk.31.2019.09.04.18.18.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 18:18:11 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 4/4] gpio: dt-bindings: Update documentation with ast2600
 controllers
Date: Thu,  5 Sep 2019 11:18:00 +1000
Message-Id: <20190905011800.16156-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_181813_050853_C4E5F630 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 is a new generation of SoC from ASPEED. Similarly to the
ast2400 and ast2500, it has a GPIO controller for it's 3.6V GPIO pins.
Additionally, it has a GPIO controller for 36 1.8V GPIO pins. These
voltages are fixed and cannot be configured via pinconf, so we have two
separate drivers for them.

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
