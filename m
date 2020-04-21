Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CD11B2EE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 20:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3akoK/+GTToma/+U0aJQZqfZwZECMiTrluvkSF+Rxk=; b=QM1cWDRvQXQQVfk5P0Y1GubUW
	ctS5KohbK3ETNStPSRnuHA0wr6jTC3Y08LiRtR7HZLFJVwja4W0bqZfD4IyVnDqgPExqRJv5p3RyC
	WOtXLHLVKX/9TCmcKITI0oCsfgTFV19ryQnway2OPRKCFhnoZtGkoEZtE4MxV5B29yJjhbqCpjFY7
	mWBk36A5gsIVqrNn3I2JhtY245dDGwYVdPt2BBz2gBAuKH7briYA1x98copF/Gkoa0d1AEwH0tfcV
	35nRIllEGDESts75FzQKhmI0rZmQTyO9VD0Rilw62aHOs1nPTWR8rc3wIY1A/de7ce84nksvW7y8O
	2U0Ohqn5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxT7-0002g2-VS; Tue, 21 Apr 2020 18:18:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQxSw-0002fF-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 18:17:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so17622100wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 11:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d+6jESbCvom8boV1Iz569w6jKc+CILAkX582DGmlOlo=;
 b=mQnQ0MOZb5HAjIp/13NpjEXuDIO7U9B4is6pfGQDxq3kJQmaqO0qZliXaA+crLKeiv
 hZ3fyzWaKTi36Gji2yKwBR5Vuoh7wNGQKsSW2PGuaHEzamk3jATQ5Mt3rc0+ARve6/Ka
 t2hiL07+7kcG0iuaoGdIG/QfV9bHL6Jc/LmjqRSWP4GdNMmv11FKpfmquznU0nbxGz91
 4BYH4vGjLXZ5TXMWuE8L/jSK2LjiRTAYSzVAb8Rn8BdTFnMKWr/YoAcdUZXx/7bA8Ees
 av41L8pcXPoQK52trQrU347Ym30hgRHNP1koZumWJRnO3DlgTwXFzI5dAN3ui8PL6Sze
 ki/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d+6jESbCvom8boV1Iz569w6jKc+CILAkX582DGmlOlo=;
 b=IF6j/y05+D4FrP5zMfveivJX98O5WhTz306mPjCY4Dnr5ShNGpfFEgksNykV5zR04h
 2tGn65d7Glf6GJVgvEffxToOHejrL8dNb/eyVhpssLqbNDB670Wic1WyWzna1Zacu1kW
 MV9+XaB8pI7AZx1PjbTepFi6OUrtKqcZkfp1dsOp6ARZhnm8iJs/2Fx1VBzANaG7iYJR
 DQOYow6ZCXM+kgk4toiPTOUiV5oSHUQCspmm/fX0qG2pXbW9m+piMgcABXiYr+8+0OIq
 ca5jmaLQVEgtihOeRZw2yDhzzexlZhsb73w7lv5FVaABXkXTEgKwWEorPYoZPfidPRMo
 PpmA==
X-Gm-Message-State: AGi0PuYV6WMsyuo/kDRI/UoFyQ4ubY+kJNwPPdcpD2iy18c8Zf65lA2b
 WA2wpDm+MN4QI3dLiRLNdhXwBJfL
X-Google-Smtp-Source: APiQypIxTRtDUCBScSJRt+j/IVmGwz+hgVch8UpwbARQGIcr29Ekhok/1Q6jgx61gq3YOJYzbqHd4w==
X-Received: by 2002:adf:decb:: with SMTP id i11mr24292487wrn.140.1587493068988; 
 Tue, 21 Apr 2020 11:17:48 -0700 (PDT)
Received: from ?IPv6:2a02:810d:340:2e50:b4a9:f772:3340:fbf9?
 ([2a02:810d:340:2e50:b4a9:f772:3340:fbf9])
 by smtp.gmail.com with ESMTPSA id p5sm5580060wrg.49.2020.04.21.11.17.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 11:17:48 -0700 (PDT)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
