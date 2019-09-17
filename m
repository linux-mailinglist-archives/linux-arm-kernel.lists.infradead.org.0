Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B561B4FEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xWvp+B+yTIsjbSSijeo9X0rpMca24TxWEkgDNxuw3PU=; b=PY/mmBBRIkS1RdKRSNWj4K2aSG
	R4j1QQMdgE8xoNXFcOksNWa8JfVHz+YqBXPpZK1d6xKfxzOhNMWlcssprNsQjhm9ucKgo1QHboiqE
	DyXrYDI3iA3z1tD/55umA6kWp7XBpPeu01TbmuLf58Z3GMJkuG9+eJv0pai0TW9Id+JD9a18p6BIT
	N2uSsASc/8ZgKyuW5fX7Ci5HnifedcogcJx8I0TOvESNnd7Ji34xq2e8JLXXco7T+CSBY0559q442
	A7JXkqfHVbnt6OGI0BjhYHrZD2Fp677WNnD/GYyHe/9md4i+iD6BXGWxxFbA7cGuRc5Bv+BJjQTC8
	QG3NUU3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAE98-0002JD-Oy; Tue, 17 Sep 2019 14:07:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAE8n-0002Gc-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:07:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id v8so3359137wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 07:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=klNvHmn4dmHfYFGr5swA66ym/DQGM3Z/kdqx0uiahpE=;
 b=NSecsQS+hDnfX+rDlomI8H2OgtTXTsXgOIttvrEaypoS5p8Eb7uq3Kjwv8OskLfir9
 uMEG8ywqJETXCXNBwoBYYb0Yj5VH1X9vMwm/EQw1Pb+fHsaNMAgF0AudlFHkk3k8GbQd
 H4CazWHRz/zavuyBcm0zw+qyyfwooVI/x7gG8sMamqbYBffH4XB+luU3jNaaBk1H8wwH
 ojb/+JSLw/FNh+yuiXvVL71OyVgxbdjqKd68HHf3ZzVPEFUj5rwvN0hlNZAGyQwxWvcl
 MirXG4zUP54Uxfr7p6kuL+SAuxbyYAfyCTBA5xePg9tEPbV3tbebMi2719zy5zXQ+p8V
 ol7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=klNvHmn4dmHfYFGr5swA66ym/DQGM3Z/kdqx0uiahpE=;
 b=N5tV1dyct/h3eti49ta/J/3NzGW7EksPAjRqcckOOmqb5XvWTO814UJSaSWtM3JI6H
 XU3mLCwKe9uhCGwUhu2wz6fIVRSjJAf/fRgH/UrbS7y+ZsoEcCQANNo80fP1vNT3EZ8v
 gwbiksIANbXdkXFhDJyH9WjxeQxtr3DeGHbeeYYopSAnCUpj5Th+K+qD2G4L3QWJWsOj
 rE8n+rTfvLyl72P12nud9AI9pC8tbDk7Hdq+1sTfJZHOWH2XcwgF9ukwm//6i9G3DamU
 4DwADdahDi9uh6L6ap0zLrA2JYzZ5goW4m+A4HOfUO+TQG0UU1xmUqZcVcPwo1E1KTEw
 CIkQ==
X-Gm-Message-State: APjAAAWU4zCJVQ/W3AwbX7cdu96ANwn//nqCjX9/ysFCxtmAOVd6qE8o
 AF/q9QBnA7lcR5LgC/pJWdKcZg==
X-Google-Smtp-Source: APXvYqxABF+5PaKhoVrX5R6Isn4saEC5uBpJxvivRCXdNynAdaHADyXVenpJPWk+leolVADkRJs0FA==
X-Received: by 2002:adf:f303:: with SMTP id i3mr3358580wro.242.1568729255973; 
 Tue, 17 Sep 2019 07:07:35 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 33sm4458213wra.41.2019.09.17.07.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 07:07:35 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
X-Google-Original-From: Jerome Brunet <jbrunet@starbuckisacylon.baylibre.com>
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
 <1568700442-18540-3-git-send-email-qianggui.song@amlogic.com>
 <1jef0f46fj.fsf@starbuckisacylon.baylibre.com>
 <73dc56bd-d6c5-1de7-e97e-91479a89a29e@amlogic.com>
User-agent: mu4e 1.3.1; emacs 26.2
To: Qianggui Song <qianggui.song@amlogic.com>
Subject: Re: [PATCH 2/3] pinctrl: meson-a1: add pinctrl driver for Meson A1 Soc
In-reply-to: <73dc56bd-d6c5-1de7-e97e-91479a89a29e@amlogic.com>
Date: Tue, 17 Sep 2019 16:07:34 +0200
Message-ID: <1j8sqn3tjt.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070737_658507_2C5201E5 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 17 Sep 2019 at 13:51, Qianggui Song <qianggui.song@amlogic.com> wrote:
>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
>>> index 8bba9d0..885b89d 100644
>>> --- a/drivers/pinctrl/meson/pinctrl-meson.c
>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
>>> @@ -688,8 +688,12 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>>>  
>>>  	pc->reg_ds = meson_map_resource(pc, gpio_np, "ds");
>>>  	if (IS_ERR(pc->reg_ds)) {
>>> -		dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>> -		pc->reg_ds = NULL;
>>> +		if (pc->data->reg_layout == A1_LAYOUT) {
>>> +			pc->reg_ds = pc->reg_pullen;
>> 
>> IMO, this kind of ID based init fixup is not going to scale and will
>> lead to something difficult to maintain in the end.
>> 
>> The way the different register sets interract with each other is already
>> pretty complex to follow.
>> 
>> You could rework this in 2 different ways:
>> #1 - Have the generic function parse all the register sets and have all
>> drivers provide a specific (as in gxbb, gxl, axg, etc ...)  function to :
>>  - Verify the expected sets have been provided
>>  - Make assignement fixup as above if necessary
>> 
>> #2 - Rework the driver to have only one single register region
>>  I think one of your colleague previously mentionned this was not
>>  possible. It is still unclear to me why ...
>> 
> Appreciate your advice.  I have an idea based on #1, how about providing
> only two dt parse function, one is for chips before A1(the old one),
> another is for A1 and later chips that share the same layout. Assign
> these two functions to their own driver.

That's roughly the same thing as your initial proposition with function
pointer instead of IDs ... IMO, this would still be a quick fix to
address your immediate topic instead of dealing with the driver as
whole, which is my concern here.

>>> +		} else {
>>> +			dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>> +			pc->reg_ds = NULL;
>>> +		}
>>>  	}
>>>  
>>>  	return 0;
>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
>>> index c696f32..3d0c58d 100644
>>> --- a/drivers/pinctrl/meson/pinctrl-meson.h
>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
>>> @@ -80,6 +80,14 @@ enum meson_pinconf_drv {
>>>  };
>>>  
>>>  /**
>>> + * enum meson_reg_layout - identify two types of reg layout
>>> + */
>>> +enum meson_reg_layout {
>>> +	LEGACY_LAYOUT,
>>> +	A1_LAYOUT,
>>> +};
>>> +
>>> +/**
>>>   * struct meson bank
>>>   *
>>>   * @name:	bank name
>>> @@ -114,6 +122,7 @@ struct meson_pinctrl_data {
>>>  	unsigned int num_banks;
>>>  	const struct pinmux_ops *pmx_ops;
>>>  	void *pmx_data;
>>> +	unsigned int reg_layout;
>>>  };
>>>  
>>>  struct meson_pinctrl {
>> 
>> .
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
