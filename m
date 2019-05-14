Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD791C34E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZA25ZtIj7pK4+QvdFGSxA07vjRAqJxCLMrxymXOgp+Y=; b=Tg1vB9oMifvYTZ
	2sv/6M+H7+VJ8+WeWODzybs5i59G4wWsb5j5L/0uzc2gRWe75ik642aMKntl0advQt9I/f8YS3U9O
	CDzJqEm9AzILR88sIhXBK+TsI/T9spvNFa9hc09BIfPUFSXkDVNUjASG4WSyfhiBvWwVW5nct36X6
	Zsb7Rt6Efbp4jlLReM01fgXCegW2ipSVAG7HRulydfQnyivg+Pz52cQdQInfWDxLKOUmP1NTr/yrG
	pYTtCqOdZy9SSeFjI2NpHqeUQdp6qTHehUhDavPQsXTmbs0l1wMjvfeQvF9riKOyOLTsuVgoX19fn
	CbvP1eoK2MTSZqtgGMvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQR0U-0001zH-75; Tue, 14 May 2019 06:33:46 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQR0M-0001yp-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 06:33:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id r76so13172653lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 23:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CRlD4PfqxipN48LYGh/t8fDMnfZhbcWiOWe8eMRQYkQ=;
 b=w/LJQO3GW0kYQP8hptFq0KF4yx8Jyymc/XJJp4peqa7zwtuypZ7HkaYtE4/HrWHOrd
 l1hNhYtNkNDGwPrEUugq+BRami6ICHpR6V0ZJUUipARs8LtOVLVrRxupEzNZt7XeXaTM
 NM4p9k69tAt2tU7zJGvwCmqGbC+LFjcgGi3ktGpG2DnCv3TFPakpCg4sg/FTenDfSGy7
 jrVXFhRZXMTi+L8pIHXXrbEXNBLAShhSKtmSf4XjhWxICAy3elw3htiW+NwAmRlsVeKg
 6tHz3lZvfKVEFVcHM5OfZuCHDpyYMqHshkciA24c7UMWkkkRlGugd0POG3pfHYXwFYJS
 7T2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CRlD4PfqxipN48LYGh/t8fDMnfZhbcWiOWe8eMRQYkQ=;
 b=dLLHmNzItWIWGU7kN8wL0iADyBLzp7LBRCbVqwo+im6GEhyJ3Gbcle2gPJOupIT6Uk
 w97uOlY+QOZUi9BYac78/dpK84DXgVfjtPWsw0yBIn+Wk5uI6vsokBvLRt6AQEqgdQAR
 nlIJw00oqII/h3TnD7e7Go6nsRc8lxnxbWG2GuSFA5+g0mGx2bWT7ZUjLr4jbFUrYnsI
 AXe2+WanGf1R8EQ9+tyuehJgbSAHofKS6tag4M03e1LT+kkZqHUxrD3xW/chivz0/dN0
 ZySlUjQ6v5g2JUb1rFX+qycDQBCVGWck9RwRZfhIqXgxtlLuOCcB3sSSlZtj0aV24uF7
 hTUA==
X-Gm-Message-State: APjAAAWrZHSEA7MYxBM8bOTQ8v6Wizt0ys4UufRMN5IcAEKhvcoqMmr6
 iX0CR9bZbtSXomACpVW11/Tylg==
X-Google-Smtp-Source: APXvYqyNEE7a/azT3MklQKNyzbEddY6rNRjIadPL70+XdIxuZQDtZdpRbMw9bV8LA8zBrgNT47zfHg==
X-Received: by 2002:a2e:9241:: with SMTP id v1mr16003021ljg.6.1557815615191;
 Mon, 13 May 2019 23:33:35 -0700 (PDT)
