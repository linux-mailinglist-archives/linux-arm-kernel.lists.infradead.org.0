Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC281E81E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQc0kUpc/zxEPoJOPMf64E2CNGwy54LGV8Ba+1j/zT4=; b=YL5jWCixyeD0j5
	n+zaBNn76N+BMMIGh0uZj/jrS7v5hC/cxZPOmwSKcBrtJyL6xGxvWq7lY3gdTUbzUZoOUQu+ZKqgS
	3/cMpU+FUa326604K3stiVlMQ+Lg3j3eqeT/T8mj4B2T8XvMQ2oevqwaeaHqMNjPxOi38uS7RqqyB
	xYZyMYE5FFCQL4PlOthXSqipP+ll4bstpFFl6g7syWg/TrnHa7+dReG8lIM3QylNTMvBiGv1BM1A6
	bbc+CyeIqbStP3kRB0XSrkCOB9zK969s3jy22J72kpJY8SGTzCbJ968YlhSTeCiT/YOQvBaBTFNnn
	GA2LozCAqbamh3CGCP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh1f-00008G-U5; Fri, 29 May 2020 15:34:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh1Q-000075-8J; Fri, 29 May 2020 15:34:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id d10so1634109pgn.4;
 Fri, 29 May 2020 08:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H12DLSbS5ql+4QCoW6qfISlZ28ObJ3TH8l0yh2YWIWM=;
 b=tzy3SELPr1cm4n5Ya2wYvTRQgcfZFaRhhRp/md75vN0DI57BtSczskPPOxJV1fdum3
 +xMLQIVsnYQXQ3bAyRDGgaw+0DOsfJbn1Szu8qvipYeGp6U5p9C+YaJFYmWQMo4D+Ybk
 fP9aSU8ZlOx1+7mz5EphtU/kGJq5BEEj29sdaSaEoDqp5RXDIJ40Y1yx3eG5bES0f34V
 MjgAGOLfvOWk7fkfiXIoSQxpfcM+57HqxMP+V9Jo+YH1b1ub1tSJYQLP5reY5jRiFWf0
 G+2KCRA8JMyowoiNbAc6BEETX2FkFZU3bJrs5za9l+7JhQnzQjD9QHI+xVZeKxLMa+mC
 cnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=H12DLSbS5ql+4QCoW6qfISlZ28ObJ3TH8l0yh2YWIWM=;
 b=BJ7ccNkQbo7lB9HGIgALTHqfVhqTJGdJMeE9RUT81RzPQJ6rfmxI1BUzjOfqNLUU18
 E3p4k+q3hAKm8wu7wu7JEJ9ShJnv3qGmSXHbhkl2zfQepF830gaYc9lJCpFDhWoj4/uT
 Kt5aiQEdnmyUUbdGnEL8SyLjtN6Jy9VQnitZZmX98mtLnjsQiEJBOGs0BYEsrYAyTibR
 nn6aIaUtiFKreT6msfDQE7FjXe1prTEcoyu7XZmq4p7YSkE4Y2U/TmY8rOuXaz9iSjXn
 cStCicUNNKf2Wj2la69l8CdVCPYAFU30iM7Id5ur7/YjT8a0WAiUW7U+ot/iTe7Tenzj
 KlhA==
X-Gm-Message-State: AOAM531sfhIZLbc0nm1otnek7Kv4CQJDf3kIBkHIOHjHRAqhE2dNQuSj
 6nKq1ZLeKOzg2vdPkT/EfmY=
X-Google-Smtp-Source: ABdhPJw6lOp4QHcm5FYLCaSESSZlPknkQhgWREoJNkCQwDbS+Wi5aoqT6fNYG2yjG1WKE9tNCZZ+ZA==
X-Received: by 2002:a05:6a00:843:: with SMTP id
 q3mr8874190pfk.107.1590766451548; 
 Fri, 29 May 2020 08:34:11 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 co16sm8487408pjb.55.2020.05.29.08.34.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 08:34:11 -0700 (PDT)
