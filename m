Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73584B7F0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRD7Ph5Vl83X+KM3LPtKh7PTKU14A04eVUsEHBTERHY=; b=Z/+UYHUeL+9YcO
	V0YUmC629pVIr7Nzfv1VeD4i/HPiu9ce4YiZ7lpN6Ir03oIhRK/CDvPXT1hYjnt/gFaXsWMGqyFqK
	/PHRlAjJD6rIXYPCrPTvsgaJFPMxT56WNoL7qSHZEWemwUY4QB4/wtPRRupa3ygBHxWWrQihZe1Ck
	ovmFoMT3jrIvfGlGVXnj+j4MpxA+k3AJTHUDJ9fuerKRYn95aXhjRYOo6wm2/vwqB5cVkohsAmGqi
	joMB78odK4phbG+txm5jV7hQqoZdk4lqj3pN6AbomseqN0T3EiOXUbFpnTwXKz06QLfU5F9v55hlr
	VmUYQlo1vN0NFm/qrvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAzGY-00056z-0K; Thu, 19 Sep 2019 16:26:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAzG6-00053e-OP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 16:26:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so3776804wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 09:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=eb8f6VuJqsSMS2/D/ckOQPK7W3A97rYvCXWb3UVC6+4=;
 b=0TbJzFxYZopHqvYwhH1BVVBEYrOmtm1w81nyw8Wyw5JulXLOQOjIYq9hyFlcqfF52/
 byLel52p0mJoHcWGe0iYOuZz4+2JFKTd2D7s0t/uPjlZFX2AV7vj0De/JaH0kw/gh1OH
 fE8W8IHheejwM8ReGx87CVquAnConNpINqlWgRJBXyQlkXQaz6xFoMCNNY0fBWxc3+93
 2w1riLyGAZd1mX9ujVzUNWAtUGpNmZk38oQ9RBU7ds2NCOOOQe1+BqCa7q2LzkWDDJk7
 RBkbkf7r6w2IRiOOiY0M/9mDwYCDgPCcZ1F+2fvKXBPMRen/ng4R6NFp8oVq7StCIKNt
 ubVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=eb8f6VuJqsSMS2/D/ckOQPK7W3A97rYvCXWb3UVC6+4=;
 b=YDgSBulAJILnYffbhXV0bySCoDz7xVufS1lvGtHeo8RbkwFYHRS+oGd20Vsl6tlbYZ
 3hEfPZ7csK36kCikAh3lVbn3484N8yawEVAXS8LzmvslfmPjLhipCAeSA0Pz/mk5qQ/4
 yBZPAbeKIC8ooCB9soHjCNcGryUghaH5k0TFc1tLYyZ3Hwp9sxb+PklWxQIW5ZE4UzZG
 N5IIcF7+3GjboBoGDZc9Z05mqovvkD5RwNSQO6QlPpU20x+fHKZGSZk5DTYVHS3mb/lp
 IyVc3vJ7tx73IX3+1TKdSUxZhUxgBRdE6VxO66wh04BKpsnmEyb3hDajj9i/4cCNaFuO
 kQNw==
X-Gm-Message-State: APjAAAVil+Poo4IJA7dtoVOXoX7mRajKbhmvFqf7r0j8Uzt5E0MesAa8
 pbo3K0tKPqsgo+g9lYxW1POR/Q==
X-Google-Smtp-Source: APXvYqwTyge27dKIdDfTXksz1QHnAKrUp59hkcTX1p/cAbYcmRmSomHcTOHZ1TvU0jQsbUUt0YXudQ==
X-Received: by 2002:a5d:6647:: with SMTP id f7mr8068290wrw.170.1568910377158; 
 Thu, 19 Sep 2019 09:26:17 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h26sm19458181wrc.13.2019.09.19.09.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 09:26:16 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Qianggui Song <qianggui.song@amlogic.com>
Subject: Re: [PATCH 2/3] pinctrl: meson-a1: add pinctrl driver for Meson A1 Soc
In-Reply-To: <45b97927-c771-808a-b214-509af6c16931@amlogic.com>
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
 <1568700442-18540-3-git-send-email-qianggui.song@amlogic.com>
 <1jef0f46fj.fsf@starbuckisacylon.baylibre.com>
 <73dc56bd-d6c5-1de7-e97e-91479a89a29e@amlogic.com>
 <1j8sqn3tjt.fsf@starbuckisacylon.baylibre.com>
 <45b97927-c771-808a-b214-509af6c16931@amlogic.com>
Date: Thu, 19 Sep 2019 18:26:15 +0200
Message-ID: <1jk1a4b6c8.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_092618_839586_05E7BD18 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 18 Sep 2019 at 14:36, Qianggui Song <qianggui.song@amlogic.com> wrote:

