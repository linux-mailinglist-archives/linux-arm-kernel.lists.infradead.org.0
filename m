Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3626EB5D6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rib2pqFfYJbtjX7/JfjsU0RMbo6lHmj7x4nL4yv1xaM=; b=N2/RjoEhKcV2eb
	+Vfz3I/lH0zBHKbicx2PGYQlSQ85vCmvV44Bu9R92QGS+C4EvN2MyKPdU/AO/E2rA5yggiDNrCJvE
	nNHydbG6GTp/rOOzEFFx2cnpQPPlmyNKDE/JnPB0UsnSlGf73yYBqrHlrE/xsxLXdyQz+TK3YEYSY
	mm/Ltp8ET0M4viiBwU8ROjATTdph+7oN9FZn8RIVOZsbVnB3oms69MZlTRIJvDiIX3MjzU9Npepab
	LhAj9t3Tzswv5akLLJL/4IsicW/n3l3G/ePGCvmCKPDsHvlvIQwVUlsktvThVD+STiIirLsXJp3q9
	QTTqkb0Mzv4YZryTAxLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iATZ8-0001Lk-Sf; Wed, 18 Sep 2019 06:35:50 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iATYr-0001JG-8f; Wed, 18 Sep 2019 06:35:35 +0000
Received: from [10.28.18.45] (10.28.18.45) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Sep
 2019 14:36:22 +0800
Subject: Re: [PATCH 2/3] pinctrl: meson-a1: add pinctrl driver for Meson A1 Soc
To: Jerome Brunet <jbrunet@baylibre.com>
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
 <1568700442-18540-3-git-send-email-qianggui.song@amlogic.com>
 <1jef0f46fj.fsf@starbuckisacylon.baylibre.com>
 <73dc56bd-d6c5-1de7-e97e-91479a89a29e@amlogic.com>
 <1j8sqn3tjt.fsf@starbuckisacylon.baylibre.com>
From: Qianggui Song <qianggui.song@amlogic.com>
Message-ID: <45b97927-c771-808a-b214-509af6c16931@amlogic.com>
Date: Wed, 18 Sep 2019 14:36:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1j8sqn3tjt.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.18.45]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_233533_311252_D7C57253 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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


On 2019/9/17 22:07, Jerome Brunet wrote:
> 
> On Tue 17 Sep 2019 at 13:51, Qianggui Song <qianggui.song@amlogic.com> wrote:
>>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
>>>> index 8bba9d0..885b89d 100644
>>>> --- a/drivers/pinctrl/meson/pinctrl-meson.c
>>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
>>>> @@ -688,8 +688,12 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>>>>  
>>>>  	pc->reg_ds = meson_map_resource(pc, gpio_np, "ds");
>>>>  	if (IS_ERR(pc->reg_ds)) {
>>>> -		dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>>> -		pc->reg_ds = NULL;
>>>> +		if (pc->data->reg_layout == A1_LAYOUT) {
>>>> +			pc->reg_ds = pc->reg_pullen;
>>>
>>> IMO, this kind of ID based init fixup is not going to scale and will
>>> lead to something difficult to maintain in the end.
>>>
>>> The way the different register sets interract with each other is already
>>> pretty complex to follow.
>>>
>>> You could rework this in 2 different ways:
>>> #1 - Have the generic function parse all the register sets and have all
>>> drivers provide a specific (as in gxbb, gxl, axg, etc ...)  function to :
>>>  - Verify the expected sets have been provided
>>>  - Make assignement fixup as above if necessary
>>>
>>> #2 - Rework the driver to have only one single register region
>>>  I think one of your colleague previously mentionned this was not
>>>  possible. It is still unclear to me why ...
>>>
>> Appreciate your advice.  I have an idea based on #1, how about providing
>> only two dt parse function, one is for chips before A1(the old one),
>> another is for A1 and later chips that share the same layout. Assign
>> these two functions to their own driver.
> 
> That's roughly the same thing as your initial proposition with function
> pointer instead of IDs ... IMO, this would still be a quick fix to
> address your immediate topic instead of dealing with the driver as
> whole, which is my concern here.
> 
For #1. It would be like
generic_parse_dt()
{
	1. parse all register regions (mux gpio pull pull_en ds)
	
	2. call  specific function through function pointer in
 	   meson_pinctrl_data.(each platform should have AO and EE two
           specific functions for they are not the same)
	{
		do work you mentioned above
	}
}
right ?
If that so, maybe there are a lot of duplicated codes for most Socs
share the same reg layout. So I guess five specific functions are
enough: AXG and before(ao,ee), G12A(ao,ee) and A1(will place them in
pinctrl_meson.c). Since m8 to AXG are the same register layout for both
ee and ao, G12A with new feature ds and new ao register layout.

Or I misunderstood the #1 ?
>>>> +		} else {
>>>> +			dev_dbg(pc->dev, "ds registers not found - skipping\n");
>>>> +			pc->reg_ds = NULL;
>>>> +		}
>>>>  	}
>>>>  
>>>>  	return 0;
>>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
>>>> index c696f32..3d0c58d 100644
>>>> --- a/drivers/pinctrl/meson/pinctrl-meson.h
>>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.h
>>>> @@ -80,6 +80,14 @@ enum meson_pinconf_drv {
>>>>  };
>>>>  
>>>>  /**
>>>> + * enum meson_reg_layout - identify two types of reg layout
>>>> + */
>>>> +enum meson_reg_layout {
>>>> +	LEGACY_LAYOUT,
>>>> +	A1_LAYOUT,
>>>> +};
>>>> +
>>>> +/**
>>>>   * struct meson bank
>>>>   *
>>>>   * @name:	bank name
>>>> @@ -114,6 +122,7 @@ struct meson_pinctrl_data {
>>>>  	unsigned int num_banks;
>>>>  	const struct pinmux_ops *pmx_ops;
>>>>  	void *pmx_data;
>>>> +	unsigned int reg_layout;
>>>>  };
>>>>  
>>>>  struct meson_pinctrl {
>>>
>>> .
>>>
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
