Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B9A7C5DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+ofHxGuvN+q/G2giYcAuFsjDeluFbzTH2E0OX6XLw4=; b=l0hg4g79tJb+Ea
	sI11u1uGHIPLoveN89UsDYaiaWZV+GauZNFWsjutO2RTVXJgf0Xm35hDwn4cR8xFICgoHkKQkDRgd
	rkjaFiz0OS50s50wbtDtud0VDaeezbqmVRlb4wOlsrmUF3oBxVG9oRVtXnBGZeR7fvujmNKx3HO6o
	uk8POTQWSEhr03GVwmvBoMEoD7pxfMCx9S7M0RfUKWjIhVI8/bEwl5L4rHfV2mKy3dElkadiyJza7
	geDOeiIZbwgy7lWx3YxaxSCz8gvp87z8oasNm5y+adMEw7DIR89WCAxs0P0KRBQaWbE3fsTqHRHc0
	oLYNQMlmbhE3IVnKMAPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqIN-0003fM-5W; Wed, 31 Jul 2019 15:13:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqIG-0003eb-D8
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:13:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so734041pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:from:to:subject:user-agent:date;
 bh=rQ+ZYN3Pz2tzkzS5YiJQuOvqwMv4GIVtYHiY0oQN/Hg=;
 b=bki6MMTCrkFqm6CEe2sT6efg/UEK4/KS4OsDaazwdAVMfugF0nFvcjPk0U7XtWVY/S
 SO+48Zvbst+QBl4iMTIhls53QUo7gO+Xkq+MqDEz1ssSm2EJVqQdpp/pq8wehotWrR9o
 Qs8ypFPQs6dGH6X2enf1XeqSDjksOuCQ3IS0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:from:to:subject
 :user-agent:date;
 bh=rQ+ZYN3Pz2tzkzS5YiJQuOvqwMv4GIVtYHiY0oQN/Hg=;
 b=M2X0buGlvjYl34YVTCRUS5sSo2rM/sv92H51HUm8j9mRCcjNZMYBz8pbGicuvWGjzT
 jobTkk81D0Psso4c6xC6mHmfq9IWniaT9zsr1y8Emz7q1F++3AWDeAv9LwAAFgROumQn
 WKYbpThAHnHGnCxuO5xmucDZbvHbHqbsoZnV5inxjJKyu239JpIw5dfaPvKPmHxl0Kne
 HZ5guYJ9Wrg9273jyOhY317g5SMgVXWDzesmfQtUbdqzkSB1ekUSSJaO1gSKua9Poise
 IKPrAsMHBG5HStFGi3E4hTOt6g35p0v+MPuBy8e7OXiEC8BzrojF8M9+RBzncJZwndJ8
 qNnw==
X-Gm-Message-State: APjAAAVpy90I9goND3MeUpPuk6E1pciKgpmcSsI4ANfyB76i362+hveV
 trKImKcXfKg2fzckkdVO1wtfqA==
X-Google-Smtp-Source: APXvYqwyr6SzMDDEAswKlvF0nL/GkZf+xcgmCG8/F51GLoC3w7YwueqI3hDhc8QPnhfe0QdjAfkMEg==
X-Received: by 2002:a62:e710:: with SMTP id s16mr49428423pfh.183.1564586011276; 
 Wed, 31 Jul 2019 08:13:31 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l25sm86777674pff.143.2019.07.31.08.13.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:13:30 -0700 (PDT)
Message-ID: <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
To: Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Timur Tabi <timur@codeaurora.org>
Subject: Re: next/master boot: 265 boots: 17 failed,
 184 passed with 64 offline (next-20190730)
