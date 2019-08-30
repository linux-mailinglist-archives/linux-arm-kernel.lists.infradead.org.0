Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EC8A3475
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRtBrE+TKOnaRao2DNHO1iC6itVLYtyUYCyOueymgps=; b=QvPwbYDJWyELkd
	2OFp+ZUM6Fx6qPvj5IMVgUCHhdqTKQ1DbpVAEZUukyT63EgnJWyOLX3GZm5GEx4+d7wkpY8R+ZXdF
	ffMx7vaH7YNbEJLyCuXnY+uh0nh9TyzcYKjFmKOTVPJRWIJBndzBPrPoLtANNpmBd8vZpPtkBOGOl
	2GMQhxjqOAiZVianEOngh/2W91If8yg9WR8IU1E7kaNaGOzMH4cRxhGLOAClce7xU/C7RDoq5/ohL
	qRETkVe+Jp2EL2+NkheJAGeZ0WNnBlXrlvFHKHQO0x3ylfL2v6Gbwlncdi8U+qHdtqk9HEnTl6hCc
	KEPQy2R/uTDvAfU4ASJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dXt-0000F1-KM; Fri, 30 Aug 2019 09:50:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dXh-0007n1-2b
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:50:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id k2so5177252wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=c4pXhBax/amtMdhC4ViPEuR4nmjivXBNxfCkqMWIjlw=;
 b=tF/5l6aQ3awe0t34PNY37DyGwVMnPi6hiFkUnO/fS5XIl85/RcoekOjf7I3utZiYx7
 P0JMBEzriaE+HSlaE2bhudY3IrnzElL5ejd5XnVS8A7Ms367JRnqtnPPDnQinxcCeXoE
 gcEOlyb5XNzvYoWUVkBn0IjfXnmbVrE8NmhXJH/rLjnlecQ1il6wwnhrrjf34iAjdzSv
 J60/8bggo0e9zNm0si9I9/X9bGiLRoxRtNuk+HLah74ye6p0BdDlfeZhS9nncOQ/I0W6
 Ux41R55VzSfN46Fz3fVU9CokzYNHusmg2sx8XjGPuzCI7Axkob76Emn1UUiQt/Z0wYHx
 pRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=c4pXhBax/amtMdhC4ViPEuR4nmjivXBNxfCkqMWIjlw=;
 b=K5Z61K9effE8e4YpSfrUND5bcXnvkZG9gH6su6PSys/jQc+200U/F4+LgQ/VQl7TUG
 xN+Ad/wMyPbRZjoNxRnSw+SOJfu3xrBGDDqzN7qecVSYUeH/99G+PVhVvJH5i2VvetzB
 A90BSOsy5w9D7SALNbeyICc7YWcSTQXzA/7pDSksRBmy2A7Ne4cV+22ck6yhC54Bax70
 zR9R2KXloIROrIWD4GDiMAp6smBNiUPHCM5SgrSV9M5AcPrISMqfFVHkj6XnM5JrOkcr
 c/EWd+8rCYsXIks+HsVKGMPZC3UtTS/yQ2VuouzNeNuQvrBzyBd7CjPPOZtretirU9pq
 e7AA==
X-Gm-Message-State: APjAAAXpZnJ7GZ+PiFnU1UutFrE1KuF2qgL9+uVfjbyW0t8SNdyx/xjE
 FdUIJsv18IDz8B6kSnoPmL1B7emQHp7Dvw==
X-Google-Smtp-Source: APXvYqxaDiiTn4PDScghCw0/ilrmvC0a0/fkDdxwpeyhfWhPTponlqWMM7HuuvnvM6tbxIY2wL6bmA==
X-Received: by 2002:a7b:ce98:: with SMTP id q24mr18008856wmj.142.1567158603060; 
 Fri, 30 Aug 2019 02:50:03 -0700 (PDT)
Received: from [192.168.1.62] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id p7sm7525071wmh.38.2019.08.30.02.50.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:50:02 -0700 (PDT)
Subject: Re: [PATCHv1 0/3] Odroid c2 missing regulator linking
To: Anand Moon <linux.amoon@gmail.com>
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <8c40f334-c723-b524-857c-73734b7d0827@baylibre.com>
 <CANAwSgShr-K-44UzdxFC7pvpTye_pbEMdS6ug1eWwYhnsVNGdQ@mail.gmail.com>
 <101a12ac-1464-8864-4f8c-56bb46034a08@baylibre.com>
 <CANAwSgQwZg_AXAnAY4KwDzHpwcSA9up7SrR6jyv5Bem24wtaJg@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <c25c6610-5393-ef9d-8a91-6fad088ac2c2@baylibre.com>
