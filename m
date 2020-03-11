Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA011820F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1TnMwwuBdAj9SfQayTtt7U56KcHJYitTpU/R6wgfQU=; b=odTR7xgkRIYITu
	MRgQcSRtnWSmGhSh9o6EJ/8DDFY1bRUy1kmA+QvjqTAtRKko4R3foz7VHMxXpviPiaBJo0mq/cCwb
	TA0+QXONxfqE1GkxKXimgf2Uv8X0sSYWWHlkcTQuYDW5HdRu6ZkcyXU2rcrTHSaxZqz0ujI93Nob9
	hABEEbdwrEGHeG3C/AzXyPcJQRMcKu/uWZScmFj83yb9eQ7jGcz5EOcSmV09RKk9Ypb7O/pqsiwMz
	2h9xGjoqYcLxA4QS0jvfT9wOH4ssnk4RSHVeFMknNMjUbdtmFZ0X3eRxjJCYwLUFvQS7a6MbrClE4
	jqfTPTBuRhoXKf+SSDTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6FB-0002zu-Eo; Wed, 11 Mar 2020 18:38:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6F3-0002yj-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:38:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id s14so3969784wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=i3ki1XFvn7TEp/5S0kbEyql6MIJlqruhqzKBemgHTXI=;
 b=hU6s6cMWtfJinGOlywjEnRZPgbi3fgg/h5p15Sw/ZRdT8ciQdCPu4/TRqj2/0/cKAO
 tapz0Qb41Ge7EiBZoZRVMcqjRb+R0qFew5S91XbSwzW8ICb5Cn6AOZ5NV73U5uwMPNqv
 qsVK+VQ+YM6P6Dx71Yk9tgwwLPZCYbrr7O61NoSoWGwrnNYK9sO2SC1IOIT+b6hd1Bz8
 SqylbB5wkXHgAyNbZjzRuXxvTgpC5fC8eEeFypY+KfpoktDcbhsq04TdKchOo5RqTJo7
 t7x3qqGd+/vq+nqOpqtCCo1p9LhrYUH5BBHrJ1q2R1H49WCFOLuCessJ2DdyjuiafVwT
 yJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=i3ki1XFvn7TEp/5S0kbEyql6MIJlqruhqzKBemgHTXI=;
 b=NXBpw68XYv4QmOWGuV416IV9KAh8+MZLx7exWMubYY068YcIycM3sJQMbhGdk5To+o
 yzGKABXZZXXkJ6c6jAzjcs9k36DImXKV+AXuW60QHv91Ln7sAJP+O/HusPUkNHAqjv97
 mFO4SCP2OqdMCyG0mX7LELDWGGuAWNqXgS59wTwZgp2hAv8OeNN8cNLYEzjvW84RVn/B
 burS6fxEob5bVliAi7rD8LlJgmwxh2LfViaZ6MrVytWl+VXuMgyHuewwpBpfb3s4Pp7L
 I0DaKKR6YXEMv9X51/8biyJ6xD9WM5t5x3dlcOOLcurKEGDMK5xBV2OZlcN9ATwvRH5K
 zOSw==
X-Gm-Message-State: ANhLgQ0n4P+BoIHiX/nHuEoD3LwA2wiQNgiqj42ZYm40FYRV07WPExPV
 ZbK7ECs9PovgDcTLalIgdlo=
X-Google-Smtp-Source: ADFU+vscy1B3ZoGebvGm7rLx0dU9YDFxvjnzwYRa/owwer+niXOu6ljuIWQwfP4jmGZUxvVmu2qNrg==
X-Received: by 2002:a5d:608e:: with SMTP id w14mr6150991wrt.201.1583951883840; 
 Wed, 11 Mar 2020 11:38:03 -0700 (PDT)
Received: from [10.67.49.112] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u204sm6644688wmg.40.2020.03.11.11.38.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 11:38:03 -0700 (PDT)
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Linus Walleij <linus.walleij@linaro.org>
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
 <CACRpkdZ1p3_U_yth-rCEKdPsuFNFnxsE3kTeP7krf-xHuSGkFw@mail.gmail.com>
From: Doug Berger <opendmb@gmail.com>
Autocrypt: addr=opendmb@gmail.com; prefer-encrypt=mutual; keydata=
 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
 rQQYjNSD8+NSdOsIpGNCZ9xhWw==
