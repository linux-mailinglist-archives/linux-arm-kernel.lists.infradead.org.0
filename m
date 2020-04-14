Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B044D1A76E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmPAuhcY4AQ3k/NSQtIlONNUMpLHUg4EbWnuuTi96D4=; b=JPG9P7bJ+aXfy/
	B2qG8PBfpXWW1API7D2mn3oiyHV1j/Vo+stATRLokBikN8/dzlp3MxO6shBZf815+fTBFHSV22JFu
	2bD9UIkHiWJLG2kEF8z+TfG2j8bOXGRwmiFgvFeIfiLnKPVD+DE2J90q7Bcl8/9xp0RljPLS5cEVC
	sIilaWSQ6ia8j/gAK82PYHout8sLn1xrDOFe4ExPkgp1jPocFcOwwc6vpUknuwEFjr6TU80bBvLTr
	5AB8fM7rb15VKYHeIM6DHiWkf4dRYchxKDryjOGhvQBv0SCNlSMVsFKvxjiufVIlBzBGZaDndHVeb
	ur9vEeS8OtyNN6r/tZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHSS-0004Bb-IF; Tue, 14 Apr 2020 09:02:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHSL-0004Aq-CW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:02:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D7F21FB;
 Tue, 14 Apr 2020 02:02:06 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C9703F6C4;
 Tue, 14 Apr 2020 02:02:05 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
 <CANaxB-xUYOrVnfLPRYVBiASzCH89sZkD6vTdy8EFjT16ZJhLfg@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <1d9c4c56-af16-e54f-08ca-76c6570b2d53@arm.com>
Date: Tue, 14 Apr 2020 10:02:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANaxB-xUYOrVnfLPRYVBiASzCH89sZkD6vTdy8EFjT16ZJhLfg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_020209_463774_ECB1E14B 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 4/11/20 8:33 AM, Andrei Vagin wrote:
> On Thu, Apr 9, 2020 at 6:23 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> Hi Andrei,
>>
[...]

>> Sorry for the delay, I completed this morning the review of your patches and I
>> do not have anymore comments on them. Thank you for making the effort and
>> bringing the time namespace support to arm64.
> 
> Thank you for the review of these patches.
> 
>>
>> I have though a question on something I encountered during the testing of the
>> patches: I noticed that all the tests related to CLOCK_BOOTTIME_ALARM fail on
>> arm64 (please find the results below the scissors). Is this expected?
> 
> static int alarm_clock_get_timespec(clockid_t which_clock, struct
> timespec64 *tp)
> {
>         struct alarm_base *base = &alarm_bases[clock2alarm(which_clock)];
> 
>         if (!alarmtimer_get_rtcdev())
>                 return -EINVAL;
> 
> It is probably that you get EINVAL from here ^^^. I will send a
> separate patch to handle this case in tests properly.
>

This makes sense :) Please let me know when you post the fix so I can test it again.

Are you planning as well to rebase this set?

> Thanks,
> Andrei
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