> On 2019/9/17 22:07, Jerome Brunet wrote:
>> 
>> On Tue 17 Sep 2019 at 13:51, Qianggui Song <qianggui.song@amlogic.com> wrote:
>>>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
>>>>> index 8bba9d0..885b89d 100644
>>>>> --- a/drivers/pinctrl/meson/pinctrl-meson.c
>>>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
>>>>> @@ -688,8 +688,12 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>>>>>  
>>>>>  	pc->reg_ds = meson_map_resource(pc, gpio_np, "ds");
>>>>>  	if (IS_ERR(pc->reg_ds)) {
>>>>> -		dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>>>> -		pc->reg_ds = NULL;
>>>>> +		if (pc->data->reg_layout == A1_LAYOUT) {
>>>>> +			pc->reg_ds = pc->reg_pullen;
>>>>
>>>> IMO, this kind of ID based init fixup is not going to scale and will
>>>> lead to something difficult to maintain in the end.
>>>>
>>>> The way the different register sets interract with each other is already
>>>> pretty complex to follow.
>>>>
>>>> You could rework this in 2 different ways:
>>>> #1 - Have the generic function parse all the register sets and have all
>>>> drivers provide a specific (as in gxbb, gxl, axg, etc ...)  function to :
>>>>  - Verify the expected sets have been provided
>>>>  - Make assignement fixup as above if necessary
>>>>
>>>> #2 - Rework the driver to have only one single register region
>>>>  I think one of your colleague previously mentionned this was not
>>>>  possible. It is still unclear to me why ...
>>>>
>>> Appreciate your advice.  I have an idea based on #1, how about providing
>>> only two dt parse function, one is for chips before A1(the old one),
>>> another is for A1 and later chips that share the same layout. Assign
>>> these two functions to their own driver.
>> 
>> That's roughly the same thing as your initial proposition with function
>> pointer instead of IDs ... IMO, this would still be a quick fix to
>> address your immediate topic instead of dealing with the driver as
>> whole, which is my concern here.
>> 
> For #1. It would be like
> generic_parse_dt()
> {
> 	1. parse all register regions (mux gpio pull pull_en ds)
> 	
> 	2. call  specific function through function pointer in
>  	   meson_pinctrl_data.(each platform should have AO and EE two
>            specific functions for they are not the same)
> 	{
> 		do work you mentioned above
> 	}
> }
> right ?
> If that so, maybe there are a lot of duplicated codes

Only if you make it so. Providing a callback and duplicating code are
not the same thing

> for most Socs share the same reg layout.

That's not really accurate:

So far they all have the "mux" and "gpio" region but

gxbb, gxl, axg, meson8 EE:
 has: pull, pull-en
 remap: non
 unsupported: ds

gxbb, gxl, axg, meson8 AO:
 has: pull
 remap: pull-en -> pull
 unsupported: ds

g12 and sm1 EE:
 has: pull, pull-en, ds
 remap: none

g12 and sm1 AO:
 has: ds
 remap: pull->gpio, pull_en->gpio

And now a1 chip remaps "ds" to "pull_en" ...

As said previouly all this is getting pretty difficult to follow and
maintain. Adding a proper callback for each meson pinctrl would make the
above explicit in the code ... which helps maintain thing, at least for
a while ...

Judging by the offsets between those regions, I still think one single
region would make things a whole lot simpler. If it is not possible to
map it with one single region, could you tell us why ? What non-pinctrl
related device do we have there ?

> So I guess five specific functions are
> enough: AXG and before(ao,ee), G12A(ao,ee) and A1(will place them in
> pinctrl_meson.c). Since m8 to AXG are the same register layout for both
> ee and ao, G12A with new feature ds and new ao register layout.
>
> Or I misunderstood the #1 ?
>>>>> +		} else {
>>>>> +			dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>>>> +			pc->reg_ds = NULL;
>>>>> +		}
>>>>>  	}
>>>>>  
>>>>>  	return 0;
>>>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
>>>>> index c696f32..3d0c58d 100644
>>>>> --- a/drivers/pinctrl/meson/pinctrl-meson.h
>>>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
>>>>> @@ -80,6 +80,14 @@ enum meson_pinconf_drv {
>>>>>  };
>>>>>  
>>>>>  /**
>>>>> + * enum meson_reg_layout - identify two types of reg layout
>>>>> + */
>>>>> +enum meson_reg_layout {
>>>>> +	LEGACY_LAYOUT,
>>>>> +	A1_LAYOUT,
>>>>> +};
>>>>> +
>>>>> +/**
>>>>>   * struct meson bank
>>>>>   *
>>>>>   * @name:	bank name
>>>>> @@ -114,6 +122,7 @@ struct meson_pinctrl_data {
>>>>>  	unsigned int num_banks;
>>>>>  	const struct pinmux_ops *pmx_ops;
>>>>>  	void *pmx_data;
>>>>> +	unsigned int reg_layout;
>>>>>  };
>>>>>  
>>>>>  struct meson_pinctrl {
>>>>
>>>> .
>>>>
>> 
>> .
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
