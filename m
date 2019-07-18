Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E46D37A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mf8KeJiBBgRZcJnc/7PrzceUg5dD8HObFbuB0GfPVo4=; b=GCvVznFgO/Tbgl
	qSPSxDuAW6ScVPF9G1A47f6ChNLJQ+r38cDEFNbjJTlzG/TRlSkEm/q+m9pJy4guf+xvkrQrREbnC
	sflYGUiREQbTNe7e2m6MpBAw5pVopoFA9gC0l6rTlAgiufyzTHNW1O50Ipguourt/k0zTQWJZb2rk
	cFueyGbBfA/4zv6UATqNnNIlXB+gmUeZpBmzHDUu8WOeA+PEJp1+DvmU9rwrED3I8t/6ISYR3Ci0Z
	+QsJzRG1VzeysSEb9D9LN4ChHbBfbxrld+ntzj4iXbezQtapYQk48/fbNYv30xLkkeUhm5PCuU5io
	ZjcjBlJQNcjwgCRc6UhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAqd-0007Bn-W6; Thu, 18 Jul 2019 18:09:44 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAqL-00078l-Rj; Thu, 18 Jul 2019 18:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563473352;
 bh=mWiWnTRLnckCi1Wsr7l+kKmPHWmM4bSAKjgyhnAmd+0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=RmyuW94BP0tvkXAFcOxZgaeD8xxMawmBRbvD9ym87jYWMVPHULdslz4FZcKh+P5Er
 qSyVGjPFWvfGfKTWF5FK0iiJHD7gc+eqjoDmfUM+2gU+7QX/g+9SdtnmkrQlePHaFN
 DButy8DmSvURPjDZ9GoVEEONSr5XrzZnk9TaBj3E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.117]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Las1k-1iGbmR49RQ-00kMmr; Thu, 18
 Jul 2019 20:09:12 +0200
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
Message-ID: <7537ea7a-9e96-e6f1-231c-9f2d433884e0@gmx.net>
Date: Thu, 18 Jul 2019 20:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <74ee5be5-3840-3a70-0f2a-60d86bcbeefa@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:nFbZQC3XkaX/DUR5FfDl3/vJdV78CHNpYpcSyp1QPxh2T/eterj
 LeLjUzQnAEnBtmjsW31IVBuaZenTlm8ygnglOerOKQfrOmoHPIM8RzR2RrevSBI5GUXX2pI
 0eWf1nyb/0dMQqqLEhPP40zavItS7LEeP/RBldaYyiV0pnoaSCHqmARMnTjDy9UHOo82Q0m
 RkzdmGH6k+KK11EtKHxTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FpYASarGZcQ=:e1yGaO+GP9RZANjLYjTILB
 t3ISwLrRyndeT4KZytL11khg4RWyFyqD3dz/CNJZO206jsk9Bi7jMsuk159HqyEUJ916aDH4p
 nXlmcyR78jTrLd52yrlosGMSDHe5zti1otdrnNlrzsELEBpEZtxpQBicJTg6SW/KBHFQ/yOui
 Ra33Hwu8g+GcfOGCPlOhLIwKCBXPcAIVtm6CL5hMdwbwRufbMo8ly320xuhayQLX02V9AIxM5
 w1cpyrJAGdHxVTRIzoBXh+lb50uVNw935/ZPZ0RPHVKvkRXnmAN3HpCia8m+VGp/9Tc2DRbm3
 n5zez7Tp2bI73OjI7JVHQ6CsLB/HkXFo5BgWIUVUeDjWKRArS95Wa8yrwQfJlaucUiMdGVxS9
 zhfrT0XBEpCTWOxdoXeD6uECr9gBwirok1TxKbhbccpNhwNJJmQGL1ZrjyPfcnS7g7E1e05Bb
 U0CONGO2b+Fyxt4njs4or0+XIRxNZU1uIdw1goFGI3vYvI8bTIaavaKJ/2o839zqEqgIFs8D0
 LoiD8Iv0DlFtDSa3BqoS5/oc06/IZ9kGfef+zVTCPoCEBh52ZIJgmo/NHgsF4XNc7Pt/YALYi
 qf6PoRNyFoojTgjCmI7qgu9Mi9K9AFaJ20GxvqHeRkWb6FDklJcCzp4edRXMSkMYUj4CYfLS8
 pRuwefwT2HFNe+7L2405NOyWOtDV6uUzqIVmqDnrqu7P5uDyXjBeapJXqsA9HT+p2vqqm0O4U
 wcDHpM6ZJR+paMYFk1lEsLqWMnufSmHoreEtwHRNWP/gRmU7HuA/2VELtJAJwJVwLQwp6n7wJ
 e1QojoTWHPs5GLI4BMEeih9fILnp7YhZ86zSTiTZedb1B9cnH/uP7/IsiTr9kMZbVy2xkXlGf
 oQr/oIOZbXX/pIjuqqvpL8XYSXPifobTrPHIRo5H4f/AHP5qhj17R+dH1di8cdkM/RAqBz5IT
 p+nbLL/ogSQncVWt/c526ErTqKFKkSrP6w5U73X/4hhNPX01QbeVX28QGgIzBOK3AfrmvBqVV
 ekRSAdwsBQga4ZNg4qncPdycGcK7HyhHTTsaBJ2W4UXQNLlVAliP0AsszRs00+bCb+uflzW1h
 bWjE2yAROjfVcU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_110926_281954_B49869EC 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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
Cc: Andrei Gherzan <andrei@gherzan.ro>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

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

sorry for the second mail, but this is a slightly different topic. I've
seen that Andrei already submitted a patch series for u-boot with a
different DTS file.

In the past, we had the following workflow for DTS submission to u-boot:

Downstream --> Mainline Kernel --> Mainline U-Boot

So we have at least one review by the devicetree maintainers and avoid
inconsistence. It would be nice to keep this.

Stefan

>
> Regards,
> Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
