Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFF812D3B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gu71Vl/bVC7DDT+IJgcCTcfXXb6rfLL4I640aUxqUY=; b=G63TgqYj67xKK5
	94J58y9wUqTxMXQ23Rj16nhfEjSz80XHV+h5c92cPUtp1XF2BWurnmqixqT3x0U/GcXQ8tlT0hoyL
	BRyy7hqd5xn8cU9ZCrT/IdGwkQ+MgG3dfE/L9R07DQzNk7/1+OFZtlbjljHH1VncDSUDa+vLRY7el
	EBtZulUr6Zg0yhKlKUqJ+y74jQ1i2AJJ/6HAkvzLtUTH/YOGzOU5l526da8GEvY2mmK1u135374z7
	2bQ3kJ1B+7+qnfnAfvrdb9TSZw1qLN71CWuIB3oG6zFAxvDgwKpp76f7w/x9+ryBQGfciIfTpREg/
	j5r5XIo7A5J4VORMZb3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0MM-0006JN-Cg; Mon, 30 Dec 2019 19:05:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0MD-0006Iq-Pt
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 19:05:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id k3so18430186pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 11:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dYYA+vlSlPnbTa9+90GmFnVFxwdebRapv4MbUkpQl8Y=;
 b=huHi12rssOC+U8AlFrR/egTSB1ih+Sz895zdGmKf4jDSySTJsn+5A9tJKLSr3gJlf4
 SV6VNhqdUYjEJc37iR7FJe8qAkkhDUKF77XaZPSZk++q3uz1l2fTNuESaXoexQ43COqy
 rznOa0jtFKt3GJebjNHsW4TEny2nR94O1v7WnbX9B3O3im3PvC0rl+VYFX3Zz1PORSeE
 n4Up+KJ0zVID+zuk8fWxC47Xe/sPefhzP0gcN4pLfubE1umpL0VpSpSq0ssfZCOiUqxn
 4YDBH24rnMAS+Fe+gic4C05s3Jx6B4hBEZaCDiI0mhpSbHZ07q//WUW3IfQn15AUnlC7
 jPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=dYYA+vlSlPnbTa9+90GmFnVFxwdebRapv4MbUkpQl8Y=;
 b=cPfuxhT1KFZ7JR3OTwDG73oP6/4aWLzLU88tBCsfvgmuZt1LVVIzJmpCfHreXetfdJ
 k7+BzhSc1EQ5LAOvClRUaMSqAGfwhHYrf99NC/Pqi8f3OrAITUzszMr0RZO2u1NaJWAP
 8nX74ZkARNNn9XT5s1LKr+o08aRMdgdBGrUyvtxavE1wAym1R1qfBB5hkA2m87vjLzIH
 U73dKbawEu5t9GrfKiqyGEBhN9lHaik4XoRwloj5pfC+Fvy3S1BFhb+IBgVVW/AFdEFl
 7RIOJhyz6ylGEycz98O5a4rUYWo2LFkPymq1ObnOoBeRTUaDPPVS52gE22wa6JMSk5tU
 Ja9g==
X-Gm-Message-State: APjAAAXNF+b+huXRLmzWfToICYphJu2B9vMEYkwLC/j/U/S7XUgg4Lik
 eZ2rGjey5QqIOjHpWb78axrY2ygF
X-Google-Smtp-Source: APXvYqy9dGsipls9jR1qUsFcHRaLT/ynEf5YZS2seYt9Q/TrBBv3cmhAbaeD31yeh2t40gDDlJJA6Q==
X-Received: by 2002:a62:3603:: with SMTP id d3mr70021955pfa.37.1577732736522; 
 Mon, 30 Dec 2019 11:05:36 -0800 (PST)
