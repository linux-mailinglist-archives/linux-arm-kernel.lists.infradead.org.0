Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C312911E485
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuM/TdVYVCpciBUj2oZUh3A85o4exAloTzdIQTEJ6ic=; b=qPFo8kr9lwDYik
	lIJ6BIjLNAT04THAOW8NVk0kDAShBcJ1O5HEKyVGvk7WD6rDzNo3AxwhjP2G15sislDe2naEZD+1j
	aG/lzic2xtKP426iOxG6iz/xhz0yVcO9JeKT+6Ep+KZbZi1QtO8noKQRapFeevOasa3pa+hF++1q5
	0wAM9FGhRx2fJtqS0wEGaOT3ANnZynfMozmoYo+4xOrxzrMbhBzK8tPjIw7TkF6T61aZQzLlvLTYg
	L9uEclVm/Rbjc0xjPDVvKRA4KolngwO6ds/WN++OSyD1qDTyS7aJG15xkKb/qv1V/id6oh5F3+01V
	1MCzsIPxeqdSox1Tox5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkvz-0004mS-N8; Fri, 13 Dec 2019 13:24:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkvm-0004kk-Ti
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:24:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so6654999wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=TeKkRgU0jXGjzT9DCm0fTUy/QIiQKl1xy36a8E5Fwws=;
 b=IDMTrz+rS8XuFRKTldFBWE+ElzWuH1NR0eGoEwbDDKuN1121QIhN3WWEz1ZtXDCcnb
 bJak3I7EerNSQXdO1bSgrWofohg3jl/87TdgLr6Hv6rcfGXROtrR/LYbPbGX6tMFtrsh
 DTLJKETX1i9ZWI5j6wXFwVuy4CppJ8Y1Cwf44XMqrhy/E6Vjfzt7rcbBTgrcTifwV56Z
 8q8Qyu6O4uwHecv8nlEdQq/yzO+/6xJY5DnJ2RrnPExk0NnUdCcLVcNZJ53BH535dXQY
 QIrAqPOvcVr9D/lVLtNUVkSr3OSilRaBIbC6bRf7mDAia71xdBS3uNs/eMaUEA3qA44H
 IoJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=TeKkRgU0jXGjzT9DCm0fTUy/QIiQKl1xy36a8E5Fwws=;
 b=tteznUgtKS3dxWxRyQu0jWs6lP2bTO9vC8F23aOc2fe579/D+NhFqwRol1lIs/w0bK
 CP/0nXhrDBQqksuD34WjCPcaQWCVx8hrMSKsSBdutruBzyf0JMXIvELdkJOORxDqJOru
 1aFXoVBmWqGrdWAw0yVBuOVYt0xBAdqtfUwTpjl4sXNFx9LqTfMjZKnL1w2AeLzBobKM
 0tMrB3KhzrF0hiQCDkFbA4dUhe/fDkyDiS6BChwSMyCRxc+0v966xeNgaJ2cXgA8lyBv
 S1lmpCV79Za8eQLPwUr7Gon5Zj0G2qAXCtWkyXh9qKk+xIKIKishZfjCdoHW/LE+OAft
 o1fg==
X-Gm-Message-State: APjAAAUPt+HvSSbE/4qncXn61ysqLZJor1uWmETFIexY9XIOK18zHawc
 g3n3KNPlxLHdIO60rTh7t28wig==
X-Google-Smtp-Source: APXvYqwdFZ2qNVDI1LIj0hzn0dE3lZy0iGZ3yIt2DB53spn18lP29RlgKMpWV5Ijfr4VLxOnCAl/7Q==
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr12547902wrs.200.1576243465558; 
 Fri, 13 Dec 2019 05:24:25 -0800 (PST)