User-Agent: alot/0.8.1
Date: Wed, 31 Jul 2019 08:13:29 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_081332_469458_F6457D50 
X-CRM114-Status: GOOD (  32.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Linus Walleij (2019-07-31 01:48:38)
> On Tue, Jul 30, 2019 at 3:41 PM Mark Brown <broonie@kernel.org> wrote:
> 
> > Today's -next fails to boot on QDF2400 systems:
> 
> Is this a devicetree or ACPI system? Which devicetree in that case?
> If it is ACPI I assume one had to look into DSDTs?
> 
> But I looked into this!
> 
> > 08:56:36.026587  [    4.339966] pc : __memset+0x80/0x188
> > 08:56:36.026867  [    4.343524] lr : msm_gpio_init_valid_mask+0x134/0x1a4
> 
> Aha. I think this only worked out of chance before.
> 
> What the Qualcomm driver does is exploit that .init_valid_mask() gets called
> even if .need_valid_mask in gpio_chip is not set to true,
> and this is why the bug appears in
> msm_gpio_init_valid_mask(), I'm pretty much sure it is the
> bitmap_zero(chip->valid_mask, max_gpios);
> call towards the end of the function that gets turned
> into:
> 08:56:36.114798  [    4.433713]  __memset+0x80/0x188
> 
> And this causes the crash.
> 
> This is then because chip->valid_mask has not been allocated, and that
> is because .need_valid_mask is not set. This is set like so:
> 
> static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
> {
>     if (pctrl->soc->reserved_gpios)
>         return true;
> 
>     return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
> }

Some of the code here is new. I guess the arm64 laptop stuff is making
changes.

> 
> First comes from the driver, second is for ACPI I think. It looks
> like a bit dangerous way to do it for ACPI, what if an OF pin controller
> has some "gpios" property? Oh well.
> 
> Apparently this only happens on ACPI systems because I tested it
> myself on a DT system.
> 
> Another cause may be this from the call site inside gpiolib:
> 
> static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
> {
>     if (IS_ENABLED(CONFIG_OF_GPIO))
>         gc->need_valid_mask = of_gpio_need_valid_mask(gc);
>     if (!gc->need_valid_mask)
>         return 0;
> 
>     gc->valid_mask = gpiochip_allocate_mask(gc);
>     if (!gc->valid_mask)
>         return -ENOMEM;
>     return 0;
> }
> 
> So if OF and ACPI is activated at the same time (can that happen?)

Yes, OF and ACPI can be compiled into the same kernel. Also, ACPI does
some interesting things when CONFIG_OF is enabled by looking for some
ACPI magic that basically says "match the DT compatible string embedded
in this ACPI thing". Quite scary!

> then the OF code will bail out I suppose and this happens when the
> ACPI side of things try to use the mask it didn't allocate. The ACPI
> codepath in msm_gpio_init_valid_mask() seems to try to set the
> mask even if there is zero GPIOs as well... dereferencing the NULL
> pointer in chip->valid_mask.
> 
> Could it be that this is a ACPI system with zero protected GPIOs?
> It doesn't seem like the code will survive that. It seems written
> under the assumption that
> 
> It's a bit of a mess.
> 
> Can some qcom ACPI people take linux-next for a ride and tell me
> what I should do?
> 
> Lee: do you know if linux-next boots fine on your ACPI machine?
> 
> Timur/Stephen: any ideas?
> 

I think the code changed in commit f626d6dfb709 ("gpio: of: Break out
OF-only code"). Now it unconditionally overwrites the chip's
need_valid_mask member when CONFIG_OF is enabled. How about only
overwriting it to 'true' when it really needs it? That way, the gpio
provider can have a say. I originally wrote this by having
of_gpio_need_valid_mask() modify the chip directly, but I like this
approach instead where we mark it as const in that function and then
only set it to true if it's actually needed.

-----8<----
diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index b10d04dd9296..e39b4290b80c 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -87,7 +87,7 @@ static struct gpio_desc *of_xlate_and_get_gpiod_flags(struct gpio_chip *chip,
  * @dev: the device for the GPIO provider
  * @return: true if the valid mask needs to be set
  */
-bool of_gpio_need_valid_mask(struct gpio_chip *gc)
+bool of_gpio_need_valid_mask(const struct gpio_chip *gc)
 {
 	int size;
 	struct device_node *np = gc->of_node;
diff --git a/drivers/gpio/gpiolib-of.h b/drivers/gpio/gpiolib-of.h
index 34954921d96e..454d1658ee2d 100644
--- a/drivers/gpio/gpiolib-of.h
+++ b/drivers/gpio/gpiolib-of.h
@@ -16,7 +16,7 @@ struct gpio_desc *of_get_named_gpiod_flags(struct device_node *np,
 int of_gpiochip_add(struct gpio_chip *gc);
 void of_gpiochip_remove(struct gpio_chip *gc);
 int of_gpio_get_count(struct device *dev, const char *con_id);
-bool of_gpio_need_valid_mask(struct gpio_chip *gc);
+bool of_gpio_need_valid_mask(const struct gpio_chip *gc);
 #else
 static inline struct gpio_desc *of_find_gpio(struct device *dev,
 					     const char *con_id,
@@ -36,7 +36,7 @@ static inline int of_gpio_get_count(struct device *dev, const char *con_id)
 {
 	return 0;
 }
-static inline bool of_gpio_need_valid_mask(struct gpio_chip *gc)
+static inline bool of_gpio_need_valid_mask(const struct gpio_chip *gc)
 {
 	return false;
 }
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index d45c9a2285f0..e7153c81fdaa 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -362,8 +362,8 @@ static unsigned long *gpiochip_allocate_mask(struct gpio_chip *chip)
 
 static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
 {
-	if (IS_ENABLED(CONFIG_OF_GPIO))
-		gc->need_valid_mask = of_gpio_need_valid_mask(gc);
+	if (of_gpio_need_valid_mask(gc))
+		gc->need_valid_mask = true;
 	if (!gc->need_valid_mask)
 		return 0;
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
