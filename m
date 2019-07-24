Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD497287D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 08:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oF1o6um/Q/d7fH2RbeIwMPH8Z+l1NJY0tI3VMRdZ0E8=; b=iszf2i0WM8SEm8
	2XmvxrYAGa+tJSJARWuTq0psGRm9+wU2NiSwmfByKe3t4Cfg0FpDX1nDBR2QOeltKBTKvM61ivDT9
	aUHh0Glap5bPgjR1YtAnS3ulkbcMAyKJtMPbu7t9CJtPRdapS3bZwkwDgSMTapS2i3/hcK2rWPO7n
	l5XAskMK+QLAyH+IjD5v/jrN9fvg2RxvlOm3pquswW4tkD9Gf/pv09Vv6o6reyxQDy8ByfMn3xz/4
	vtJCeFnQId0n3qXzEphHlE866c45+x9wT//4P/Jeqry240pzZGi8e4qnHZVcnDAoBvD3Q2d1BBhDj
	yN5FO7tETBT3OLsWWugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqB5a-0002IE-L0; Wed, 24 Jul 2019 06:49:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqB5F-0002HH-69
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 06:49:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so45688398wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 23:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rVBZFDEe6GlwoB61u8GoPEgkc+ywoIeVzBMII2nQSVg=;
 b=BUOqIo/xN9pAYyQd9luaZ8F6vihcN9vgU7dLJ85uWoTV9TBl+g0jD7uakEoxVgeAqy
 668/J4GuDA1VCKxGoW/YtSDhn2nApeaWFKqPijRsaqqE9gzB4Lhp8lUZe8IfASYQRVwp
 7wQBGj7MmORGywMOEmmt+SYKfV/DZ/HeOgz3s7wiUGmGa/Zy3XHSvIH3IpFrNIzlvPKp
 VnSt/88t/YsU9aN2E4dQP87zzgYnmuQVx1R4GwFLIgHHehQ+nPQMMgXsACjLs3n4j/fX
 icbuodNZVEP80uXd36I97CTBiOTDue9D2EG4QgjaXfD5uuCvEzOCypQ95uNB4qx1V0+8
 FIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rVBZFDEe6GlwoB61u8GoPEgkc+ywoIeVzBMII2nQSVg=;
 b=FLHzX9KeuMLaLYw4+zQ+3hrdvzo4++j7ePU6W+imDDO7FKH+BX995KHqaEM3YUpbMo
 tXRpMBijtrX9n7v24eh38Icae9uLEYeio9gRH6VhwzFk83QAcl2pbPJ9OpV/vA06tkc7
 eiF+7oKVsa+mwVXdnLdw9gQ4aeCnPkskdyIy5QeA9WUcmWKXEMzVqv3wFYq+Haq14EOz
 Pm/DedsuNdO6cYh4nfutHcgk6QCA7NdAJmvMcriZMsrUUsDWRvH5tPkE0U92wQn1OAYH
 jSobojlEbs4N9a8BERrCSzbdKbFFAGBtUX2hFp3xpsnUjHrNb0+0VVB5u0VilYx0QSyw
 TVXA==
X-Gm-Message-State: APjAAAVRGZ9g3qQHKkvXet/KsI7fqkt2rGqL6MI5ahzvaqM93OgMtooy
 Y60F7eRSRjjgpQuLS3VcwITI1bPnx4A=
X-Google-Smtp-Source: APXvYqyb8y6xZQDAepGq+kAcakKbyUotanWH8No0Jcn34mStLscqEaHiOpGjBd6o+jDCz36RHMTQ7w==
X-Received: by 2002:a05:6000:100f:: with SMTP id
 a15mr64905486wrx.325.1563950943127; 
 Tue, 23 Jul 2019 23:49:03 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 j9sm50350060wrn.81.2019.07.23.23.49.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 23:49:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: odroid-n2: keep SD card regulator
 always on
