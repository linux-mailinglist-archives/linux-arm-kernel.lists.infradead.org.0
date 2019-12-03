Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16B210FC63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hlYf3yhOGLu/HqcDAm2Qpya/GVh4S0Dk8DLUfKMloHw=; b=mcCk+U3zMM+sBFSo5Mqbwe7Ks
	ZyDl2aPJZvT9+4k8eixh7x48Dgi7OcDb3Hx9usM15fsx2wPa/KC0P5JoVu9kFUiTSlCGy8opyCj0w
	+tLjJ2c6PPFJKZeBpJanlu7VH011SHrdaOD6K5LRtVT0tv/oaNVAPowNL0f5BsxW0k+RqsYuLoZH8
	WnUduqxag/YN91NLP1+qzTrgLe4aIJBRGgTPj9J/NJ/JUTcuURbtwE6y9HWMecrm8/W9Bhc6QdUPD
	7o+TohP+vdSF1tcUnRIOVpv2VbZ2l/tFMEp8AhvGBuQ3JfTBhbFZfuasc45RmY5vjMAD19ok/OZ9/
	aaarxzGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6C0-00071C-Mt; Tue, 03 Dec 2019 11:18:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6Bn-0006zQ-6e; Tue, 03 Dec 2019 11:17:56 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ic6Bb-0003tJ-76; Tue, 03 Dec 2019 12:17:43 +0100
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 03 Dec 2019 11:17:42 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <299029b0-0689-c2c4-4656-36ced31ed513@gmail.com>
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CADnJP=uhD=J2NrpSwiX8oCTd-u_q05=HhsAV-ErCsXNDwVS0rA@mail.gmail.com>
 <1575027046.24848.4.camel@mtkswgap22>
 <CAKv+Gu_um7eRYXbieW7ogDX5mmZaxP7JQBJM9CajK+6CsO5RgQ@mail.gmail.com>
 <20191202191146.79e6368c@why>
 <299029b0-0689-c2c4-4656-36ced31ed513@gmail.com>
Message-ID: <b7043e932211911a81383274e0cc983d@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, ard.biesheuvel@linaro.org,
 pawel.moll@arm.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, wsd_upstream@mediatek.com,
 catalin.marinas@arm.com, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, neal.liu@mediatek.com, linux-crypto@vger.kernel.org,
 mpm@selenic.com, matthias.bgg@gmail.com, crystal.guo@mediatek.com,
 will@kernel.org, lists@bofh.nu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_031755_392305_9DD021E1 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Crystal_Guo_=28=E9=83=AD=E6=99=B6=29?= <crystal.guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, pawel.moll@arm.com,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Neal Liu <neal.liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Will Deacon <will@kernel.org>, Lars Persson <lists@bofh.nu>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-03 04:16, Florian Fainelli wrote:
> On 12/2/2019 11:11 AM, Marc Zyngier wrote:
>> On Mon, 2 Dec 2019 16:12:09 +0000
>> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>>
>>> (adding some more arm64 folks)
>>>
>>> On Fri, 29 Nov 2019 at 11:30, Neal Liu <neal.liu@mediatek.com> 
>>> wrote:
>>>>
>>>> On Fri, 2019-11-29 at 18:02 +0800, Lars Persson wrote:
>>>>> Hi Neal,
>>>>>
>>>>> On Wed, Nov 27, 2019 at 3:23 PM Neal Liu <neal.liu@mediatek.com> 
>>>>> wrote:
>>>>>>
>>>>>> For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals 
>>>>>> like
>>>>>> entropy sources is not accessible from normal world (linux) and
>>>>>> rather accessible from secure world (ATF/TEE) only. This driver 
>>>>>> aims
>>>>>> to provide a generic interface to ATF rng service.
>>>>>>
>>>>>
>>>>> I am working on several SoCs that also will need this kind of 
>>>>> driver
>>>>> to get entropy from Arm trusted firmware.
>>>>> If you intend to make this a generic interface, please clean up 
>>>>> the
>>>>> references to MediaTek and give it a more generic name. For 
>>>>> example
>>>>> "Arm Trusted Firmware random number driver".
>>>>>
>>>>> It will also be helpful if the SMC call number is configurable.
>>>>>
>>>>> - Lars
>>>>
>>>> Yes, I'm trying to make this to a generic interface. I'll try to 
>>>> make
>>>> HW/platform related dependency to be configurable and let it more
>>>> generic.
>>>> Thanks for your suggestion.
>>>>
>>>
>>> I don't think it makes sense for each arm64 platform to expose an
>>> entropy source via SMC calls in a slightly different way, and model 
>>> it
>>> as a h/w driver. Instead, we should try to standardize this, and
>>> perhaps expose it via the architectural helpers that already exist
>>> (get_random_seed_long() and friends), so they get plugged into the
>>> kernel random pool driver directly.
>>
>> Absolutely. I'd love to see a standard, ARM-specified, virtualizable
>> RNG that is abstracted from the HW.
>
> Do you think we could use virtio-rng on top of a modified virtio-mmio
> which instead of being backed by a hardware mailbox, could use 
> hvc/smc
> calls to signal writes to shared memory and get notifications via an
> interrupt? This would also open up the doors to other virtio uses 
> cases
> beyond just RNG (e.g.: console, block devices?). If this is 
> completely
> stupid, then please disregard this comment.

The problem with a virtio device is that it is a ... device. What we 
want
is to be able to have access to an entropy source extremely early in 
the
kernel life, and devices tend to be available pretty late in the game.
This means we cannot plug them in the architectural helpers that Ard
mentions above.

What you're suggesting looks more like a new kind of virtio transport,
which is interesting, in a remarkably twisted way... ;-)

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
