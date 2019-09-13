Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8EAB170C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 03:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGrjfeNCXufAciOX6HvgJejyEE6cRjl098qICcxYeW4=; b=pc47aawAA1VJKm
	RYW4HMyXdT+LPewydvcsWK2+w8e88gIJLd1O88wTZCnFlO8KsGikBIS4xk3XjX+roDlsSBs151YHE
	6PPadbOYgRTl0M64V6ODKg0PPUwiXgbhTc1LY78WQdFl0rtLuzRbDUznGpbtyc8jCLQE0q+xTJ0+e
	cuqiQ5SkBfqYNxFtad1uAZo+8TwwklETiVsRwvxQo6OJI5CCsNqdhwIEyv9tOAgpcT7osC/tHWAhO
	t6E4mzyPd6CfDnUoTBYNfvUEYAOsluFUlKz2Bc/33lgjldVqS8skP3quoBNc28RsKcpEgdK1K9ts1
	2oKgFoqOIE5cGWOyFPBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8aLv-0005nw-04; Fri, 13 Sep 2019 01:26:23 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8aLa-0005nc-Mn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 01:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568337956;
 bh=iBU9cWNR3ZA63G/kW/3WSfgT8Z4NUQ6V4SnDXgffRXE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iW27GAWlEL7b1zH5MbbaJrZNcpS/Zo0roPNR3wDGwSYJ157O9Fis/qPPcl863NCGK
 /3G1b8GvWbqd5ng73yiEFpfZPkshL6IAvHlg7UD0kfMxjmMVuvZ60uljAVLRSnsKl+
 ppCteGa4BVal4QBdzUH0OHHagOm5bnpLgRNnA5+s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MSq5p-1hjSD10BgD-00RsKl; Fri, 13
 Sep 2019 03:20:26 +0200
Subject: Re: [PATCH V2 05/13] clk: bcm2835: Add BCM2711_CLOCK_EMMC2 support
To: Eric Anholt <eric@anholt.net>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Wolfram Sang <wsa@the-dreams.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-6-git-send-email-wahrenst@gmx.net>
 <d89bbc4b-b6bc-0d4e-86d1-6be11876ce00@gmail.com> <87o8zp1h4u.fsf@anholt.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <097c31de-4b11-92a8-af22-c34d6317359c@gmx.net>
Date: Fri, 13 Sep 2019 03:20:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87o8zp1h4u.fsf@anholt.net>
Content-Language: en-US
X-Provags-ID: V03:K1:YTCNV7hqjuTzwKRxgfTRYGGrsNBZn0ALsKYUWDzWLnvq3ifMVUQ
 ygX1ID/JAhyMbEzm9ecqmkpJT1KHQM/D54lS3EZx6jfN6pWT96WIhDZnwcx77FGWfPuoJF+
 dbLMWeS35UEXwexfTkp163sq1tcIhUa3sEQkA0KfRpWR6RB2X7Xm2bSBM+9id0FfehPLnba
 sz1/EphAwDPWIoEYgGq5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4sDIUfOVUgA=:5nggcNs3DGpGpes48Qpg3g
 TO48WPdJBXXFF/PH7x9bdRxLZu9neYxt2Z+GU7n19kJ1vXvN3I8ynw4SL3yh3fS9GJcJZL91Z
 1t33zqOMU6BfmgQNfkS9akC9RUr1Vvgq706VjQKTAvyCiU0P4d1p6rgXp5k9cga4cc0DDxNzo
 hXXkfu1gD5dTDAVcg1bjIbYzd8gQ41ykPNtWSHpHIwZflJCTQ1l9b/2P8AbAfKGCrlcHUuZ40
 CBtFCjcREjxjMOszrfTMAbFpCW1jauS2HO6QnBcWRvoaV4nhtn8meT7a5xTu5BzeKo8cLYhDi
 c7QbP/hNxhjuLNU5GGURx9KOAIKqdpHI52rlzolKgi+Zz76HmAwrQM450oropQApKHK0XVi8b
 HQzFKG/kdSew53REBhaGpqPCrnoPCWSOQvfBDfOLuwrD0PgY57N7N41QIW/+Zw1iRpi9ucuhr
 yWie2IRDk8QCJweiobPFh1t27DXR1hk3wLX3d5NwXIcN/bokMZMNgdONk8oU0M+p0yOzC0SyL
 OVrdf9qrvt1zSBhLZY31rSgOW3szqCwdssD06qedlZeM9O42afo1OFU5dp01bLE/N3cZqLemg
 88XNihHtPpJAb462TM9H0RmPvIUSjR10c9+LH16nz0JeFSls89x2YdMyOgFf0O3mirdge8n/6
 z0n9Tm4Q2X6QSUhgb/PyKjEHx9lDNF/rb3+iuZxFcBvoDK0I85MZlXIH3Og1Rydql9cXlH7R2
 ZUiZ67tWko4oOldcIbM8C7FsiRe+csbWrbEjVJ3MFOc7C5Omvf+Sm9zsQxZrgH3z5shwhylV3
 EBbCEslfdadszJg9K0HnnB8MxbReapHRkV9GKIe1X53uE+V5+AkkgvWKFtsDdWNWV3IL9h2ur
 b0Tdf6TJPJNwwLL+lRmgXeeiqhVEPlU2NuYeHhBE5i4k/Z57dXX+p8O7Cl1v8KHinRsZ5/ywI
 uTdl+WpZZ0iycW+e03AcC5i3Vm7hW/UbhWd1yg2VejTqt6vPXkb9ebfVZxNokRSbcDzN3EBNq
 YmOYZ3fhghdSu09KsYgdIAmbhi8FcNBkmqwUIvVZVzgf8/Qv2V3LfZtxwHHFvMBisGQi9KQJ3
 i08Rf42y5lrVS3qCdpEPqv7YNOdMGQJ5+ND/gtmxoOg9NFzuJkTTGv71MjOUnMSoar3Qitvzc
 4wOco3vN9KOBYvU2cOq6jfmqzSUd1DDbuoPkPw7MYEqZWfLZRdnDt+n5AI7wSDojWhKsdTF7u
 TA0OSbk+bhxfZIZsuY4dvbThcyxXZ3d5tGmyAxrS8xd5N1t3llf4A5zrVzmM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_182603_042019_8506D0C1 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 12.09.19 um 20:52 schrieb Eric Anholt:
