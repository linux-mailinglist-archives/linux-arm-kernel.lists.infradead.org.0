Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3D1421E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LTgy5v+jsqSfb5u4veQxmgxSnrUSUfVFll+RcbsP9E=; b=eTzFhz5OR03js3
	MPkN53CD6N4EjvA0qM67bemN5iijrzCDUtZNiLurT81RxuoOo7u5UMzLY4ts9e0lEWhXjX16fO7hA
	JgGEPbwf1CHOaru6zry07T+VBRB7Mw0d4DcISX0SH1QsvEThA4kRTUZImtnxDMb/JFX5bisgWZWvJ
	DbfG1NrqoHuoDhlg6gjz+TjseAt0EXBZZSFPyi7JrAUya+BjnBkbE0Fi9GuuGWiyNc3tx+oO0V2Yt
	KeuPt9zZoA6MnN2rYv9M0gGcc7wMG8YlwEWgqJ5qcIovQskdbDBLed6vQmJ9QcQ/dAa1Gme7+L1QO
	yQQrEutTdEw6P+13T0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb03g-000354-1H; Wed, 12 Jun 2019 10:00:44 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb03P-00034J-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:00:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190612100025euoutp0134af333044aa10cd33109dcf91e9471c~naypTmBeg2067820678euoutp01i
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 10:00:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190612100025euoutp0134af333044aa10cd33109dcf91e9471c~naypTmBeg2067820678euoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560333625;
 bh=+95owVZmp1Gj8EZQw0Lxjw/FhUz68n4Zw/5vSmcwGH4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=R2INQf1yPpWuqEpZ37skedlp2MnXQzgf1fPL6FhLNu/puWWYEVKqXR12NurATDQaU
 tu9rr4JzC1fpUN0LXmBZ/kKSXPn2hZ0NiSy0T/0VcpnbaftQjuqknE0Jp9yV5Vm2v3
 bLNcIJG0pEiAcdnMghSot7zp8yDy8EpsarXBWFEI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190612100024eucas1p2f3595f8f18cd4c97a371232b05b72f01~nayoTr9J82796727967eucas1p2N;
 Wed, 12 Jun 2019 10:00:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CF.43.04377.83DC00D5; Wed, 12
 Jun 2019 11:00:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190612100023eucas1p26e1f39a703337d41ec8d28fdac7db277~naynehX3P2796727967eucas1p2M;
 Wed, 12 Jun 2019 10:00:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190612100023eusmtrp13c6005fd4dad96f0cef04f8a2cb66b5b~naynPinYP0608606086eusmtrp1u;
 Wed, 12 Jun 2019 10:00:23 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-05-5d00cd389b9d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 25.9C.04140.73DC00D5; Wed, 12
 Jun 2019 11:00:23 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190612100022eusmtip29b340996d9997b176a6add45d8922e9e~naymgAZbt1110211102eusmtip2n;
 Wed, 12 Jun 2019 10:00:22 +0000 (GMT)
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345
 bridge on Teres-I
