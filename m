Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6AB1B90C0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 15:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kna8vXnC1d4dxr6tKvok2MVWRAMCIW4/B8DDe0VebSA=; b=j6IU7ag0K/WXCPGoKuuXUJqE0
	MtjF4SmzCn8tFZK3NbgJ3SgWl9sPxBqar1/tzAAp8Sh0lIJsY3yqpQ7fnI4cYxODv3MySViNw1KgA
	iXk8shGpOy274tyEV27aw/3fYlD/ACYwnSvU1IOiG10PYQ1vTdPER91PjHgpPfqZm46TI8xznipk4
	Yn/EPt9hYKBXxMdFY7vmoP4kRtCdNnYMVxDQT1b/7z/mDSMTiin0DNQH72DQbIP8SGdYFpbO8FwSr
	marnB4HPqCtFDQ9nVmusMGEgxAkF8NVc4NwGvyBt1R8AfZhNDv0yQ7+R/WyXg8FE2PrFo7sxNNwcM
	mhhBL+Z4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jShlK-0000X5-JF; Sun, 26 Apr 2020 13:56:02 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jShl7-0000Vr-4Q
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 13:55:51 +0000
Received: by mail-wm1-x32d.google.com with SMTP id x25so16567855wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 06:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rug-nl.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=friC9oyHVgq9Yx8YdeBzqYg6EEx+R8r/K/LgctSNM6w=;
 b=0fRT3yqrmChvi55YCFuucdpfOMHKPWlCV/Owd7oTSFYsv13Rq9YiNL9sWERLrPxIG3
 L2l8RFHEyhqln+PN2Ek6yRJVW4pvV+FprLlUzIqxsW2f5oE6KtPpCc4nIvUSLLPJOMFK
 3dzeL6ONZZOcJV45lFcASLgc/Z+0HHVSgpsF+m4b/Inhc6+JK5+kA89Ldl13hAl7+tPZ
 p4XrF8BJu1VSzbvGXGub258ttYJ3aHtEnNuUX8IQwqVNvLqssv7pVCy1FgyQ7Uu/LaXg
 wzJuqLl1kr+5rv8/VhHjF76VWseZy4enZvO9uERW2rAC1NGXVOE5S5T3nto55Hi3+XxO
 l3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=friC9oyHVgq9Yx8YdeBzqYg6EEx+R8r/K/LgctSNM6w=;
 b=t/dCqnadl9WJFaoAvPEArAc4mBlpG+T+16E8y7c4pcKqGgt2Veu5SiYMNMz5Ial+Re
 JWkZcW5W+9vb2ZThdlGTX/MDdJK0/HIZ6jRQLxze5sd5CKL9efia0CQejUoZav4R990g
 kKlSLnNTsVcyfBjmFeBjT60ieomu0Gck8nILDTUrK82mbcty8uYLE1SAV+ha5Aqh9mA3
 /ajGkZ0EIjU8mlpQ5k4etW+fZF6HepootPPtnis3iPmVysrWq5wk8CblmR/r3gTEUKkj
 mIunthsqEK5d5pSFrslYuCkmEQI/72o37GkeE8CcwsYTHesB5x3oFgdxlnceVRuKEHf6
 koGQ==
X-Gm-Message-State: AGi0PuZx6cPrmBYEEGRSFa9eQbaS7GT8/52R4GjXKCynG6Wvt0icvgxA
 I7LObZcDZxugvalhK+fQFajS9HXXN9rTHQ==
X-Google-Smtp-Source: APiQypI9ABgjMJl0BEvFWjlqoc1z4NuixjzpkedJ4dAW9GcD/FSb4FuaHEi3bV30zbe2jtqad1MNSg==
X-Received: by 2002:a05:600c:244:: with SMTP id 4mr21026810wmj.0.1587909344652; 
 Sun, 26 Apr 2020 06:55:44 -0700 (PDT)
Received: from ?IPv6:2001:1c01:420a:8c00:5189:1ca9:2229:9539?
 (2001-1c01-420a-8c00-5189-1ca9-2229-9539.cable.dynamic.v6.ziggo.nl.
 [2001:1c01:420a:8c00:5189:1ca9:2229:9539])
 by smtp.gmail.com with ESMTPSA id b2sm18509097wrn.6.2020.04.26.06.55.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 06:55:44 -0700 (PDT)
Subject: Re: Enable_fiq for ARM timer on rpi zero?
From: Sietse Achterop <s.achterop@rug.nl>
To: linux-arm-kernel@lists.infradead.org
References: <c92cbd84-6ded-d7cf-dc01-8f71fc3f6092@rug.nl>
Message-ID: <855d0ceb-5969-ca02-9729-39fedb856afa@rug.nl>
Date: Sun, 26 Apr 2020 15:55:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c92cbd84-6ded-d7cf-dc01-8f71fc3f6092@rug.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_065549_241116_763E337B 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello list,

On 4/19/20 2:59 PM, s.achterop@rug.nl wrote:
> I'm having trouble with using FIQ interrupts with the ARM timer on raspberypi zero, (BCM2835 chip).
> The main problem is that I don't know which argument to use for the enable_fiq function.
> Where can I find this information?
Code was at:
     https://github.com/SietseAchterop/Batradio/blob/master/batradio_module/fiqtest_2.c
							
I now am a little bit further and I now get some FIQ interrupts, but very irregular, and after some time
the system crashes.
I can see the irregularity because the fiq-handler toggles a LED.
I now do NOT use the claim_fiq function and also NOT the enable_fiq function.
I just, for the moment, assume that nothing else is using the ARM timer of FIQ.
And the FIQ is enabled by directly writing 0xC0 to the FIQ-control register.
Please find below the code-fragment from the init function of the driver and the fiq_handler.
irqtimer and gpiospi are set via ioremap and should be ok given the fact that it is working as
much as it does.
What am I doing wrong here?

    Thanks in advance,
        Sietse

PS. Or is there a better forum to ask. I did try the rpi forums, but no luck.

==== init function fragment

   regs.ARM_r8 = (long)gpiospi;
   regs.ARM_r9 = (long)irqtimer;
   regs.ARM_r10 = (long)0;        //batradio_data->fiq_base;
   set_fiq_regs(&regs);

   // start timer with interrupt
   TIMLOAD = 100000-1;
   TIMCINT = 0;
   TIMCNTR = 0x000000A2;
   // timer interrupt to fiq
   IRQFIQ = 0xC0;

=== fiq-handler

batradio_handler:
         stmdb sp!, {r6-r7}
         mov  r6, #0
         str r6, [r9, #0x40C]    // TIMCINT = 0 // clear interrupt

         mov r7, #0x2000         // 1 << 13, GPIO13
         add r10, r10, #1
         ands r6, r10, #0x0001   // set toggle speed
         bne off
         str r7, [r8, #40]       // led on
         ldmia sp!, {r6-r7}
         subs pc, lr, #4
off:    str r7, [r8, #28]       // led off
         ldmia sp!, {r6-r7}
         subs pc, lr, #4
batradio_handler_end:


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
