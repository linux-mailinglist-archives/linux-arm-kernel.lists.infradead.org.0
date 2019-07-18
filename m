Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E9F6D305
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l314RASEIUx9MeLSA+FnM0DBsI7B7Yr7U5Je2md97rM=; b=n45mns1fUEleNl
	VbZBguHhXuBygj5plwmsMpbQk4KVG52cvPzJDYjtGuYLeki3tGS1i1M9SzonBjcVdjwmNYGy5/sv5
	ySlKTl7VN0HaH8jLSxhR8PdEti0GZk4yaIaxWsjIfBsIy32Az8s5bKncz2W62asbkoQgURwxiuPG5
	XygYtDAjSkQzdcvCZCIemvghsH+QICjVWV0B4N9ikpmgX81JW33D6kLvegXeBrUX2SsHBMAPlvqWN
	+KYvq3zBQBLDXnJ/mt6tHF2TzhZogC8bIGKT4Y8sdSR8p1L02swfvpeySN5992xl/jmUqbN6MVs6H
	rGrHYkLkTWZO5JG9MIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAUv-0004q5-H8; Thu, 18 Jul 2019 17:47:17 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAUi-0004pi-MD; Thu, 18 Jul 2019 17:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563472009;
 bh=aguOxYRftbcWJytD0D36nlyxeVSr/tdPtrg5qADo0bU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=eBymyvc+xaOcpdgjOTr1xMhIEri0+djxcv0wDO1aceNXav3T1638IaD2Fqw5SPrPr
 v6xbOT/OhQueZWpNY4YG1OEba2qLQsenEjo9pMEX+dN8xYwKCipUF0WM8PfchbB9zm
 WfNJMAGH5xlZRNknywvw0WRpn0O4haSA8dsNeJC0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.117]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MO7Ca-1hkr6r23s4-005WYC; Thu, 18
 Jul 2019 19:46:49 +0200
Subject: Re: [PATCH RFC 09/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2838
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-10-git-send-email-wahrenst@gmx.net>
 <048fc038-4ba8-ddc9-fbdb-aefa7a35b41a@gmail.com>
 <2a400a9b-9351-ba6f-adff-3e3916efa6be@gmail.com>
 <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <2175129a-1541-8883-cf3c-fe17c354faaa@gmx.net>
Date: Thu, 18 Jul 2019 19:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:l+Qw9+8D3n5A/Mb7OA4Ke9idH6JYFoaTg2LnHpnUoDWDdjcPu/N
 4b1tRkzRSvMkgdK9SSGSW8gS6gG13R/bBDLfPpV2dJpTo6b6A2EtGmNlsIWB4Y1lng72gRJ
 Fhx+L0poG4fxbPuRQO0+7NdkYJQJegLkJ/4RtkEEX7Wayg1Y9xE9y6FSWoc8vD4OxtaXJZn
 NU1iBYXaE7ilNUdEhRhTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SdO45pCRDE0=:Zjve6wLYTCZ6R2Jf5bOey7
 f2Bb7ps0kiVPiHz4JGbFwRvKfKyRg7m1gC5dRMw7jYe6mHmGefNTjtUrv+FpvnbPV2/0OS0gr
 8a5loGF66mVxRNwLAHoKnph4QPjpCgI9OG2iXUemUf4gNMQkFzTGIngAggAsXj4CKCETn2Kwb
 WAdgfG6t44c2gXao6NhIbvE5Nfh4BjujJJWraTX0nP7IUgrN0nTJHLfgJidK2jmO7XrF2GfBR
 3xkgXnI81kRgSCSij4PkdGILaFIMljMM/wzzlvCOVHz7owU94WjP7zXq3Xuxzr1zzk2uios4Z
 zsOb5tv6XQSbhZK9Ukv/t8XIDvMLhJwUrbApFgYMs59WSSdHwq71FDxB1L2GnGQhi2rrMgq0R
 B1gQvqR7XGGCrLowFoIXt4gtXDwzHb+TedYZPVkNIcAKxVgiOuBTUyOKsFeMPA1NQOv0wZOif
 UjwxtWi1tzGBJs31baBMltG8vT6Bgg+dtW96z12rS4TpEhuU8bSgRDGBnkLLTqabRUixSuiew
 ElW0XWx9nEybk0/+umfPTSL1z/5lsYOsxlk/2YzKQQ6EoA9WsjKhHBzWn49S8juFVVaGth5Yq
 7nYuYnKAXUwe7J6D65n3qaRJkJvg8U9vFXpye3A77LDfo/gcj95P3sXcj3ClU+rEZMUm/iOOj
 ksDxjbUUQ7TOnc9OYiVKbUAp61KaFRMxIPhnmYBJ6LHz9cbsHDXfLXSBjiM/FmBycyTJuTNBv
 qRejE6zRskZ+6zdkasdTsg4AziIFtgT1x5CHqzOxm4ruSffd7hLtDleSGFJ0aTT1ihi6cFJKu
 atyJNv1GP4d6xurud5p6QsAxXaUsK3Vrs3BhumoaMQ5soGy04TWkzfp2ziT26MU04UW4dGlve
 plRr/H8kaVL5zrX0VUAjI0GkoCY+mnhtFE1uBryhIIF01NEuzUFzNv+juR4T/zK669aH+pTzV
 gRbIs1MkLnAqMVAa0BaT2jrFbmYKKr3/id+KSVq2428vX3J+Bipmkxs8Fa/oGDE7yFbgFcJPW
 tJj1s1ZNVJptb2M6u+z2a8NGL6GGew4POaxdh/EobBRqUdlNmt8zg+EtOZK+dzvJZI8MZcpCz
 DqE7B1RZ/ti+Lo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104705_056818_5E056A89 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 18.07.19 um 18:48 schrieb Matthias Brugger:
>
> On 18/07/2019 18:40, Florian Fainelli wrote:
>>
>> On 7/18/2019 1:34 AM, Matthias Brugger wrote:
>>
>> [snip]
>>
>>>>  static const struct of_device_id sdhci_iproc_of_match[] = {
>>>>  	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
>>>> +	{ .compatible = "brcm,bcm2838-emmc2", .data = &bcm2838_data },
>>> As far as I'm aware of, the RPi4 FW provides a device-tree with compatible:
>>> brcm,bcm2711-emmc2. Shouldn't we add this as well so that we can use the DT
>>> passed by the FW?
>> Downstream typically used 2708, 2709, 2710 because those are the
>> Broadcom internal part numbers, and upstream has been using what's on
>> the package: 2835, 2836, 2837, 2838. At the end of the day, it does not
>> make much functional difference, but if if we have to be consistent,
>> then Stefan's approach here follows the consistency here.
>>
> So I propose to add both, so that we can use the upstream kernel with downstream
> devcie-tree. I'm thinking of the device-tree provided at run-time by the FW.

AFAIK the FW doesn't know anything about the devicetree part of the
emmc2. So i suggest to add the upstream compatible in the downstream
tree. This way we keep out all the downstream stuff (as before) and
avoid confusion in the devicetree bindings.

Stefan

>
> Regards,
> Matthias
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
