Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B0AD66BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lIeDuNggVEEW3cBMI7OlzcCPzO3NSiUAC+xQuXitZA=; b=GxhFuyHn8YJV0p
	SDiVgD+cBKVBYxnXMrsmPob3/X4JN2iOzxbzCJLu/IjtVnIFIPrdJOg1txHagLamArQKaCHqvRoXm
	bzpJf3ZtvKcndevRO0a3ifhPSOGHX7QRBtnsPvO8xbvTz3o8HAmnRMpQMmhWi1ZITgL19M6C8fMAS
	jKgeqJP9mflwf1UJDG9NEdUdBX2YGcOlu9aGqNw+0N/2yZ2FDgpw9eK5FTOyn2KrAG6Yb7u01WeGP
	rWRmeMIWCeNx8TGS2NQOz7ZcjvnleEGYcUyE0+Jtt01WsDSZylyrlnh4u39ISCZgM+w0RSAGMz5ip
	tRcDyL/f7G/PjZ9doquw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2ld-0005hG-64; Mon, 14 Oct 2019 16:00:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2lS-0004a0-LX
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:00:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9EFk60p020626; Mon, 14 Oct 2019 17:59:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ErKqBaJ9aXk2WVrka5Z6q4n0v+E8sjnROHwo/kiQ3y4=;
 b=p8YZL7+MhGupwL4qrGMl2etKny+Rrk4+9Pym9ViuMy0U2m7Wo7w5Hqx922jvL2z1lqxy
 l7HHlSYZwKXI/nAk450gW301zvN6pieS478HV1s7IDBsfyO/uk+p1E9ZC/c8aDDenR/R
 EKXvQFJM962luLKKBjymYj/VIlonamKl1JMufUutb+6LvLCv4uqCHWFp+Y6GswcxpzNk
 cs0CfhCrlyGrSv/+/oII38IIwMrPwN+8DtHcxM87auQtO80OSMYzwRFw30EWvQUBwLRq
 gggofCrf/w6u2LjNg2wvkGwnGwIjzgFdH/ruMIFukj4blx/klSoLvkfgxWDzXKN0oBAb ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4kwu789-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 14 Oct 2019 17:59:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 707BE10003A;
 Mon, 14 Oct 2019 17:59:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 58D942C9353;
 Mon, 14 Oct 2019 17:59:54 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 14 Oct
 2019 17:59:53 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Mon, 14 Oct 2019 17:59:53 +0200
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH][RFC] iio: core: add a class hierarchy on iio device lock
Thread-Topic: [PATCH][RFC] iio: core: add a class hierarchy on iio device lock
Thread-Index: AQHVgNseXkzpsLq050SI9JEr18+cxKdaLZeA
Date: Mon, 14 Oct 2019 15:59:53 +0000
Message-ID: <db362ddf-390e-0847-1269-f3cd0c757d2a@st.com>
References: <20191011151314.5365-1-olivier.moysan@st.com>
 <20191012095747.3acd95e6@archlinux>
