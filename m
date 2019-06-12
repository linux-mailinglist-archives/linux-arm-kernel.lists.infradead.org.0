Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C144343037
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cG8Ob+5YIwPPoPWU+hnJF25hNEKqBrO7djuIBEzZbfw=; b=trQk7Ff+8dsVt3
	Dx0g9wPn7lXbF5JXvtuWJg2LDHECwThAjefJuRnJDwebA9AvG3fX93K4BGrlLcA72IcY5Xj2yEwNE
	+/l59M0kUz37XoRdvX1TNxOmLl2nfAe4GNphiG3bjHnCDUDn6XG/uYjc5MqOrJ3TwQ34rRUV7xbRA
	5jneV0kjY3I50okFj3skGMjbMXutu7EYaLG+3VwC1SX8Pnj7x8jmliBhAk5BH/uVyU0SibSY2V2q4
	yvMAWS7OIhSEzm22XNAFHXzqRMqamgPCPhTstEMJ4rllXbztTZ0kcKJlRDMOTwYX3YiSwENkcvs6V
	VC1RtpE7Gj4FaUHXHgIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8yd-0004rC-8l; Wed, 12 Jun 2019 19:32:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8yC-0004VL-2i
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 19:31:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so18187666wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 12:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=piJHUi4lk+8l3N6vpCR4aXaFS5oizipdYRkQO+KF1qQ=;
 b=Z16lXH8fCl6C5qbOQPQTz2P6w/DihSOJFI8TyxYwWTfTBbw73Du2lc+fqNe2U3KzZl
 v51mK6JVlP5ZEoQ9IMShm+xVQ665mKx/QvFUTY7eQAa6sEbwxr/Vk6tKBZTRiR9K7P3F
 RMufcoChyle0YhJhhHNS0sbZbvdG+uzCi754D7DDW6j/4U8+KP70WWcPVNnAFbknuyc0
 z7eGRB59ZaKuTptvlulTj5Kiarslp+WO7D8JdVUwG8jTkNzN1SbzqPp9OjK17VNnJPG0
 9uzQ5TmybU/EmZzxvo+WeSAXkDgAuSHBQlGkjmS/PdZAyTE0VHWulxTdhAd1gcNMlX+r
 RnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=piJHUi4lk+8l3N6vpCR4aXaFS5oizipdYRkQO+KF1qQ=;
 b=TdYf0UT1e6Ix3odthNtxnWHQCFU7N75IDRoOGtREqw6FTCgAcqAkRgZLD68t5stCkF
 +A38EKAIW6B6kPTzZ3np6zoFjOoUwhQ0RIpTBstQNB7J0iTEKKQi6zZ3eZOaFrPoQ6Yx
 QQ9wFsCsnVviZOeQRNYcwoIQkVftR28YOF+/wGUXLl+RB5d4HEJ+Ob+NwC9DtkyqIsYY
 a34ETG/pjOoJMpgq+GqbMN1AiOEwSGsPnOGoZQs2O7rX3wrZuXgKEV/Xt0V41Nu8mbr4
 GFTMiEKbUPMOJQU45f9R4zpdBuWbPeQc6e2EsrgLAAylK94F65JIkhEfDHHdAGckmm46
 nptA==
X-Gm-Message-State: APjAAAXSUqxQe+9IWyV/jQWtRdegMukUccrbatyGKdUVvjYJpXvUYVpG
 010xMBU0LsjOmH2OVEQ7rHU=
X-Google-Smtp-Source: APXvYqyGq9L4GORx9QxsX5rk1418GVqtaX0ZpZZsqVbJqkJiH4gzhyYbqE2/1oCnWRloDJhytm05cg==
X-Received: by 2002:adf:e2c7:: with SMTP id d7mr1272968wrj.272.1560367894513; 
 Wed, 12 Jun 2019 12:31:34 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q15sm379054wrr.19.2019.06.12.12.31.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:31:33 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net, andrew@lunn.ch
Subject: [PATCH net-next v2 0/1] stmmac: honor the GPIO flags for the PHY
 reset GPIO
Date: Wed, 12 Jun 2019 21:31:14 +0200
Message-Id: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_123140_148384_67D035E4 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: maxime.ripard@bootlin.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent Amlogic SoCs (G12A which includes S905X2 and S905D2 as well as
G12B which includes S922X) use GPIOZ_14 or GPIOZ_15 for the PHY reset
line. These GPIOs are special because they are marked as "3.3V input
tolerant open drain (OD) pins" which means they can only drive the pin
output LOW (to reset the PHY) or to switch to input mode (to take the
PHY out of reset).
The GPIO subsystem already supports this with the GPIO_OPEN_DRAIN and
GPIO_OPEN_SOURCE flags in the devicetree bindings.

The goal of this series to add support for these special GPIOs in
stmmac (even though the "snps,reset-gpio" binding is deprecated).

My test-cases were:
- X96 Max: snps,reset-gpio = <&gpio GPIOZ_15 0> with and without
           snps,reset-active-low before these patches. The PHY was
           not detected.
- X96 Max: snps,reset-gpio = <&gpio GPIOZ_15
                              (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>.
           The PHY is now detected correctly
- Meson8b EC100: snps,reset-gpio = <&gpio GPIOH_4 0> with
                 snps,reset-active-low. Before and after these
                 patches the PHY is detected correctly.
- Meson8b EC100: snps,reset-gpio = <&gpio GPIOH_4 0> without
                 snps,reset-active-low. Before and after these
                 patches the PHY is not detected (this is expected
                 because we need to set the output LOW to take the
                 PHY out of reset).
- Meson8b EC100: snps,reset-gpio = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>
                 but without snps,reset-active-low. Before these
                 patches the PHY was not detected. With these patches
                 the PHY is now detected correctly.


Changes since RFC v1 at [0]:
- dropped all patches except the main patch which changes
  stmmac_mdio_reset to use GPIO descriptors (I will send the cleanup
  patches in a separate series once this patch is merged)
- drop the active_low field from struct stmmac_mdio_bus_data
- added Linus Walleij's Reviewed-by (thank you!)


DEPENDENCIES:
This has a runtime dependency on the preparation patch [0] from
Linus W.'s GPIO tree. Without that dependency the
snps,reset-active-low property (which quite a few .dts files use)
will be ignored.
Linus created an immutable branch which can be pulled into net-next:
git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git
ib-snps-reset-gpio
gitweb for this immutable branch: [2]


[0] https://patchwork.kernel.org/cover/10983801/
[1] https://patchwork.ozlabs.org/cover/1113217/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=ib-snps-reset-gpio


Martin Blumenstingl (1):
  net: stmmac: use GPIO descriptors in stmmac_mdio_reset

 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 27 +++++++++----------
 include/linux/stmmac.h                        |  2 +-
 2 files changed, 14 insertions(+), 15 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
