Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F1FD8181
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9opahYerZYGEtZuPkwPzXPxemZfZb1g4or45i63MQM=; b=F2BcEFm7j6PMi1
	hYxc0qEIC3i7FAVQLDd7jDMegZ+aAUVXi5ihkmA+/FvIuc/lDrV6+PZDDbV9b4oMhnpfCdC/hul/4
	FkKSr2GmRiYs+8KEbTUntddUBo53odYtDZciodaZG9CwKFAqtKNNvTUZqSTeHUNJj7JtxqtKJbCGJ
	+p1WkX5gM80Bm//5rLZ0PINNBKmygRvp2XNDcMVvyT3j1wC3mSEAPYzbvazjwr1/5PZnrnr0nuWU5
	19tpguqW3e7yjgvay0+uX1cDgMax3K3c78P2YnwzAjzsd16VPH3NbNabGEaXy+AJiO0EtxHBel6WL
	BVHPq92brkV7YSsH0oEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKU6x-0008Gg-NK; Tue, 15 Oct 2019 21:12:07 +0000
Received: from www381.your-server.de ([78.46.137.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKU6q-0008Fx-Dw
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:12:02 +0000
Received: from sslproxy01.your-server.de ([88.198.220.130])
 by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <lars@metafoo.de>)
 id 1iKU6b-0007VH-CM; Tue, 15 Oct 2019 23:11:45 +0200
Received: from [93.104.114.34] (helo=[192.168.178.20])
 by sslproxy01.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <lars@metafoo.de>)
 id 1iKU6a-0002ns-Tt; Tue, 15 Oct 2019 23:11:45 +0200
Subject: Re: [PATCH][RFC] iio: core: add a class hierarchy on iio device lock
To: Olivier MOYSAN <olivier.moysan@st.com>, Jonathan Cameron <jic23@kernel.org>
References: <20191011151314.5365-1-olivier.moysan@st.com>
 <20191012095747.3acd95e6@archlinux>
 <db362ddf-390e-0847-1269-f3cd0c757d2a@st.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <9ddc41c4-3d84-cc94-5494-a5ef06697ce8@metafoo.de>
Date: Tue, 15 Oct 2019 23:11:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <db362ddf-390e-0847-1269-f3cd0c757d2a@st.com>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.101.4/25603/Tue Oct 15 10:57:00 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_141200_471847_CA2F6A41 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [78.46.137.84 listed in list.dnswl.org]
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 5:59 PM, Olivier MOYSAN wrote:
> Hello Jonathan,
> 
> Thanks for your comment.
> 
> On 10/12/19 10:57 AM, Jonathan Cameron wrote:
>> On Fri, 11 Oct 2019 17:13:14 +0200
>> Olivier Moysan <olivier.moysan@st.com> wrote:
>>
>>> The aim of this patch is to correct a recursive locking warning,
>>> detected when setting CONFIG_PROVE_LOCKING flag (as shown in message below).
>>> This message was initially triggered by the following call sequence
>>> in stm32-dfsdm-adc.c driver, when using IIO hardware consumer interface.
>>>
>>> in stm32_dfsdm_read_raw()
>>> 	iio_device_claim_direct_mode
>>> 		mutex_lock(&indio_dev->mlock);			-> lock on dfsdm device
>>> 	iio_hw_consumer_enable
>>> 		iio_update_buffers
>>> 			mutex_lock(&indio_dev->mlock);		-> lock on hw consumer device
>> Hmm.  I'm not sure I follow the logic.  That lock is
>> for one thing and one thing only, preventing access
>> to the iio device that are unsafe when it is running
>> in a buffered mode.  We shouldn't be in a position where
>> we both say don't do this if we are in buffered mode, + enter
>> buffered mode whilst doing this, or we need special functions
>> for entering buffering mode if in this state.  We are in
>> some sense combining internal driver logic with overall
>> IIO states.  IIO shouldn't care that the device is using
>> the same methods under the hood for buffered and non
>> buffered operations.
>>
>> I can't really recall how this driver works.   Is it actually
>> possible to have multiple hw_consumers at the same time?
>>
>> So do we end up with multiple buffers registered and have
>> to demux out to the read_raw + the actual buffered path?
>> Given we have a bit of code saying grab one sample, I'm
>> going to guess we don't...
>>
>> If so, the vast majority of the buffer setup code in IIO
>> is irrelevant here and we just need to call a few of
>> the callbacks from this driver directly... (I think
>> though I haven't chased through every corner.
>>
>> I'd rather avoid introducing this nesting for a corner
>> case that makes no 'semantic' sense in IIO as it leaves us
>> in two separate states at the same time that the driver
>> is trying to make mutually exclusive.  We can't both
>> not be in buffered mode, and in buffered mode.
>>
>> Thanks and good luck with this nasty corner!
>>
>> Jonathan
>>
> Here I consider the following use case:
> A single conversion is performed. The dfsdm (filter) is chained with a 
> front-end, which can be an ADC or a sensor. So we have two IIO devices, 
> the dfsdm and its front-end handled through the hw consumer interface.
> 
> You are right. There is something wrong here, in buffered/non-buffered 
> mode mixing.
> iio_hw_consumer_enable() call is used to enable the front-end device. 
> But this interface is intended for buffered mode.
> So this is not coherent with the expected single conversion mode, 
> indeed. Another interface is required to manage the front-end device. I 
> have a poor knowledge of iio framework, but it seems to me that there is 
> no interface to manage this.
> 
> My understanding regarding mlock, is that it is used to protect the 
> state of the iio device.
> I we want to do a conversion from the chained devices, I think we need 
> to activate the first device
> and keep it performing conversion, as long as the second device has done 
> its conversion.
> We need to protect both devices, and we should have to do it in a nested 
> way.
> So, I guess that anyway, nested mutexes would be required in this case.
>

Others like regmap have solved this by having a lockclass per instance.
Although that is not ideal either since it will slow down lockdep.

See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/regmap.h#n629

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
