Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B35184955
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYz5IiFSOS5T/uUFYZS9HWuNRpuQBfmCLyc0lWj8WyE=; b=N2afyP+PN85iqj
	mZ7IR1uMRfxtQPCoNCH+0JSidhh6PdBUh/WzwHZFP9E9Ju232PiX34ZPKCH+vWhPLe32uQ16MZHpE
	ict6KGk/nIRhgERQt3F6UTL+/FRI8vXmQt5psXFRtvrkIpgdrIeB2aDlRf3XZlsbe9lE8hJffrgkh
	PzUgnQqgHrtQcTmOVhUwiwdeHknCQrFAIlij9znuOpKC52QxYeKy9gLUzUcS/XIaDczVPBmcrJOND
	DI8VLzgdzchNIYkzhvP5er18TlL+kVyQtH4mSU749jHM1WK4bHnlkoYx0T4L0AA/TN4oDNpTuPwwy
	yYrlyeeng2gIBP0fpOmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClKN-0000mj-2z; Fri, 13 Mar 2020 14:30:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClK8-0008Nl-Ar; Fri, 13 Mar 2020 14:30:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id 6so12352090wre.4;
 Fri, 13 Mar 2020 07:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+iojI06QF7FW93GI5k/iMm9nhOev+eb8ZJmHPMfD0wo=;
 b=gFPc+qrAJVx6MNr5/f9VEM8/KRYsy32zt4obDgMH5/jJtgMoYBJcYAKauVoSQ8Jlv6
 zQCx+ujfz7tdW0XbBMzUf1u9xrHmDawBe1ULNAhiqNP46T9uuwTn3UNMrsfBlLpD5ACc
 W0BNP3d5fLxpkN9tOf+S2WU30QT7DnPdrrRRo9zCOA2z4nIkrkAIqjhRPdSFq8XYZMdm
 bo5jgcB0FtUaTurNiSUGJKeQYMHGJE5W0/JBY0uGfSSG8gLCPktM140bzsyikbc3TQ2T
 YuYyUEocPbbBSii3Rrxnic1kXYEVFoJ099Tk2fRW42Vbv/7wQ09WyF6PlPz4izaP93Ix
 90ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+iojI06QF7FW93GI5k/iMm9nhOev+eb8ZJmHPMfD0wo=;
 b=bw+PV/Gyt8eRR81rceDrJPGDp8IL5vEEGq4CpPOoDB8k4uPnMWxvThqTZqJ6sTVbbs
 LIS39nNJDCHogRT+KNA9ahQ3EUW5E6mPwc42rb5b4AmgmXC52DUFexOq0Ck77LDLQuwd
 rrBFBlxJAOGeLHX5cJI7NtBaaRPUOMy+qajMwJgBoO6HdPgcM56KEiBfV9Y7h0vRbMhl
 U2CBcqDSYF2ftOMsQaMqLXuXVisjc88LdYx5m5eiD5BfbsL0yG+R4YbXMtHxhqQUh+0i
 1JzPLHdhWvnFAUHmWreHixo0iOM/xOkEUbnHhaxCdfVeXRlxWDFAFiwgODMf/zjiSdP8
 0I6w==
X-Gm-Message-State: ANhLgQ0dHkmVhV9WVctrMWpUzNYhrkY/VoSIKTKjCJKkajuFF6USCslo
 /3BnxCl7C78pA+ic+DG+WrM=
X-Google-Smtp-Source: ADFU+vswj9FEP6E4nDcI/ph/NC061YGRPjXe6ZauPpIi3u3V2Sz0ZF2771H3kPpnX8MPMwIPnmVNAw==
X-Received: by 2002:a5d:42c8:: with SMTP id t8mr18264616wrr.415.1584109801877; 
 Fri, 13 Mar 2020 07:30:01 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o26sm16212133wmc.33.2020.03.13.07.30.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 07:30:01 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
To: Vivek Unune <npcomplete13@gmail.com>
References: <20200313000112.19419-1-npcomplete13@gmail.com>
 <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
 <20200313142005.GA25349@ubuntu>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4deb154d-3095-7d18-fbf9-85b60f57765f@gmail.com>
Date: Fri, 13 Mar 2020 15:29:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313142005.GA25349@ubuntu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_073004_590096_A62402DE 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vivek,

On 3/13/20 3:20 PM, Vivek Unune wrote:
> On Fri, Mar 13, 2020 at 09:32:27AM +0100, Johan Jonker wrote:
>> Hi Vivek,
>>
>> The 'power-led' need some changes.
>>
>> From leds-gpio.yaml:
>>
>> patternProperties:
>>   # The first form is preferred, but fall back to just 'led' anywhere in the
>>   # node name to at least catch some child nodes.
>>   "(^led-[0-9a-f]$|led)":
>>     type: object
>>
>> Test with:
>> make -k ARCH=arm64 dtbs_check
>>
>> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
>> power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>>
>> On 3/13/20 1:01 AM, Vivek Unune wrote:
>>>  - Add Hugsun X99 IR receiver and power led
>>>  - Remove pwm0 node as it interferes with pwer LED gpio
>>
>> pwer => power
>>
> 
> Hi Johan,
> 
> I'll fix those in my next version. Here's what I intended to to:
> 

> 1. Rename 'power-led' node to 'led-power'

The first form is preferred.
Put 'led-power' in a regex tester with ^led-[0-9a-f]$
https://regex101.com/
Your regular expression does not match the subject string.

Test 'led-0'
Full match


> 2. Remove 'linux,default-trigger' entirely since this led is always on
> 
> Thanks,
> 
> Vivek 
> 
>>> index d69a613fb65a..df425e164a2e 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
>>> @@ -29,6 +29,26 @@
>>>  		regulator-max-microvolt = <5000000>;
>>>  	};
>>>  
>>> +	leds {
>>> +		compatible = "gpio-leds";
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&power_led_gpio>;
>>> +
>>> +		power-led {
>>> +			label = "blue:power";
>>> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
>>> +			default-state = "on";
>>> +			linux,default-trigger = "none";
>>> +		};
>>> +	};
>>> +


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
