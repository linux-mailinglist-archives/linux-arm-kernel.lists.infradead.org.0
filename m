Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7504B54D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5rGvK9Hn6bdAGY00uIMTRzSd5roTOkqGKe7H9xxTTc=; b=La/HVjCFOZHBDo
	LIsIWYPZcP41FGnUx5aYGOYpEDyXyL1DxLS73jATfu6+63aw6kaN5ZEbS2n+NSRafGNQbiHCOoOEA
	Qz7ofGK8Pk6FObjXSVgzvAHctiald/5vjukFqdRZwZITZPCQZ7crV8jr5n9eLjOHzzEVlNI+x9Eft
	pZ8siFH2NOAS+3yKj2QpRAfmxKylXipF81MTHyY+JYpxj6Qbe/XzlpFMDtnHrH5mDVELLHhqrahuw
	xAYq2XiANf3FrMe78JrAAE7vjZVwUl5Cx9YJsGkjiTVd07q2UCCdjUcgU+AnrF2Gs/0UfKsfQWrUK
	b3zFgP6bqg4JXUmjq3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHpE-0002pz-RL; Tue, 17 Sep 2019 18:03:41 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHoz-0002pI-4o; Tue, 17 Sep 2019 18:03:26 +0000
Received: from [192.168.1.162] ([37.4.249.90]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MAOVx-1iLaDT11kB-00BtYg; Tue, 17 Sep 2019 20:03:12 +0200
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <mbrugger@suse.com>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
 <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
 <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
 <2c3e1ef3-0dba-9f79-52e2-314b6b500e14@gmx.net>
 <4a6f965b-c988-5839-169f-9f24a0e7a567@suse.com>
 <48a6b72d-d554-b563-5ed6-9a79db5fb4ab@gmx.net>
 <2fcc5ad6-fa90-6565-e75c-d20b46965733@suse.com>
 <3163f80b-72e5-5da8-0909-a8950d3669f7@gmx.net>
 <a5073e16-c017-216c-72b4-0e861102c4e8@gmail.com>
 <c7e6ab89-aaae-debc-5f63-2e091efcf76f@gmx.net>
 <197ebc29-2e4d-fa2c-7ad4-1a83ce3f3eb4@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 xsFNBFt6gBMBEACub/pBevHxbvJefyZG32JINmn2bsEPX25V6fejmyYwmCGKjFtL/DoUMEVH
 DxCJ47BMXo344fHV1C3AnudgN1BehLoBtLHxmneCzgH3KcPtWW7ptj4GtJv9CQDZy27SKoEP
 xyaI8CF0ygRxJc72M9I9wmsPZ5bUHsLuYWMqQ7JcRmPs6D8gBkk+8/yngEyNExwxJpR1ylj5
 bjxWDHyYQvuJ5LzZKuO9LB3lXVsc4bqXEjc6VFuZFCCk/syio/Yhse8N+Qsx7MQagz4wKUkQ
 QbfXg1VqkTnAivXs42VnIkmu5gzIw/0tRJv50FRhHhxpyKAI8B8nhN8Qvx7MVkPc5vDfd3uG
 YW47JPhVQBcUwJwNk/49F9eAvg2mtMPFnFORkWURvP+G6FJfm6+CvOv7YfP1uewAi4ln+JO1
 g+gjVIWl/WJpy0nTipdfeH9dHkgSifQunYcucisMyoRbF955tCgkEY9EMEdY1t8iGDiCgX6s
 50LHbi3k453uacpxfQXSaAwPksl8MkCOsv2eEr4INCHYQDyZiclBuuCg8ENbR6AGVtZSPcQb
 enzSzKRZoO9CaqID+favLiB/dhzmHA+9bgIhmXfvXRLDZze8po1dyt3E1shXiddZPA8NuJVz
 EIt2lmI6V8pZDpn221rfKjivRQiaos54TgZjjMYI7nnJ7e6xzwARAQABzSlTdGVmYW4gV2Fo
 cmVuIDxzdGVmYW4ud2FocmVuQGluLXRlY2guY29tPsLBdwQTAQgAIQUCXIdehwIbAwULCQgH
 AgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCUgewPEZDy2yHTD/9UF7QlDkGxzQ7AaCI6N95iQf8/
 1oSUaDNu2Y6IK+DzQpb1TbTOr3VJwwY8a3OWz5NLSOLMWeVxt+osMmlQIGubD3ODZJ8izPlG
 /JrNt5zSdmN5IA5f3esWWQVKvghZAgTDqdpv+ZHW2EmxnAJ1uLFXXeQd3UZcC5r3/g/vSaMo
 9xek3J5mNuDm71lEWsAs/BAcFc+ynLhxwBWBWwsvwR8bHtJ5DOMWvaKuDskpIGFUe/Kb2B+j
 ravQ3Tn6s/HqJM0cexSHz5pe+0sGvP+t9J7234BFQweFExriey8UIxOr4XAbaabSryYnU/zV
 H9U1i2AIQZMWJAevCvVgQ/U+NeRhXude9YUmDMDo2sB2VAFEAqiF2QUHPA2m8a7EO3yfL4rM
 k0iHzLIKvh6/rH8QCY8i3XxTNL9iCLzBWu/NOnCAbS+zlvLZaiSMh5EfuxTtv4PlVdEjf62P
 +ZHID16gUDwEmazLAMrx666jH5kuUCTVymbL0TvB+6L6ARl8ANyM4ADmkWkpyM22kCuISYAE
 fQR3uWXZ9YgxaPMqbV+wBrhJg4HaN6C6xTqGv3r4B2aqb77/CVoRJ1Z9cpHCwiOzIaAmvyzP
 U6MxCDXZ8FgYlT4v23G5imJP2zgX5s+F6ACUJ9UQPD0uTf+J9Da2r+skh/sWOnZ+ycoHNBQv
 ocZENAHQf87BTQRbeoATARAA2Hd0fsDVK72RLSDHby0OhgDcDlVBM2M+hYYpO3fX1r++shiq
 PKCHVAsQ5bxe7HmJimHa4KKYs2kv/mlt/CauCJ//pmcycBM7GvwnKzmuXzuAGmVTZC6WR5Lk
 akFrtHOzVmsEGpNv5Rc9l6HYFpLkbSkVi5SPQZJy+EMgMCFgjrZfVF6yotwE1af7HNtMhNPa
 LDN1oUKF5j+RyRg5iwJuCDknHjwBQV4pgw2/5vS8A7ZQv2MbW/TLEypKXif78IhgAzXtE2Xr
 M1n/o6ZH71oRFFKOz42lFdzdrSX0YsqXgHCX5gItLfqzj1psMa9o1eiNTEm1dVQrTqnys0l1
 8oalRNswYlQmnYBwpwCkaTHLMHwKfGBbo5dLPEshtVowI6nsgqLTyQHmqHYqUZYIpigmmC3S
 wBWY1V6ffUEmkqpAACEnL4/gUgn7yQ/5d0seqnAq2pSBHMUUoCcTzEQUWVkiDv3Rk7hTFmhT
 sMq78xv2XRsXMR6yQhSTPFZCYDUExElEsSo9FWHWr6zHyYcc8qDLFvG9FPhmQuT2s9Blx6gI
 323GnEq1lwWPJVzP4jQkJKIAXwFpv+W8CWLqzDWOvdlrDaTaVMscFTeH5W6Uprl65jqFQGMp
 cRGCs8GCUW13H0IyOtQtwWXA4ny+SL81pviAmaSXU8laKaRu91VOVaF9f4sAEQEAAcLBXwQY
 AQIACQUCW3qAEwIbDAAKCRCUgewPEZDy2+oXD/9cHHRkBZOfkmSq14Svx062PtU0KV470TSn
 p/jWoYJnKIw3G0mXIRgrtH2dPwpIgVjsYyRSVMKmSpt5ZrDf9NtTbNWgk8VoLeZzYEo+J3oP
 qFrTMs3aYYv7e4+JK695YnmQ+mOD9nia915tr5AZj95UfSTlyUmyic1d8ovsf1fP7XCUVRFc
 RjfNfDF1oL/pDgMP5GZ2OwaTejmyCuHjM8IR1CiavBpYDmBnTYk7Pthy6atWvYl0fy/CqajT
 Ksx7+p9xziu8ZfVX+iKBCc+He+EDEdGIDhvNZ/IQHfOB2PUXWGS+s9FNTxr/A6nLGXnA9Y6w
 93iPdYIwxS7KXLoKJee10DjlzsYsRflFOW0ZOiSihICXiQV1uqM6tzFG9gtRcius5UAthWaO
 1OwUSCQmfCOm4fvMIJIA9rxtoS6OqRQciF3crmo0rJCtN2awZfgi8XEif7d6hjv0EKM9XZoi
 AZYZD+/iLm5TaKWN6oGIti0VjJv8ZZOZOfCb6vqFIkJW+aOu4orTLFMz28aoU3QyWpNC8FFm
 dYsVua8s6gN1NIa6y3qa/ZB8bA/iky59AEz4iDIRrgUzMEg8Ak7Tfm1KiYeiTtBDCo25BvXj
 bqsyxkQD1nkRm6FAVzEuOPIe8JuqW2xD9ixGYvjU5hkRgJp3gP5b+cnG3LPqquQ2E6goKUML AQ==
Message-ID: <5870dc40-331b-d4f1-3eef-e7c08d5326c5@i2se.com>
Date: Tue, 17 Sep 2019 20:03:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <197ebc29-2e4d-fa2c-7ad4-1a83ce3f3eb4@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:6y0DZe1kUadHoxS5LysJaS/RIJsVaAQGfjhvLJeUSkcB5w9m7cN
 rLuRJGt1aDHj0VrPLbfdT8NrvFe71gkxVNUGOk4g/LhB8v8W7LcBAgnesvyo2YXOMzNuQFf
 gq4Swzu4eune2aIb8ybJzxHi+Ys2eFtOzv8/6iiP0MjGMQA6iSiyVpz8JEry31NitBp9BVZ
 09nikX9yO7OxWKMji11xQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3QeQE75DKZ4=:6Y9gj8JpU6AZhEW9L9AuzQ
 dso+qKp7F1oqyLimvFgv2OQGamvafPKp1507sedSO19NLYZT7cCbVH1Mw/VSsQ5l8l/P2yviH
 AbIXcUtxbfGc7v4q0TVwNBZousQeRATFQ5Y1EZy9ZdFH+9udfGoexaXyW1jW7Chrb6iKzwktJ
 uGizE50LYsI9dIxtSuK1OaGQCxNbo1o9XOY2rgNMKnbCHaHTxnNRWn8p7US5HRGGges05BxV9
 M8kL/DjAxBvJeK1129npeSy6cfhDD7yt0UpS3LydxL2eJW5rWxoQBiVBa6PgSZkQbFCDwDvWM
 NO7hYJpduSlFkWrvmNhamQfpCpNIlB1v0sFgZ472VChZe2fDXYZJlXvAgf7RzFxe64cbQDzTD
 O8uTMg64FsZI9JA0fHKV6xE18ZI7Gya2w348nbI+jg25eUhUBU4p501TcORm7Lt1zvEcXqH4r
 70LdKLbbSNoz3q5boivl1mlxgBVcx1qJS30akVOXTEGteZDfkJ7hCt5gqrgU9KD6InO1EO+Ru
 l+i1feyzKQ9brlr7t2rEyOAw4Hh/AMhW5rvwWU2a31dZExELQ1gNcTHun2qAQ1y9NRUMXcRjC
 K77waq7gBt6lyFrh6waKuUzLcpd4/ehKvSVd8bPzUkTgg6zaZa5ns/15qLUxfy52QPHZ2mE6X
 Z6G0aaJNx63jfcVT2y4DaP22MWm4/6hscG1MDY7H5MdKjudHXBGYGnGJ1uQGdKbaMx+N8leYr
 +H0U9bboVIMApXUk6qJossuwK84ax/x27EpVbjjX8smhtR78FhDMRBK5X8F77EA1l20OLG4TL
 2xXzAcxKOacx5i+G327b3tvFEwTXUM4DQWDR+yoavvIPhDnKghzDkeobbjQ2gUibT4bq5rD6h
 eHEixDjW07u83Bwi1DYVEsGD9vqsjRBr8zENIXWxw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_110325_483877_3B823DAD 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Am 17.09.19 um 11:04 schrieb Matthias Brugger:
>
> On 16/09/2019 21:19, Stefan Wahren wrote:
>> Hi Matthias,
>>
>> [drop uninvolved receiver]
>>
>> Am 13.09.19 um 12:39 schrieb Matthias Brugger:
>>>>>>>  If you talk about the
>>>>>>> downstream kernel, I suppose you mean we should change this in the FW DT blob
>>>>>>> and in the downstream kernel. That would work for me.
>>>>>>>
>>>>>>> Did I understand you correctly?
>>>>>> Yes
>>>>>>
>>>>>> So i suggest to add the upstream compatibles into the repo mentioned above.
>>>>>>
>>>>>> Sorry, but in case you decided as a U-Boot developer to be compatible
>>>>>> with a unreviewed DT, we also need to make U-Boot compatible with
>>>>>> upstream and downstream DT blobs.
>>>>>>
>>>>> Well RPi3 is working with the DT blob provided by the FW, as I mentioned earlier
>>>>> if we can use this DTB we can work towards one binary that can boot both RPi3
>>>>> and RPi4. On the other hand we can rely on the FW to detect the amount of memory
>>>>> our RPi4 has.
>>>>>
>>>>> That said, I agree that we should make sure that U-Boot can boot with both DTBs,
>>>>> the upstream one and the downstream. Now the question is how to get to this. I'm
>>>>> a bit puzzled that by talking about "unreviewed DT" you insinuate that bcm2711
>>>>> compatible is already reviewed and can't be changed. From what I can see none of
>>>>> these compatibles got merged for now, so we are still at time to change them.
>>>> Stephen Boyd was okay with clk changes except of a small nit. So i fixed
>>>> this is as he suggested in a separate series. Unfortunately this hasn't
>>>> be applied yet [1].
>>>>
>>>> The i2c, pinctrl and the sdhci changes has been applied yet.
>>>>
>>>> In my opinion it isn't the job of the mainline kernel to adapt to a
>>>> vendor device tree. It's the vendor device tree which needs to be fixed.
>>>>
>>> I agree with that. But if we can make this easier by choosing a compatible which
>>> fits downstream without violating upstream and it makes sense with the naming
>>> scheme of the RPi, I think that's a good argument.
>> i spend a lot of my spare time to prepare these patch series in order to
>> get a clean solution.
>>
>> Either mixing bcm2711/bcm2838 or changing everything to bcm2838 in the
>> upstream tree has the following drawbacks:
>>
>> - additional review time and delay of the Raspberry Pi 4 support
>> - harder to understand for developer/reviewer without RPi knowledge
> On the other hand it get's confusing that the SoC for RPi4 is called bcm2711
> while all the others are named bcm283x.
one could argue this is a complete new SoC. But i got your point.
>  Anyway if the majority prefers bcm2711
> so shall it be and let's get forward instead :)
>
>> Btw currently u-boot only uses bcm2711, so it would be nice to keep that.
>>
> Yes that's true. We already identified the compatible we'll need to add to
> U-Boot to also boot with the upstream DTS. I'll send a patch to the U-Boot
> mailinglist.
Since the upstream DTS isn't completely stable yet, maybe you better
wait until it has been accepted.
>
>> So my suggestion is to add bcm2711 compatibles in the downstream tree.
>>
> Ok, can you take care of it, or shall I send a pull request/open a bug?

I'll send a send a pull request and hope the RPi guys are happy with it.

Btw the clk changes has been applied.

Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