In-Reply-To: <20191012095747.3acd95e6@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <3D4B4D647439894D9B1D7ED3F22DB443@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-14_08:2019-10-11,2019-10-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_090007_134821_5E009295 
X-CRM114-Status: GOOD (  36.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
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

Hello Jonathan,

Thanks for your comment.

On 10/12/19 10:57 AM, Jonathan Cameron wrote:
> On Fri, 11 Oct 2019 17:13:14 +0200
> Olivier Moysan <olivier.moysan@st.com> wrote:
>
>> The aim of this patch is to correct a recursive locking warning,
>> detected when setting CONFIG_PROVE_LOCKING flag (as shown in message below).
>> This message was initially triggered by the following call sequence
>> in stm32-dfsdm-adc.c driver, when using IIO hardware consumer interface.
>>
>> in stm32_dfsdm_read_raw()
>> 	iio_device_claim_direct_mode
>> 		mutex_lock(&indio_dev->mlock);			-> lock on dfsdm device
>> 	iio_hw_consumer_enable
>> 		iio_update_buffers
>> 			mutex_lock(&indio_dev->mlock);		-> lock on hw consumer device
> Hmm.  I'm not sure I follow the logic.  That lock is
> for one thing and one thing only, preventing access
> to the iio device that are unsafe when it is running
> in a buffered mode.  We shouldn't be in a position where
> we both say don't do this if we are in buffered mode, + enter
> buffered mode whilst doing this, or we need special functions
> for entering buffering mode if in this state.  We are in
> some sense combining internal driver logic with overall
> IIO states.  IIO shouldn't care that the device is using
> the same methods under the hood for buffered and non
> buffered operations.
>
> I can't really recall how this driver works.   Is it actually
> possible to have multiple hw_consumers at the same time?
>
> So do we end up with multiple buffers registered and have
> to demux out to the read_raw + the actual buffered path?
> Given we have a bit of code saying grab one sample, I'm
> going to guess we don't...
>
> If so, the vast majority of the buffer setup code in IIO
> is irrelevant here and we just need to call a few of
> the callbacks from this driver directly... (I think
> though I haven't chased through every corner.
>
> I'd rather avoid introducing this nesting for a corner
> case that makes no 'semantic' sense in IIO as it leaves us
> in two separate states at the same time that the driver
> is trying to make mutually exclusive.  We can't both
> not be in buffered mode, and in buffered mode.
>
> Thanks and good luck with this nasty corner!
>
> Jonathan
>
Here I consider the following use case:
A single conversion is performed. The dfsdm (filter) is chained with a 
front-end, which can be an ADC or a sensor. So we have two IIO devices, 
the dfsdm and its front-end handled through the hw consumer interface.

You are right. There is something wrong here, in buffered/non-buffered 
mode mixing.
iio_hw_consumer_enable() call is used to enable the front-end device. 
But this interface is intended for buffered mode.
So this is not coherent with the expected single conversion mode, 
indeed. Another interface is required to manage the front-end device. I 
have a poor knowledge of iio framework, but it seems to me that there is 
no interface to manage this.

My understanding regarding mlock, is that it is used to protect the 
state of the iio device.
I we want to do a conversion from the chained devices, I think we need 
to activate the first device
and keep it performing conversion, as long as the second device has done 
its conversion.
We need to protect both devices, and we should have to do it in a nested 
way.
So, I guess that anyway, nested mutexes would be required in this case.

Best regards

Olivier

>
>> Here two instances of the same lock class are requested
>> on two different objects.
>> The locking validator needs to be informed of the nesting level
>> of each lock to avoid a false positive.
>>
>> This patch introduces a class hierarchy in iio device lock,
>> assuming that hardware consumer is at a lower level than iio device.
>>
>> [   52.086174]
>> [   52.086223] ============================================
>> [   52.091516] WARNING: possible recursive locking detected
>> [   52.096825] 4.19.49 #162 Not tainted
>> [   52.100384] --------------------------------------------
>> [   52.105691] cat/823 is trying to acquire lock:
>> [   52.110132] 37acb703 (&dev->mlock){+.+.}, at: iio_update_buffers+0x3c/0xd0
>> [   52.116995]
>> [   52.116995] but task is already holding lock:
>> [   52.122821] 368bb908 (&dev->mlock){+.+.}, at: iio_device_claim_direct_mode+0x18/0x34
>> [   52.130560]
>> [   52.130560] other info that might help us debug this:
>> [   52.137083]  Possible unsafe locking scenario:
>> [   52.137083]
>> [   52.142995]        CPU0
>> [   52.145430]        ----
>> [   52.147864]   lock(&dev->mlock);
>> [   52.151082]   lock(&dev->mlock);
>> [   52.154301]
>> [   52.154301]  * DEADLOCK *
>> [   52.154301]
>> [   52.160215]  May be due to missing lock nesting notation
>> [   52.160215]
>> [   52.167000] 5 locks held by cat/823:
>> [   52.170563]  #0: 96d6554b (&p->lock){+.+.}, at: seq_read+0x34/0x51c
>> [   52.176824]  #1: 3cf6739a (&of->mutex){+.+.}, at: kernfs_seq_start+0x1c/0x8c
>> [   52.183866]  #2: a6090e0a (kn->count#29){.+.+}, at: kernfs_seq_start+0x24/0x8c
>> [   52.191083]  #3: 368bb908 (&dev->mlock){+.+.}, at: iio_device_claim_direct_mode+0x18/0x34
>> [   52.199257]  #4: 77e2bcfe (&dev->info_exist_lock){+.+.}, at: iio_update_buffers+0x30/0xd0
>> [   52.207431]
>> [   52.207431] stack backtrace:
>> [   52.211787] CPU: 0 PID: 823 Comm: cat Not tainted 4.19.49 #162
>> [   52.217606] Hardware name: STM32 (Device Tree Support)
>> [   52.222756] [<c0112420>] (unwind_backtrace) from [<c010df5c>] (show_stack+0x10/0x14)
>> [   52.230487] [<c010df5c>] (show_stack) from [<c0af5c88>] (dump_stack+0xc4/0xf0)
>> [   52.237703] [<c0af5c88>] (dump_stack) from [<c01865bc>] (__lock_acquire+0x874/0x1344)
>> [   52.245525] [<c01865bc>] (__lock_acquire) from [<c0187be8>] (lock_acquire+0xd8/0x268)
>> [   52.253353] [<c0187be8>] (lock_acquire) from [<c0b0dcf8>] (__mutex_lock+0x70/0xab0)
>> [   52.261005] [<c0b0dcf8>] (__mutex_lock) from [<c0b0e754>] (mutex_lock_nested+0x1c/0x24)
>> [   52.269001] [<c0b0e754>] (mutex_lock_nested) from [<c09282b8>] (iio_update_buffers+0x3c/0xd0)
>> [   52.277523] [<c09282b8>] (iio_update_buffers) from [<c09329cc>] (iio_hw_consumer_enable+0x34/0x70)
>> [   52.286476] [<c09329cc>] (iio_hw_consumer_enable) from [<c0932134>] (stm32_dfsdm_read_raw+0xf4/0x3fc)
>> [   52.295695] [<c0932134>] (stm32_dfsdm_read_raw) from [<c0922eb4>] (iio_read_channel_info+0xa8/0xb0)
>> [   52.304738] [<c0922eb4>] (iio_read_channel_info) from [<c067a7fc>] (dev_attr_show+0x1c/0x48)
>> [   52.313170] [<c067a7fc>] (dev_attr_show) from [<c03724a4>] (sysfs_kf_seq_show+0x84/0xec)
>> [   52.321256] [<c03724a4>] (sysfs_kf_seq_show) from [<c0312afc>] (seq_read+0x154/0x51c)
>> [   52.329082] [<c0312afc>] (seq_read) from [<c02e7a00>] (__vfs_read+0x2c/0x15c)
>> [   52.336209] [<c02e7a00>] (__vfs_read) from [<c02e7bc0>] (vfs_read+0x90/0x15c)
>> [   52.343339] [<c02e7bc0>] (vfs_read) from [<c02e81ac>] (ksys_read+0x5c/0xdc)
>> [   52.350296] [<c02e81ac>] (ksys_read) from [<c0101000>] (ret_fast_syscall+0x0/0x28)
>> [   52.357852] Exception stack(0xe5761fa8 to 0xe5761ff0)
>> [   52.362904] 1fa0:                   0000006c 7ff00000 00000003 b6e06000 00020000 00000000
>> [   52.371077] 1fc0: 0000006c 7ff00000 00020000 00000003 00000003 00000000 00020000 00000000
>> [   52.379245] 1fe0: 00000003 beb6e790 b6eb17b7 b6e3e6c6
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
>> ---
>>   drivers/iio/buffer/industrialio-hw-consumer.c | 9 ++++++++-
>>   drivers/iio/industrialio-buffer.c             | 2 +-
>>   drivers/iio/industrialio-core.c               | 3 ++-
>>   include/linux/iio/iio.h                       | 6 ++++++
>>   4 files changed, 17 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/iio/buffer/industrialio-hw-consumer.c b/drivers/iio/buffer/industrialio-hw-consumer.c
>> index 95165697d8ae..652ce31b4b5f 100644
>> --- a/drivers/iio/buffer/industrialio-hw-consumer.c
>> +++ b/drivers/iio/buffer/industrialio-hw-consumer.c
>> @@ -101,6 +101,7 @@ struct iio_hw_consumer *iio_hw_consumer_alloc(struct device *dev)
>>   
>>   	chan = &hwc->channels[0];
>>   	while (chan->indio_dev) {
>> +		chan->indio_dev->mutex_class = IIO_MUTEX_HWC;
>>   		buf = iio_hw_consumer_get_buffer(hwc, chan->indio_dev);
>>   		if (!buf) {
>>   			ret = -ENOMEM;
>> @@ -129,8 +130,14 @@ EXPORT_SYMBOL_GPL(iio_hw_consumer_alloc);
>>   void iio_hw_consumer_free(struct iio_hw_consumer *hwc)
>>   {
>>   	struct hw_consumer_buffer *buf, *n;
>> +	struct iio_channel *chan = &hwc->channels[0];
>> +
>> +	while (chan->indio_dev) {
>> +		chan->indio_dev->mutex_class = IIO_MUTEX_NORMAL;
>> +		iio_channel_release(chan);
>> +		chan++;
>> +	}
>>   
>> -	iio_channel_release_all(hwc->channels);
>>   	list_for_each_entry_safe(buf, n, &hwc->buffers, head)
>>   		iio_buffer_put(&buf->buffer);
>>   	kfree(hwc);
>> diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
>> index c193d64e5217..d1df04167978 100644
>> --- a/drivers/iio/industrialio-buffer.c
>> +++ b/drivers/iio/industrialio-buffer.c
>> @@ -1077,7 +1077,7 @@ int iio_update_buffers(struct iio_dev *indio_dev,
>>   		return 0;
>>   
>>   	mutex_lock(&indio_dev->info_exist_lock);
>> -	mutex_lock(&indio_dev->mlock);
>> +	mutex_lock_nested(&indio_dev->mlock, indio_dev->mutex_class);
>>   
>>   	if (insert_buffer && iio_buffer_is_active(insert_buffer))
>>   		insert_buffer = NULL;
>> diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
>> index f72c2dc5f703..b14ba42559a3 100644
>> --- a/drivers/iio/industrialio-core.c
>> +++ b/drivers/iio/industrialio-core.c
>> @@ -1454,6 +1454,7 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
>>   		dev->dev.groups = dev->groups;
>>   		dev->dev.type = &iio_device_type;
>>   		dev->dev.bus = &iio_bus_type;
>> +		dev->mutex_class = IIO_MUTEX_NORMAL;
>>   		device_initialize(&dev->dev);
>>   		dev_set_drvdata(&dev->dev, (void *)dev);
>>   		mutex_init(&dev->mlock);
>> @@ -1805,7 +1806,7 @@ EXPORT_SYMBOL_GPL(devm_iio_device_unregister);
>>    */
>>   int iio_device_claim_direct_mode(struct iio_dev *indio_dev)
>>   {
>> -	mutex_lock(&indio_dev->mlock);
>> +	mutex_lock_nested(&indio_dev->mlock, indio_dev->mutex_class);
>>   
>>   	if (iio_buffer_enabled(indio_dev)) {
>>   		mutex_unlock(&indio_dev->mlock);
>> diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
>> index 862ce0019eba..1192eca124f4 100644
>> --- a/include/linux/iio/iio.h
>> +++ b/include/linux/iio/iio.h
>> @@ -17,6 +17,11 @@
>>    * Currently assumes nano seconds.
>>    */
>>   
>> +enum iio_mutex_lock_class {
>> +	IIO_MUTEX_NORMAL,
>> +	IIO_MUTEX_HWC,
>> +};
>> +
>>   enum iio_shared_by {
>>   	IIO_SEPARATE,
>>   	IIO_SHARED_BY_TYPE,
>> @@ -537,6 +542,7 @@ struct iio_dev {
>>   	struct list_head		buffer_list;
>>   	int				scan_bytes;
>>   	struct mutex			mlock;
>> +	int				mutex_class;
>>   
>>   	const unsigned long		*available_scan_masks;
>>   	unsigned			masklength;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
