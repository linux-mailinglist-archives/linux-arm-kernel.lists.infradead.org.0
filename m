Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02BFDB000
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/2G90Y0cqQPfOdx6N4eYHFPQLXkc+sogwfL9At28M0=; b=k2Yqa8yGyBJoO5
	GDfpVYKD2eJX9nSn5dksN5OKb1e/YppcWkgTxR7HTGdLyGCKjJ8drATvEbz2kP71pEvIbH5d6tKFJ
	r47yApmB6IUR6TxuL3DFuku1URYNnEgtO3FhWUOI/pN7Zp/irVX0iH4AwPbeHPOH/yV4bB8N/am/Z
	JvSvLuvc7CQZjUnDgjbPW9TyTh5HNPOSp2XrZ8sUO62upLXfLSOukiNvrFZVa1WCQCSOJIMja3L3G
	a3vAIusfMAV3MwnvZ5d/rt9rfPuTRfQR2nPa/jV4CWK4JrHFa3zsPx2TP/9OxMC/YRHyWOIfHxwfL
	MwJe5vcMXFKwqmTVQk2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6ii-00089w-2N; Thu, 17 Oct 2019 14:25:40 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6iP-00082F-VX
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:25:25 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-35-wLuQ8dFnOzq0PfuTddZlqw-1; Thu, 17 Oct 2019 15:25:15 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 17 Oct 2019 15:25:14 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 17 Oct 2019 15:25:14 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Yunfeng Ye' <yeyunfeng@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Thread-Topic: [PATCH V2] arm64: psci: Reduce waiting time of
 cpu_psci_cpu_kill()
Thread-Index: AQHVhO5+Vr2ETd8AWEKYYhhOaw9ZuKde3Cgg///1GwCAABHQgA==
Date: Thu, 17 Oct 2019 14:25:14 +0000
Message-ID: <173d1913031b4ecb88f0c6e421cc5cf8@AcuMS.aculab.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
 <20191016153221.GA8978@bogus>
 <0f550044-9ed2-5f72-1335-73417678ba45@huawei.com>
 <c97c87b52f474463bc30ff8033a57e0c@AcuMS.aculab.com>
 <1cd555f0-4074-36b7-8426-6f01130051d2@huawei.com>
In-Reply-To: <1cd555f0-4074-36b7-8426-6f01130051d2@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: wLuQ8dFnOzq0PfuTddZlqw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072522_392876_55C22120 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yunfeng Ye
 > Sent: 17 October 2019 15:20
> On 2019/10/17 22:00, David Laight wrote:
> > From: Yunfeng Ye
> >> Sent: 17 October 2019 14:26
> > ...
> >>>> -	for (i = 0; i < 10; i++) {
> >>>> +	i = 0;
> >>>> +	timeout = jiffies + msecs_to_jiffies(100);
> >>>> +	do {
> >>>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
> >>>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
> >>>>  			pr_info("CPU%d killed.\n", cpu);
> >>>>  			return 0;
> >>>>  		}
> >>>>
> >>>> -		msleep(10);
> >>>> -		pr_info("Retrying again to check for CPU kill\n");
> >>>
> >>> You dropped this message, any particular reason ?
> >>>
> >> When reduce the time interval to 1ms, the print message maybe increase 10 times.
> >> on the other hand, cpu_psci_cpu_kill() will print message on success or failure, which
> >> this retry log is not very necessary. of cource, I think use pr_info_once() instead of
> >> pr_info() is better.
> >
> > Maybe you should print in on (say) the 10th time around the loop.
> >
> Can it like this:
>   pr_info("CPU%d killed with %d loops.\n", cpu, loops);
> 
> If put the number of waiting times in the successful printing message, it is
> not necessary to print the "Retrying ..." message.

That depends on whether you want to know how long it took or why the system
is 'stuck'.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
