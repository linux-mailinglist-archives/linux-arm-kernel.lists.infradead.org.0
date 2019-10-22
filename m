Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918C4E053B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRoLUKtpyMPRxncj9tEwMtvfjDUA2nzh1h3RMY3f0UM=; b=QmsRvKODHyXMiI
	D5TL4VpmHhprFRrHS1D88m2W0/IHAxzTKdpA8JJr4ucqlaUFihqZQCpNhf8b1sfrS009TY7jHCXA5
	lF2rrEUX0fVjH4Yt+lgTnu7geZhjCr4DRHGHUxUtYZnT9UmUBxd7RFzQ2uM8MDjo4gH9ArLZx9OWd
	Vn2kxj3Gg2YT32aDUf0eurtbazV65dynCorRIdV8dUv3S/c6SP5dDdIJ+I4841qB6IerkOGR3Oxxu
	ZXM7qh4Id8hJS93fVKI25V/4uNvfdtdVXv/eYuCNCimPO1fwCEjYfdq/D91KquKxjn1XabQz6gxHr
	UsjFVnFYbCgcsVDgxRew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuLz-0003Ia-KX; Tue, 22 Oct 2019 13:37:39 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuLm-0003Gr-Ru
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:37:28 +0000
Received: from [IPv6:2001:420:44c1:2577:31:9f59:b53f:5d72]
 ([IPv6:2001:420:44c1:2577:31:9f59:b53f:5d72])
 by smtp-cloud8.xs4all.net with ESMTPA
 id MuLZi358zPduvMuLciMX11; Tue, 22 Oct 2019 15:37:19 +0200
Subject: Re: [PATCH v8 3/3] media: cedrus: Add HEVC/H.265 decoding support
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190927143411.141526-1-paul.kocialkowski@bootlin.com>
 <20190927143411.141526-4-paul.kocialkowski@bootlin.com>
 <20191017095751.5a229051@coco.lan> <20191022124012.GD2651@aptenodytes>
 <20191022131751.GE2651@aptenodytes>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <62ddccd3-38c0-89c5-7f0c-35f24494c3f9@xs4all.nl>
Date: Tue, 22 Oct 2019 15:37:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022131751.GE2651@aptenodytes>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGcQw51DpjRvyLxbxolSOX71E8lqWZ+0MJY/7Ouh3VYxagmxQu8Ei02oc+Mj/zXvU5RyNCyDaf6H/4E4idJFlazznmC1b4mujOa6I8sdfL9E7NuCgTgB
 61mat3AWjaF0LifQk8BtyfttgdZDyPdm/r7+IA7aqwSj377GqvWQAyboF26qWgmVGq+9B6M9+GATxd0BkBAaHuDDR5cD2D3LhTzWDjnDiHh0a81eP3hUoiNC
 snyBpMjfQwEwdm5ThBq0H9Qn2UY/vf2WhLeNLAnb2UzArIqCQYF9jDK1UU/4aSACZxD+2oW4KrKhMJRxKD1fF7VS1BbciaAEIh7pDGzKOfMDTYzIfpE+Tk//
 8hKvV+hgmTaSVgFVlC9vYRfvm6PyCqnozAFGb5wG6MeoLqK6iMnIOIl6HKIw+WqlLzSvTNHvZHhN5jetzoW0FHPsDodPDLOAjyCKBwvyYzmEFioHEKeOJBye
 7pqTJ5qrf//iQpi/IzVhZwG0Njs8YtbLJN/KNnUvNTa/bTH+pqIpcT6H/Sl/FQm2CbYpYKbV5/1aEd8xvpgKJOpXWKXb7VcxzZXcj6qDP3qije7j8bOE4Km9
 VBiL5/znsM7Bq7KSvzhU2vGA1zjQ5vnUzohecO0VSAZU9m7tYfwJnQuPQswa37o6Ozn3Y4OLaN3CWEWbKn+8BUlX2KKFzPNdLTAvYdYx0kfPR3Rn5b44Fcmw
 DSk23kXQOIwW7TNER97st3sFXLOdaGan
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063727_062207_3304254D 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.29 listed in list.dnswl.org]
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tomasz Figa <tfiga@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/22/19 3:17 PM, Paul Kocialkowski wrote:
> Hi again,
> 
> On Tue 22 Oct 19, 14:40, Paul Kocialkowski wrote:
>> Hi Mauro and thanks for the review,
>>
>> On Thu 17 Oct 19, 09:57, Mauro Carvalho Chehab wrote:
>>> Em Fri, 27 Sep 2019 16:34:11 +0200
>>> Paul Kocialkowski <paul.kocialkowski@bootlin.com> escreveu:
>>>
>>>> This introduces support for HEVC/H.265 to the Cedrus VPU driver, with
>>>> both uni-directional and bi-directional prediction modes supported.
>>>>
>>>> Field-coded (interlaced) pictures, custom quantization matrices and
>>>> 10-bit output are not supported at this point.
>>>>
>>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>>> ---
>>>
>>> ...
>>>
>>>> +		unsigned int ctb_size_luma =
>>>> +			1 << log2_max_luma_coding_block_size;
>>>
>>> Shifts like this is a little scary. "1" constant is signed. So, if
>>> log2_max_luma_coding_block_size is 31, the above logic has undefined
>>> behavior. Different archs and C compilers may handle it on different
>>> ways.
>>
>> I wasn't aware that it was the case, thanks for bringing this to light!
>> I'll make it 1UL then.
>>
>>>> +#define VE_DEC_H265_LOW_ADDR_PRIMARY_CHROMA(a) \
>>>> +	(((a) << 24) & GENMASK(31, 24))
>>>
>>> Same applies here and on other similar macros. You need to enforce
>>> (a) to be unsigned, as otherwise the behavior is undefined.
>>>
>>> Btw, this is a recurrent pattern on this file. I would define a
>>> macro, e. g. something like:
>>>
>>> 	#define MASK_BITS_AND_SHIFT(v, high, low) \
>>> 		((UL(v) << low) & GENMASK(high, low))
>>>
>>> And use it for all similar patterns here.
>>
>> Sounds good! I find that the reverse wording (SHIFT_AND_MASK_BITS) would be
>> a bit more explicit since the shift happens prior to the mask.
> 
> Apparently the UL(v) macro just appends UL to v in preprocessor, so it won't
> work with anything else than direct integers.
> 
> I'll replace it with a (unsigned long) cast, that seems to do the job.

Shouldn't that be a (u32) cast? Since this is used with 32 bit registers?

Regards,

	Hans

> 
> Cheers,
> 
> Paul
> 
>> Also we probably need to have parenthesis around "low", right?
>>
>>> The best would be to include such macro at linux/bits.h, although some
>>> upstream discussion is required.
>>>
>>> So, for now, let's add it at this header file, but work upstream
>>> to have it merged there.
>>
>> Understood, I'll include it in that header for now and send a separate patch
>> for inclusion in linux/bits.h (apparently the preprocessor doesn't care about
>> redefinitions so we can just remove the cedrus fashion once the common one is
>> in).
>>
>> What do you think?
>>
>> Cheers,
>>
>> Paul
> 
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