To: Torsten Duwe <duwe@lst.de>, Maxime Ripard <maxime.ripard@bootlin.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
Date: Wed, 12 Jun 2019 12:00:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190607094030.GA12373@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURTlzU5jdVpArktcmmjirsSPFxeiRpPxz/jhbrTqCAZasAPusY3I
 otRoNYpUqBiKmkqEFARaAiUFQUGqRFyQKMQtbijRtlojKGU08nfuuefcd07yOFJdyIzn9ujT
 RINem6xhFFRVc+j+HNwesXX+oJnGp3x3CZzZ/Bbh31UWEl9u8tG4M/CFwcHOVgJnFJcxuNLd
 TuNvV14Q+ITFzmLnq8c0fuguYHDJkw4C9773IJxZ18Ti5+XtCFc4z5M45LZROOS9TyyLEopD
 g4RQaitFgq30sPCm8SMrXDJ1UEL5yxu0UBcsogSX9fkQl5NPC07HCUb47POxQnWwlxY8haWs
 0JPbQggVdqNQ22Vi1qg2KZbsEpP37BMN8+K3KxIf9tWhVPuEAzZzgDWh7zEnUSQH/ELoeVzG
 nkQKTs1fRxC45yflwY/A96OZkIdvCLIabPQ/y6PMQiQvriFoLTYx8tCH4GLBTTasiuI3wWlP
 3pCd46L51dBfOT2sIflqGo7VDAxfYvgZMFDRxYSxko+Hd3YLEcYUPw066sM5IrkYfgP4XU4k
 a1RwN/81FcaR/GwIXAwN3yH5yVDdV0DKOBaevb48HBv4Tg48GQ2kHHslZDm6GRlHwYeWSlbG
 E6HtnJmSsRF6rh8nZXMOglvlrr/mxdDY0kGH25BDqcvc82R6Ofzs9w7TwI+Gp30qOcNoOFuV
 R8q0EnKy1LJ6KvS03/p7MBZKHgSYM0hjHdHMOqKNdUQb6/93ixDlQLFiuqRLEKU4vbh/rqTV
 Sen6hLk7U3RONPRp2wZb/DXI/WuHF/Ec0oxSNuT93qKmtfukgzovAo7URCvjkiK2qpW7tAcP
 iYaUbYb0ZFHyogkcpYlVHo7o3azmE7RpYpIopoqGf1uCixxvQuqJOxaOO2JZteit52vG2Dcr
 LEsb711IVTWZ3R8Vpnhf94cUe//P3KIHUz7FTGnYEnAVz8q9c0NSGatbb6dmd+Wf0SdduOQf
 U6sLrs/hNcGSnY6a/Y6kta7zocS9X6dm0xvXtcXtNhd9j/a8PEAtn/Xs0JErR8Wr0QPG+uxF
 R39MMsZrKClRu2AmaZC0fwDl2tdzsAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHe+7brtbgbio+rA/FaIVhqztbe5SaUQS3D0EQRVlmyy6aui12
 p2ZCDUqq9UKjN5s6DSdaDhxOtCZmLVMsNjN7s8xELRLThJqxsGy6Ar/9OOf/45wDh8alblJG
 HzWYeZNBlyenoolnf7oG12j8i9LXXb+xGF0KdGOopPMzQLPNNhxVdgRI9DL4jULTL59i6HR1
 A4WavH4Sfb89iKHzNqcINY68JlGft5xCNW96MTQ01g5QSVuHCH1w+wHyNF7HUcjrIFDI14Nt
 juGqQ38wzuVwAc7hKuY+PR4XcWWWXoJzD9eTXNt0FcHdt38I187dIrnGu+cpbjIQEHEt00Mk
 117hEnEfL3RhnMd5imvtt1A7JWnKjSZjvplfnm0UzJvk+1mkUrLJSKlan6xkkzTpKSq1fK12
 4xE+72gBb1qrPaTM7ptoA8ecS487LgZFFvAzzgqiaMish69KKoAVRNNSpgbAs3emyEgjHrZW
 TuARjoEzr61UJDQO4D3HkGiuEcOkweftp8Mhmo5ltsOpppVzGZxpJeHl+itEROjGoWfSi80J
 FJMAf3v6qTkWM1r4xWmbrxOMAvY++DE/LY7ZC8u8FiKSkcDuW6PzHMUkwmBpaH47nFkFZxwv
 8Agvgy0T5f84Hr4brcSuAKl9gW5foNgXKPYFShUg7oJYPl/QZ+kFlVLQ6YV8Q5Yy06hvBOFv
 ae4MNd0D1sldPsDQQL5E/PDm7AEpqSsQivQ+AGlcHitW5S5Kl4qP6IpO8CZjhik/jxd8QB0+
 zobL4jKN4d8zmDNYNatByawmSZO0AcnjxeeYRwekTJbOzOfy/DHe9N/D6CiZBei2oR3SnoHC
 0MjlaIW+MBrNlOIrYF3OYqZgtKNy+W53ArblGW661lmmLt9XXG3sGs65+iQ0+9unOFjasO6w
 itb6v444fW9/Bd2BFH2q5Hste4aSST71WMYyBEXAmXqy9z3YMpDjXJm5Yk+qZ3ttXkKXaGui
 a3A4xdJeX9ctJ4RsHbsaNwm6v9efuIxDAwAA
