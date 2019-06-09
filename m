Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827EC3AB02
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC+1s2aXuAtqEluKN/rB8CVRPrzvL1mF8hoaEMHEv+w=; b=qp09y+DVj7kMcD
	u4IgnxCFauQX4PyHpSUDYFfbYdCZuEUS41RBqr77cCloKVuseTQpWbqNejxTJw2h72xXmU0JNHsGh
	7wf34DwrqUn38qQ5oJWH75taolGXkvcUAQJ7zt6CtA0FdigIzZUG/A2slETmKeXDPEJM1fgQEKrcj
	uRrYOM5I3iDrqwoUOm2rHvIXt6elFZ/hJO7YO6gKJNVKSYhmFgL9zIwZiMpg2D5896x81a7Q5yvTD
	Cus7IkYCaAI+vfHzzwflPqTGnzOYjLV2CQ18Y6/BBr6tkMUMvvKXFDDGVo3C63g3naj3hxCngb+dZ
	2dsVCehx8KWFk4BJktVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2De-0003hk-9e; Sun, 09 Jun 2019 18:07:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DJ-0003ct-1v; Sun, 09 Jun 2019 18:06:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id r18so6873146wrm.10;
 Sun, 09 Jun 2019 11:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L+JDC+lw/WChmI4eIlkxJqi4XA35RjFjMXnl1SFE8Zw=;
 b=rIPNPBN3FxtgYpi973wdZA5hbzAbfgGEA1sFuHADXWrscohB30pZOv4p05jtvcQhLB
 H5/1lXIiZFfOcpSXtLheGEyypOY4cDSZtvYrpdmBHCTKks5okNEG/VrzsusLIvbaSqGa
 HKyQpwz/kES5l+WcpB/zj+6/gJRhqYrCB0D0CZbSNC/1NVKM7i73s++/uHpE4kUNW0TG
 OQkam1yor45+bRDZd+mxuNN5ZYIKCN/EAapXGEDiY0gZbGNDeLYGuRA7n/aPZH2A6Vo7
 1Sv2IgXVy9g8XIByrnLu+aoHeFuRwTAXjpqo+QlSXpC/00KmGfPqodT37rKahdX09div
 tmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L+JDC+lw/WChmI4eIlkxJqi4XA35RjFjMXnl1SFE8Zw=;
 b=c6KsVzZ7tLFig5LxSDGEmQrDnbKWbWZW4AQL6i3R6fqAocHMTRnUwWBqYBcQw5QilX
 L6A2AmkTyxmaD/YaElfmxw/qzVJOWLGGRdRo1Xq7gtTIrDzTp6o6gakPoomne0xsawaw
 wwr0uPZtzlb4HOKLpS3FJC4UfRrUQ4y7Xol1obggm/DaUwfj4flMoLrNjeBT4fcRSrk0
 lyGzpQ/JWz6pd4lIc0v2U7TSE+8wU3OIOl8qlAOAks536W3Nglxtk0KRdEmXX7EBBCG4
 mjv6+iUYJKlVhK3qw7NtelWTc1LoVNSTLF437H5KGqv9k9o8oD47IqZuoz4txSi2txUk
 eH9g==
X-Gm-Message-State: APjAAAXZ3Wt+X/lP7qj7euBUxqvKD+Wu9ndfx21KA6GDXlHdO1DWzy9D
 HWR8KGQ1dcqPVTOj71F4ZTs=
X-Google-Smtp-Source: APXvYqxL3wLbt7xnWlgNfBsQLu1vOJsDLKzJ5xLFdJ94Txj4JCWTdM3Pa3jsExSk+j1V9ZUl26XLIw==
X-Received: by 2002:a5d:5007:: with SMTP id e7mr14502557wrt.231.1560103598868; 
 Sun, 09 Jun 2019 11:06:38 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:38 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 2/5] gpio: of: parse stmmac PHY reset line specific
 active-low property
Date: Sun,  9 Jun 2019 20:06:18 +0200
Message-Id: <20190609180621.7607-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110641_106050_CF185186 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The stmmac driver currently ignores the GPIO flags which are passed via
devicetree because it operates with legacy GPIO numbers instead of GPIO
descriptors. stmmac assumes that the GPIO is "active HIGH" by default.
This can be overwritten by setting "snps,reset-active-low" to make the
reset line "active LOW".

Recent Amlogic SoCs (G12A which includes S905X2 and S905D2 as well as
G12B which includes S922X) use GPIOZ_14 or GPIOZ_15 for the PHY reset
line. These GPIOs are special because they are marked as "3.3V input
tolerant open drain" pins which means they can only drive the pin output
LOW (to reset the PHY) or to switch to input mode (to take the PHY out
of reset).
The GPIO subsystem already supports this with the GPIO_OPEN_DRAIN and
GPIO_OPEN_SOURCE flags in the devicetree bindings.

Add the stmmac PHY reset line specific active low parsing to gpiolib-of
so stmmac can be ported to GPIO descriptors while being backwards
compatible with device trees which use the "old" way of specifying the
polarity.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpio/gpiolib-of.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index aec7bd86ae7e..2533f2471821 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -158,6 +158,12 @@ static void of_gpio_flags_quirks(struct device_node *np,
 			}
 		}
 	}
+
+	/* Legacy handling of stmmac's active-low PHY reset line */
+	if (IS_ENABLED(CONFIG_STMMAC_ETH) &&
+	    !strcmp(propname, "snps,reset-gpio") &&
+	    of_property_read_bool(np, "snps,reset-active-low"))
+		*flags |= OF_GPIO_ACTIVE_LOW;
 }
 
 /**
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
