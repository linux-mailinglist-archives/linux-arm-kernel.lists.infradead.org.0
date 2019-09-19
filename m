Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E0DB7830
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 13:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvOSHosT/03xBEZRSmvO2YCKlLYAY6BS73/vjDupXJw=; b=E9hme81vIo8H9T
	h1f+Cn5MW+5JTVNTJancfiL1oLowJUBCsM1f/HPeDOn+EJkG6QSlN2pUfaMpZ5ojDhIbMTFoVtrwb
	cML6UKFA8sEVVz5Gdqjf962NLYxJ19DNn1nmIoryNmwUbsizQI4K+8U8ngKU3I8kLWtaRqfoidLEu
	/SqKwrxaQWpJ28E/0ZnBmR5qirWj5VnQyrzedBimmXniuSXToJZ8Nj2kwUuxYOht8FVUOcjOCyICg
	0mVzvi8/joKjZKrFFin0fbzBlbET83Gskm0daXv5QnVC2gtx6lGBhmSvMDTww5vwJrfBKnRMEKiF/
	CiXRR7e4zB+k4MJgKicQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAuHu-0003OR-9O; Thu, 19 Sep 2019 11:07:50 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAuHd-0003O5-Na
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 11:07:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568891251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=akH4tA+8boh2Z3ENSsOS4nb9YnmpMGx/umkuL11b15A=;
 b=FhMgOwLzBx7p2Uwg2ge5wkxKmgU8LscIA58K7wesr7mN0bODTbLytnsC4mw5jbQxiXzGbZ
 Hlr6pzzVw9TmAAFAsXarijXOmKNL83LZIGuwWp4xgcwMSZGgJPjNa7xeNyenMuzqipR+FS
 SZwkLRNyUUV5eQq0Pov5c/9tuI7vx1c=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-oPkX15kOPLm0JcYW_AwAxg-1; Thu, 19 Sep 2019 07:07:29 -0400
Received: by mail-wm1-f70.google.com with SMTP id c188so1414874wmd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 04:07:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MrXngNBkRSb78QhU35+OjWCZncslayQbSrEJYxPwRu8=;
 b=rSVhQ0tk7sfBFqSoIm3dt9wiraFkHzbXe4l0AYmvauhOh4+ZLw990szKXTqzV0wsrG
 Jc8Bhj07zrJUAv20kn1s01TahsquxYhUoFyeEyvCYaqi4X1JRXHirWak8oJS8/lUZz2Y
 s5uMX/oVw3/Fx6WQColrosbhBq2daqsorpJ2AwNBF6SaavrVfNFIn+XCylDtaEqKUYVI
 duV6zrIvnXOxpUHKeE9X/SlvkuIDeyAowb4evEZmCT7duXygWxEytsBja4fIy+ZAW+js
 OB2b68eky1LyWrUZpdHCgeLYEvxsUDdkQR/54hLKLI3SjoCldmGi6AE/K12PZPRMCRG0
 DBIw==
X-Gm-Message-State: APjAAAVREMjs3+PohB1+Q6pD9eFVZnBAE8HVl5MrVNi0ntNJqBWvjRyq
 YrdHaL9rsJSUyfebZuPI12hA5FhTNqyH8Mc+BrZ0ZL73hLSNqrtPqO+MwNWccWrtui77av+7pUa
 5BssxJXK1P57GNCTS0FwBBK65hoFmFiuwNHI=
X-Received: by 2002:a5d:40d2:: with SMTP id b18mr6966160wrq.4.1568891247735;
 Thu, 19 Sep 2019 04:07:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwckM+/LSaoom2PwxEmBix+GsMstuwLeTRInJeFdhoBW3jpxwLH/cidatmfnMnCjGzYBzirCw==
X-Received: by 2002:a5d:40d2:: with SMTP id b18mr6966141wrq.4.1568891247420;
 Thu, 19 Sep 2019 04:07:27 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c46c:2acb:d8d2:21d8?
 ([2001:b07:6468:f312:c46c:2acb:d8d2:21d8])
 by smtp.gmail.com with ESMTPSA id b16sm14179405wrh.5.2019.09.19.04.07.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 04:07:26 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
