Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF6B4AD0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dvM4MmN0+THZR0NNGYgs8vbFF23y7B+bhtwLldX9/A=; b=lSkocNLglOrVaM
	gi+AWwjoi1Ldhf6YlQ4F1FDKrCrORC33FG4fOZF1TyNAsyo2hXlAcg1uD41mbqKsG0X8dm42cwNyG
	fD20YlrEFu4OIhKxHCkyb1D6hQyLBM4qMuwAAmRpzAAs4f7uq7o4QryMQz2asLJvSS3NiH65ucA0q
	aK3g6S5Rnjz2wK5UWoFPRFIEsSaN3gLnUt2PBclsUOVBsuyvynY36fDRDzO4m0kBGF8kkt/nmS9Q+
	phARRliB4HBqd+N9bC0MTjTWG6QfKys6CCfo2+6oIBd8Wy5yojrJK/BhazlaTrqINGfUUrjTGY3bk
	gS39YedJgFG/nf4ervJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLMT-0001U8-Iy; Tue, 18 Jun 2019 21:09:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLJv-00088d-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:07:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id EFF1D285136
Subject: Re: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
 <7hr27qdedo.fsf@baylibre.com>
 <CAFBinCCrpQNU_JtL0SwEGbwWZ2Qy-b2m5rdjuE0__nDRORGTiQ@mail.gmail.com>
 <7d0a9da1-0b42-d4e9-0690-32d58a6d27de@collabora.com>
 <CAFBinCA7gMLJ=jPqgRgHcBABBvC7bWVt8VJhLZ5uN=03WL1UWQ@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <2af9b9a5-cdf8-afce-5a75-d66c99eb82a2@collabora.com>
Date: Tue, 18 Jun 2019 22:07:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCA7gMLJ=jPqgRgHcBABBvC7bWVt8VJhLZ5uN=03WL1UWQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_140711_586017_D4671431 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 Andrew Lunn <andrew@lunn.ch>, Kevin Hilman <khilman@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, broonie@kernel.org,
 matthew.hart@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 mgalka@collabora.com, enric.balletbo@collabora.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On 18/06/2019 21:58, Martin Blumenstingl wrote:
> Hi Guillaume,
> 
> On Tue, Jun 18, 2019 at 10:53 PM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> On 18/06/2019 21:42, Martin Blumenstingl wrote:
>>> On Tue, Jun 18, 2019 at 6:53 PM Kevin Hilman <khilman@baylibre.com> wrote:
>>> [...]
>>>> This seems to have broken on several sunxi SoCs, but also a MIPS SoC
>>>> (pistachio_marduk):
>>>>
>>>> https://storage.kernelci.org/next/master/next-20190618/mips/pistachio_defconfig/gcc-8/lab-baylibre-seattle/boot-pistachio_marduk.html
>>> today I learned why initializing arrays on the stack is important
>>> too bad gcc didn't warn that I was about to shoot myself (or someone
>>> else) in the foot :/
>>>
>>> I just sent a fix: [0]
>>>
>>> sorry for this issue and thanks to Kernel CI for even pointing out the
>>> offending commit (this makes things a lot easier than just yelling
>>> that "something is broken")
>>
>> Glad that helped :)
>>
>> If you would be so kind as to credit our robot friend in your
>> patch, it'll be forever grateful:
>>
>>   Reported-by: "kernelci.org bot" <bot@kernelci.org>
> sure
> do you want me to re-send my other patch or should I just reply to it
> adding the Reported-by tag and hope that Dave will catch it when
> applying the patch?

Well that's no big deal so replying would already be great.  The
important part is that the fix gets applied.

> in either case: I did mention in the patch description that Kernel CI caught it

I see, thanks!

> by the way: I didn't know how to credit the Kernel CI bot.
> syzbot / syzkaller makes that bit easy as it's mentioned in the
> generated email, see [0] for a (random) example
> have you considered adding the Reported-by to the generated email?

Yes, we've got some bugs to fix first but that will be added to
the email report soon (next week I guess).  Thanks for the
suggestion though.

Guillaume

> [0] https://lkml.org/lkml/2019/4/19/638

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
