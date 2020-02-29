Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2051746A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSvGlCmeKVw5bvU85QzB2bog77kubKXTPP2yqOdm9ek=; b=lxtyGlj4ar94oJ
	uQBAtVAJatB7/AVUl8rE4lG+f7MRPeSIVICogvn7MqHU2kC068Fik20go6Kv9PKv2a22VYvMgYBef
	aiGEQpwUdw9U1XCLhJnY9fbEuv+nfAgGSu5mvRgDagjHUE2Z44jdfqwEPKn4ysOAbGRYYr9R9kpZP
	VhwVAThdhbAfZAQcqAcmBWBoNBi7enAH0J2PE9c3/f6yaREW4A6u5//TM4oknqi4nvw0I9WgcRE0f
	0TKrrmht006/HV01F0jPCzfiewKFIHoZE5Bg+DlKavdRQ4WSdY2B6QmcanROuXq6zvhIF9b3Es3cK
	1A5pdIjkumhoMQ7IHhhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j80uO-00011i-U1; Sat, 29 Feb 2020 12:07:52 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j80u8-00010g-IE; Sat, 29 Feb 2020 12:07:38 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MFL8J-1jAVrG184f-00Fg8F; Sat, 29 Feb 2020 13:07:23 +0100
Subject: Re: vc4 on rpi3 A+
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sergey Suloev <ssuloev@orpaltech.com>, linux-rpi-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <d64d8f9b-d5bb-6e0c-04f9-86ef957f24c9@i2se.com>
Date: Sat, 29 Feb 2020 13:07:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:zXMMUqM6HIM3RqHNTlTnaEKYsggOrGB3nNs0enAEnW3CKo5LWvY
 HeRjdZlYIc1uO50OysB0A2TVMr6DY/J2tukoMViGYCn61TZSMM5ymCpoGYZ1nW2zsoNOCtv
 +XuP9lB/kh7PTytq6jgzpzwCj/DUe8UscrnzJ6Jioq015PBqFtZETgzFljHWST5lpXQDB4N
 lNfzGtSM0u+Mum6DvAEUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BkwjAw4Spww=:CEIOVYRVRVBJKAjsnLd7Mq
 FuRVELYjstjtKJ93n2jFuSgSaHONVim3LFtjQVS1GtAmL/Csw9TAYeZQReFjgCFCm8VyWH5Ah
 WS9LVqEb4RlwLFGesvtxWiZFzTVNzF+fUd2vAaacmKLqVxCt1sq8bDyUgKH6XIfZ//Li4j90Z
 LbcvGgtrCnh6fU8ArIBrFe2ep0t/KwTHNyMymfBnsiOyG8/NIWcrwCqPeSur11ObUPI+Kpl72
 +acr4yEedqWxjSTpVRnYffgp993z8LiFF+sAwBTeMz/bURDjQ61LduhMt6gDE++kcQUSALw6m
 cigzwGBzetnq87N37I/i6OtesuoaEWokaDyTJhWPdrHcJdG2JZCLfzzZQXdPfEI2TJcNWDuYP
 s5Y74c+68cv/WuDP5sqv59zqut5hzZXFYGgNFe4uRMmOfL/MKbqjlmb8Pf/D4eII5r2FRyj6d
 G821Kb2g1Z3ft3U2bf5DKqiwGx9szacvzTC/dW6xAeT1WJWjIcXTG2vQASRrGNNVDp3Hj0tdl
 p6YUsEJEXHpJC8uyCblTY2mzcR1zRyB3i3QHfD9Ojla6XaLhmbjkHHA+9V5CNrc1UGSIn5ccO
 uHcOJ7FmlDqAxVMplz/XgEAIHIlbTk02a0pr46k8Ki3jiIyF7U3yptpalRaFcN6Hrky7zF25l
 j904Q0SnRwoc9uaYpGGF/Hsxm0YeWjXWBizGX4Vn4W++f+Ue5u43ihTgdEjh8BRIl0FYo+z1n
 oTQOzNmEnEAmlqpaqnmoehfirUB/yY7cE9iXih2pQDtjg4Nq84ABQbJ/zSXCfnZtCb077z8Yj
 fEMDv2R9C1/1t5IwIWP9BZyyoEb6oEhwTOtmRQenhD1XKMaoB3nvN+Iz1qrRnxdD+opmEq9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_040736_895030_182E35A3 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 28.02.20 um 14:09 schrieb Nicolas Saenz Julienne:
> Hi Sergey,
>
> On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
>> Hello, guys,
>>
>> could anyone clarify the status of vc4 drm support on RPI 3A+ ?
>>
>> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64 
>> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver 
>> is listed in memory but not working and not producing any typical DRM 
>> log output.
> I managed to get my hands on a rpi3a+ and reproduce the issue. 'dmesg -lerr'
> outputs this:
>
> 	bcm2835-power: Timeout waiting for grafx power OK
>
> This is a known issue, see https://github.com/raspberrypi/linux/issues/3046.
> I attached a device-tree patch in case you want to verify it fixes the issue on
> your board.

i tested recent linux-next (multi_v7_defconfig) on my Raspberry Pi 3A+
with current Raspbian.

Without your patch the LXDE does come up, but i also see those timeouts
and the v3d part hangs in a deferrred probe.

With your patch the LXDE doesn't come up.

Unfortunately i don't have any newer suggestions other the mentioned in
the github issue.

Best regards
Stefan

>
> @Stefan I guess I'm going to have to revert the pm patch, any comments before I
> do?
>
> Regards,
> Nicolas
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
