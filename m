Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0353AB0A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wdQ/QpCZNLEY0nZKBYUH0Lwic27j379GTNzNd8uyIug=; b=NB/nNJrx8Ute71
	91nimS8v/K11g5wEAgVCqZmc+Y80uig8wK0/zu5D7H/uLAJOHM65JQhV3eShd5pRQg7Z0BXze8Pka
	2l0eQqNj3WWy1DtbQlUd6/voC3kHReQg/AjH7Uo25lgTMpRfsYzQY1ozm0lfU5BqcBnDMxYGV1X4/
	ACkOWJ9z9CPFsGFwcrcLeX/DQBnao0FALDpHssOueVCNNcH9u2X8On15cFuOA72PXZxxn2R9sdW6J
	oxU3OmdCnkBtwMqr95orI1n20sq/gkwgX1aLyP2CFnEKtV0JXTVNihvZFQpCJKspnHHATof3g+TZC
	vDzBJ0VL+jSoC1itMePw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2Dt-0003w4-0t; Sun, 09 Jun 2019 18:07:17 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DJ-0003cl-1H; Sun, 09 Jun 2019 18:06:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id r18so6873081wrm.10;
 Sun, 09 Jun 2019 11:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ano8Vhtn94lHxYeXYf8C2liDhnRtj0RyswD7iYRMvtE=;
 b=omjgj0A/dXurFQujeU9x3OaA4una8zKFS92v5PE9/JYTnJWa6oc/E9pXSgNTjW+cfQ
 +AQqXFl17iW48FBo6FJXBY9sBgMQM1QROsg5PJUPTKiGdw6tbyN4d/yxNqw1b+hatMMh
 QSBYSGYulFDDJk/CW3DBKMjWyx2QewK8pVAx9imma1xZe8DgMyHSBdBl2pKFuOpONEf9
 6pVrGECfuLHXS0/pU7Oign+LkPvvcCjoxMMLk2MNmNftTn6GLhOF+QwuwGdXf/Vpnx3k
 Gc3tFKqDvuPgFlhxke2trXxsfU0pljBqm6UpyMqFw7wGOaxjiP20Q6NkhcnCLmD8v9Iq
 Wi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ano8Vhtn94lHxYeXYf8C2liDhnRtj0RyswD7iYRMvtE=;
 b=t7hSQCel2YnYWq05oZrq+xPrwGLkfbVN6i0kvFoNXlQF4aNSdAhunBgQrZR9CGUj5q
 klRudMJtRbOUFsJB06r1bOaRPu58D4NctFj2UtrIDBx889WTXc1P7FhpfyOLmaprgLXy
 yBLKnZyeGPOJMMZrIMfg9hkWpW2Vm3F9NAdYU3uCaNiRv/CyoH6s9TS32ThpbgHKt1Fx
 kLd221Jm96JO8tNuTyfAPzvjfD1PvPXo667SpA/MjvAdSrCjTMd+ho8OxU6e8mK3naHV
 h/8gY6zW6zQSNupweGuUc7XX/nr6H6K31fDH9eynWCLDGmvt7T2KV1oC0kI/P8yQl8Nr
 yMZg==
X-Gm-Message-State: APjAAAWlQq4e1IpEFQsSbu5UFWDtwZsSOCps72BwTXEohOb9K5J4L5sM
 LUu+Wb04sDe4noSzG3nRY38=
X-Google-Smtp-Source: APXvYqzMsHnTza3f8EEGCKkomYS21dQSyTH6qbpkHUxB3C0jHRwfrV9JvjmS1SqIWP57n6N7utEh7w==
X-Received: by 2002:adf:ee4a:: with SMTP id w10mr30497619wro.311.1560103596369; 
 Sun, 09 Jun 2019 11:06:36 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:35 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset GPIO
Date: Sun,  9 Jun 2019 20:06:16 +0200
Message-Id: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110641_106055_A6923113 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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

Recent Amlogic SoCs (G12A which includes S905X2 and S905D2 as well as
G12B which includes S922X) use GPIOZ_14 or GPIOZ_15 for the PHY reset
line. These GPIOs are special because they are marked as "3.3V input
tolerant open drain (OD) pins" which means they can only drive the pin
output LOW (to reset the PHY) or to switch to input mode (to take the
PHY out of reset).
The GPIO subsystem already supports this with the GPIO_OPEN_DRAIN and
GPIO_OPEN_SOURCE flags in the devicetree bindings.

The goal of this series to add support for these special GPIOs in
stmmac.

Patch #2 prepares gpiolib-of for the switch from (legacy) GPIO numbers
to GPIO descriptors in stmmac. This requires the gpiolib-of to take
care of the "snps,reset-active-low" property.

Patch #3 switches stmmac from (legacy) GPIO numbers to GPIO descriptors
because this enables tracking of the GPIO flags which are passed via
devicetree. In other words: GPIO_OPEN_DRAIN and GPIO_OPEN_SOURCE are
now honored correctly, which is exactly what is needed for these
Amlogic platforms.

Patch #1 and #4 are minor cleanups which follow the boyscout rule:
"Always leave the campground cleaner than you found it."

Patch #5 is included here to show how this new functionality is used.

My test-cases were:
- X96 Max: snps,reset-gpio = <&gpio GPIOZ_15 0> with and without
           snps,reset-active-low before these patches. The PHY was
           not detected.
- X96 Max: snps,reset-gpio = <&gpio GPIOZ_15 GPIO_OPEN_SOURCE>. The
           PHY is now detected correctly
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

I am sending this as RFC because I'm not very familiar with the GPIO
subsystem. What I came up with seems fine to me, but I'm not sure so
I don't want this to be applied before Linus W. is happy with it. I
am also looking for suggestions how to handle these cross-tree changes
(patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
go through the net-next tree. I will re-send patch #5 separately as
this should go through Kevin's linux-amlogic tree).


Martin Blumenstingl (5):
  net: stmmac: drop redundant check in stmmac_mdio_reset
  gpio: of: parse stmmac PHY reset line specific active-low property
  net: stmmac: use GPIO descriptors in stmmac_mdio_reset
  net: stmmac: use device_property_read_u32_array to read the reset
    delays
  arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY reset line

 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  3 +-
 drivers/gpio/gpiolib-of.c                     |  6 +++
 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 43 ++++++++-----------
 3 files changed, 26 insertions(+), 26 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
