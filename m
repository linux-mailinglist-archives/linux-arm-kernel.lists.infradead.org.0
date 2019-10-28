Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C23E7752
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i35ragsIXhnGBkLQ+nuG16PMif3zmtqe/hgEMd9ycOU=; b=TOVyT3G6T7pJePmsJWYaFWd4G
	DwBWuq0iH41LqEFgIOwbwGL7UBtMPylxItSdYdj8rohf5fjTXMBvE9KAuh3nVEC+yglIHHMt8AsSK
	AAO+sSDekgWs0Li0Wz2DuU2GLxmpAvWI2pjdBR1hZpxp+iWM1Sp9sP5repx3NwLlH4CygVYgffMZN
	EfXfViHXmUUgiHWbsPc83wyJ02HWEPRXrBBJgIqYt1VZquJiKUJVkPM/wVG+euTWr6c387tlakcnF
	53M+3Sa2JacGElDjO88FSUhPjgXcUyvrbYYtse4o2D783HlAwF8l3wPWT2tYmrNJZ6oCeWUypvRUY
	IqQBJ/tbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Vk-0004yO-JS; Mon, 28 Oct 2019 17:08:56 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8VZ-0004xQ-5n
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:08:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="211490840"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga002.jf.intel.com with ESMTP; 28 Oct 2019 10:08:44 -0700
Subject: Re: [PATCH v2] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Navid Emamdoost <navid.emamdoost@gmail.com>
References: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
 <20191028165827.24949-1-navid.emamdoost@gmail.com>
 <6450dbb4-aa6f-627d-7e5d-21a20f560d60@linux.intel.com>
 <CAEkB2ETFNFKtGTo+HZ4L9uzr-W1CTeuGAwfKqm8hX5fx7d8dbQ@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <da959329-aa40-b6e7-dcc9-48183a8da716@linux.intel.com>
Date: Mon, 28 Oct 2019 10:08:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAEkB2ETFNFKtGTo+HZ4L9uzr-W1CTeuGAwfKqm8hX5fx7d8dbQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_100845_275428_C91C41AF 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Kangjie Lu <kjlu@umn.edu>, openbmc@lists.ozlabs.org,
 Eddie James <eajames@linux.ibm.com>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Joel Stanley <joel@jms.id.au>,
 Stephen McCamant <smccaman@umn.edu>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/28/2019 10:06 AM, Navid Emamdoost wrote:
> On Mon, Oct 28, 2019 at 12:01 PM Jae Hyun Yoo
> <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> On 10/28/2019 9:58 AM, Navid Emamdoost wrote:
>>> In the implementation of aspeed_video_probe() the allocated memory for
>>> video should be released if either devm_ioremap_resource()
>>> or aspeed_video_init() or aspeed_video_setup_video() fails. Replace
>>> kzalloc() with devm_kzalloc to avoid explicit release for video.
>>>
>>> Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
>>> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
>>> ---
>>> Changes in v2:
>>>        -- replace kzalloc with devm_kzalloc based on Jae Hyun Yoo
>>> suggestion
>>>
>>>    drivers/media/platform/aspeed-video.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
>>> index eb12f3793062..2aa8ea2f9824 100644
>>> --- a/drivers/media/platform/aspeed-video.c
>>> +++ b/drivers/media/platform/aspeed-video.c
>>> @@ -1646,7 +1646,7 @@ static int aspeed_video_probe(struct platform_device *pdev)
>>>    {
>>>        int rc;
>>>        struct resource *res;
>>> -     struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
>>> +     struct aspeed_video *video = devm_kzalloc(sizeof(*video), GFP_KERNEL);
>>
>> It can't be compiled. devm_kzalloc should have 3 parameters.
>>
> 
> Oops! my bad. Do you think such a list of parameters is fine:
>      devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);

Yes, it's fine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
