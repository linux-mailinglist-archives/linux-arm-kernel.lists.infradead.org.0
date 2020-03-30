Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9C419861E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 23:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcZaEKWY/tUs5DS4Yl4yiGRCQE8FYxudnZE4we7Jwi0=; b=SCKjDTUh7FScas
	rEcATHybn7kJRH2Ape5eVYzqquJqPxKgInGzIV3z6iOizYkIWe+GmwQm4xsD/DcVFBWvBC8PjjMU9
	2g7+O7LMrx5Chf7KWawKkbs/iNXZAOoIk+6C3EEm1iN6hP4qtQXPTdVXgmzD7Idy6LZ66eYrWH04c
	ItxTsv8fLFe/ZnGo8xp+ENIaJoYtmjKVvXazCSGEq6i8io7Eh1p2fBPILboz1GlSfBHGcgA0QpavJ
	jNAFVByy++0ejsUvnCG4XTfl6htHhc0WnjG/f8DEaIRYl+OhK6LbAl/E2yhh1MaJ2+QhPPTVCGWUw
	ug1JNFIt7Fe2AmSIQK0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1gy-0001pa-Bn; Mon, 30 Mar 2020 21:11:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1gp-0001p5-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 21:11:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id m11so17556150wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 14:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fsMl5Nx+EmTAuVrV9vWYdHUKz0NPKJDPN8ZitH6IpPE=;
 b=qkUwoL/pZpNky35c/1heq+TyyXk76VwNKaEr1hnORbKxg6AifweZU0gpxO8jA06G0g
 kBUcotah/TksaORVep4cWKxInrUhdyTgHnJ4XX8BsmUDZ1dKX1TKivwFfT4s2MRGziLf
 BniGMW8MjNEAevgj35p4FJh0iOrl18jvgGbB9dy8fBWZ8qsm/KSKPiUcXZE04BOJF7TH
 t+PN0iUPxboJbqVCRAK6sfzSAdXGJ/SNY0EaTPKiCFMwFzygLQi3dFMJM0FUkZpBJ84D
 qZ2FH+HqeQXfa7tBaO7l3srKybnSMtrR0DhLzvqAMKpWCKPQ4seU1yLxb2R567xTXGp8
 hXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=fsMl5Nx+EmTAuVrV9vWYdHUKz0NPKJDPN8ZitH6IpPE=;
 b=scD+Y1CoIl7laPiOGuKJsreyCkXWx7XjXUw1tPpVxyYJGoQJ+ME3K5pGUw+V3+rfCv
 FhLBFvJI8kMxVIh1Y7ggegiDKbtqcvpkBnslKH215+EPbUaSJ5oa3Wwj13Cwcz+TvEi4
 cW5VgcvPm1w8qj4exaizadIHGGB4yB7wxIv4kznCq0FrcoR8TX4SjVKwAAdqJhL2OZXT
 thqnTJrSfxlIIonx7CkYim0gVzp2YYlJhd+azuZTOVMGKiY8FpnO2u3kz7k1NW6Sc9RP
 6EYtebFi5ViYr2JfmzFbz0A6Ifz7KTKAcwchPxxRaQTlDKtfx/FQIbsm9L5uQqIijISq
 zvlQ==
X-Gm-Message-State: ANhLgQ2KdPqapjzZz2LLVqrFx38yimGz2ihnRvHHfw8WSPi2yE5zBWiA
 779e8CM8O+O5aSZey0tGMBw=
X-Google-Smtp-Source: ADFU+vvsYHnRX7IEvIIMdR8GrBNGvueoR0/NcEXuTRZwvHiDR7fZcjquBNqjCupdEmDY7SFnUCh5fg==
X-Received: by 2002:a05:6000:1205:: with SMTP id
 e5mr17875819wrx.73.1585602681914; 
 Mon, 30 Mar 2020 14:11:21 -0700 (PDT)
Received: from [10.230.186.223] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x1sm911555wmj.24.2020.03.30.14.11.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 14:11:21 -0700 (PDT)
Subject: Re: SError handling vs. SIGSEGV
To: James Morse <james.morse@arm.com>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
 <68580476-eba8-2615-c25f-f3f1b53118e0@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <2506b851-8ee2-dca5-82ac-b06c0d406c6d@gmail.com>
