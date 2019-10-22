Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A56E05E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLUCyoHIerAPWVTYEHfLC7BP+9Ix6i/SIOszbib1GOw=; b=tMmyzrFSozQFYI
	dPD++x3b8LdUNIqwEdmYGWX3hmAo9yvcDe6TqN0/ajks4ujRNp6mNshlsimGPGobvhJuOIn42Pv7/
	eyCHS9XnFR8bBisOFDCcjFSVpEoj1zOeeBIgI8cwpLR1PsL7pwVOIoUE65t0Bogeyl9gLyw1Vskon
	Bq5U1i8EdyPbgD45XJD3tgnKB1SfWhMqbG/uGo80xNDPAXIgQPCEUk7acEjl+Qvg/JR2K+alfCItq
	tabAoEu347y7PVgV3SLHXFYoJSszZGi5O7HxRvkj3d0sRF6FS6tABIJ2bbZsTXqg/0bmU8FB6s0G5
	a9HYPVz3FUab8Tfq0Mhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMumX-0006mj-LO; Tue, 22 Oct 2019 14:05:05 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuka-000605-5j
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:03:46 +0000
Received: from [IPv6:2001:420:44c1:2577:31:9f59:b53f:5d72]
 ([IPv6:2001:420:44c1:2577:31:9f59:b53f:5d72])
 by smtp-cloud8.xs4all.net with ESMTPA
 id MukTi3IXtPduvMukWiMkLM; Tue, 22 Oct 2019 16:03:01 +0200
Subject: Re: [PATCH v8 3/3] media: cedrus: Add HEVC/H.265 decoding support
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
 <20191017095751.5a229051@coco.lan> <20191022124012.GD2651@aptenodytes>
 <20191022131751.GE2651@aptenodytes>
 <62ddccd3-38c0-89c5-7f0c-35f24494c3f9@xs4all.nl>
 <20191022140129.GA1926725@aptenodytes>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <345a6781-a5b3-1408-40ec-580873720c4a@xs4all.nl>
Date: Tue, 22 Oct 2019 16:02:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022140129.GA1926725@aptenodytes>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLyToBbJkvoNRLhYqBvZHVXfIm7iukgHkajVmC/txXYqaReY4el4wR3BxG5BTgxtiScGgBnV0kxhH6kDr/OEW3KJ+v+YsODAMwe5yEeEtS+FgbsHq7dV
 fdMG0VGNqYIhwjH7J7Sb+mXFSLzj4uPkGVG4X/JcZOw+OeFPvLRkzs5wJxPWAuzxPlOqry9K8/FLndsCmhzA0hYSRp/x7bP7eGayeRjAN7wu9urRBuySNMAT
 rpTuaQggdjanULe0u/fQM+fW9lb7FPpkjNuLW20PZ3ZCjRDSOdPEvMnmFWbsH3oGnI/KfL45Gi99Jdvvsn5LhBuiCxtz2/uiLE8ZTTuEPMdOPI8NWS14W+Sd
 OfoivH1DiUS0VaLSAsSbfZ0iM/q/LUE9JuCwlCWLZcVmEXv0hZ+IJzmMUiTIP0GPdwEYU3JXPstdFkz1oXZmizJhk7BzABSrYr3PM8q2I08RmiB6zgRdovHk
 lS27pzKhvOA4nbPJQDskKROYHec/bUkcDAs4xo0spMXqB70ExtmEnQpUq7oCQXCbsmvvv5SaYgnnOePA0YI3ngH2mlRuJrebfwZrJ8vPF4UHPtQT+dEGSpWw
 HpuMzANUMUE0Puthk1YVByV9ER72/ENKKACHrdmCiU89opg6jSk+365tsEvgse/moOebrKO/EyhqyTOUn5T3cTSXo6dTLb8ZCko9xT4WTOhx5obzgZcMpUzy
 SOq+0knuWhd4idM5xZhC/M2gEmyV+tPY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_070330_581375_8213A906 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-sunxi@googlegroups.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/22/19 4:01 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Tue 22 Oct 19, 15:37, Hans Verkuil wrote:
