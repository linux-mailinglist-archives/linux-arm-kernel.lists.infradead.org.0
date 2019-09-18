Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF9B6160
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpK/dvS9/uMLAcPfgRGPtzr2u2brQKjsJcBBcVnaFuI=; b=Fw6GJm0f2QDdF2
	8ZFZkn3TZWNKqJgBbjKGGD/K+K/mXgfpvyhHaMYVEeVrgFOKM9RQBJjqHFEEkk7/co1rcLuo5sUOE
	GUmBQEoVb3seYgGGWaoaKUwWdiL54PzFn+fpIGsRbUBnb4FWl2ph02lR3N29Rqi9cToBlOVyHFrRu
	KlidTzMTQjBFABdqeVzK8KZ6LUYnBihAC679L/Hck+kR240cbD/GPvmYt9LfYkU2q2EZWxab4yi3E
	+jLouC3e6LR5iLQkDZNjPIAqK+ni1hxENZxIN9sN+VgF/yJHnsgHSsgZ4qHwjjY7m127UjwHyajVp
	oA6knqlrdFaM8cBiXqJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX82-0000ct-4a; Wed, 18 Sep 2019 10:24:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX7p-0000c2-Va
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568802232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PzJJIzaT+H0i65urk/DowU+Nu1kZ2zWoYZTl/vMnWsA=;
 b=ILz6TX1VKIEIkksCyk+/WHyMe5yFAqysK+fmkixNfUuIMnbCoHBATAAnRfuC12U3mYJbC7
 5Zktrhj/dH6/ooZOX2ch1ZgpOxbMk0e5krj61hFCmM6x+VXx1jUzzyEhbx+Ssgrtqsf5lB
 fP/bpd6v8zzPU330SdGG+2B3iAbsvOI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-e_NNxp1NMOWWkG6Vj3UvJg-1; Wed, 18 Sep 2019 06:23:51 -0400
Received: by mail-wr1-f72.google.com with SMTP id w10so2187201wrl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 03:23:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/BXfx7jonw/Kdws8cuIdF1uOWxKnVxEGGX2roqyV5/g=;
 b=gQwe0ogF8iPtUx2UGnoWug1yiPwBa7PsfgPxhTGsqdUBcpx4uNs4HXM1mpCsC96PGR
 jdFczGcFvJRDTSK9YaPDDRZS56uzJV8JZha/7GAYbiE0UzVwjchRwTngDJT/VoE/RRjp
 U8MghG/lTfxP3TRtd8XsO5CvHwsKo8QXLfgdHIUuNQQRedZaI4d/0AXzDPssBGbcA/Gu
 yIfAW2p/irl8BJ489H/rKGwg+HhkAQhbaEWHsVIpeUbZAuKlYPTZjUK+ACCgaNEmwo+w
 rZFE1i3eJgbsTS+uH7P5nQDzAG6QbL2pqbpa5bhj5i3+lBl7mFmrtP+4cXPvjfB614hV
 P+6w==
X-Gm-Message-State: APjAAAVlJ6r9jjGS63AHRnK394TgobIm6Hga7Ko+P4wpHwAzBdVvPg8J
 juT+v+pcpW0FMhy5qP+1+Z+DGtUo+qeG3IRPsCLMVtN5LeBo5nAdik/0HPjVaN2aT9xQOGyCb/S
 tyHXwFvNj2D3YLVfTjuKKYG2S6/nbHb+irPI=
X-Received: by 2002:adf:e443:: with SMTP id t3mr2384764wrm.181.1568802229667; 
 Wed, 18 Sep 2019 03:23:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfxmTc5Fm4ZBlmRxUIGfYmFyau7KO9p53RPlq/ZJeTwvrFxtmEzKYq4y8POaEPkTSmkwUKyg==
X-Received: by 2002:adf:e443:: with SMTP id t3mr2384734wrm.181.1568802229356; 
 Wed, 18 Sep 2019 03:23:49 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c46c:2acb:d8d2:21d8?
 ([2001:b07:6468:f312:c46c:2acb:d8d2:21d8])
 by smtp.gmail.com with ESMTPSA id h125sm2260481wmf.31.2019.09.18.03.23.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 03:23:48 -0700 (PDT)
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
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
Date: Wed, 18 Sep 2019 12:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: e_NNxp1NMOWWkG6Vj3UvJg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_032354_149145_12A1C428 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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

On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
> Hi Paolo,
> 
>> On 18/09/19 10:07, Jianyong Wu wrote:
>>> +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
>>> +		getnstimeofday(ts);
>>
>> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead, and split the
>> 64-bit seconds value between val[0] and val[1].
>>
> As far as I know, y2038-safe will only affect signed 32-bit integer,
> how does it affect 64-bit integer?
> And why split 64-bit number into two blocks is necessary?

val is an u32, not an u64.  (And val[0], where you store the seconds, is
best treated as signed, since val[0] == -1 is returned for
SMCCC_RET_NOT_SUPPORTED).

>> However, it seems to me that the new function is not needed and you can
>> just use ktime_get_snapshot.  You'll get the time in systime_snapshot->real
>> and the cycles value in systime_snapshot->cycles.
> 
> See patch 5/6, I need both counter cycle and clocksource, ktime_get_snapshot seems only offer cycles.

No, patch 5/6 only needs the current clock (ptp_sc.cycles is never
accessed).  So you could just use READ_ONCE(tk->tkr_mono.clock).

However, even then I don't think it is correct to use ptp_sc.cs blindly
in patch 5.  I think there is a misunderstanding on the meaning of
system_counterval.cs as passed to get_device_system_crosststamp.
system_counterval.cs is not the active clocksource; it's the clocksource
on which system_counterval.cycles is based.

Hypothetically, the clocksource could be one for which ptp_sc.cycles is
_not_ a cycle value.  If you set system_counterval.cs to the system
clocksource, get_device_system_crosststamp will return a bogus value.
So system_counterval.cs should be set to something like
&clocksource_counter (from drivers/clocksource/arm_arch_timer.c).
Perhaps the right place to define kvm_arch_ptp_get_clock_fn is in that file?

>>> +		get_current_counterval(&sc);
>>> +		val[0] = ts->tv_sec;
>>> +		val[1] = ts->tv_nsec;
>>> +		val[2] = sc.cycles;
>>> +		val[3] = 0;
>>> +		break;
>>
>> This should return a guest-cycles value.  If the cycles values always the same
>> between the host and the guest on ARM, then okay.  If not, you have to
>> apply whatever offset exists.
>>
> In my opinion, when use ptp_kvm as clock sources to sync time
> between host and guest, user should promise the guest and host has no
> clock offset.

What would be the adverse effect of having a fixed offset between guest
and host?  If there were one, you'd have to check that and fail the
hypercall if there is an offset.  But again, I think it's enough to
subtract vcpu_vtimer(vcpu)->cntvoff or something like that.

You also have to check here that the clocksource is based on the ARM
architectural timer.  Again, maybe you could place the implementation in
drivers/clocksource/arm_arch_timer.c, and make it return -ENODEV if the
active clocksource is not clocksource_counter.  Then KVM can look for
errors and return SMCCC_RET_NOT_SUPPORTED in that case.

Thanks,

Paolo

> So we can be sure that the cycle between guest and
> host should be keep consistent. But I need check it.
> I think host cycle should be returned to guest as we should promise
> we get clock and counter in the same time.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
