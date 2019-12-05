Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D5E1142FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ig75RzA9G8oWet3eWeW78rE+VNNVvt8+GCm16vWv3Rc=; b=nQyTe3MPGM2i1+
	4SNPFbalFF/o3Hvr2WPmNJQvC4+PcgzH7BBHe/6pzBEjwHnZljveyJ5RWA28n57V8RdeZaA9nZVh1
	NrN3NwjLc/Tth+xDkD+KxXuWCtsjhgBsDFwf8sGEjgeNvq/kLM0mb503KE5f64UDTqbfKGejvCHxu
	vuj1oiXGpEi5BtYwtBf9Ze+Zhm2Is5td96eYMRYxjwJAKSnSU4fb1/DPgvMK+L2uMo5JlV4bq7UJf
	Qn41xbWIb2RPHMSSdA8Job/aPuz539kyovaJ7ZT5WUZQ3FVgOU2v2vXxy22WnitpjljtslAWBeAjD
	+hWWAQCApmHdIsuvZ4hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsRZ-0004Dn-9c; Thu, 05 Dec 2019 14:49:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsRD-0003zF-BM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:49:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so3941367wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7MxbR5XDyHkZfVCV75paSiI+DLKKhBjM/UT6hfCTkVM=;
 b=Qh322w5auxsNA1ZVIG8yo/ZQB97ep7HkHmDZYLNRahNI0IUvlP8ujBpwpx1Md5PSz2
 YIIgy7+TSI6U1TJILsakZkhgkQGiPlvts5dArok/FBG8AA+J2B1K8sYoXVdGqp1Q2dGg
 ShJjouxJ/ggGgkqkjtPtlBy72tpH6JXAPcza+Q7kuDdFwoVv9QoCkeRm5RoQLzx8ezXZ
 2TPEBa3elSc7nDVnHzBpUbULgs+66g2qXbpQDaC2uecpJz6UFHH0Hh80eCmq+b1+p0JO
 GqyiECS67FLAfCcBxKi9SbqPs89eecKC7WIxA4+cLhPXkgC6Uab9Fcf46WhSwzCaUKBe
 LkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7MxbR5XDyHkZfVCV75paSiI+DLKKhBjM/UT6hfCTkVM=;
 b=pOvVj95x6zAnYjJ5yGMnrIlwkueM2uY/MdGYqHiEsuBtAaJ9mITg1W0WJqorjNXTvj
 PwUZvDlDPT19YRUi0iPCsbnMlRsvDBXcN/zTQr242chY9KQQjtsuHMJ7uydrBDR1WP/b
 r+a8jq3yvG04jOQjMJ+GxgFdTc8SOrHpmK6G7jK/IFrwb5vFlgNtDLf482DypSF5Sw9z
 OmpqrzUbqgCmH9V+sJL11qhE+DiFRaDxqdhp6SazQ7Phs21huE/WeGi7JA3JEJ5RsAM9
 qiMoFrp6Op2g547WXuWtCfyADWQaszr6LmPzmN6oAfkllKY4+IqHo0Ial7li8e9pvaly
 9bsQ==
X-Gm-Message-State: APjAAAWUIA8K3tndmZIO0mkjPqv0AFxQoNLIG88RIT34nul3AlmKP1/i
 oYnLAITq1pGioqkgvEjpXGHiWH7jWQvn8Qe1
X-Google-Smtp-Source: APXvYqymObm2O6oLb5NRFW2tY8U43icKVpbTHPG5OFCakLMqABkleaLsIGGBqJpm8l63dslGpl9K+w==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr10806909wru.119.1575557341403; 
 Thu, 05 Dec 2019 06:49:01 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id v8sm10642477wrw.2.2019.12.05.06.49.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 06:49:00 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <a24f817e-86dc-ae32-417d-08eadc96d0eb@arm.com>
 <63c92257-1915-7374-64de-0e73804167e0@forissier.org>
 <ee5970f9-a9c3-619e-7674-8a98ffcaeec1@arm.com>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <40a0e25a-9752-7bca-da1c-51135582907d@forissier.org>
Date: Thu, 5 Dec 2019 15:48:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <ee5970f9-a9c3-619e-7674-8a98ffcaeec1@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_064903_449433_CE6035AA 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/5/19 1:04 PM, Vincenzo Frascino wrote:
> Hi Jerome,
> 
> On 04/12/2019 14:03, Jerome Forissier wrote:
> [...]
>> Do you have a HiKey960 board at your disposal? Well, you can build the
>> whole stuff I'm using by following the OP-TEE build instructions [1],
>> just use 'hikey960' for ${TARGET} in the description.
>>
>> The scenario is simple: build, flash, power-cycle the board. That's it.
>> Default version boots fine (it's based on a v5.1 kernel), but checkout
>> Linux v5.4 instead and the login prompt never shows up on the UART console.
>>
>> Note, if you just want to build the kernel Image you may simply run
>> "make linux" instead of "make".
>>
>> [1]
>> https://optee.readthedocs.io/en/latest/building/gits/build.html#get-and-build-the-solution
>>
> 
> Thank you for the instructions, I managed to successfully boot the latest
> mainline tree on the Hikey960. Full log in attachment.
> And even the poweroff sequence looks fine to me.

Nice.

> Could you please try to follow the following steps and verify that it works for
> you as well?
> 
> 1. Download op-tee version 3.7.0.
> 2. Enter the linux directory and add the remote
> git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> 3. Rebase the 3.7.0 branch kernel of linux master.
> 4. Build and Flash op-tee.
> 
> It should boot and have no issues on init.

[Unfortunately, it doesn't work for me. The board still hangs (or
rather, loops) on /init. I'm puzzled at this point... What could be
wrong with my setup? Do we have different board revisions maybe?

...]

Now that's embarrassing :-/ I decided to re-build everything once again,
but *without ccache* this time. Guess what? Kernel v5.4 boots fine :-O
and master too.

I used to trust ccache blindly, until I discovered a bug which has
caused me some trouble for quite some time [1]. After upgrading I
thought all would be good again, but apparently not... That is quite
annoying! :-/

Would you recommend against using ccache for kernel development?

Anyway, thank you guys for your valuable help. I feel ashamed for
wasting your time troubleshooting a non-bug... but at least it wasn't in
vain.

[1] https://github.com/ccache/ccache/issues/136

> What I noticed is that the optee
> provided kernel is not a 5.1 but a 5.1 plus some patches.

True, but nothing really important. A vanilla kernel is supposed to work
fine including most of the OP-TEE stuff (except for some very specific
"secure data path" code which depends on the presence of a special ION
heap).

Thanks,
-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
