Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1AA11CCB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsMLOBvOutxaJt9J9ThKlzyJG8KxEbpyVSuPs4ND6p8=; b=lvX+ge1SZdehm7
	RJYxQiC0URhZZLCFoQAltBQeBybo3V9jSIwpixymlMDK4aYvlGvfij7UE7rrAw3xBPJMx+oXSk5vI
	y0y+zbl6329m6qQ/nKOKe/FfyAJXTsT2aV6GWyN0CpbJdv4AV6556W9pvCUaPYgBATwrC9ybRSxBM
	wks2KfdfQlG61YampwNdYy/QvW95OTnp6W5P5u9mtwUj0AfDpgCE9YkP7vHatMOQeKfB2KGRyQ5b8
	uxAzPnEn415OU8zVdaGksV1xF0n/zTMsGdQaGPuqdq3sdQ2+uHkwIHk5/0/Mk64ywOv1f74w52Pf7
	7YRkcpBmZwljQM5JzgKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNAn-0007do-O5; Thu, 12 Dec 2019 12:02:25 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNAc-0007d5-Pp; Thu, 12 Dec 2019 12:02:16 +0000
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fNAYiZIm6GyJwfNAZiy0h9; Thu, 12 Dec 2019 13:02:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576152132; bh=grA3mrY/IXTuR/bHnsfsFfTSA8BCPNcViLc0fRgFSEg=;
 h=Subject:From:To:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=nzEPxu/XiAq6xqJTEPtu2DMyFeL+3oKzznjfS8x4FT/5JQvyJe0A1cdg52/aYtQje
 Q28MS1eZ97eJ2uG0m5TG7zFtGiD5VwDcEzvhRbV19ST4l0c8kRotbI94BHivZy8UBY
 Y7yWuKKaX0PsLD4qBdn5bfYJNC4WJXSXFOsSios8DGvU7P8nfX/fgwQMyEPT0fSg1P
 PvsgHSBA/JZe4yikXFhnQ+cJPgCsD6PcsqpH3kJ74VOTxg7d1gcbH4qUudjqoKmSaV
 4jCvItG9+5UaRbH0H38fvOK6XOqSvcheujlc2B51AZBo6LD0NVxVagx2ujgm0i+6ls
 CONsICQSvGD0Q==
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
From: Hans Verkuil <hverkuil@xs4all.nl>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <996a9b6a-0e45-d627-9263-539c22e5f1c0@xs4all.nl>
 <7fd4bf99fd6316da8acaf0a27b6845bedbf4b25f.camel@collabora.com>
 <eafffc6f-061e-65ab-079b-b2bd613d61cb@xs4all.nl>
Message-ID: <20f99f0e-dfec-f6c0-eeb3-7561018f32e9@xs4all.nl>
Date: Thu, 12 Dec 2019 13:02:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <eafffc6f-061e-65ab-079b-b2bd613d61cb@xs4all.nl>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMDfu7petJydGdzuJyylr5ZiNog40vMypqvfQw7ZVz48j+cgXHx/cTeFqN1/hiF8DSXEOpCJ20WY7E5a94cB1D2PZi7ML8XhkxMVMy0iR4SJQ4vKxJKi
 ftB/XN39JhQEUYBc8BqlxhyoQuxxXMDZIwBgwdBCeW1iR27+uOELF8KpcwgxwC3YpRMZCXHyBUlXOlsmilsvxlZ+tUPadvpHrZMXa0fbpTJN1NQ3Gfhb4C8g
 Ey9971QU/1aNWS6qs55K9REyFymqQcD+MCjep1VvsImgMFileSAM1UvR1WvQ0UQSwCKiuv/5JpKWQyObfLI9YHJqOnlCMVkwado7cwy3VaqW7/tZ/kWL+bN4
 vD42oWtQwV4mxkcNc1FkEdzle+uDb0YzHHrsz0otltr7IWNTGAI1Hst8Gozocr63Czju4gGbtp7oIDByGPBe83x2ZgI09gn/gc28vBtdfs/oaoBnHS6cnaEC
 E7+SsuD1fZi95WxWXfUtazbaT6MH5cDsJU9m3cEylYYAQqSlrUF5zYkDcsdo4TCXAM84dpoB344aucpHrv7M9QvnpsLqzVUZISK7wYM1Lo9Hb8MDDXlmwL4r
 xIi7vcXizDuJhzNTp5BfrFPDWCXJs8SR1jKhutFfQ2+XMd1OCUg9k17FyR+3gLw1z+uCGGqbDD9pyEWcqul0IBR0PWOrbFOLrI01v1XO+DyZ9ZoXMrCZM3/D
 kT+0Y0OCCd5k4pu6X7fCGA81kV5oK8daXF0zIbPFhTfhBc/37ACc7L2orLrRPLcVsdB+ZOHB9LiaHg0OCH78xdxF8K2JtKLfQaIQqCP5SQxxPi8Nh8TIZCrm
 2GA9v6FZ5YAaldkVTokUB1wwSMdC+8vMdIYnb18vTMQmRcwMomQoHjPl+lZXwGI7bj0CGM1R/OUDogkUdk3xRQJIAaTy+HUtshdELy+I7KHCWAxUjSv5gf3f
 tanncCiL1byhYkycQwgkjxEWtnc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_040215_006354_48F8BEAB 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, gregkh@linuxfoundation.org,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, jacob-chen@iotwrt.com,
 tfiga@chromium.org, robh+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, zhengsq@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen, Ezequiel,

