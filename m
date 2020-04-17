Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D481AE4DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9ek82teqDv1NAlaj7Q9UIFfO5PPdVsqmiWR9jiEebk=; b=tb3+FjuwPtXn+8
	Nim819ZasebDsxUkPE/rp6sPXA52dRiXF+a0H431QFDblw8moFnSXU80AfSHvIUPIVdeY0ZVDWDvU
	F3KLSPorqP2UXvuTLrpiORgf/qcekM/4bBZKaKrxUWNbav/IQDEfvclemC2+ZazKuikQT1A58db1g
	wLpZt54IpcYJWSoK1/8vDNBPlRuDtAkMFownN+OiD08NjrlWhs6fF/zaPNCMcgm/TnUecWs99Pahh
	B1FJUgh4CvZh+DbNjuBMlKKU2FJu5eDsl01xMKjGgxKBxd6NsHB48OFrIsul/Vrpvp7dnW5kmfrJb
	oH782sYKRF/f5fc7ivvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVpM-0000Qu-Ie; Fri, 17 Apr 2020 18:35:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVoV-0008HI-JL; Fri, 17 Apr 2020 18:34:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so4051376wmh.0;
 Fri, 17 Apr 2020 11:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pqjK23e5niBPyYYV4FBWCvjwk6bdtewgoJfg2lsAz+w=;
 b=rEeV+ZBGaELhRToq5R4e2zlgWdKG7o0amDt2cOMAbqdPzIyVqgZ1zkP0oCHXfMA1mj
 JXIXjCu6I5D6ek2KiQPv3jZofeYJw5IxUMQy4aC7sgdC52aVG8aRLFIAwc7DAccb362M
 E3/8jeIR8k3SiMsI9nJ602VLJ+ILgUSkLNi7bBrpr3sF6yY+iAk28l4zUg/Ry6f4T7k3
 j9kSBP5SJVhSrwEvKf7iAPZunSkCIriqiUYYHK02Yh2CA1qgaWdRRzK/zCym3VLHU2xS
 7PiQnv9hMrx+dagiP0qCYLgHZEBDKYTC2eWsV6MUgEPZ0Uu425ssz7I23c263DmB95X5
 li4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pqjK23e5niBPyYYV4FBWCvjwk6bdtewgoJfg2lsAz+w=;
 b=E0XkbGPFya0slzx7oXzjcCueeOxoCQlV1sOJai0iCg8fNSnPWwwqycgPWiYlguj9zI
 t0TrmQ0bKVh+0CmqCeKTXPlqkdKT/eiFFfPal1uYr9xTli5kMQ9VMqdNvul5+GwWsAUX
 D3V5G11cht+ZNDhW9V66RFXPOl8F0mallNulN+1Kvl6Fw2kmUMMlwWupTZDfJjIeyU+2
 2SQFxgnsNVqlPC+ekepEO/46HHtYVIcMClHBxVxRGrSiMADbqVscT2L9cwc+hJdnnt3/
 vuYb3Co8G+wSMkUvwk0CWNOO4wLznUwJqROTtLxETca4qYq/fM9xCb7o2unRojz8u0YT
 hWmQ==
X-Gm-Message-State: AGi0PuYXh3VFya6ZNXzzrz39sRoe6Sf38NFN0LxoR9LN3R4OJ0Sc20el
 02C5s0XrNUSz0tV3qBW/dEo=
X-Google-Smtp-Source: APiQypJ87WyYs30OruOEhUmTBWEXm2nZ8TD62n93y+711ja1mQWeDwy84MwtmyD8NExGoy5BV5gD+A==
X-Received: by 2002:a1c:3c08:: with SMTP id j8mr4668608wma.30.1587148446067;
 Fri, 17 Apr 2020 11:34:06 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o7sm3074994wmh.46.2020.04.17.11.34.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:34:05 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH RESEND v2 2/2] pinctrl: meson: wire up the gpio_chip's
 set_config callback
Date: Fri, 17 Apr 2020 20:33:49 +0200
Message-Id: <20200417183349.1283092-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
References: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_113407_631733_2E552EB1 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use gpiochip_generic_config for the gpio_chip's set_config callback so
GPIO flags like GPIO_PULL_UP or GPIO_PULL_DOWN can be used in the board
.dts descriptions.
This is required for some Meson8m2 boards where GPIO_BSD_EN provides the
"MUTE" signal and requires enabling the internal pull-up resistor.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 291f3078e7c7..079f8ee8d353 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -603,6 +603,7 @@ static int meson_gpiolib_register(struct meson_pinctrl *pc)
 	pc->chip.parent = pc->dev;
 	pc->chip.request = gpiochip_generic_request;
 	pc->chip.free = gpiochip_generic_free;
+	pc->chip.set_config = gpiochip_generic_config;
 	pc->chip.get_direction = meson_gpio_get_direction;
 	pc->chip.direction_input = meson_gpio_direction_input;
 	pc->chip.direction_output = meson_gpio_direction_output;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
