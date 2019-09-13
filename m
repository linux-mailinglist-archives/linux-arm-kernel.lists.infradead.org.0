Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E753B28C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 01:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBSHYWOgq9d8jOr9sSlZjxAIcSSS5sRcjJAIHqZaFSA=; b=ScxyC3MR51HJ28
	9bRkfz8mn1ktkAQIiCXHJpd0c2tOChUVzKn6O9D36rU/SxxD2uKB5XYB/n7N1GKpqayVxtDKIrMES
	i1aD2+r3Gou8n/sgmX8RM9hBaKXRaf/KNpixtVYknbkZ2uqdcZ9znQ3ujKSxCx8OBjCzaPIo5xw9R
	LdoOu6MCeyTa4J2RoGCMWtQlGwPVX6E/aiJJQ2l3d/uv8bgGHMZ3d8/JQ9OMcl1WdtTUrdfbTyt/v
	hvH4by/O5yZPkCLc40eUXPkTBG2gJaVbWSTg+mIk86eFFsRRD16o2KmrFywQ9K6m4hRKRB70xHkNv
	nUrGP6M6whlWlk/eNOgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8uaI-0004DV-2R; Fri, 13 Sep 2019 23:02:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ua7-0004D2-62; Fri, 13 Sep 2019 23:02:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so18997902pfw.2;
 Fri, 13 Sep 2019 16:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jAMHGCh76jmNllySEZ33/7buYUTuguvcqBjwlzDbw9I=;
 b=lqhNQ+AMMLVfE1cXysvYLaI6dD0gpROnPLHr/V9qOGSyrSM35/tgwx2+xQVT/X3LI9
 wQPMGw3PYfs8eImBwh4q/5uo9FHFgFvWBKAqlFZ2/7k+VSoT9Fso87i7OjIDxRxF/pqp
 8Cz2DP+hQZG4kcsZLzdpmCBsPHHPldm9p0adAwwi/qvhopkMTRETE0G5aK7Ug2kb46wu
 2ysTK08vo/LMBZJeAV/My/MK4ez3ZcNYGWA+Cy6CvILDumqjzxR9bDYr+npYscj6nDGw
 ljmvYQhQp8WC8L1PS85o4GN2cpBfKYAX89K0+AkxehcHYm7U8zqYWxS3sXcxTqt0gnhH
 eMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=jAMHGCh76jmNllySEZ33/7buYUTuguvcqBjwlzDbw9I=;
 b=rhOIxXDnn7CtdBxgvOLBOD3XEfqHiEL78X7mTHGlnXwzjbdKUe40df78vjS3JOhOo1
 6d75miEYTwWV8C8sm8pXiZRp2Ux3ynNzw9D97Z+YJhpBY2oyBeKh0YBACD/ioD6s6LiW
 Dvgy9551kwJiHKEj6wjnRjd+kqhrHol1kr+jefmwv1z/i70dqPLlJxaouRtAew0DrlCv
 VFo9S14EKs+cHZ0OwiwO/Tl3LjHd49dCUyDR+boEM1lXQH9L7cch2gtPtcAx4zDhUSbh
 NoHvKHMI4HIWWpR1+K3+ej+HipCpsmhdDCdwfOrR7rshFd4PRn/6YRWcOblHvERbWzJK
 MVjA==
X-Gm-Message-State: APjAAAUEJhcCJ+bwSHZm/TgxgzGDS6FxOe9hfeJxY3WOBtWvJopnNtZa
 SfGXwKddFLIKkBP5OfZJjHTt7gAUUoA=
X-Google-Smtp-Source: APXvYqw+VhJqMGommA9/HSsuDGUgBkvpoZEXJrsVBDMeTkmLzrzNl00AHKllKHZm40M6484MQjgy3g==
X-Received: by 2002:a65:628f:: with SMTP id f15mr1563479pgv.215.1568415741457; 
 Fri, 13 Sep 2019 16:02:21 -0700 (PDT)
Received: from [10.67.49.31] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id a12sm5926492pfn.95.2019.09.13.16.02.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 16:02:20 -0700 (PDT)
Subject: Re: [PATCH V2 05/13] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-6-git-send-email-wahrenst@gmx.net>
 <d89bbc4b-b6bc-0d4e-86d1-6be11876ce00@gmail.com> <87o8zp1h4u.fsf@anholt.net>
 <097c31de-4b11-92a8-af22-c34d6317359c@gmx.net>
 <218baa70-9849-63db-4989-c6d658b11c6d@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <e75d8d6e-8f63-09b7-2489-dc87bc9dcd98@gmail.com>