>> On 10/22/19 3:17 PM, Paul Kocialkowski wrote:
>>> Hi again,
>>>
>>> On Tue 22 Oct 19, 14:40, Paul Kocialkowski wrote:
>>>> Hi Mauro and thanks for the review,
>>>>
>>>> On Thu 17 Oct 19, 09:57, Mauro Carvalho Chehab wrote:
>>>>> Em Fri, 27 Sep 2019 16:34:11 +0200
>>>>> Paul Kocialkowski <paul.kocialkowski@bootlin.com> escreveu:
>>>>>
>>>>>> This introduces support for HEVC/H.265 to the Cedrus VPU driver, with
>>>>>> both uni-directional and bi-directional prediction modes supported.
>>>>>>
>>>>>> Field-coded (interlaced) pictures, custom quantization matrices and
>>>>>> 10-bit output are not supported at this point.
>>>>>>
>>>>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>>>>> ---
>>>>>
>>>>> ...
>>>>>
>>>>>> +		unsigned int ctb_size_luma =
>>>>>> +			1 << log2_max_luma_coding_block_size;
>>>>>
>>>>> Shifts like this is a little scary. "1" constant is signed. So, if
>>>>> log2_max_luma_coding_block_size is 31, the above logic has undefined
>>>>> behavior. Different archs and C compilers may handle it on different
>>>>> ways.
>>>>
>>>> I wasn't aware that it was the case, thanks for bringing this to light!
>>>> I'll make it 1UL then.
>>>>
>>>>>> +#define VE_DEC_H265_LOW_ADDR_PRIMARY_CHROMA(a) \
>>>>>> +	(((a) << 24) & GENMASK(31, 24))
>>>>>
>>>>> Same applies here and on other similar macros. You need to enforce
>>>>> (a) to be unsigned, as otherwise the behavior is undefined.
>>>>>
>>>>> Btw, this is a recurrent pattern on this file. I would define a
>>>>> macro, e. g. something like:
>>>>>
>>>>> 	#define MASK_BITS_AND_SHIFT(v, high, low) \
>>>>> 		((UL(v) << low) & GENMASK(high, low))
>>>>>
>>>>> And use it for all similar patterns here.
>>>>
>>>> Sounds good! I find that the reverse wording (SHIFT_AND_MASK_BITS) would be
>>>> a bit more explicit since the shift happens prior to the mask.
>>>
>>> Apparently the UL(v) macro just appends UL to v in preprocessor, so it won't
>>> work with anything else than direct integers.
>>>
>>> I'll replace it with a (unsigned long) cast, that seems to do the job.
>>
>> Shouldn't that be a (u32) cast? Since this is used with 32 bit registers?
> 
> This would work for cedrus, but I think that what Mauro had in mind was to
> migrate this macro to linux/bits.h, where everthing else (including GENMASK)
> is apparently defined in terms of unsigned long and not types with explicit
> numbers of bits. So I find it more consistent to go with unsigned long.
> 
> In our case, 64-bit platforms that use cedrus would calculate the macro on
> 64 bits and use it in 32-bit variables. Since we're never masking beyond the
> lower 32 bits, I don't see how things could go wrong and the situation looks
> fairly similar to the use of GENMASK in similar conditions.
> 
> Does that sound right to you or am I missing something here?

Ah, OK. Fair enough.

Regards,

	Hans

> 
> Cheers,
> 
> Paul
> 
>> Regards,
>>
>> 	Hans
>>
>>>
>>> Cheers,
>>>
>>> Paul
>>>
>>>> Also we probably need to have parenthesis around "low", right?
>>>>
>>>>> The best would be to include such macro at linux/bits.h, although some
>>>>> upstream discussion is required.
>>>>>
>>>>> So, for now, let's add it at this header file, but work upstream
>>>>> to have it merged there.
>>>>
>>>> Understood, I'll include it in that header for now and send a separate patch
>>>> for inclusion in linux/bits.h (apparently the preprocessor doesn't care about
>>>> redefinitions so we can just remove the cedrus fashion once the common one is
>>>> in).
>>>>
>>>> What do you think?
>>>>
>>>> Cheers,
>>>>
>>>> Paul
>>>
>>>
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