The merge window is open, so you want to get this in, then please post a v12
with the few remaining items addressed so that I can merge it.

Regards,

	Hans

On 11/19/19 9:30 AM, Hans Verkuil wrote:
> On 11/18/19 7:52 PM, Ezequiel Garcia wrote:
>> Hi Hans,
>>
>> Thanks for taking care of this.
>>
>> On Thu, 2019-11-14 at 09:42 +0100, Hans Verkuil wrote:
>>> On 11/14/19 6:12 AM, Helen Koike wrote:
>>>> Hello,
>>>>
>>>> This series adds the Rockchip Image Signal Processing Unit v1 driver to
>>>> staging.
>>>>
>>>> The main reason to be in staging is that people are already using it from the
>>>> mailing list (including libcamera), and having it in mainline makes the workflow
>>>> easier. Also, it is easier for other people to contribute back (with code
>>>> or testing the driver).
>>>>
>>>> We plan to actively work on this driver to get it our of staging.
>>>>
>>>> This patchset is also available at:
>>>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
>>>>
>>>> Libcamera patched to work with this version:
>>>> https://gitlab.collabora.com/koike/libcamera
>>>> (also sent to the mailing list)
>>>>
>>>> The major difference in v11 are:
>>>> - Fixed compiling warnings found with W=1
>>>> - Fixed checkpatch errors
>>>> - Add clock-names values in dt-bindings
>>>
>>> Looking at checkpatch I see a few remaining issues that I believe should be
>>> fixed before merging this:
>>>
>>> CHECK: spinlock_t definition without comment
>>> #575: FILE: drivers/staging/media/rkisp1/isp_stats.h:43:
>>> +       spinlock_t irq_lock;
>>>
>>> CHECK: struct mutex definition without comment
>>> #581: FILE: drivers/staging/media/rkisp1/isp_stats.h:49:
>>> +       struct mutex wq_lock;
>>>
>>> CHECK: spinlock_t definition without comment
>>> #1648: FILE: drivers/staging/media/rkisp1/isp_params.h:25:
>>> +       spinlock_t config_lock;
>>>
>>> CHECK: spinlock_t definition without comment
>>> #2058: FILE: drivers/staging/media/rkisp1/capture.h:145:
>>> +       spinlock_t vbq_lock;
>>>
>>
>> I'd rather merge this as-is, adding a TODO entry stating
>> we need to revisit locking specifically, because I'd like
>> to take a close look at these spinlocks/mutex,
>> instead of just addding comments for then.
> 
> Fair enough! Just as long as it is mentioned somewhere.
> 
>>
>>> Once this is done together with the Jacob Chen email clarification
>>> it is ready to be merged for v5.6.
>>>
>>
>> I'll find out more about this.
> 
> Thanks!
> 
> Remember that we are in the code freeze until v5.5-rc1 is released,
> so you have time to make more adjustments if you want to.
> 
> Regards,
> 
> 	Hans
> 
>>
>>> It passes all the sparse/smatch tests, so that's very good.
>>>
>>
>> Great!
>>
>> Thanks,
>> Ezequiel
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