Date: Fri, 13 Sep 2019 16:02:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <218baa70-9849-63db-4989-c6d658b11c6d@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_160223_255798_7C87FA03 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/13/19 12:13 AM, Matthias Brugger wrote:
> 
> 
> On 13/09/2019 03:20, Stefan Wahren wrote:
>> Am 12.09.19 um 20:52 schrieb Eric Anholt:
>>> Matthias Brugger <matthias.bgg@gmail.com> writes:
>>>
>>>> On 13/08/2019 18:20, Stefan Wahren wrote:
>>>>> The new BCM2711 supports an additional clock for the emmc2 block.
>>>>> So add a new compatible and register this clock only for BCM2711.
>>>>>
>>>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>>>> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
>>>>> Acked-by: Eric Anholt <eric@anholt.net>
>>>>> ---
>>>>>  drivers/clk/bcm/clk-bcm2835.c | 20 +++++++++++++++++++-
>>>>>  1 file changed, 19 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
>>>>> index 21cd952..fdf672a 100644
>>>>> --- a/drivers/clk/bcm/clk-bcm2835.c
>>>>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>>>>> @@ -114,6 +114,8 @@
>>>>>  #define CM_AVEODIV		0x1bc
>>>>>  #define CM_EMMCCTL		0x1c0
>>>>>  #define CM_EMMCDIV		0x1c4
>>>>> +#define CM_EMMC2CTL		0x1d0
>>>>> +#define CM_EMMC2DIV		0x1d4
>>>>>
>>>>>  /* General bits for the CM_*CTL regs */
>>>>>  # define CM_ENABLE			BIT(4)
>>>>> @@ -290,7 +292,8 @@
>>>>>  #define BCM2835_MAX_FB_RATE	1750000000u
>>>>>
>>>>>  #define SOC_BCM2835		BIT(0)
>>>>> -#define SOC_ALL			(SOC_BCM2835)
>>>>> +#define SOC_BCM2711		BIT(1)
>>>>> +#define SOC_ALL			(SOC_BCM2835 | SOC_BCM2711)
>>>>>
>>>>>  /*
>>>>>   * Names of clocks used within the driver that need to be replaced
>>>>> @@ -2003,6 +2006,16 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>>>>>  		.frac_bits = 8,
>>>>>  		.tcnt_mux = 39),
>>>>>
>>>>> +	/* EMMC2 clock (only available for BCM2711) */
>>>>> +	[BCM2711_CLOCK_EMMC2]	= REGISTER_PER_CLK(
>>>>> +		SOC_BCM2711,
>>>>> +		.name = "emmc2",
>>>>> +		.ctl_reg = CM_EMMC2CTL,
>>>>> +		.div_reg = CM_EMMC2DIV,
>>>>> +		.int_bits = 4,
>>>>> +		.frac_bits = 8,
>>>>> +		.tcnt_mux = 42),
>>>>> +
>>>>>  	/* General purpose (GPIO) clocks */
>>>>>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>>>>>  		SOC_ALL,
>>>>> @@ -2238,8 +2251,13 @@ static const struct cprman_plat_data cprman_bcm2835_plat_data = {
>>>>>  	.soc = SOC_BCM2835,
>>>>>  };
>>>>>
>>>>> +static const struct cprman_plat_data cprman_bcm2711_plat_data = {
>>>>> +	.soc = SOC_BCM2711,
>>>>> +};
>>>>> +
>>>>>  static const struct of_device_id bcm2835_clk_of_match[] = {
>>>>>  	{ .compatible = "brcm,bcm2835-cprman", .data = &cprman_bcm2835_plat_data },
>>>>> +	{ .compatible = "brcm,bcm2711-cprman", .data = &cprman_bcm2711_plat_data },
>>>> Because the RPi4 FW uses bcm2838-cprman as compatible, we will need to add this
>>>> here as well.
>>> Upstream has not committed to backwards compat with Pi's firmware.  That
>>> makes the ABI requirement we get held to for upstream's DT absurd, but
>>> that's the state of things.
>>
>> We also learned from past, that's not possible to keep things downstream
>> compatible. As soon as a binding is not accepted, this wont work
>> anymore. A lot of the downstream stuff is hacky.
>>
>> For example yesterday, i learned that the thermal node is broken
>> (register is part of ring oscillator block). So do we really want to be
>> compatible with a hack? I would say: No
>>
> 
> There is always the possibility to fix this in the FW, which in many cases will
> be trivial.

In many cases, the firmware can certainly be changed to support both
downstream and upstream properties, as long as the layout is not
fundamentally incompatible obviously. If this is just a game of
compatible strings, both can be provided and it should not cause any
issues as long as you are not mixing downstream and upstream drivers for
the same purpose.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
