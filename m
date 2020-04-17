Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0C21AE4D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6FmFmDj8b3SuZJeo/mI0Sgpah5uJrJiFVfFHMBCVO8=; b=R16BIK+IRSIXAi
	FecJru+Re19gWX13qUIB6C+S2XDDTAGr0I50ygpr0IR6J63+fvgzPJPJnkkdRliNxJhD0v8Gg+3Ot
	aOMHuL3Uet0zoHiG7oWIDUo1fxsNOLFtXcXbirfF88LIXMZR50mYfhFouWTNFPdinM3/S9KD302uS
	rH0U50mcXcqBQzm3qRhSCLNm7c31IlV/my9zFgS5sFUNa5uGiV9iel0lxaCZPEaO//OhmhhUmkTVL
	vno7NYv4M4LEtU6evPa5UWH9AWWRv8zi8MwJxSSL5ZUcmfZTJm5lty82J+SQhPDb9+7z8U0QXunn7
	feWe7OigKlp73pIOKkXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVp3-00007T-Vg; Fri, 17 Apr 2020 18:34:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVoU-0008Gt-DR; Fri, 17 Apr 2020 18:34:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so2958529wrw.7;
 Fri, 17 Apr 2020 11:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bc/4pRlxC+D2ONP1rH1iDduXk9QWuQPhI7TtU7wZt5A=;
 b=XGX0WSH5u91Vm9+oAwQwPXioSYI72fUAscUYc1Ykbw8DGjTGQQm37imIPumogvw6Bv
 C0H7R7Hme4YRD655b+hVV5mYfW5qHWenUYbbJFHaTRAWtWksydEuJWzWsD0UU/jIVihB
 gmxbjYR0Ky7EOt9UAcvcuGmzlcLTZ8OvkJO2a6r8GXf+G1gdaumQIhGPaQm0kvfwdOog
 4XvsHGH5arT0hEEUZdg+MxYbyzquI0BxQWftDmB0y6OVYJAjbt2iPSlEZqZLso+9pyUS
 /O2nVDMxL5mjwqm1F62ucvLGLbZPtCd1wIXVq3SeKiRH90ChR3eypjiKngKoXUSCHMjN
 EJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bc/4pRlxC+D2ONP1rH1iDduXk9QWuQPhI7TtU7wZt5A=;
 b=d46BIMFr+dHdxFRu7z5HiROPqLaHNbhmBe18ZYSpnRciOCQ9iMko0iIikHvr3/pL/T
 aFjxjrdjJGzJzUTShUL+efWjXrSyGgtgwje2JIq5WWMffwRDt5VYba3YTqKf+jyGVm0D
 SONQRQn2rD4UWmO3LPxcYrjpn5B59ubL1FddOuXyvNC5PVw89+GdmkH4JNExYIRzD8VB
 5oA0Z/M0T2Oq1vd7hohH/RjA2Sy/EOHLUj0t+Q8rIf/8Pse7bG/Tvb3DOkiUj+RxR28v
 Do3XrBahAtNfF0BdyHwPTkesdltOR9iy8E1DNO5VyjNvcAkA2QwRDQyk6ZiCY6Th+2gr
 NvHQ==
X-Gm-Message-State: AGi0PuYZVh5ywbx6TOUBHoSyV+3e7N+12AuRkw/nQBL/tdD0KYWfP0GH
 uQULMwtHJpEjixK0HmulKPI=
X-Google-Smtp-Source: APiQypJXKwAyXZE4BpbMeuBoaJhj5rZNgR7yJJgPmD6EnGtgcUKatnBXclheu+LM3LD+NmNCXZqjYw==
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr4986564wrs.94.1587148444923;
 Fri, 17 Apr 2020 11:34:04 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o7sm3074994wmh.46.2020.04.17.11.34.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:34:04 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH RESEND v2 1/2] pinctrl: meson: implement the gpio_chip
 get_direction callback
Date: Fri, 17 Apr 2020 20:33:48 +0200
Message-Id: <20200417183349.1283092-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
References: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_113406_448124_16BE37F7 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Implement the get_direction callback so we read the direction from the
actual GPIO controller register. This is recommended by the gpio_chip
kernel doc.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index bbc919bef2bf..291f3078e7c7 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -549,6 +549,18 @@ static const struct pinconf_ops meson_pinconf_ops = {
 	.is_generic		= true,
 };
 
+static int meson_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
+{
+	struct meson_pinctrl *pc = gpiochip_get_data(chip);
+	int ret;
+
+	ret = meson_pinconf_get_output(pc, gpio);
+	if (ret < 0)
+		return ret;
+
+	return ret ? GPIO_LINE_DIRECTION_OUT : GPIO_LINE_DIRECTION_IN;
+}
+
 static int meson_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
 {
 	return meson_pinconf_set_output(gpiochip_get_data(chip), gpio, false);
@@ -591,6 +603,7 @@ static int meson_gpiolib_register(struct meson_pinctrl *pc)
 	pc->chip.parent = pc->dev;
 	pc->chip.request = gpiochip_generic_request;
 	pc->chip.free = gpiochip_generic_free;
+	pc->chip.get_direction = meson_gpio_get_direction;
 	pc->chip.direction_input = meson_gpio_direction_input;
 	pc->chip.direction_output = meson_gpio_direction_output;
 	pc->chip.get = meson_gpio_get;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
