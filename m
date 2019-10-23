Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8067AE1B8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SIGpemgjvRHvu2qeIJYYPfwZn4U3arTmzNlZ4a+kavs=; b=XnkdmAYuKxPz9vcFk2Eb//nCSJ
	YfcjlIOmKZXdvP7qRnPphNUvd1bYWQsGzDLb8xH8d2rBaX/9McAZIhDqOMu7EOS46xbhnWr1GPT3b
	1RQOWK1DgqmleaOvZ1iaZuN+cOWldjUz180LihYXroZvRQh/XJAdz2IXc4xW70p2ZpbuaC9MXP28r
	z5I2oZQG7zZzpDo9fZdXrD1PNy6vFuOm2KETPg24nKd2P9mzik+640YRGA4y/F02sumyIpru4xHWh
	09BbIHtGcBhV51KItZp9AWt7ufLyo+SVjg5Cebp21jEw0aLJiE2IP7+WH+FOB2Tu6KQvwdtBGNjGF
	YgXtRJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGDv-00068U-GA; Wed, 23 Oct 2019 12:58:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGDh-00064A-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:58:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so13958001wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=LPwRM5SkXWTw1iz0OjlwN2KREKzgEFscadlMI1wPDW0=;
 b=ZPB2IwX5HOazqNIIwS1xuTBbA+AmiG3aY4vZ58AJpEMoyBhzjUwpHL6BHCj7oqBTMv
 E9rBSjGVUNlWSoNQH4rzvJAh5WFSSqVO67B/ib4CgrWZiK6eftbfKW0eHWO8NklXyg2D
 kbr9oo9zTKO5S0qusGbhrDBTJkJMARjEtz5aUd4WcldnEMGYus75S1axmmG1RLLeUPrc
 qxQne30qVmKM0Om6cLO34du0AA6wZQ/BNujxh4SNJzCfF0vjzGDE+T/aVPXvP1vp6VeK
 UHE8mJ/k2wo7qaqii9Ysw6yn9hlxB38xkHswaclEhXVK/5QaFQnT+2IM3obLdcNue9nj
 r19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=LPwRM5SkXWTw1iz0OjlwN2KREKzgEFscadlMI1wPDW0=;
 b=U+bhvPy31LRfrMnHgXMfwXKUnxt5VMQGzxJk2IO3+eoeriYoUE3wv8NJEv4+e7jG0X
 4sVKeX7458qzOElE9YBgA1AF49TD4jlw8c6EemxPXLmhIAkqU7LDdtEhgn2XjU+4Ks4O
 puP4RGxHmA278em7ynAHrXYIiQK70LkT+djSO1yrzuP4Jm79+Yn9hdYdyStqwWVUk9yO
 bAa1v0vxFvn3wfhnLGtVMKP94AB7c+4OFkXpEjdLjjTFUCAfHvIn5tdhtyWiDIFWHSbg
 BZKj+NaOciBwI3ZpfBdp5YzTuAWGdJ+A3Mqb73xF3EvxGNsBgNwszD7nPoHriZ6tATEw
 8LFw==
X-Gm-Message-State: APjAAAUUQZ3LEfTXmOvbJLnjyYKI+tFsttMBDVta1ZehRekqOcA4n3xz
 xrf1biRZtaBoV7kWAovBEnFOhA==
X-Google-Smtp-Source: APXvYqywg2S9jhWSpoqOwVWViWWqnSo8imGRG7G2PLFS19YVBwtNMBZCrjdmF62eeLsIl1tDrAHmTg==
X-Received: by 2002:a05:600c:2152:: with SMTP id
 v18mr7952882wml.170.1571835511464; 
 Wed, 23 Oct 2019 05:58:31 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a186sm20669867wmd.3.2019.10.23.05.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:58:30 -0700 (PDT)
References: <1571050492-6598-1-git-send-email-qianggui.song@amlogic.com>
 <1571050492-6598-3-git-send-email-qianggui.song@amlogic.com>
 <1j4kzzvnrr.fsf@starbuckisacylon.baylibre.com>
 <4e4aa76e-d315-2b99-91f4-6667eb5221e7@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Qianggui Song <qianggui.song@amlogic.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3 2/4] pinctrl: meson: add a new dt parse callback for
 Meson-A series SoCs
In-reply-to: <4e4aa76e-d315-2b99-91f4-6667eb5221e7@amlogic.com>
Date: Wed, 23 Oct 2019 14:58:29 +0200
Message-ID: <1j1rv3vcsq.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_055833_670418_CC902250 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin
 Pan <jianxin.pan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 23 Oct 2019 at 14:33, Qianggui Song <qianggui.song@amlogic.com> wrote:

> On 2019/10/23 17:01, Jerome Brunet wrote:
>> 
>> On Mon 14 Oct 2019 at 12:54, Qianggui Song <qianggui.song@amlogic.com> wrote:
>> 
>>>
>>> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
>>> index 8bba9d053d9f..e8f6298fc96a 100644
>>> --- a/drivers/pinctrl/meson/pinctrl-meson.c
>>> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
>>> @@ -695,6 +695,17 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
>>>  	return 0;
>>>  }
>>>  
>>> +int meson_pinctrl_parse_dt_extra(struct meson_pinctrl *pc,
>>> +				 struct device_node *node)
>> 
>> This function is the fixup for the a1 family, AFAICT.
>> It should be named as such and it belong in pinctrl-meson-a1.c
>> 
>> Every controller performing fixups should have their function as well:
>>  (1) AO of gxbb, gxl and axg 
>>  (2) AO of g12 and sm
>> 
> OK, Will try to move this function to pinctrl-meson-a1.c. That should be
> better than rewriting parse function for each chips EE/AO alone.
>>> +{
>>> +	int ret;
>>> +
>>> +	ret = meson_pinctrl_parse_dt(pc, node);
>> 
>> As said in previous review,  meson_pinctrl_parse_dt() should be called
>> for every SoC to parse the *available* regions.
>> 
>> The fixup, if necessary, will be done by providing a callback
>> 
>> IOW, please:
>>  * rework meson_pinctrl_parse_dt() to only parse the avaialble region
>>  * don't call meson_pinctrl_parse_dt() from the extra function
>>  * provided the extra function for the AO controllers of the other SoCs
>> 
> That means I need to move not only ao fixup but ds to extra function for
> old chips do not support this.But it will touch other Socs, should I do
> this in A1 pinctrl patchset? or do this rework in another patchset.

I don't there any problem doing in a single patchset.

For example, you can make a first that does the rework for the older SoCs
and add the "extra" mechanism then another one adding A1 support

>>> +	pc->reg_ds = pc->reg_pullen;
>>> +
>>> +	return ret;
>>> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