Date: Thu, 19 Sep 2019 13:07:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: oPkX15kOPLm0JcYW_AwAxg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_040733_856334_09BC9316 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/09/19 11:46, Jianyong Wu (Arm Technology China) wrote:
>> On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
>>> Paolo Bonzini wrote:
>>>> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead, and
>>>> split the 64-bit seconds value between val[0] and val[1].
>
> Val[] should be long not u32 I think, so in arm64 I can avoid that Y2038_safe, but
> also need rewrite for arm32.

I don't think there's anything inherently wrong with u32 val[], and as
you notice it lets you reuse code between arm and arm64.  It's up to you
and Marc to decide.

>>>> However, it seems to me that the new function is not needed and you
>>>> can just use ktime_get_snapshot.  You'll get the time in
>>>> systime_snapshot->real and the cycles value in systime_snapshot->cycles.
>>>
>>> See patch 5/6, I need both counter cycle and clocksource,
>> ktime_get_snapshot seems only offer cycles.
>>
>> No, patch 5/6 only needs the current clock (ptp_sc.cycles is never accessed).
>> So you could just use READ_ONCE(tk->tkr_mono.clock).
>>
> Yeah, patch 5/6 just need clocksource, but I think tk->tkr_mono.clock can't read in external like module,
> So I need an API to expose clocksource.
>  
>> However, even then I don't think it is correct to use ptp_sc.cs blindly in patch
>> 5.  I think there is a misunderstanding on the meaning of
>> system_counterval.cs as passed to get_device_system_crosststamp.
>> system_counterval.cs is not the active clocksource; it's the clocksource on
>> which system_counterval.cycles is based.
>>
> 
> I think we can use system_counterval_t as pass current clocksource to system_counterval_t.cs and its
> corresponding cycles to system_counterval_t.cycles. is it a big problem?

Yes, it is.  Because...

>> Hypothetically, the clocksource could be one for which ptp_sc.cycles is _not_
>> a cycle value.  If you set system_counterval.cs to the system clocksource,
>> get_device_system_crosststamp will return a bogus value.
> 
> Yeah, but in patch 3/6, we have a corresponding pair of clock source and cycle value. So I think there will be no
> that problem in this patch set.
> In the implementation of get_device_system_crosststamp:
> "
> ...
> if (tk->tkr_mono.clock != system_counterval.cs)
>                         return -ENODEV;
> ...
> "
> We need tk->tkr_mono.clock passed to get_device_system_crosststamp, just like patch 3/6 do, otherwise will return error.

... if the hypercall returns an architectural timer value, you must not
pass tk->tkr.mono.clock to get_device_system_crosststamp: you must pass
&clocksource_counter.  This way, PTP is disabled when using any other
clocksource.

>> So system_counterval.cs should be set to something like
>> &clocksource_counter (from drivers/clocksource/arm_arch_timer.c).
>> Perhaps the right place to define kvm_arch_ptp_get_clock_fn is in that file?
>>
> I have checked that ptp_sc.cs is arch_sys_counter.
> Also move the module API to arm_arch_timer.c will looks a little
> ugly and it's not easy to be accept by arm side I think.

I don't think it's ugly but more important, using tk->tkr_mono.clock is
incorrect.  See how the x86 code hardcodes &kvm_clock, it's the same for
ARM.

>> You also have to check here that the clocksource is based on the ARM
>> architectural timer.  Again, maybe you could place the implementation in
>> drivers/clocksource/arm_arch_timer.c, and make it return -ENODEV if the
>> active clocksource is not clocksource_counter.  Then KVM can look for errors
>> and return SMCCC_RET_NOT_SUPPORTED in that case.
> 
> I have checked it. The clock source is arch_sys_counter which is arm arch timer.
> I can try to do that but I'm not sure arm side will be happy for that change.

Just try.  For my taste, it's nice to include both sides of the
hypercall in drivers/clocksource/arm_arch_timer.c, possibly
conditionalizing them on #ifdef CONFIG_KVM and #ifdef
CONFIG_PTP_1588_CLOCK_KVM.  But there is an alternative which is simply
to export the clocksource struct.  Both choices are easy to implement so
you can just ask the ARM people what they prefer and they can judge from
the code.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
