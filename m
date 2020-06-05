Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE481EFE16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 18:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJALht5sEXowOwumxBf9kAg0CZplfnzw3cthHjn7k0k=; b=F7O6yGDat7P1mc
	uM6SGQl+oMofgCF/bLykvimVbw42baiYYzLI9CIHXALkSSmKIxSQQ5lCegYFJwn95Mrbvs03arOLx
	fg1/FG80cxLHoRd3WdSfIWOKXFzV8cjJPLcQ0twgGc+xNAjXE2p3TzUF31QOV+TXw0HXZiBFW4onP
	c39hSkeE8LUMVHDn20ue4vz5v14AkxJCRxpLGlpEldnpNdaV+ACKpMk4CUI7xKNqR7uZsmzNTtt2I
	E9lIdjxFqsuLih0/YBgbOFDcj7DIu/W94y50s3uhAQ+lI45FHAQxv5hsUu93rFzVsmQ5sZz+tbOKw
	EwIaorumB/rjNpRIJRYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFIv-0001JN-Cg; Fri, 05 Jun 2020 16:34:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFIn-0001IY-9I
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 16:34:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id bg4so3850079plb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 09:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iJmtlF1Fn34skzAHzjUQqZOvSbl81/B3EfHTzE9JIy8=;
 b=Ct9r7A1nDUiRWsfrgAS4CkunE7SysHfUQnD2fZDBCheg65ij+ycPcCnjbPuk4RMS4C
 gtIqQ6n4DGRhDRbWbU+CCoAQY7+CgSCExEaKH+QPyo9rMQ54VIFEzchnvMEdTOj3VyGK
 6C1/1HJLn5ZNm9cs7ghab4axzm3/2VDXnPlBlxoj7jlVlG6A8WLELAhx11hhJKLpT4DP
 nzLQEzYnf7Djc8tDaaCrfV0WSPHr5RtjvHWIqtUg8tRBjDawn4abgoW2A1r1WntSSwhq
 nkleIegA4GFEHxdh31NGOTVyzaeofFQqi2unl6TRwzuh6ItF2Woe4L6Si23SCCi87UNs
 +I7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iJmtlF1Fn34skzAHzjUQqZOvSbl81/B3EfHTzE9JIy8=;
 b=niKB+sFvtNu5XhimBh83McKa6xP8hn3KlDGZW0MyfSJwEyBfjwpfYOoO0zWuh687fY
 EF+eYYdyWGRisVI0f4Z/h6blDNxsSUYDL7DWs+hkOmuw4Y/K/tCpjs4bNsy85d6sWLG3
 QW/UHFUBiG0/DdKhrGH1W/6I/rbknMHIv75z1Ijq6QCITUsOrxnExQah3PaI/zCDPu7T
 /T+skSK2+wVzRtH6df39pkcYGNbOF2ZKq/43md27qcEQYxCg0aTV6BNwOUU6KrICFP58
 exjKjJQpKERMh7hgN76JCvPIRxYXl54X6DUplBwixUif7YuP9ZP1kq0yVHoss/OPPED7
 AmQQ==
X-Gm-Message-State: AOAM530MIYg2ErkfuPQ+LESY4pYlC16tfrDda+ECXb0YSUCDnYI73z+v
 +DP1pLkI47nP5X0QIcoJpMM=
