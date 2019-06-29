Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CE85AB4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAzUdhWUIV7fYeXzfqmmQwz/cqGIftvjsADmef14cS4=; b=Frn3tUdrD8SASg
	Zkp5XSyK5puaJSx+U4KGhUu+ZTNg2QzFOxKAKHRb19AF8agUvcKqDx67YGxFxKdKEnRl5U0dxKknf
	xl1dDJdnA616MkNFD8bhTX5sPdnTdfvSVGne9wKaci/vidx6GJu5GDFhE+wWZTCuYxjShKypsgV1J
	QZJgL4+qsQIe8iiGzwVft7fm4FzVjhS1Gk7REeXRDXD151cwtQKXx83tEYaKEM6+ehZB3iKe5jBkX
	/IvkWHXWNb9lOaawVWhyG1eBkFIfs+SH/hx8HapbGYjysn1CVS1E4xiJy0YmTr42kFyOpoOuVJEGn
	qqjFwRoTyspBpKIRG8Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhD10-0005vd-AT; Sat, 29 Jun 2019 13:03:38 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCza-0004qo-93
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:02:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so5716819lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gUhHBzqpeqf9laCyRDqe0YTreYPsBAWIdDU1MBCLr1k=;
 b=BYavBGMBtik6r+A9tFdwUyOfHqHK+Yl4c7/OJSbz75XF2NUDjc4Jw7+6wvc3ssAnDF
 9sq25tD60Ch3GCG0hM/5PRkqSgHcW/LYOm35ZiNdaPczwua7xlkaQTtJrqZOM9Tpv2HK
 ZvXChwFa1/VVDUg/f4Nyh3tUquPVnrg2zNpac70vRhAUi7CZ8hpGVSeRuy+q36Hhso+h
 Ks17fIaZ1Z+66/HbPp9dwbic5x4vw3gyVfV98DTntLs57UNkVYUKwuust+xKTjaLKoct
 7zQUCFkufCWR85bg3HzsRWlJ42Nostw2IEcGdvH3kk5vn0kj3ZdmlMrn0Ij8qrwefETN
 THcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gUhHBzqpeqf9laCyRDqe0YTreYPsBAWIdDU1MBCLr1k=;
 b=l8OjbFv2EIzFcegmme0lfISSpJk74Xl38XDW84nuia6r968kmydrpCrKPT91Z2zuxD
 wp0X6Zv91fNR7DunXw1pgrNSHxcGVthD0xc/1WK064MWhF/EdG9ZCSsxgkw0Yu2IYCVZ
 tL5qi8J96A++zniQBH4mK9CXIJasxDNBd+4nWGcXxFIJQAIvN3qmah7yHZvcrmaWRqvj
 BWxbROD9I1QEY2s+FIPi9W/hP8h9QQaDCLYcajymfQNldWUd9IgydtGiuO/XBNOuQJQq
 1QNeM0eFCxuMl3X1vFjM+XISbQ6txBsNZV5fXDgGLOG9cQ/TB2WYXveXzslyU0luaKE8
 +vPw==
X-Gm-Message-State: APjAAAWm7YHG5DQOiPu2WAOlDNmowYMmjHW8YziiiDm5O7+ugwYU7xKc
 hvoaPf1cX/L07CDcqXNX80uyVQ==
X-Google-Smtp-Source: APXvYqwiKTo2KmlXB88B2iDxqXfGg+cPGIjxT3oac4t0Fb8IeqR1+G3z9dw+lnnW3Vr5Kl66Lss03g==
X-Received: by 2002:ac2:4891:: with SMTP id x17mr7657045lfc.60.1561813328311; 
 Sat, 29 Jun 2019 06:02:08 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.02.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:02:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 7/7] RFT: drm/msm/hdmi: Do not initialize HPD line value
Date: Sat, 29 Jun 2019 14:59:33 +0200
Message-Id: <20190629125933.679-7-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060210_502421_7C9BFDC3 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After untangling the MSM HDMI GPIO code we see that the code
is deliberately setting the output value of the HPD (hot plug
detect) line to high, even though it is being used as input
which is of course the only viable use of a HPD pin.

This seems dubious: GPIO lines set up as input will have high
impedance (tristate) and the typical electronic construction
involves this line being used with a pull-down resistor around
10KOhm to keep it low (this is sometimes part of a levelshifter
component) and then an inserted connector will pull it up to
VDD and this asserts the HPD signal, as can be seen from the
code reading the HPD GPIO.

Stop try driving a value to the HPD input GPIO.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
index 89c64cc85027..ecbcd8638b66 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
@@ -87,7 +87,7 @@ static int gpio_config(struct hdmi *hdmi, bool on)
 			struct hdmi_gpio_data gpio = config->gpios[i];
 
 			/* The value indicates the value for turning things on */
-			if (gpio.gpiod)
+			if (gpio.gpiod && gpio.output)
 				gpiod_set_value_cansleep(gpio.gpiod, gpio.value);
 		}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