Message-ID: <fea85d07-85de-b886-da8d-bfa23ee61b85@gmail.com>
Date: Wed, 11 Mar 2020 11:38:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ1p3_U_yth-rCEKdPsuFNFnxsE3kTeP7krf-xHuSGkFw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_113805_384027_908AA904 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [opendmb[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for taking the time to review this.

On 3/11/20 8:32 AM, Linus Walleij wrote:
> On Mon, Mar 9, 2020 at 8:02 PM Doug Berger <opendmb@gmail.com> wrote:
> 
>> The default handling of the gpio-line-names property by the
>> gpiolib-of implementation does not work with the multiple
>> gpiochip banks per device structure used by the gpio-brcmstb
>> driver.
To expand on this description, the crux of the issue is that the
gpio-brcmstb hardware has some nicely banked registers and some
not-so-nicely-banked common registers.

This lead to the decision to implement the driver to manage multiple
banks as a single GPIO device with a single device-tree node rather than
separate devices for each bank each with its own device-tree node.

In addition, most implementations include a hardware block within an
"Always On" power island and a second block that can be powered down.
Each of these blocks is represented as a separate device with their own
device-tree node and are managed by this driver.

The gpio_chip abstraction in the gpiolib provides a lot of useful
functionality for managing the banks of GPIO for the gpio-brcmstb
driver, but unfortunately it breaks down in a couple of places because
of the common device tree node that is shared by each bank.

One area is the IRQ chip helpers which were tried but needed to be reverted.

Another is labeling, which this commit attempts to address. The
device-tree node for each device can optionally contain a single
gpio-line-names property with a list of names to be applied to the GPIO
managed by the driver.

>>
>> This commit adds driver level support for the device tree
>> property so that GPIO lines can be assigned friendly names.
>>
> 
> 
>> Signed-off-by: Doug Berger <opendmb@gmail.com>
>> +static void brcmstb_gpio_set_names(struct device *dev,
>> +                                  struct brcmstb_gpio_bank *bank)
>> +{
>> +       struct device_node *np = dev->of_node;
>> +       const char **names;
>> +       int nstrings, base;
> 
> I don't understand why that thing is named "base".Since this function is applied to each bank, it is necessary to know
what the device relative index is for the first GPIO contained within
this bank. That is the purpose of this base variable. It is used to
index the device relative list of gpio labels.

GPIO0 of bank 0 would have a base of 0. GPIO0 of bank 1 would have a
base of MAX_GPIO_PER_BANK, and so on.

>> +       unsigned int i;
>> +
>> +       base = bank->id * MAX_GPIO_PER_BANK;
> 
> That would be ngpios or something.
> 
> But you alread have what you need in bank->gc.ngpio, right?
> 
> So why calculate it?
Almost. ngpios is the number of gpios in the bank which in this case is
always MAX_GPIO_PER_BANK.

bank->gc.base is almost the right value, but it is relative to the GPIO
subsystem which can include multiple devices rather than the specific
device that contains this bank.

bank->id is device relative so bank->id * MAX_GPIO_PER_BANK gives us the
desired device relative offset.

>> +       nstrings = of_property_count_strings(np, "gpio-line-names");
>> +       if (nstrings <= base)
>> +               /* Line names not present */
>> +               return;
>> +
>> +       names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(*names),
>> +                            GFP_KERNEL);
>> +       if (!names)
>> +               return;
>> +
>> +       /*
>> +        * Make sure to not index beyond the end of the number of descriptors
>> +        * of the GPIO device.
>> +        */
>> +       for (i = 0; i < bank->width; i++) {
>> +               const char *name;
>> +               int ret;
>> +
>> +               ret = of_property_read_string_index(np, "gpio-line-names",
>> +                                                   base + i, &name);
>> +               if (ret) {
>> +                       if (ret != -ENODATA)
>> +                               dev_err(dev, "unable to name line %d: %d\n",
>> +                                       base + i, ret);
>> +                       break;
>> +               }
>> +               if (*name)
>> +                       names[i] = name;
>> +       }
>> +
>> +       bank->gc.names = names;
>> +}
> 
> Why can't you just make the function
> devprop_gpiochip_set_names() public, (line in <linux/gpio/driver.h>)
> and convert your np to a fwnode and call that &bank->gc ?
This is basically the current functionality as provided by the call to
gpiochip_add_data() in probe that this commit attempts to correct.

Since the fwnode is the same for all banks of the same device each bank
repeats the first MAX_GPIO_PER_BANK label names in each bank.

This commit populates the gc.names member of each bank from the
device-tree node within the driver. This overrides the default behavior
since devprop_gpiochip_set_names() will only be called if names is NULL.

> 
> Yours,
> Linus Walleij
> 

I hope that explanation makes sense.

Thanks again,
    Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