Received: from [10.44.66.8] ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id c19sm3466804lfi.69.2019.05.13.23.33.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 23:33:34 -0700 (PDT)
Subject: Re: [RFC PATCH 0/3] Add support of busfreq
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
References: <20190313193408.23740-1-abailon@baylibre.com>
 <CAJKOXPeOnrgnX=onMeX1izS2kYKAkD8TvFVykYTyW-v4NOv3vA@mail.gmail.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 mQINBFjTuRcBEACyAOVzghvyN19Sa/Nit4LPBWkICi5W20p6bwiZvdjhtuh50H5q4ktyxJtp
 1+s8dMSa/j58hAWhrc2SNL3fttOCo+MM1bQWwe8uMBQJP4swgXf5ZUYkSssQlXxGKqBSbWLB
 uFHOOBTzaQBaNgsdXo+mQ1h8UCgM0zQOmbs2ort8aHnH2i65oLs5/Xgv/Qivde/FcFtvEFaL
 0TZ7odM67u+M32VetH5nBVPESmnEDjRBPw/DOPhFBPXtal53ZFiiRr6Bm1qKVu3dOEYXHHDt
 nF13gB+vBZ6x5pjl02NUEucSHQiuCc2Aaavo6xnuBc3lnd4z/xk6GLBqFP3P/eJ56eJv4d0B
 0LLgQ7c1T3fU4/5NDRRCnyk6HJ5+HSxD4KVuluj0jnXW4CKzFkKaTxOp7jE6ZD/9Sh74DM8v
 etN8uwDjtYsM07I3Szlh/I+iThxe/4zVtUQsvgXjwuoOOBWWc4m4KKg+W4zm8bSCqrd1DUgL
 f67WiEZgvN7tPXEzi84zT1PiUOM98dOnmREIamSpKOKFereIrKX2IcnZn8jyycE12zMkk+Sc
 ASMfXhfywB0tXRNmzsywdxQFcJ6jblPNxscnGMh2VlY2rezmqJdcK4G4Lprkc0jOHotV/6oJ
 mj9h95Ouvbq5TDHx+ERn8uytPygDBR67kNHs18LkvrEex/Z1cQARAQABtChHZW9yZ2kgRGph
 a292IDxnZW9yZ2kuZGpha292QGxpbmFyby5vcmc+iQI+BBMBAgAoBQJY07kXAhsDBQkHhM4A
 BgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRCyi/eZcnWWUuvsD/4miikUeAO6fU2Xy3fT
 l7RUCeb2Uuh1/nxYoE1vtXcow6SyAvIVTD32kHXucJJfYy2zFzptWpvD6Sa0Sc58qe4iLY4j
 M54ugOYK7XeRKkQHFqqR2T3g/toVG1BOLS2atooXEU+8OFbpLkBXbIdItqJ1M1SEw8YgKmmr
 JlLAaKMq3hMb5bDQx9erq7PqEKOB/Va0nNu17IL58q+Q5Om7S1x54Oj6LiG/9kNOxQTklOQZ
 t61oW1Ewjbl325fW0/Lk0QzmfLCrmGXXiedFEMRLCJbVImXVKdIt/Ubk6SAAUrA5dFVNBzm2
 L8r+HxJcfDeEpdOZJzuwRyFnH96u1Xz+7X2V26zMU6Wl2+lhvr2Tj7spxjppR+nuFiybQq7k
 MIwyEF0mb75RLhW33sdGStCZ/nBsXIGAUS7OBj+a5fm47vQKv6ekg60oRTHWysFSJm1mlRyq
 exhI6GwUo5GM/vE36rIPSJFRRgkt6nynoba/1c4VXxfhok2rkP0x3CApJ5RimbvITTnINY0o
 CU6f1ng1I0A1UTi2YcLjFq/gmCdOHExT4huywfu1DDf0p1xDyPA1FJaii/gJ32bBP3zK53hM
 dj5S7miqN7F6ZpvGSGXgahQzkGyYpBR5pda0m0k8drV2IQn+0W8Qwh4XZ6/YdfI81+xyFlXc
 CJjljqsMCJW6PdgEH7kCDQRY07kXARAAvupGd4Jdd8zRRiF+jMpv6ZGz8L55Di1fl1YRth6m
 lIxYTLwGf0/p0oDLIRldKswena3fbWh5bbTMkJmRiOQ/hffhPSNSyyh+WQeLY2kzl6geiHxD
 zbw37e2hd3rWAEfVFEXOLnmenaUeJFyhA3Wd8OLdRMuoV+RaLhNfeHctiEn1YGy2gLCq4VNb
 4Wj5hEzABGO7+LZ14hdw3hJIEGKtQC65Jh/vTayGD+qdwedhINnIqslk9tCQ33a+jPrCjXLW
 X29rcgqigzsLHH7iVHWA9R5Aq7pCy5hSFsl4NBn1uV6UHlyOBUuiHBDVwTIAUnZ4S8EQiwgv
 WQxEkXEWLM850V+G6R593yZndTr3yydPgYv0xEDACd6GcNLR/x8mawmHKzNmnRJoOh6Rkfw2
 fSiVGesGo83+iYq0NZASrXHAjWgtZXO1YwjW9gCQ2jYu9RGuQM8zIPY1VDpQ6wJtjO/KaOLm
 NehSR2R6tgBJK7XD9it79LdbPKDKoFSqxaAvXwWgXBj0Oz+Y0BqfClnAbxx3kYlSwfPHDFYc
 R/ppSgnbR5j0Rjz/N6Lua3S42MDhQGoTlVkgAi1btbdV3qpFE6jglJsJUDlqnEnwf03EgjdJ
 6KEh0z57lyVcy5F/EUKfTAMZweBnkPo+BF2LBYn3Qd+CS6haZAWaG7vzVJu4W/mPQzsAEQEA
 AYkCJQQYAQIADwUCWNO5FwIbDAUJB4TOAAAKCRCyi/eZcnWWUhlHD/0VE/2x6lKh2FGP+QHH
 UTKmiiwtMurYKJsSJlQx0T+j/1f+zYkY3MDX+gXa0d0xb4eFv8WNlEjkcpSPFr+pQ7CiAI33
 99kAVMQEip/MwoTYvM9NXSMTpyRJ/asnLeqa0WU6l6Z9mQ41lLzPFBAJ21/ddT4xeBDv0dxM
 GqaH2C6bSnJkhSfSja9OxBe+F6LIAZgCFzlogbmSWmUdLBg+sh3K6aiBDAdZPUMvGHzHK3fj
 gHK4GqGCFK76bFrHQYgiBOrcR4GDklj4Gk9osIfdXIAkBvRGw8zg1zzUYwMYk+A6v40gBn00
 OOB13qJe9zyKpReWMAhg7BYPBKIm/qSr82aIQc4+FlDX2Ot6T/4tGUDr9MAHaBKFtVyIqXBO
 xOf0vQEokkUGRKWBE0uA3zFVRfLiT6NUjDQ0vdphTnsdA7h01MliZLQ2lLL2Mt5lsqU+6sup
 Tfql1omgEpjnFsPsyFebzcKGbdEr6vySGa3Cof+miX06hQXKe99a5+eHNhtZJcMAIO89wZmj
 7ayYJIXFqjl/X0KBcCbiAl4vbdBw1bqFnO4zd1lMXKVoa29UHqby4MPbQhjWNVv9kqp8A39+
 E9xw890l1xdERkjVKX6IEJu2hf7X3MMl9tOjBK6MvdOUxvh1bNNmXh7OlBL1MpJYY/ydIm3B
 KEmKjLDvB0pePJkdTw==
