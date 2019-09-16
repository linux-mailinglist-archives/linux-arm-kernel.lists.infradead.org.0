Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E037B4104
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 21:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KObfbAGt9ZzyNkcuPj4Gb+dBtXjnSDmJ55E2+FlUmQ0=; b=dI3AplDXT/8ot2
	yYbrMIsDCn6+IikHUALfnAzJ9zv+ZLDGkw9iwjIW1xzJIlRVkQxp1A8XSxPbmVqkyLfxFJcitOmdv
	Gb44JWUi4PZOsKJd04GvcrreTlam95W3+0a0mfUU7wn2BKaMKDEDBuF/qWLYj4kWPVgjuX3G+mn5Q
	HkorrpzAy37FEXjsymk+uDxunYqqgC627mUU/1r3m3SHOyNFvqYw82fMeLbSFz/rPIhicRQv/hpPY
	7/WpHilf0E2vZJVKiX4T3fSDQrWRQnxivRyLSL/9Fvp0fgL51tDstQu11TAZCRRiLyRo5h9Q+ibL7
	AWWV41abVi2zpVom/wsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wYI-0002ha-NQ; Mon, 16 Sep 2019 19:20:46 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wXV-0001Lh-UU; Mon, 16 Sep 2019 19:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568661560;
 bh=elXS+SmHE51BtQRYUS0Y0LeS8kJdvoe3N4Rug07ce1w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XuOht1zHPZkqfNe7zeJVPJ4l+uC33wWJSiK6CDliiI61xb/jzJGxW29g3MC2ATvjE
 mhSeiUkcAKuzykGJnDHdBrHxXV+vV8UaPeeHFcuuWWwEBDsKN3/RPg3q0DViLj1WUO
 E7j/hddgO7Kml9x6pF9BiKyrkH75JXbsl9B8VDXU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MeU0k-1ihuN22rmW-00aU4l; Mon, 16
 Sep 2019 21:19:20 +0200
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
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
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c7e6ab89-aaae-debc-5f63-2e091efcf76f@gmx.net>
Date: Mon, 16 Sep 2019 21:19:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a5073e16-c017-216c-72b4-0e861102c4e8@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:OKdN1LqiR0I/Vb3hGfOwOac9GhdZhNItN4IibDlWnd1VUG1cA2d
 X8pKcRXWojQ/gaG5LixeZeR+RyMTGUNgQhB6sNeYZ28h4U+wAoQvjJVYAfoARzq3aMwPfiu
 w7K6w7ETmJPmYbLvPSpnikvN3Fb2J44lZRfQdm0Aaf3Jy5zP4wK4Jo7V3+qPDut1GaOGZIp
 5CXznjnea620TlDuVyfKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NkpHWCY5Y24=:Dm55ePhqeTCGkcupxp6T1H
 74dL64T5m4DwP/d3xvMA4lYMOgurPTUn2kJd/52gmAn7aQRoI50ModNJuI0NOqAWEwpNK/i/d
 EjC2I+0UMKqHJxziTCUy7tJIyOXPQVROJQg3hYn4dP6knJrOZAqCUiceC8JDpCwcnb0UuIzPb
 /Ow2BcpCEDxqpbKvc/peoMzfNEKqrdl4EbLKrSEDwzpODajrsIxh6nNaojAWslyuw/Ebk9GdQ
 x8mI+3hCJNODNRH7/ZPZj0Tdnj1/DIPUHc6ywCWzCmCiSkjsuoZKKl2/NTQ5CK/4MU4AOkwAQ
 q/zX0alDCQaYBWGgw8I+jDcs6WakhcJXtZnXSqqyCuVjx8yNQaOzpwSVe+kCaCAmekthItqEP
 uPczGh0VBbbvOS/ruIc7mZJO4SYqqlGIby3/z543BxBgaY4tbEyiOFzjIm+SJJA8jIqvClWf4
 IhquphBEuBxi8mYyh0CXzMt5yu5ywjPY1lzF0+Q5wfn7PgYBdizMTz+ltB1uALe9zXf0OTM+J
 SNgVTq82umz6v7OHIPVzAwKA6yeqhpwYYUg3Vcd89/HdNpbKXwFpjaIUMgt8ki4i+CtnSJoAu
 lL0vDdOPeDzrykFKJuH8Avl0mWjSfGgZ4oCjxOBVLCVdCvoNgUYc7vYVLoZbRBFA1b1LNpFie
 vYrtezk3OGGEpbPxyejiPdNDUn4juj+kTSRT5cUnJ0McpPZNzwq8BneOmLzZ04Gun/Df2wLxZ
 A8PVroOx/nxQvu8wUOjtlw6VNJptibD41O7/WRoqFMLZhh33qGcYvjVaH4/EDSv28V7Iw3Eb5
 vYhE1KEKoudwM/29yLxrCPjMJw+M+WA+TXTNk9oAaRc4rTIK0uNoCiFekmNIulk3OpscmSEOl
 hfQjHxMgXcB/+g/JoSrA/LGd1vxjzPcwshvGT5PNDITTkjtqwme5zemVQ+lyrVarh7tvy/HAs
 G33+ddPZoFe/sEQC4bI1LIyr0kiMMVeDYkssaKt/NpXbodN0dlIkqZH+xzCzrJSTtg+2UKgM7
 mMwn3+51ZpW2VrjafRy8VDhbzVI94yqK9GjEus/xBUTRqwHPVEc+HtJIQBXLU11o3bGOsdaei
 F4KY9bV1CVIAnnA643t+qp/cIjayAZzm7a5hA+OM1x+5NJpGDWq7VKBIlPIzMtZZCYcCrdLt6
 xd85OtUNBALmpQARyZnG7v/mk0oyRSla8dHmvJsgqy00ouXksUspVj61pcR9El3Ry/DI8/bBr
 jD9OAE66DVTw1J1vejHFbcpXCCSWlPm6+8+2SqXsZ847MWBR4nnCKuvUmsBk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_121958_279003_898A8626 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