> Matthias Brugger <matthias.bgg@gmail.com> writes:
>
>> On 13/08/2019 18:20, Stefan Wahren wrote:
>>> The new BCM2711 supports an additional clock for the emmc2 block.
>>> So add a new compatible and register this clock only for BCM2711.
>>>
>>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>>> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
>>> Acked-by: Eric Anholt <eric@anholt.net>
>>> ---
>>>  drivers/clk/bcm/clk-bcm2835.c | 20 +++++++++++++++++++-
>>>  1 file changed, 19 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
>>> index 21cd952..fdf672a 100644
>>> --- a/drivers/clk/bcm/clk-bcm2835.c
>>> +++ b/drivers/clk/bcm/clk-bcm2835.c
>>> @@ -114,6 +114,8 @@
>>>  #define CM_AVEODIV		0x1bc
>>>  #define CM_EMMCCTL		0x1c0
>>>  #define CM_EMMCDIV		0x1c4
>>> +#define CM_EMMC2CTL		0x1d0
>>> +#define CM_EMMC2DIV		0x1d4
>>>
>>>  /* General bits for the CM_*CTL regs */
>>>  # define CM_ENABLE			BIT(4)
>>> @@ -290,7 +292,8 @@
>>>  #define BCM2835_MAX_FB_RATE	1750000000u
>>>
>>>  #define SOC_BCM2835		BIT(0)
>>> -#define SOC_ALL			(SOC_BCM2835)
>>> +#define SOC_BCM2711		BIT(1)
>>> +#define SOC_ALL			(SOC_BCM2835 | SOC_BCM2711)
>>>
>>>  /*
>>>   * Names of clocks used within the driver that need to be replaced
>>> @@ -2003,6 +2006,16 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>>>  		.frac_bits = 8,
>>>  		.tcnt_mux = 39),
>>>
>>> +	/* EMMC2 clock (only available for BCM2711) */
>>> +	[BCM2711_CLOCK_EMMC2]	= REGISTER_PER_CLK(
>>> +		SOC_BCM2711,
>>> +		.name = "emmc2",
>>> +		.ctl_reg = CM_EMMC2CTL,
>>> +		.div_reg = CM_EMMC2DIV,
>>> +		.int_bits = 4,
>>> +		.frac_bits = 8,
>>> +		.tcnt_mux = 42),
>>> +
>>>  	/* General purpose (GPIO) clocks */
>>>  	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
>>>  		SOC_ALL,
>>> @@ -2238,8 +2251,13 @@ static const struct cprman_plat_data cprman_bcm2835_plat_data = {
>>>  	.soc = SOC_BCM2835,
>>>  };
>>>
>>> +static const struct cprman_plat_data cprman_bcm2711_plat_data = {
>>> +	.soc = SOC_BCM2711,
>>> +};
>>> +
>>>  static const struct of_device_id bcm2835_clk_of_match[] = {
>>>  	{ .compatible = "brcm,bcm2835-cprman", .data = &cprman_bcm2835_plat_data },
>>> +	{ .compatible = "brcm,bcm2711-cprman", .data = &cprman_bcm2711_plat_data },
>> Because the RPi4 FW uses bcm2838-cprman as compatible, we will need to add this
>> here as well.
> Upstream has not committed to backwards compat with Pi's firmware.  That
> makes the ABI requirement we get held to for upstream's DT absurd, but
> that's the state of things.

We also learned from past, that's not possible to keep things downstream
compatible. As soon as a binding is not accepted, this wont work
anymore. A lot of the downstream stuff is hacky.

For example yesterday, i learned that the thermal node is broken
(register is part of ring oscillator block). So do we really want to be
compatible with a hack? I would say: No


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