Message-ID: <8f757d89-5df2-04e4-b1cf-e6d8971a8881@linaro.org>
Date: Tue, 14 May 2019 09:33:32 +0300
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeOnrgnX=onMeX1izS2kYKAkD8TvFVykYTyW-v4NOv3vA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_233338_336448_6E4EF94C 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: aisheng.dong@nxp.com, linux-pm@vger.kernel.org, khilman@baylibre.com,
 mturquette@baylibre.com, ccaione@baylibre.com, linux-kernel@vger.kernel.org,
 zening.wang@nxp.com, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, ptitiano@baylibre.com,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/19 14:19, Krzysztof Kozlowski wrote:
> On Wed, 13 Mar 2019 at 20:35, Alexandre Bailon <abailon@baylibre.com> wrote:
>>
>> This series implements busfreq, a framework used in MXP's
>> tree to scale the interconnect and dram frequencies.
>> In the vendor tree, device's driver request for a
>> performance level, which is used to scale the frequencies.
>> This series implements it using the interconnect framework.
>> Devices' driver request for bandwidth which is use by busfreq
>> to determine a performance level, and then scale the frequency.
>>
>> Busfreq is quite generic. It could be used for any i.MX SoC.
>> A busfreq platform driver just have to define a list of
>> interconnect nodes, and some OPPs.
>>
>> This series is sent as RFC mostly because the current support
>> of i.MX SoC won't benefit of busfreq framework, because the
>> clocks' driver don't support interconnect / dram frequency
>> scaling.
>> As exemple, this series implements busfreq for i.MX8MM whose
>> upstreaming is in progress. Because this relies on ATF to
>> do the frequency scaling, it won't be hard make it work.
>>
>> As exemple, this series implements busfreq for
>> Alexandre Bailon (3):
>>   drivers: interconnect: Add a driver for i.MX SoC
>>   drivers: interconnect: imx: Add support of i.MX8MM
>>   dt-bindings: interconnect: Document fsl,busfreq-imx8mm bindings
> 
> Hi Alexandre,
> 
> I am quite late but I just found your email.
> 
> This looks very similar to existing framework - devfreq, which purpose
> is to scale the system busses based on performance counters/events. It
> would be nice if we could avoid duplication of existing subsystems.

Hi Krzysztof,

Scaling buses based on performance counters is suboptimal and sometimes might
not work well. In contrast with devfreq, the interconnect API is allowing
drivers to express their needs in advance and be proactive. It is also designed
to deal with multi-tiered bus topologies and to aggregate the requests from the
different consumer drivers.

Thanks,
Georgi

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
