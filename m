Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A124817E5E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbP3bayFhN8jO6MENh/s27spGvvnExuhTC5ENwL0y1Y=; b=F9ASk1PakNZmD2
	RqXgp67osnEl9cUWXO/FLFrt2vpyXqKcH839Au7/sReoVSVqttw7+UK/SNnwG6EaZuC4Ler8i50ou
	UXzrCM9oi9RKmmkmHzJUgCmdQd0SMJvwxv65OhWDYIuEwanmjEk60JrbWFkIiQWnFthvVW5UTJjF8
	L5oDF2GvsyWRW9++3Qu49KAQzRij4LmAJC/nFeW/bN1xS4jWRv8E9tLEXLHdMpVMlUkUi71ZR2mBH
	jd50Lvhj5RpaODmLG2t/3qOagUgsULW35M+wjOiVlMrMvBAtTHkjNdRYtsr/MfgxvIu7nk9pZHybX
	+9ZeIpO70nLhaPDrO5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMQ1-0004TF-PJ; Mon, 09 Mar 2020 17:42:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMPu-0004SP-8Z
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:42:15 +0000
Received: by mail-wm1-x341.google.com with SMTP id n2so405098wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 10:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O5XzlRhJXpNd17/Q76toYeUyU8DPAcT326EwGlOZF0s=;
 b=Lj7DWSw+kOYjv01pETYilz6LW14y0nMDyeJQC8epwaQzKflWIeQw/Cbmh0qhmorkGz
 eigKpe1tp2Ooo4Rao6mdypvT05TriZ0WZLJQmTwEGXIIdU+w+p+OrNnBnYl8tyoEjE8B
 bLLDGjqhHa1WQL97KMBlUuAPEF5I3XrlyZJckaJHsGZGnYdDIiKRePNPpYoZsa8suUfJ
 b9cMxxXPl7PrZVfDQGm5Akd7jqyz1sd+2zMpzIpzdhlyzVtRZ21MMzu2O1vrHSZLldYd
 wWB90AtkNSdIIhK9c657+WT0sUlzWEdZ/nJpkEKK/UAO9WLNb1fdujX8sGw2kOC6QgFe
 JpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=O5XzlRhJXpNd17/Q76toYeUyU8DPAcT326EwGlOZF0s=;
 b=OQVKSwKwOqHS+qb893anCd1rJcvQ7ISMcjrj1iGcTXCGnGEPVAfS4sMDKY9AXyZfKn
 gcUcCux6724YR+X7T9k3OHta7VLz2YyPJwu9r1WAznm9LwAwDuWQ5g7IZUHGW7O0V1a6
 5jdXkFxhT3V21iUVUCtHaJKun+1SYaoAj4WBQbLBpxi3jCx49XprWrQ+85r8n+KavVs/
 3/W7lNmGxC6aMfiLJlHHWpbjxeKanCebnQ/Y00nY7Ce6XIYo6M8gbobtg7VM+D8nM1nK
 ncW0UqvIWO+BQXGoKkw6uComwvJ0dzR+Q6mp2bWJggTDqCi+mB3ZDnJIZqkaIB1VIfqz
 T+BA==
X-Gm-Message-State: ANhLgQ1PABMXN76HpmXRAllY1KYyD0Q3h/RRZlvZOaPbr2vpJQLx5YO+
 cOgTUMm624STI93QWmMbvdE=
X-Google-Smtp-Source: ADFU+vsgfcaDnGCgWzq7miqzip7oobaJk0VZBJ3UrJVPQc39Yk5G4P9OVGUsu05EbLby4faR/vJsQw==
X-Received: by 2002:a1c:25c1:: with SMTP id l184mr367337wml.122.1583775732276; 
 Mon, 09 Mar 2020 10:42:12 -0700 (PDT)
Received: from [10.67.49.112] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c8sm1517272wrt.33.2020.03.09.10.42.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 10:42:11 -0700 (PDT)
Subject: Re: [PATCH] gpio: brcmstb: support gpio-line-names property
To: Gregory Fong <gregory.0xf0@gmail.com>
References: <1583539986-573-1-git-send-email-opendmb@gmail.com>
 <CADtm3G4eq_p1YZtQrtcx4LGPiY82BpgXf55YtJCW+WJSrM7siw@mail.gmail.com>
From: Doug Berger <opendmb@gmail.com>
Autocrypt: addr=opendmb@gmail.com; prefer-encrypt=mutual; keydata=
 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
 rQQYjNSD8+NSdOsIpGNCZ9xhWw==
Message-ID: <810d8c3d-482f-078c-70b5-c4123c2679b8@gmail.com>
Date: Mon, 9 Mar 2020 10:42:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CADtm3G4eq_p1YZtQrtcx4LGPiY82BpgXf55YtJCW+WJSrM7siw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_104214_331776_9B3B8E44 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [opendmb[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/9/20 12:45 AM, Gregory Fong wrote:
> Hi Doug,
> 
> On Fri, Mar 6, 2020 at 4:14 PM Doug Berger <opendmb@gmail.com> wrote:
>>
>> The default handling of the gpio-line-names property by the
>> gpiolib-of implementation does not work with the multiple
>> gpiochip banks per device structure used by the gpio-brcmstb
>> driver.
>>
>> This commit adds driver level support for the device tree
>> property so that GPIO lines can be assigned friendly names.
>>
>> Signed-off-by: Doug Berger <opendmb@gmail.com>
> 
> I've added a few comments below.  With the suggested updates:
> Acked-by: Gregory Fong <gregory.0xf0@gmail.com>
> 
>> ---
>>  drivers/gpio/gpio-brcmstb.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 44 insertions(+)
>>
>> diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
>> index 05e3f99ae59c..e9ab246e2d42 100644
>> --- a/drivers/gpio/gpio-brcmstb.c
>> +++ b/drivers/gpio/gpio-brcmstb.c
>> @@ -603,6 +603,49 @@ static const struct dev_pm_ops brcmstb_gpio_pm_ops = {
>>         .resume_noirq = brcmstb_gpio_resume,
>>  };
>>
>> +static void brcmstb_gpio_set_names(struct device *dev,
>> +                                  struct brcmstb_gpio_bank *bank)
>> +{
>> +       struct device_node *np = dev->of_node;
>> +       const char **names;
>> +       int nstrings, base;
>> +       unsigned int i;
>> +
>> +       base = bank->id * MAX_GPIO_PER_BANK;
>> +
>> +       nstrings = of_property_count_strings(np, "gpio-line-names");
>> +       if (nstrings <= base)
>> +               /* Line names not present */
>> +               return;
>> +
>> +       names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(char *),
> 
> Please use sizeof(*names) instead of sizeof(char *).
Good idea. Will do.

> 
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
>> +                                       i, ret);
> 
> Recommend adding the GPIO bank ID to this error message.
I'll use the absolute line number rather than the bank relative line
number to reduce confusion, but since it's different from your
suggestion I'll leave off your Ack in case you really want the bank
number for some reason.

> 
> Best regards,
> Gregory
> 
Thanks Gregory!
V2 coming soon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