X-Google-Smtp-Source: ABdhPJykhVRiplBn+3LpRFZ8/4hP6LcJwdpYIczM/dd0iT6NreCKioxKBSYX584oPxHH+eI6+j0RcA==
X-Received: by 2002:a17:902:aa0c:: with SMTP id
 be12mr10842832plb.241.1591374879375; 
 Fri, 05 Jun 2020 09:34:39 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n38sm110717pgm.1.2020.06.05.09.34.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 09:34:38 -0700 (PDT)
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
 <8f042c2442852c29519c381833f3d289@walle.cc>
 <CAHp75VfY0BD4CFu6Thx1wE-U0Zt1q8uTOLxkWTMdFk0MBuhYFQ@mail.gmail.com>
 <871a4990-5b94-3a17-01d4-74998375f08b@roeck-us.net>
 <20200605140911.GO2428291@smile.fi.intel.com>
 <20200605150542.GA254229@roeck-us.net>
 <CAHp75VduUG=XkvyZwdZDNqBh3KE67MWZWgqBN67fN6StAa469w@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAlVcphcFCRmg06EACgkQyx8mb86fmYFg0RAA
 nzXJzuPkLJaOmSIzPAqqnutACchT/meCOgMEpS5oLf6xn5ySZkl23OxuhpMZTVX+49c9pvBx
 hpvl5bCWFu5qC1jC2eWRYU+aZZE4sxMaAGeWenQJsiG9lP8wkfCJP3ockNu0ZXXAXwIbY1O1
 c+l11zQkZw89zNgWgKobKzrDMBFOYtAh0pAInZ9TSn7oA4Ctejouo5wUugmk8MrDtUVXmEA9
 7f9fgKYSwl/H7dfKKsS1bDOpyJlqhEAH94BHJdK/b1tzwJCFAXFhMlmlbYEk8kWjcxQgDWMu
 GAthQzSuAyhqyZwFcOlMCNbAcTSQawSo3B9yM9mHJne5RrAbVz4TWLnEaX8gA5xK3uCNCeyI
 sqYuzA4OzcMwnnTASvzsGZoYHTFP3DQwf2nzxD6yBGCfwNGIYfS0i8YN8XcBgEcDFMWpOQhT
 Pu3HeztMnF3HXrc0t7e5rDW9zCh3k2PA6D2NV4fews9KDFhLlTfCVzf0PS1dRVVWM+4jVl6l
 HRIAgWp+2/f8dx5vPc4Ycp4IsZN0l1h9uT7qm1KTwz+sSl1zOqKD/BpfGNZfLRRxrXthvvY8
 BltcuZ4+PGFTcRkMytUbMDFMF9Cjd2W9dXD35PEtvj8wnEyzIos8bbgtLrGTv/SYhmPpahJA
 l8hPhYvmAvpOmusUUyB30StsHIU2LLccUPPOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAlVcpi8FCRmg08MACgkQyx8mb86fmYHNRQ/+
 J0OZsBYP4leJvQF8lx9zif+v4ZY/6C9tTcUv/KNAE5leyrD4IKbnV4PnbrVhjq861it/zRQW
 cFpWQszZyWRwNPWUUz7ejmm9lAwPbr8xWT4qMSA43VKQ7ZCeTQJ4TC8kjqtcbw41SjkjrcTG
 wF52zFO4bOWyovVAPncvV9eGA/vtnd3xEZXQiSt91kBSqK28yjxAqK/c3G6i7IX2rg6pzgqh
 hiH3/1qM2M/LSuqAv0Rwrt/k+pZXE+B4Ud42hwmMr0TfhNxG+X7YKvjKC+SjPjqp0CaztQ0H
 nsDLSLElVROxCd9m8CAUuHplgmR3seYCOrT4jriMFBtKNPtj2EE4DNV4s7k0Zy+6iRQ8G8ng
 QjsSqYJx8iAR8JRB7Gm2rQOMv8lSRdjva++GT0VLXtHULdlzg8VjDnFZ3lfz5PWEOeIMk7Rj
 trjv82EZtrhLuLjHRCaG50OOm0hwPSk1J64R8O3HjSLdertmw7eyAYOo4RuWJguYMg5DRnBk
 WkRwrSuCn7UG+qVWZeKEsFKFOkynOs3pVbcbq1pxbhk3TRWCGRU5JolI4ohy/7JV1TVbjiDI
 HP/aVnm6NC8of26P40Pg8EdAhajZnHHjA7FrJXsy3cyIGqvg9os4rNkUWmrCfLLsZDHD8FnU
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <450ce146-bf9a-130a-78e5-4bcabf1b7063@roeck-us.net>
Date: Fri, 5 Jun 2020 09:34:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VduUG=XkvyZwdZDNqBh3KE67MWZWgqBN67fN6StAa469w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_093441_327228_C8E3BE86 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/5/20 9:04 AM, Andy Shevchenko wrote:
> On Fri, Jun 5, 2020 at 6:05 PM Guenter Roeck <linux@roeck-us.net> wrote:
>> On Fri, Jun 05, 2020 at 05:09:11PM +0300, Andy Shevchenko wrote:
>>> On Fri, Jun 05, 2020 at 06:52:00AM -0700, Guenter Roeck wrote:
>>>> On 6/5/20 3:50 AM, Andy Shevchenko wrote:
>>>>> On Fri, Jun 5, 2020 at 1:24 PM Michael Walle <michael@walle.cc> wrote:
>>>>>> Am 2020-06-05 10:14, schrieb Andy Shevchenko:
>>>>>>> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
>>>
>>> ...
>>>
>>>>>>>> +static bool nowayout = WATCHDOG_NOWAYOUT;
>>>>>>>> +module_param(nowayout, bool, 0);
>>>>>>>> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started
>>>>>>>> (default="
>>>>>>>> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT)
>>>>>>>> ")");
>>>>>>>> +
>>>>>>>> +static int timeout;
>>>>>>>> +module_param(timeout, int, 0);
>>>>>>>> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
>>>>>>>
>>>>>>> Guenter ACKed this, but I'm wondering why we still need module
>>>>>>> parameters...
>>>>>>
>>>>>> How would a user change the nowayout or the timeout? For the latter
>>>>>> there is
>>>>>> a device tree entry, but thats not easy changable by the user.
>>>>>
>>>>> Yes, it's more question to VIm and Guenter than to you.
>>>>>
>>>>
>>>> Has support for providing module parameters with the kernel command line
>>>> been discontinued/deprecated, or did it run out of favor ? Sorry if I
>>>> missed that.
>>>
>>> Latter according to Greg KH. One of the (plenty) examples [1].
>>>
>>> [1]: https://www.mail-archive.com/driverdev-devel@linuxdriverproject.org/msg96495.html
>>>
>> What is the suggested replacement ?
> 
> In some mails he suggested to use sysfs.
> 

Using sysfs specifically to defeat "nowayout" would defeat
its purpose, which is specifically to disable the possibility
to stop the watchdog. Using a module parameter (or rather boot
time parameter) is a bit different since that has to be done
consciously and is only valid for a given boot. The same is
true for the timeout parameter. If one can wait for sysfs (or
userspace) to be active, one can as well use the watchdog
daemon to update the timeout. The use case for the module
/ command line parameter or sysfs based timeout is to be
able to set it _before_ userspace is active.

So sysfs is not really an alternative.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
