Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5511B1136C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1K7TKl6J4Z2KPcefz3Utx9B/GzbaYwZJWpnbOfSkQn0=; b=oUrPh+4esWtgLA
	Jg+HTPaLQP1u6WX3UMQhxYhPhsc2P+TqVLOaPZ3fXmhHFokf9Nw67MHma/PI8fdKXPtbRggFiWSX9
	haMEPfPreXB5DDIBp9vo905Q//o8BTEBtGJE33//rfSLKJSkJp1VndcFHszQrnaUS0e1Y55hh0mDb
	vLUrCH20bzFjRmjDUy1w2h4lDh4sLYpRar4Ids/EXcYr1yNxY19wQbn7XFBJLY8Fe/LPKMsgLMWfM
	kExHeNEYpnWrShbCTWlYDYOW1psB4P/Jqfa+jMlNlqzGBuyjhzHuPFpJJn6JN9RgLSQIxEDBdRFKZ
	fxDnPsQAck+WeubQW/xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbds-000628-Vr; Wed, 04 Dec 2019 20:53:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbdl-00061h-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:52:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so855992wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 12:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wmCpBK5gKfNHkehfVw0oOjmIqfu20jWLSFxK7s8CnWs=;
 b=OoFLFYixY2AfF+VyBlD1cF+DZ1WKmEOtVBMCB2bN1SGSSXcy4gPFGq6Y+PQ+Mf8gOx
 bBPhTyIoib4LVgdjUIj203iTZu8rZJu8Kti0CbxNyEDIhKnSX6juMges8H5Ky+3xYKYi
 Q67yiqmRoulqT3mCJhWFCvrOVIhm46nQTt1bfDnpDAfJNW+3sX1Hq75ygzLL0oOf10GM
 bpTCFSPNK4UylN9uAHkVg9kkOx91aDeUMpUpytHJPrRgdnVtwRWV7BGpSNSTzI6nQXnY
 d9bvLDFVRbUBnktZ8lBsft1obFtaQan4u2r7l5voT/7GwCmErM8XNMYWSRP1ZaWPoBM6
 jXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=wmCpBK5gKfNHkehfVw0oOjmIqfu20jWLSFxK7s8CnWs=;
 b=QVoSIuiagejV58cZ1bjyVPGTIZ9KGL6pe9cOQ2NB/TU6NRJ7HNX4aRIdkh+e5uV0Yg
 PlB1OzTMmQoDT0mt1XUaU8UarZjsMYGCQ9lriCrAJcSC7fF5Q3m2M8WjjAvvSL+BbMNf
 drnDWguuwFQsZTvMUsIoHiWI05RyfPTV6pI4Ih9mXqmS2enUXU9z0cZ9oLvA+ksw+7T6
 dMRFHLB1Jf8qd67xd/ZWt9+XC3byhiBPeJpeTXjKy/LJVbvU74bs+tLiF0D9U68J/B5Y
 ijNUyMWpMeiKB026AnYwVWmasuzpNieTrGPz2xJXZ2swRYO23fMhXFWG2H/zrBzQSO1H
 1j0Q==
X-Gm-Message-State: APjAAAWBTyK1z2pLYOcIzcS896G8VT7DtI09f9IV8cYakqKBkRJtiE4F
 hvnRQcN3WIoi6BgLSNOiGWw=
X-Google-Smtp-Source: APXvYqx+bYv1DQGBl83+Eeq4X705HZYCFA6Q0ckfUXAI67YjcQ0weIWLFwYxBfNFLmS+7up1TSvWIA==
X-Received: by 2002:a5d:6390:: with SMTP id p16mr6451840wru.170.1575492771741; 
 Wed, 04 Dec 2019 12:52:51 -0800 (PST)
Received: from [192.168.1.19] (cjl224.neoplus.adsl.tpnet.pl. [83.31.61.224])
 by smtp.gmail.com with ESMTPSA id 188sm7707856wmz.13.2019.12.04.12.52.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 12:52:51 -0800 (PST)
Subject: Re: "leds: gpio: Use generic support for composing LED names" breaks
 gpio debugfs
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linus Walleij <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>
References: <20191204110219.GV25745@shell.armlinux.org.uk>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <fb88206c-a094-df37-04af-71a1174fb0f6@gmail.com>
Date: Wed, 4 Dec 2019 21:52:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204110219.GV25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_125253_693910_0F341F2A 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russel,

On 12/4/19 12:02 PM, Russell King - ARM Linux admin wrote:
> Hi,
> 
> Patch d7235f5feaa0 ("leds: gpio: Use generic support for composing LED
> names") changed the way labels are used.
> 
> devm_fwnode_get_gpiod_from_child() is passed led.name, which used to be
> set to the label or node name, resulting in /sys/kernel/debug/gpio
> containing useful information.  For example:
> 
>  gpio-487 (                    |udpu:green:power    ) out lo
>  gpio-488 (                    |udpu:red:power      ) out hi
>  gpio-489 (                    |udpu:green:network  ) out hi
>  gpio-490 (                    |udpu:red:network    ) out hi
>  gpio-491 (                    |udpu:green:alarm    ) out hi
>  gpio-492 (                    |udpu:red:alarm      ) out hi
> 
> After this commit, it now contains a rather less useful:
> 
>  gpio-487 (                    |?                   ) out hi ACTIVE LOW
>  gpio-488 (                    |?                   ) out hi ACTIVE LOW
>  gpio-489 (                    |?                   ) out hi ACTIVE LOW
>  gpio-490 (                    |?                   ) out hi ACTIVE LOW
>  gpio-491 (                    |?                   ) out hi ACTIVE LOW
>  gpio-492 (                    |?                   ) out hi ACTIVE LOW
> 
> This is because led.name is now NULL prior to the call to
> devm_fwnode_get_gpiod_from_child().

Ugh, my bad. But it actually has been wrong since the patch
a96aa64cb5723 ("leds/led-class: Handle LEDs with the same name"),
which enabled LED core to amend the LED name just beforehand
the registration of a LED class device.

It seem that the only proper solution would be introducing a new
pre_register_cdev(const char *name) op to the LED core, that would allow
drivers to come up with their implementation thereof. In this particular
case leds-gpio driver would need to put there gpiod initialization.

The pre_register_device op would need to be called (when available)
from the led_classdev_register_ext() after calling
led_classdev_next_name() and before device_create_with_groups().
The op would have to be passed the final_name variable then.

> While this is not an API, it is useful for debugging, and given the
> dynamic allocation of GPIOs to physical GPIOs, having the labels
> present is an advantage.
> 
> Can this be fixed / old behaviour restored?

If there are no objections I can come up with a fix, but no
sooner than at the weekend.

-- 
Best regards,
Jacek Anaszewski

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