Received: from [10.67.50.49] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id
 d23sm51595873pfo.176.2019.12.30.11.05.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Dec 2019 11:05:35 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: Add Broadcom STB RESCAL reset controller
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Jim Quinlan <jim2101024@gmail.com>, Jim Quinlan <james.quinlan@broadcom.com>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
 <20191210195903.24127-3-f.fainelli@gmail.com>
 <89d2d00058e34e7571fc0f50ce487cf54414cd49.camel@pengutronix.de>
 <469c7b73-b028-1691-d5f0-0ceb3007da1c@gmail.com>
 <9fd20d18a8773cd8886d9cb0424791b2f79b3e25.camel@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 xsDiBEjPuBIRBACW9MxSJU9fvEOCTnRNqG/13rAGsj+vJqontvoDSNxRgmafP8d3nesnqPyR
 xGlkaOSDuu09rxuW+69Y2f1TzjFuGpBk4ysWOR85O2Nx8AJ6fYGCoeTbovrNlGT1M9obSFGQ
 X3IzRnWoqlfudjTO5TKoqkbOgpYqIo5n1QbEjCCwCwCg3DOH/4ug2AUUlcIT9/l3pGvoRJ0E
 AICDzi3l7pmC5IWn2n1mvP5247urtHFs/uusE827DDj3K8Upn2vYiOFMBhGsxAk6YKV6IP0d
 ZdWX6fqkJJlu9cSDvWtO1hXeHIfQIE/xcqvlRH783KrihLcsmnBqOiS6rJDO2x1eAgC8meAX
 SAgsrBhcgGl2Rl5gh/jkeA5ykwbxA/9u1eEuL70Qzt5APJmqVXR+kWvrqdBVPoUNy/tQ8mYc
 nzJJ63ng3tHhnwHXZOu8hL4nqwlYHRa9eeglXYhBqja4ZvIvCEqSmEukfivk+DlIgVoOAJbh
 qIWgvr3SIEuR6ayY3f5j0f2ejUMYlYYnKdiHXFlF9uXm1ELrb0YX4GMHz80nRmxvcmlhbiBG
 YWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+wmYEExECACYCGyMGCwkIBwMCBBUCCAME
 FgIDAQIeAQIXgAUCVF/S8QUJHlwd3wAKCRBhV5kVtWN2DvCVAJ4u4/bPF4P3jxb4qEY8I2gS
 6hG0gACffNWlqJ2T4wSSn+3o7CCZNd7SLSDOwU0EVxvH8AEQAOqv6agYuT4x3DgFIJNv9i0e
 S443rCudGwmg+CbjXGA4RUe1bNdPHYgbbIaN8PFkXfb4jqg64SyU66FXJJJO+DmPK/t7dRNA
 3eMB1h0GbAHlLzsAzD0DKk1ARbjIusnc02aRQNsAUfceqH5fAMfs2hgXBa0ZUJ4bLly5zNbr
 r0t/fqZsyI2rGQT9h1D5OYn4oF3KXpSpo+orJD93PEDeseho1EpmMfsVH7PxjVUlNVzmZ+tc
 IDw24CDSXf0xxnaojoicQi7kzKpUrJodfhNXUnX2JAm/d0f9GR7zClpQMezJ2hYAX7BvBajb
 Wbtzwi34s8lWGI121VjtQNt64mSqsK0iQAE6OYk0uuQbmMaxbBTT63+04rTPBO+gRAWZNDmQ
 b2cTLjrOmdaiPGClSlKx1RhatzW7j1gnUbpfUl91Xzrp6/Rr9BgAZydBE/iu57KWsdMaqu84
 JzO9UBGomh9eyBWBkrBt+Fe1qN78kM7JO6i3/QI56NA4SflV+N4PPgI8TjDVaxgrfUTV0gVa
 cr9gDE5VgnSeSiOleChM1jOByZu0JTShOkT6AcSVW0kCz3fUrd4e5sS3J3uJezSvXjYDZ53k
 +0GS/Hy//7PSvDbNVretLkDWL24Sgxu/v8i3JiYIxe+F5Br8QpkwNa1tm7FK4jOd95xvYADl
 BUI1EZMCPI7zABEBAAHCwagEGBECAAkFAlcbx/ACGwICKQkQYVeZFbVjdg7BXSAEGQECAAYF
 Alcbx/AACgkQh9CWnEQHBwSJBw//Z5n6IO19mVzMy/ZLU/vu8flv0Aa0kwk5qvDyvuvfiDTd
 WQzq2PLs+obX0y1ffntluhvP+8yLzg7h5O6/skOfOV26ZYD9FeV3PIgR3QYF26p2Ocwa3B/k
 P6ENkk2pRL2hh6jaA1Bsi0P34iqC2UzzLq+exctXPa07ioknTIJ09BT31lQ36Udg7NIKalnj
 5UbkRjqApZ+Rp0RAP9jFtq1n/gjvZGyEfuuo/G+EVCaiCt3Vp/cWxDYf2qsX6JxkwmUNswuL
 C3duQ0AOMNYrT6Pn+Vf0kMboZ5UJEzgnSe2/5m8v6TUc9ZbC5I517niyC4+4DY8E2m2V2LS9
 es9uKpA0yNcd4PfEf8bp29/30MEfBWOf80b1yaubrP5y7yLzplcGRZMF3PgBfi0iGo6kM/V2
 13iD/wQ45QTV0WTXaHVbklOdRDXDHIpT69hFJ6hAKnnM7AhqZ70Qi31UHkma9i/TeLLzYYXz
 zhLHGIYaR04dFT8sSKTwTSqvm8rmDzMpN54/NeDSoSJitDuIE8givW/oGQFb0HGAF70qLgp0
 2XiUazRyRU4E4LuhNHGsUxoHOc80B3l+u3jM6xqJht2ZyMZndbAG4LyVA2g9hq2JbpX8BlsF
 skzW1kbzIoIVXT5EhelxYEGqLFsZFdDhCy8tjePOWK069lKuuFSssaZ3C4edHtkZ8gCfWWtA
 8dMsqeOIg9Trx7ZBCDOZGNAAnjYQmSb2eYOAti3PX3Ex7vI8ZhJCzsNNBEjPuBIQEAC/6NPW
 6EfQ91ZNU7e/oKWK91kOoYGFTjfdOatp3RKANidHUMSTUcN7J2mxww80AQHKjr3Yu2InXwVX
 SotMMR4UrkQX7jqabqXV5G+88bj0Lkr3gi6qmVkUPgnNkIBe0gaoM523ujYKLreal2OQ3GoJ
 PS6hTRoSUM1BhwLCLIWqdX9AdT6FMlDXhCJ1ffA/F3f3nTN5oTvZ0aVF0SvQb7eIhGVFxrlb
 WS0+dpyulr9hGdU4kzoqmZX9T/r8WCwcfXipmmz3Zt8o2pYWPMq9Utby9IEgPwultaP06MHY
 nhda1jfzGB5ZKco/XEaXNvNYADtAD91dRtNGMwRHWMotIGiWwhEJ6vFc9bw1xcR88oYBs+7p
 gbFSpmMGYAPA66wdDKGj9+cLhkd0SXGht9AJyaRA5AWB85yNmqcXXLkzzh2chIpSEawRsw8B
 rQIZXc5QaAcBN2dzGN9UzqQArtWaTTjMrGesYhN+aVpMHNCmJuISQORhX5lkjeg54oplt6Zn
 QyIsOCH3MfG95ha0TgWwyFtdxOdY/UY2zv5wGivZ3WeS0TtQf/BcGre2y85rAohFziWOzTaS
 BKZKDaBFHwnGcJi61Pnjkz82hena8OmsnsBIucsz4N0wE+hVd6AbDYN8ZcFNIDyt7+oGD1+c
 PfqLz2df6qjXzq27BBUboklbGUObNwADBQ//V45Z51Q4fRl/6/+oY5q+FPbRLDPlUF2lV6mb
 hymkpqIzi1Aj/2FUKOyImGjbLAkuBQj3uMqy+BSSXyQLG3sg8pDDe8AJwXDpG2fQTyTzQm6l
 OnaMCzosvALk2EOPJryMkOCI52+hk67cSFA0HjgTbkAv4Mssd52y/5VZR28a+LW+mJIZDurI
 Y14UIe50G99xYxjuD1lNdTa/Yv6qFfEAqNdjEBKNuOEUQOlTLndOsvxOOPa1mRUk8Bqm9BUt
 LHk3GDb8bfDwdos1/h2QPEi+eI+O/bm8YX7qE7uZ13bRWBY+S4+cd+Cyj8ezKYAJo9B+0g4a
 RVhdhc3AtW44lvZo1h2iml9twMLfewKkGV3oG35CcF9mOd7n6vDad3teeNpYd/5qYhkopQrG
 k2oRBqxyvpSLrJepsyaIpfrt5NNaH7yTCtGXcxlGf2jzGdei6H4xQPjDcVq2Ra5GJohnb/ix
 uOc0pWciL80ohtpSspLlWoPiIowiKJu/D/Y0bQdatUOZcGadkywCZc/dg5hcAYNYchc8AwA4
 2dp6w8SlIsm1yIGafWlNnfvqbRBglSTnxFuKqVggiz2zk+1wa/oP+B96lm7N4/3Aw6uy7lWC
 HvsHIcv4lxCWkFXkwsuWqzEKK6kxVpRDoEQPDj+Oy/ZJ5fYuMbkdHrlegwoQ64LrqdmiVVPC
 TwQYEQIADwIbDAUCVF/S8QUJHlwd3wAKCRBhV5kVtWN2Do+FAJ956xSz2XpDHql+Wg/2qv3b
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <22a0e4a9-96b3-8ecd-b699-4e4aad017b5d@gmail.com>
Date: Mon, 30 Dec 2019 11:05:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <9fd20d18a8773cd8886d9cb0424791b2f79b3e25.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_110537_866159_6D480249 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/19 2:01 AM, Philipp Zabel wrote:
> On Wed, 2019-12-11 at 10:12 -0800, Florian Fainelli wrote:
>>
>> On 12/11/2019 1:48 AM, Philipp Zabel wrote:
>>>> +#define BRCM_RESCAL_START	0
>>>> +#define	BRCM_RESCAL_START_BIT	BIT(0)
>>>> +#define BRCM_RESCAL_CTRL	4
>>>> +#define BRCM_RESCAL_STATUS	8
>>>> +#define BRCM_RESCAL_STATUS_BIT	BIT(0)
>>>
>>> Is there any reason the start bit is indented but the status bit is not?
>>
>> This is a convention we have tried to adopt to denote the definition
>> from a register word address/offset versus the definition for bits
>> within that register word.
> 
> That's fine, consider indenting BRCM_RESCAL_STATUS_BIT as well, then.
> 
> [...]
>>>> +	reg = readl(base + BRCM_RESCAL_START);
>>>> +	writel(reg | BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
>>>> +	reg = readl(base + BRCM_RESCAL_START);
>>>> +	if (!(reg & BRCM_RESCAL_START_BIT)) {
>>>> +		dev_err(data->dev, "failed to start sata/pcie rescal\n");
> 
> Is this something that can actually happen?

Have not seen it happen but if we have bogus hardware, we would rather
get an informative log from the reset controller than a not so
informative one from the consumer drivers about e.g.: SATA or PCIe link
down (which could be for various other reasons). If you want this
demoted to a debug print, let me know.

> 
> [...]
>>>> +	reg = readl(base + BRCM_RESCAL_START);
>>>> +	writel(reg ^ BRCM_RESCAL_START_BIT, base + BRCM_RESCAL_START);
>>>
>>> Please use &= ~BRCM_RESCAL_START_BIT instead.
>>
>> I think the idea was to avoid unconditionally clearing it, but based on
>> the documentation, I don't see this being harmful, Jim?
> 
> Unless the bit is self-clearing, I can't see how this XOR could ever set
> the bit instead of clearing it.
> And even if it would, I don't understand how that can be indented.
> Wouldn't that restart the reset/calibration sequence?
The bit is not self clearing, but it can be cleared when the
reset/calibration procedure is successfully finished, so this seems to
do what it is intended for, in that, if you read the bit as 1, XOR would
let you clear it. If you read it as 0, XOR would leave it cleared.

Would you want a comment above to explain that?

> 
>>>> +	reg = readl(base + BRCM_RESCAL_START);
>>>> +	dev_dbg(data->dev, "sata/pcie rescal success\n");
>>>> +
>>>> +	return 0;
>>>> +}
>>>
>>> This whole function looks a lot like it doesn't just deassert a reset
>>> line, but actually issues a complete reset procedure of some kind. Do
>>> you have some insight on what actually happens in the hardware when the
>>> start bit is triggered? I suspect this should be implemented with the
>>> .reset operation.
>>
>> This hardware block is controlling the reset and calibration process of
>> the SATA/PCIe combo PHY analog front end, but is not technically part of
>> the PCIe or SATA PHY proper, it stands on its own, both functionally and
>> from a register space perspective. The motivation for modelling this as
>> a reset controller is that it does a reset (and a calibration) and this
>> is a shared reset line among 2/3 instances of another block. If you
>> think we should model this differently, please let us know.
> 
> Thank you for the explanation. I agree the "reset and calibration
> sequence" property is close enough to a pure reset sequence to warrant
> describing this as as reset controller.
> The correct way would be to use the .reset callback though, if you can
> have the drivers use reset_control_reset().

This should be doable, let me try to update the drivers accordingly. It
sounds a bit silly to have to have kind of knowledge pushed down to the
consumer drivers though...
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