Date: Mon, 30 Mar 2020 14:11:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <68580476-eba8-2615-c25f-f3f1b53118e0@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_141123_526346_FE2498AF 
X-CRM114-Status: GOOD (  29.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/30/2020 4:30 AM, James Morse wrote:
> Hi Florian,
> 
> (I assume this is all on some pre-v8.2 system)

Cortex-A53, so yes.

> 
> On 3/28/20 4:31 AM, Florian Fainelli wrote:
>> Up until commit e4ba15debcfd27f60d43da940a58108783bff2a6 ("arm64:
>> fix for bad_mode() handler to always result in panic") we had been
>> getting SIGSEGV delivered to applications running on Broadcom STB
>> platforms which access register holes or registers for which we have
>> purposely blocked the access via the GISB (proprietary bus for control
>> registers) bus arbiter used on those SoCs.
> 
> User-space has access to this? Not good.

This is a test case that uses busybox's devmem (opens up /dev/mem), we
do not expect anyone in production to do that.

> 
> 
>> That commit arguably plugged
>> a hole in that scheduling was possible when panic() was intended, so
>> this is not really the only culprit.
> 
>> We are actually relying on this
>> behavior to pass a number of tests that specifically exercise that
>> register blocking is effective without taking down the whole system.
> 
> ... but this isn't actually possible ...
> 
> The abort is asynchronous, the CPU may be doing something else when it arrives.
> It may have taken an IRQ. Taking a (pre-v8.2) SError out of IRQ context has to
> fatal.

I suppose we have been lucky before in that we only ever saw the
offending application being killed.

> 
> 
>> Due to our SoC integration all of those register access errors are
>> SErrors with the signature at the bottom.
> 
> Do you trust user-space not to access them?
> 
> If not, don't give user-space access to those pages!

As I described, this is an intentional test case that exercises a bus
firewall feature, this is not necessarily representative of a real world
scenario.

> 
> 
>> Doug had tried to submit a patch series that allowed a given platform to
>> install custom abort handlers, similar to what ARM 32-bit permits, but
>> this got shot down:
> 
> For good reason. You cannot know that the abort was caused by your broken
> hardware, and not an ECC error for the stack memory...

ECC are separate syndromes which are actually known to the kernel.

> 
> Getting this wrong leads to data corruption, and you have no reliable
> information to base the decision on. (see below). The RAS extensions added the
> CPU and system bits to improve this.

The GISB bus does capture invalid accesses, that is the basis for this
driver: drivers/bus/brcmstb_gisb.c which is helpful in identifying a
block that is clock gated for instance. This would work too in the case
where a register address is intentionally blocked out.

> 
> 
>> I understand that such a SError is deemed catastrophic and
>> unrecoverable, but taking down the whole system for something we could
>> possibly resolve with a SIGSEGV provided the platform is known and hooks
>> are in place would be more desirable IMHO, otherwise we have nice DoS
>> lurking around and hard to debug systems in production, too.
> 
> SError is asynchronous. The ELR_EL1 value is meaningless.
> The CPU can change exception level between the access that triggers the
> external-abort being sent, and the result received. You can't even rely on
> 'while my process is running'.
> 
> SError can also be imprecise so you can't return from an SError exception. The
> CPU is not obliged to put the world back in order before taking the exception.
> 
> precise/imprecise isn't commonly described. The arm-arm has: G1.3.4 "Definition
> of a precise exception":
> | An exception is described as precise when the exception handler receives the
> | PE state and memory system state that is consistent with the PE having
> | executed all of the instructions up to but not including the point in the
> | instruction stream where the exception was taken, and none afterwards.
> | Other than the SError interrupt all exceptions that are taken to AArch32 state
> | are required to be precise. For each occurrence of an SError interrupt,
> | whether the interrupt is precise or imprecise is IMPLEMENTATION DEFINED.
> 
> 
>> As it stands today, I see no way to have a self hosted test case that
>> exercises that our GISB bus arbiter blocking works correctly because the
>> whole kernel is taken down when the test is successful :/
> 
> Sorry, it looks like your hardware people have given you something you can't
> reliably work with.

Yes indeed.

> 
> Don't give user-space access to devices, they can take the system down.
> Don't punch holes in page mappings, the CPU can't map anything smaller.
> Don't respond with an abort unless you are prepared for the OS to die.

That much is clear, thank you.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
