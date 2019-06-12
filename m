Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF35D43146
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ed3+kk7cPK4ZS9AekP8stnTQqL+V8K/zaos1AaMWITM=; b=Q2EXpQcTeLuCF/
	TgtCwVfKBgtbE4vRNtoZ/MkEb1+Ggpra5ykJV6p1bBkmPmkMKUnPiqtlPPSkbf2ge31fIvnGgsoYk
	i6tTO2msT9OTlilKryeE38FU/Yyvl+fsnEM/Um9uXq1RzbzB2hllHXBPqYGTqM/WBLRNqBXyrU1yz
	UYbH11EVn4qzEnBq59dZFZMmHiAX7LyTx8GhwIZVBpU8I9KotHkOuHU3UkKrO2hVc9h/UyFe14mBE
	Agr5yp3SY+ibRtB17fkSjJ1U65xh3PlChc5M9zaqkSXpY/LvQKaToxx7J8BXnssa+shbBP05wmCI1
	8iEK1h6yDSOm6CchHKSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbAJ7-0006a3-I9; Wed, 12 Jun 2019 20:57:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbAHf-0005PQ-DX; Wed, 12 Jun 2019 20:55:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so7895041wma.4;
 Wed, 12 Jun 2019 13:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/gDKxCzkOGRMbdoCC0wOn2Sy/Yhww68pPHd5X9PQ/go=;
 b=rUFa0q2c0ueMNjFCD1Ac5K6Fk3nNqiUfkEeny7sxh9dWEiE47qRnzWq/iyJskI1FN6
 TkvKq+3i0BEq+hEvnmDXfmeMkxmbmaEeWY7Al9ZAMXzhvuIb9UTLv4OqgxxaucaebMeg
 HglMyVVyQVo1UvCHaN4eTBCMv6080H2AYZzxmGKwLBpLGuZLsdg+A3gDjedobRasNnVX
 oaNucyrsFv/jrfCh0Qim+CfblXfOK1UP/F3mfsKW+kk5Lq2GmcyG9an87uJWAmMbNQxx
 EI32FZJtuNT9y8crY9P8KETEaPvzZOjxyWZSv8f5bsUX3LIc4AyJBC6fj12cVvNpwplH
 F5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/gDKxCzkOGRMbdoCC0wOn2Sy/Yhww68pPHd5X9PQ/go=;
 b=etCmHbBiSGiUlhgbHEKqHgP3/IEtpjrztzp+RTLCrXtfBYrqMNkpgWbvKhKiz924fz
 XBzV/BeP5wisxnn5R70xBAPM0BiP2cgBQb3ryiDr/t++2wcntZfaEhmifqtpC+1tI3by
 Le7Cl36IE6OtKwSHJiaZe0yM2QxjiX9Sy5ld2Un5QoT3IFr/RXI4W3VSa6pUE8FNOulV
 KH1eopn/qNb1G/yYxmUCfYau6extu7WOX0YvHOUm0WroD1/AYem//6ZWOp0NCYOGA+w+
 4vcvYQlUgcbWkqHBhD4mWK5DQTIukNOXstsvUDdGL6AyVHZYmLcCsa/ZqRDmq9JUGNmx
 Qnew==
X-Gm-Message-State: APjAAAVn18LNmBa5OizNWN4fJXeP5kBPwu2InqXWPm2vKQTJU9h2bUO2
 6uKwSbwbktQUg5b4Ulvmvq1Hyrhm
X-Google-Smtp-Source: APXvYqzcczDON40ZlWQv3oZhlUvn1FVQLcLqir1pA8IDNtA5z7hDUzg0Hn0fX1zXP3GmKNC7Wsrr/Q==
X-Received: by 2002:a7b:c081:: with SMTP id r1mr820317wmh.76.1560372949589;
 Wed, 12 Jun 2019 13:55:49 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s7sm3445793wmc.2.2019.06.12.13.55.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 13:55:48 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 4/4] arm64: dts: meson: g12b: odroid-n2: add the Ethernet
 PHY reset line
Date: Wed, 12 Jun 2019 22:55:29 +0200
Message-Id: <20190612205529.19834-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612205529.19834-1-martin.blumenstingl@googlemail.com>
References: <20190612205529.19834-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_135551_465868_32A4974B 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset line of the RTL8211F PHY is routed to the GPIOZ_15 pad.
Describe this in the device tree so the PHY framework can bring the PHY
into a known state when initializing it. GPIOZ_15 doesn't support
driving the output HIGH (to take the PHY out of reset, only output LOW
to reset the PHY is supported). The datasheet states it's an "3.3V input
tolerant open drain (OD) output pin". Instead there's a pull-up resistor
on the board to take the PHY out of reset. The GPIO itself will be set
to INPUT mode to take the PHY out of reset and LOW to reset the PHY,
which is achieved with the flags (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 4146cd84989c..f911bbdc4e70 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -186,6 +186,10 @@
 		/* Realtek RTL8211F (0x001cc916) */	
 		reg = <0>;
 		max-speed = <1000>;
+
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
 	};
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