Subject: Re: [PATCH v4 02/11] thermal: Store thermal mode in a dedicated enum
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
References: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
 <20200528192051.28034-3-andrzej.p@collabora.com>
 <20200529144821.GA93994@roeck-us.net>
 <e48e5948-51f0-7ce7-265b-d432ea058b7e@collabora.com>
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
Message-ID: <6829f088-d816-fa7c-da97-cb5fd082d69d@roeck-us.net>
Date: Fri, 29 May 2020 08:34:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <e48e5948-51f0-7ce7-265b-d432ea058b7e@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_083412_297442_EF42FA3E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yOS8yMCA4OjEzIEFNLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4gSGkgR3Vl
bnRlciwKPiAKPiBXIGRuaXUgMjkuMDUuMjAyMCBvwqAxNjo0OCwgR3VlbnRlciBSb2VjayBwaXN6
ZToKPj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDk6MjA6NDJQTSArMDIwMCwgQW5kcnplaiBQ
aWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4gUHJlcGFyZSBmb3Igc3RvcmluZyBtb2RlIGluIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGll
dHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZl
cnMvYWNwaS90aGVybWFsLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgMjcgKysrKysrKysrLS0tLS0tLS0tLQo+Pj4gwqAgZHJpdmVycy9wbGF0Zm9ybS94
ODYvYWNlcmhkZi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA4ICsrKystLQo+
Pj4gwqAgLi4uL2ludGVsL2ludDM0MHhfdGhlcm1hbC9pbnQzNDAwX3RoZXJtYWwuY8KgwqAgfCAx
OCArKysrKy0tLS0tLS0tCj4+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyks
IDI4IGRlbGV0aW9ucygtKQo+IAo+IDxzbmlwPgo+IAo+Pj4gQEAgLTU0NCwyNyArNTQzLDI1IEBA
IHN0YXRpYyBpbnQgdGhlcm1hbF9zZXRfbW9kZShzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAq
dGhlcm1hbCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSB0aGVy
bWFsX2RldmljZV9tb2RlIG1vZGUpCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBhY3Bp
X3RoZXJtYWwgKnR6ID0gdGhlcm1hbC0+ZGV2ZGF0YTsKPj4+IC3CoMKgwqAgaW50IGVuYWJsZTsK
Pj4+IMKgIMKgwqDCoMKgwqAgaWYgKCF0eikKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTlZBTDsKPj4+IMKgICvCoMKgwqAgaWYgKG1vZGUgIT0gVEhFUk1BTF9ERVZJQ0VfRElTQUJM
RUQgJiYKPj4+ICvCoMKgwqDCoMKgwqDCoCBtb2RlICE9IFRIRVJNQUxfREVWSUNFX0VOQUJMRUQp
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Cj4+IFBlcnNvbmFsbHkgSSBm
aW5kIHRoaXMgY2hlY2sgdW5uZWNlc3Nhcnk6IFRoZSBlbnVtIGhhcyBubyBvdGhlciB2YWx1ZXMs
Cj4+IGFuZCBpdCBpcyB2ZXJpZnlhYmxlIHRoYXQgdGhlIGNhbGxlcnMgcHJvdmlkZSB0aGUgZW51
bSBhbmQgbm90IHNvbWUgb3RoZXIKPj4gdmFsdWUuCj4gCj4gSXQgaXMgZ2V0dGluZyByZW1vdmVk
IGluIFBBVENIIDEwLzExLgo+IAo+IAo+Pj4gK8KgwqDCoCBpZiAobW9kZSAhPSBUSEVSTUFMX0RF
VklDRV9FTkFCTEVEICYmCj4+PiArwqDCoMKgwqDCoMKgwqAgbW9kZSAhPSBUSEVSTUFMX0RFVklD
RV9ESVNBQkxFRCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4KPj4g
U2FtZSBhcyBhYm92ZS4KPiAKPiBkaXR0by4KCkhtbSwgSSB0aGluayB0aGF0IHdvdWxkIGJlIGJl
dHRlciBkb25lIHdpdGggdGhpcyBwYXRjaC4gQnV0IEkgZ3Vlc3MKdGhhdCBpcyBhIGJpdCBvZiBQ
b1YsIHNvCgpSZXZpZXdlZC1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0PgoK
c2luY2UgSSBkb24ndCBoYXZlIGFueSBvdGhlciBvYmplY3Rpb25zL29ic2VydmF0aW9ucy4KCkd1
ZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