[drop uninvolved receiver]

Am 13.09.19 um 12:39 schrieb Matthias Brugger:
>
>>>>>  If you talk about the
>>>>> downstream kernel, I suppose you mean we should change this in the FW DT blob
>>>>> and in the downstream kernel. That would work for me.
>>>>>
>>>>> Did I understand you correctly?
>>>> Yes
>>>>
>>>> So i suggest to add the upstream compatibles into the repo mentioned above.
>>>>
>>>> Sorry, but in case you decided as a U-Boot developer to be compatible
>>>> with a unreviewed DT, we also need to make U-Boot compatible with
>>>> upstream and downstream DT blobs.
>>>>
>>> Well RPi3 is working with the DT blob provided by the FW, as I mentioned earlier
>>> if we can use this DTB we can work towards one binary that can boot both RPi3
>>> and RPi4. On the other hand we can rely on the FW to detect the amount of memory
>>> our RPi4 has.
>>>
>>> That said, I agree that we should make sure that U-Boot can boot with both DTBs,
>>> the upstream one and the downstream. Now the question is how to get to this. I'm
>>> a bit puzzled that by talking about "unreviewed DT" you insinuate that bcm2711
>>> compatible is already reviewed and can't be changed. From what I can see none of
>>> these compatibles got merged for now, so we are still at time to change them.
>> Stephen Boyd was okay with clk changes except of a small nit. So i fixed
>> this is as he suggested in a separate series. Unfortunately this hasn't
>> be applied yet [1].
>>
>> The i2c, pinctrl and the sdhci changes has been applied yet.
>>
>> In my opinion it isn't the job of the mainline kernel to adapt to a
>> vendor device tree. It's the vendor device tree which needs to be fixed.
>>
> I agree with that. But if we can make this easier by choosing a compatible which
> fits downstream without violating upstream and it makes sense with the naming
> scheme of the RPi, I think that's a good argument.

i spend a lot of my spare time to prepare these patch series in order to
get a clean solution.

Either mixing bcm2711/bcm2838 or changing everything to bcm2838 in the
upstream tree has the following drawbacks:

- additional review time and delay of the Raspberry Pi 4 support
- harder to understand for developer/reviewer without RPi knowledge

Btw currently u-boot only uses bcm2711, so it would be nice to keep that.

So my suggestion is to add bcm2711 compatibles in the downstream tree.

Best regards
Stefan

>
>> Sorry, but this is my holiday. I will back after the weekend.
>>
> Sure, enjoy. I'll be on travel for the next two weeks but will try to keep up
> with emails.
>
> Regards,
> Matthias
>
>> Best regards
>> Stefan
>>
>> [1] - https://www.spinics.net/lists/linux-clk/msg40534.html
>>
>>> Apart from the point Florian made, to stay consistent with the RPi SoC naming,
>>> it will save us work, both in the kernel and in U-Boot, as we would need to add
>>> both compatibles to the code-base.
>>>
>>> Regards,
>>> Matthias
>>>
>>>>>>> Regards,
>>>>>>> Matthias
>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Matthias
>>>>>>>>
>>>>>>>>> Are there any config.txt tweaks necessary?
>>>>>>>>>
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> linux-arm-kernel mailing list
>>>>>>>> linux-arm-kernel@lists.infradead.org
>>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> linux-arm-kernel mailing list
>>>>>>> linux-arm-kernel@lists.infradead.org
>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