To: Maxime Ripard <maxime@cerno.tech>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
From: Philipp Rossak <embed3d@gmail.com>
Message-ID: <5749af21-e707-c998-c83b-50c48867c9e8@gmail.com>
Date: Tue, 21 Apr 2020 18:42:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_111750_486765_CB36CE3E 
X-CRM114-Status: GOOD (  33.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [embed3d[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 21.04.20 13:21, Maxime Ripard wrote:
> Hi,
> 
> On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
>> On 20.04.20 09:38, Maxime Ripard wrote:
>>> Hi,
>>>
>>> On Fri, Apr 17, 2020 at 02:09:06PM +0200, Philipp Rossak wrote:
>>>>>> I'm a bit skeptical on that one since it doesn't even list the
>>>>>> interrupts connected to the GPU that the binding mandates.
>>>>>
>>>>> I think he left it out for a future update.
>>>>> But best he comments himself.
>>>>
>>>> I'm currently working on those bindings. They are now 90% done, but they are
>>>> not finished till now. Currently there is some mainline support missing to
>>>> add the full binding. The A83T and also the A31/A31s have a GPU Power Off
>>>> Gating Register in the R_PRCM module, that is not supported right now in
>>>> Mainline. The Register need to be written when the GPU is powered on and
>>>> off.
>>>>
>>>> @Maxime: I totally agree on your point that a demo needs to be provided
>>>> before the related DTS patches should be provided. That's the reason why I
>>>> added the gpu placeholder patches.
>>>> Do you have an idea how a driver for the R_PRCM stuff can look like? I'm not
>>>> that experienced with the clock driver framework.
>>>
>>> It looks like a power-domain to me, so you'd rather plug that into the genpd
>>> framework.
>>
>> I had a look on genpd and I'm not really sure if that fits.
>>
>> It is basically some bit that verify that the clocks should be enabled or
>> disabled.
> 
> No, it can do much more than that. It's a framework to control the SoCs power
> domains, so clocks might be a part of it, but most of the time it's going to be
> about powering up a particular device.
> 
So I think I've found now the right piece of documentation and a driver 
that implements something similar [1].

So I will write a similar driver like linked above that only sets the 
right bits for A83T and A31/A31s.
Do you think this is the right approach?

>> I think this is better placed somewhere in the clocking framework.
>> I see there more similarities to the gating stuff.
>> Do you think it is suitable to implement it like the clock gating?
> 
> I'm really not sure what makes you think that this should be modelled as a
> clock?
> 

Looks like I looked in the wrong place and got some information that are 
not suitable for this.

>>>> The big question is right now how to proceed with the A83T and A31s patches.
>>>> I see there three options, which one do you prefer?:
>>>>
>>>> 1. Provide now placeholder patches and send new patches, if everything is
>>>> clear and other things are mainlined
>>>> 2. Provide now patches as complete as possible and provide later patches to
>>>> complete them when the R_PRCM things are mainlined
>>>> 3. Leave them out, till the related work is mainlined and the bindings are
>>>> final.
>>>
>>> Like I said, the DT *has* to be backward-compatible, so for any DT patch that
>>> you are asking to be merged, you should be prepared to support it indefinitely
>>> and be able to run from it, and you won't be able to change the bindings later
>>> on.
>>
>> I agree on your points. But is this also suitable to drivers that are
>> currently off tree and might be merged in one or two years?
> 
> This is what we done for the Mali. The devicetree binding was first done for the
> out-of-tree driver, and then lima/panfrost reused it.
> 
> The key thing here is to have enough confidence about how the hardware works so
> that you can accurately describe it.

Ok thanks! So I will resend my patches when the work got a more mature 
state and we know enough about the Hardware.

Cheers,
Philipp


[1]: 
https://elixir.bootlin.com/linux/latest/source/drivers/soc/amlogic/meson-gx-pwrc-vpu.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