To: Anand Moon <linux.amoon@gmail.com>
References: <20190719192954.26481-1-xruppen@gmail.com>
 <eadcf7ef-4aad-fa4f-3b1b-a5238f394b1e@baylibre.com>
 <CANAwSgTbvQO5qum1K3q8+J=WO4yLjadnZSZYf_AAhbf+CJm92Q@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <cdb986e9-e905-8001-630a-cf3e3f8c5369@baylibre.com>
Date: Wed, 24 Jul 2019 08:49:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANAwSgTbvQO5qum1K3q8+J=WO4yLjadnZSZYf_AAhbf+CJm92Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_234905_275189_907746A5 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Xavier Ruppen <xruppen@gmail.com>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On 24/07/2019 07:30, Anand Moon wrote:
> Hi All,
> 
> On Mon, 22 Jul 2019 at 12:51, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> On 19/07/2019 21:29, Xavier Ruppen wrote:
>>> When powering off the Odroid N2, the tflash_vdd regulator is
>>> automatically turned off by the kernel. This is a problem
>>> when issuing the "reboot" command while using an SD card.
>>> The boot ROM does not power this regulator back on, blocking
>>> the reboot process at the boot ROM stage, preventing the
>>> SD card from being detected.
>>>
>>> Adding the "regulator-always-on" property fixes the problem.
>>>
>>> Signed-off-by: Xavier Ruppen <xruppen@gmail.com>
>>> ---
>>>
>>> Here is what the boot ROM output looks like without this patch:
>>>
>>>     [root@alarm ~]# reboot
>>>     [...]
>>>     [   24.275860] shutdown[1]: All loop devices detached.
>>>     [   24.278864] shutdown[1]: Detaching DM devices.
>>>     [   24.287105] kvm: exiting hardware virtualization
>>>     [   24.318776] reboot: Restarting system
>>>     bl31 reboot reason: 0xd
>>>     bl31 reboot reason: 0x0
>>>     system cmd  1.
>>>     G12B:BL:6e7c85:7898ac;FEAT:E0F83180:2000;POC:F;RCY:0;
>>>     EMMC:800;NAND:81;SD?:0;SD:400;USB:8;LOOP:1;EMMC:800;
>>>     NAND:81;SD?:0;SD:400;USB:8;LOOP:2;EMMC:800;NAND:81;
>>>     SD?:0;SD:400;USB:8;LOOP:3; [...]
>>>
>>> Other people can be seen having this problem on the odroid
>>> forum [1].
>>>
>>> The cause of the problem was found by Martin Blumenstingl
>>> on #linux-amlogic. We may want to add his Suggested-by tag
>>> if he agrees.
>>>
>>> [1] https://forum.odroid.com/viewtopic.php?f=176&t=33993
>>>
>>>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>> index 81780ffcc7f0..4e916e1f71f7 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>> @@ -53,6 +53,7 @@
>>>
>>>               gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
>>>               enable-active-high;
>>> +             regulator-always-on;
>>>       };
>>>
>>>       tf_io: gpio-regulator-tf_io {
>>>
>>
>> Surely solves the situation, thanks !
>>
>> please add a comment on top of "regulator-always-on" to explain why we always enable it,
>> note we should always enable it in case of watchdog reboot or other uncontrolled reset,
>> this regulator must never be disabled.
>>
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>>
>> Thanks,
>> Neil
>>
> 
> I am afraid this did not fix the issue I was also facing with
> Archlinux on Odroid N2 using mainline u-boot.

Seems to be a separate issue, could we start a separate thread with all your
setup (branch, git SHAa, configs, board setup, ...) for this ?

Thanks,
Neil

> Here is the log of at my end using latest mainline u-boot with Neil's patches.
> 
> [0] https://pastebin.com/HNmeY5uF
> 
> Well this issue also persist with eMMC not getting detected after reboot
> If I try to change the dts to fix the sdcard.
> 
> I am checking this should we enable regulator-boot-on option but still no luck.
> 
> Best Regards
> -Anand
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