Date: Fri, 30 Aug 2019 11:50:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgQwZg_AXAnAY4KwDzHpwcSA9up7SrR6jyv5Bem24wtaJg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_025005_126598_99403FFD 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 11:34, Anand Moon wrote:
> Hi Neil,
> 
> On Fri, 30 Aug 2019 at 13:01, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> On 29/08/2019 20:35, Anand Moon wrote:
>>> Hi Neil,
>>>
>>> On Thu, 29 Aug 2019 at 13:58, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>>
>>>> On 28/08/2019 22:27, Anand Moon wrote:
>>>>> Below small changes help re-configure or fix missing inter linking
>>>>> of regulator node.
>>>>>
>>>>> Changes based top on my prevoius series.
>>>>
>>>> For the serie:
>>>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>>>>
>>>
>>> Thanks for your review.
>>>
>>>>>
>>>>> [0] https://patchwork.kernel.org/cover/11113091/
>>>>>
>>>>> TOOD: Add support for DVFS GXBB odroid board in next series.
>>>>
>>>> I'm curious how you will do this !
>>>
>>> I was just studying you previous series on how you have implemented
>>> this feature for C1, N2 and VIM3 boards.
>>>
>>> [0] https://patchwork.kernel.org/cover/11114125/
>>>
>>> I started gathering key inputs needed for this ie *clk / pwm*
>>> like VDDCPU and VDDE clk changes.
>>>
>>> But it looks like of the complex clk framework needed, so I leave this to the
>>> expert like your team of developers to do this much quick and efficiently.
>>
>> On GXBB, GXL, GXM and AXG SoCs, CPU Frequency setting and PWM Regulator setup is
>> done by the SCPI Co-processor via the SCPI protocol.
>>
>> Thus, we should not handle it from Linux, and even if we could, we don't have the
>> registers documentation of the CPU clusters clock tree.
>>
> 
> Ok thanks.
> 
>> SCPI works fine on all tested devices, except Odroid-C2, because Hardkernel left
>> the > 1.5GHz freq in the initial SCPI tables loaded by the BL2, i.e. packed with U-Boot.
>> Nowadays they have removed the bad frequencies, but still some devices uses the old
>> bootloader.
>>
>> But in the SCPI case we trust the table returned by the firmware and use it as-in,
>> and there is no (simple ?) way to override the table and set a max frequency.
>>
>> This is why we disabled SCPI.
>>
>> See https://patchwork.kernel.org/patch/9500175/
> 
> I have quickly enable this on my board and here the cpufreq info
> 
> [alarm@alarm ~]$  cpupower frequency-info
> analyzing CPU 0:
>   driver: scpi-cpufreq
>   CPUs which run at the same hardware frequency: 0 1 2 3
>   CPUs which need to have their frequency coordinated by software: 0 1 2 3
>   maximum transition latency: 200 us
>   hardware limits: 100.0 MHz - 1.54 GHz
>   available frequency steps:  100.0 MHz, 250 MHz, 500 MHz, 1000 MHz,
> 1.30 GHz, 1.54 GHz
>   available cpufreq governors: conservative ondemand userspace
> powersave performance schedutil
>   current policy: frequency should be within 100.0 MHz and 1.54 GHz.
>                   The governor "ondemand" may decide which speed to use
>                   within this range.
>   current CPU frequency: Unable to call hardware
>   current CPU frequency: 250 MHz (asserted by call to kernel)
> 
> I did some simple stress testing and observed the freq scaling is
> working fine when cpufreq governor is set to ondemand.
> 
> Powertop output.
>             Package |            CPU 0
>  100 MHz     5.2%   |  100 MHz     1.6%
>  250 MHz     4.4%   |  250 MHz     4.3%
>  500 MHz     2.6%   |  500 MHz     2.4%
> 1000 MHz     0.5%   | 1000 MHz     0.3%
> 1296 MHz     0.2%   | 1296 MHz     0.1%
> 1.54 GHz     0.2%   | 1.54 GHz     0.1%
> Idle        86.9%   | Idle        91.2%
> 
> Here the output on the linaro's pm-qa testing for cpufreq.
> 
> [1] https://pastebin.com/h880WATn
> Almost all the test case pass with this one as off now.

Thanks for passing the tests, no doubt it works with a recent
bootloader binary, but we can't leave alone the first Odroid-C2
devices loaded with an incorrect SCPI table.

I'll let Kevin decide for the following.

Neil

> 
> Best Regards
> -Anand
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