X-CMS-MailID: 20190612100023eucas1p26e1f39a703337d41ec8d28fdac7db277
X-Msg-Generator: CA
X-RootMTR: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
References: <20190604122150.29D6468B05@newverein.lst.de>
 <20190604122308.98D4868B20@newverein.lst.de>
 <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_030027_829535_5B26BE95 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07.06.2019 11:40, Torsten Duwe wrote:
> On Fri, Jun 07, 2019 at 08:28:02AM +0200, Maxime Ripard wrote:
>> On Thu, Jun 06, 2019 at 03:59:27PM +0200, Harald Geyer wrote:
>>> If think valid compatible properties would be:
>>> compatible = "innolux,n116bge", "simple-panel";
>>> compatible = "edp-connector", "simple-panel";
>> A connector isn't a panel.
>>
>>> compatible = "innolux,n116bge", "edp-connector", "simple-panel";
>> And the innolux,n116bge is certainly not a connector either.
>>
>>> compatible = "edp-connector", "innolux,n116bge", "simple-panel";
>>>
>>> I can't make up my mind which one I prefere. However neither of these
>>> variants requires actually implmenting an edp-connector driver.
>> No-one asked to do an edp-connector driver. You should use it in your
>> DT, but if you want to have some code in your driver that parses the
>> DT directly, I'm totally fine with that.
> I must admit I fail to understand what that extra node would be good for.
> Logically, the eDP far side is connected to the well-known n116bge.
> Inside the laptop case it might as well be a flat ribbon cable or
> soldered directly.
> In good intention, that's all I wanted to express in the DT. I don't
> know whether the relevant mechanical dimensions of the panel and the
> connector are standardised, so whether one could in theory assemble it
> with a different panel than the one it came with.
>
> OTOH, as I checked during the discussion with anarsoul, the panel's
> supply voltage is permanently connected to the main 3.3V rail.
> We already agreed that the eDP output port must not neccessarily be
> specified, this setup is a good example why: because the panel is
> always powered, the anx6345 can always pull valid EDID data from it
> so at this stage there's no need for any OS driver to reach beyond
> the bridge. IIRC even the backlight got switched off for the blank
> screen without.
>
> All I wanted to say is that "there's usually an n116bge behind it";
> but this is mostly redundant.
>
> So, shall we just drop the output port specification (along with the
> panel node) in order to get one step further?


I am not sure if I understand whole discussion here, but I also do not
understand whole edp-connector thing.

According to VESA[1] eDP is "Internal display interface" - there is no
external connector for eDP, the way it is connected is integrator's
decision, but it is fixed - ie end user do not plug/unplug it.

If I remember correctly in some boards eDP is connected to some DP
connector (odroid xu3 if I remember correctly), but this is non-standard
hack, and for this case in bindings there should be rather dp-connector
not edp-connector.

[1]:
https://www.vesa.org/wp-content/uploads/2010/12/DisplayPort-DevCon-Presentation-eDP-Dec-2010-v3.pdf


Regards

Andrzej


>
>> I guess you should describe why do you think it's "clear", because I'm
>> not sure this is obvious for everyone here. eDP allows to discover
>> which device is on the other side and its supported timings, just like
>> HDMI for example (or regular DP, for that matter). Would you think
>> it's clearly preferable to ship a DT with the DP/HDMI monitor
>> connected on the other side exposed as a panel as well?
> Well, as I wrote: "in good intention". That's the panel that comes with
> the kit but it is very well detected automatically, just like you describe.
>
> So, just leave it out?
>
> 	Torsten
>
>
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