Received: from [10.2.4.229] (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr.
 [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id f1sm10029376wro.85.2019.12.13.05.24.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 05:24:25 -0800 (PST)
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Anand Moon <linux.amoon@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
 <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
 <7hfthsqcap.fsf@baylibre.com>
 <CAFBinCBfgxXhPKpBLdoq9AimrpaneYFgzgJoDyC-2xhbHmihpA@mail.gmail.com>
 <7hpngvontu.fsf@baylibre.com>
 <4e1339b4-c751-3edc-3a2e-36931ad1c503@baylibre.com>
 <CAFBinCCgKcwXSLxS_CRvz9JZvQo8PcUGm=egBbabVZSrkSc30Q@mail.gmail.com>
 <CANAwSgSFR3kftWLPqyoYfyxdQ5dcp2W7NgRCaFNkMj-xEDY1Kw@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <83791a71-a45c-383d-0406-b0f4e0a0c215@baylibre.com>
Date: Fri, 13 Dec 2019 14:24:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgSFR3kftWLPqyoYfyxdQ5dcp2W7NgRCaFNkMj-xEDY1Kw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_052430_963630_E1C3B094 
X-CRM114-Status: GOOD (  26.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/12/2019 12:28, Anand Moon wrote:
> Hi Martin
> 
> On Fri, 13 Dec 2019 at 01:40, Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>>
>> Hi Neil,
>>
>> On Wed, Dec 11, 2019 at 9:49 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>> On 10/12/2019 22:47, Kevin Hilman wrote:
>>>> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>>>>
>>>>> On Tue, Dec 10, 2019 at 7:13 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>>>>>
>>>>>> Anand Moon <linux.amoon@gmail.com> writes:
>>>>>>
>>>>>>> Hi Neil / Kevin,
>>>>>>>
>>>>>>> On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>>>>>>
>>>>>>>> On 09/12/2019 23:12, Kevin Hilman wrote:
>>>>>>>>> Anand Moon <linux.amoon@gmail.com> writes:
>>>>>>>>>
>>>>>>>>>> Some how this patch got lost, so resend this again.
>>>>>>>>>>
>>>>>>>>>> [0] https://patchwork.kernel.org/patch/11136545/
>>>>>>>>>>
>>>>>>>>>> This patch enable DVFS on GXBB Odroid C2.
>>>>>>>>>>
>>>>>>>>>> DVFS has been tested by running the arm64 cpuburn
>>>>>>>>>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
>>>>>>>>>> PM-QA testing
>>>>>>>>>> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
>>>>>>>>>>
>>>>>>>>>> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
>>>>>>>>>
>>>>>>>>> Have you tested with the Harkernel u-boot?
>>>>>>>>>
>>>>>>>>> Last I remember, enabling CPUfreq will cause system hangs with the
>>>>>>>>> Hardkernel u-boot because of improperly enabled frequencies, so I'm not
>>>>>>>>> terribly inclined to merge this patch.
>>>>>>>
>>>>>>> HK u-boot have many issue with loading the kernel, with load address
>>>>>>> *it's really hard to build the kernel for HK u-boot*,
>>>>>>> to get the configuration correctly.
>>>>>>>
>>>>>>> Well I have tested with mainline u-boot with latest ATF .
>>>>>>> I would prefer mainline u-boot for all the Amlogic SBC, since
>>>>>>> they sync with latest driver changes.
>>>>>>
>>>>>> Yes, we would all prefer mainline u-boot, but the mainline kernel needs
>>>>>> to support the vendor u-boot that is shipping with the boards.  So
>>>>>> until Hardkernel (and other vendors) switch to mainline u-boot we do not
>>>>>> want to have upstream kernel defaults that will not boot with the vendor
>>>>>> u-boot.
>>>>>>
>>>>>> We can always support these features, but they just cannot be enabled
>>>>>> by default.
>>>>> (I don't have an Odroid-C2 but I'm curious)
>>>>> should Anand submit a patch to mainline u-boot instead?
>>>>
>>>> It would be in addition to $SUBJECT patch, not instead, I think.
>>>>
>>>>> the &scpi_clocks node could be enabled at runtime by mainline u-boot
>>>>
>>>> That would work, but I don't know about u-boot maintainers opinions on
>>>> this kind of thing, so let's see what Neil thinks.
>>>
>>> U-Boot doesn't anything to do with SCPI, SCPI discusses directly with the SCP
>>> processor, and the CPU clock is set to 1,56GHz by the BL2 boot stage before
>>> U-boot starts.
>>>
>>> The only viable solution I see now is to find if we could add a DT OPP table
>>> only for Odroid-C2 dts to bypass the SCPI OPP table.
>> my understanding is that mainline u-boot (with whatever SCP firmware
>> it uses) provides the *correct* OPP table
> 
> Right now I am not sure how this OPP table is populated.
> But I saw the same freq table used in 3.16.x kernel after enable the clk.
> 
>> in this case it would be "safe" to have SCPI enabled with mainline u-boot
>> @Anand: please correct me if I misunderstood you
>>
> 
> As per my understanding DVFS OPP frequency table for SCPI firmware set
> for 1.536 GHz
> somewhere in BL2 as pointed by Neil.
> 
> Arm Trusted firmware added new secure SCPI communication with
> Cortex-M3 co processor.
> [0] https://github.com/ARM-software/arm-trusted-firmware/blob/master/docs/plat/meson-gxbb.rst
> [1] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/amlogic/common/aml_scpi.c
> 
> ATF generated the *bl1.bin* which is replace the Amlogic's bl1.bin
> while preparing
> the new u-boot *u-boot.gxbb* image.
> 
>> my idea to "enable SCPI with mainline u-boot" is to have u-boot update
>> the "status" property of the scpi_clocks node.
>> u-boot does something similar with the mac-address property of the
>> Ethernet controller for example.
>> as result of this users of mainline u-boot would have working CPU
>> DVFS, while users of the old vendor u-boot would run at fixed 1.54GHz.
>>
>>
>> Martin
> 
> Right now as per my understanding 1.536 GHz max is bit under clocked.
> 
> Some time ago on Odroid Forum tried to over clock the cpu to 2GHz.

This is the point, the Odroid-C2 is *not* stable at 2GHz,
a large amount of board doesn't support 2GHz, this is why Amlogic
dropped the freq > 1.536 GHz for the GXBB family.

But HardKernel still delivers the SCPI table with > 1.536 GHz which breaks
on most of the boards, but doesn't on 3.14 since they have a hack disabling
higher freqs with a cmdline set in boot.ini.

> [3] https://forum.odroid.com/viewtopic.php?f=139&t=18738
> So more investigation need to done in this line.
> 
> I also tried the same with HardKernel Image, with modifying the boot.ini
> I could increase the max DVFS cpu frequency to 1.90 GHz,
> This is just proof of concept.
> 
> odroid:~# cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
> 100000 250000 500000 1000000 1296000 1536000 1656000 1680000 1752000 1896000
> 
> I have some minimal stress testing attached are the results for HK
> 3.16.x kernel.
> 
> For now we should not enable this clock.
> Until we can possible to check for higher clock frequency to work stable
> on all Amlogic S905X SBC.
> 
> I like the Neil's approach to use it's own dts OPP table for SCPI protocol.

The various tests gave very little perf enhancement by going > 1,536 GHz, seriously
it's not worth the pain.

Neil

> 
> -Anand
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
