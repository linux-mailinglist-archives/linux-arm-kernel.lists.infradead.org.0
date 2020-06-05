Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B911EF43D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IVs//4Xwzfy1PLTJj2eSoUEIAukUqa1HDnedUTh0RXE=; b=YZ6EELJrXgYAxp
	iuKY1wxyljaAWo4pTDOy1uLJHYFjSZ6Au8tgb65xybJYnxloNxC/iZVGkc9f+aH3B1An8Min0fedj
	30Mh2+/XMlT6ZrXbU2SBG+bkQ03iEosAIAq//6sD9P4RCuF/hFoyt64PXDurtMn3ouEDdiZ8BDPMP
	XS2WvOs8NuD0oE+7vljKTd9DFCykfzUo+oiEjGeK1KJLShax3iNJUfz/18LHaHoyRPWt/qY0xtdBU
	oXX34R7d7tMkLq8x09LNCw2yMIaCqgFVi63bnEHm82cISCToDkP5osTzUsIjGFakyV12lSGMWmbf7
	ppCbmtFl8twbfGjxwxNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8iT-0000mO-Vu; Fri, 05 Jun 2020 09:32:45 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8iL-0000lp-W8
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 09:32:40 +0000
Received: by mail-ed1-x52b.google.com with SMTP id c35so6942914edf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 02:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rug-nl.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=T3Bg7ih5C34KEB2wMNXCGxLy44OTWnsMFJQewjOKcXI=;
 b=MQZ2Fo+IYHms39+23C+E0yL97mdOVcdqstPdeErrIagK1pgJXgF013q1TlowO8iLtH
 kFO1PgQykQHPnj94nkvNx8fK5V96563EwSEEETk8K7nW0/fq8DYoOqrDBxTX6qN0C/9J
 q5dmZsJEY2jtVnETR3Zu/1qqE+X3r/5lVPA1xJsANcMFZOSjnifuelPCA78OaB/o71Ej
 UxwrU2rk+cvJ2Z9LTDtQC5PeqKMPUr7Q6dtajif40ufUIYC309M/TbIiftoqSBv1JXev
 710k1Hp9x8iGA2W/KsgRBb+qoh7t/12xPvmSSBc2blvSJZ4K4Iv9WboRuyckQfLeR4sH
 +26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=T3Bg7ih5C34KEB2wMNXCGxLy44OTWnsMFJQewjOKcXI=;
 b=NT8VPBt3u6/DBVvha/usMAYJ8bw3McQg+ulD8HTKMhc2JtnO76aV4urR9hGK+oEDL+
 4ABvVuW+a2s4qi2ojyGOWV1qAl9W2k0Zo5v3mRqW2E3TsrGaO9tBWEH4ahViYDzdegUZ
 WV0p0xU48a9eF+Kv21QBzKQQsOiF1t9Zwbq0jR3FRR3HLZ4toKZqzzmrTtrlXfFGJ07a
 aIxGUqbUO8J0WZuu6cKKw1q0IlrB8FILn+zSaY/JBZWesXDMMrZoiVYJzhxcf28Wk4MN
 BSwHpZdA/ZJ0ZWfKRIYpGPcZi2w0YWmiK3ehkxOuDxqH76fvtYvjngzveyr4EsLTKIO4
 ot2A==
X-Gm-Message-State: AOAM531LqXELexOkJhkEst1U/zDXj8PRrmjHgOROgizQe4EYH2DTx6Hk
 830btf25ljHoBbe9791FIinRNmfKyPY=
X-Google-Smtp-Source: ABdhPJybEJe08Q8neS/a6S6adX6wXpiVH4dRWxtMHw20cQtA7r1f0ycuosbxHqUGfpCI5NabsoNWGw==
X-Received: by 2002:a50:fb92:: with SMTP id e18mr8057010edq.135.1591349550645; 
 Fri, 05 Jun 2020 02:32:30 -0700 (PDT)
Received: from ?IPv6:2001:1c01:420a:8c00:acf0:c5c3:cf12:1bb3?
 (2001-1c01-420a-8c00-acf0-c5c3-cf12-1bb3.cable.dynamic.v6.ziggo.nl.
 [2001:1c01:420a:8c00:acf0:c5c3:cf12:1bb3])
 by smtp.gmail.com with ESMTPSA id o13sm3867133ejb.46.2020.06.05.02.32.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 02:32:30 -0700 (PDT)
To: linux-arm-kernel@lists.infradead.org
From: Sietse Achterop <s.achterop@rug.nl>
Subject: How to use FIQ on rpi zero? (second try)
Message-ID: <b7266980-eb8d-6614-7b43-9f2dd794208e@rug.nl>
Date: Fri, 5 Jun 2020 11:32:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_023238_096663_05CCF419 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hello List,

I'm having trouble with using FIQ interrupts with the ARM timer on raspberypi zero, (BCM2835 chip).
I created a kernel module, and the test version of this driver can be found in

   https://github.com/SietseAchterop/Batradio/blob/master/batradio_module/fiqtest_4.c

I made sure that FIQ is not used by USB by adding
    dwc_otg.fiq_fsm_enable=0 dwc_otg.fiq_enable=0 dwc_otg.nak_holdoff=0
to cmdline.txt in /boot

I first tried to use the regular sequence of functions to use.
In the init function:
   claim_fiq, set_fiq_regs, enable_fiq
In the exit function
   disable_fiq, release_fiq.

But I cannot find which iqr number to use, e.g. using irq_of_parse_and_map
I tried several values. 0, 64, but nothing works.
So instead of enable/disable I directly set the timer interrupt via the IRQFIQ register.

This works, a bit.
The fiq_handler only resets the ARM timer, increments a timer and toggles a LED.
I see the timer counting, the fiq being called.
But the rpi fairly quickly crashes.
In the, sometimes, 10 seconds that it runs I see the led flashing very irregular.

What is wrong here?
Has the irregularity something to do with suspend/resume?
Please find below the relevant snippets from the init and exit function of the driver.
And also the fiq_handler.

    Thanks in advance,
        Sietse

====== init_bat
       .....
   // directly set ARM timer registers
   TIMCNTR = 0x0000000;   // stop timer
   TIMLOAD = 100000-1;    // load value
   TIMCINT = 0;           // clear interrupt

   ret = claim_fiq(&bat_fh);
   if (ret) {
     printk("batradio: claim_fiq failed.\n");
     return ret;
   }
   
   set_fiq_handler(&batradio_handler, &batradio_handler_end - &batradio_handler);

   regs.ARM_r8  = (long)gpiospi;
   regs.ARM_r9  = (long)irqtimer;
   regs.ARM_r10 = (long)0;
   set_fiq_regs(&regs);

   TIMCNTR = 0x000000A2;   // start timer with interrupt, 23 bit counter
   IRQFIQ = 0xC0;         // timer interrupt to fiq directly via register
   //enable_fiq(64);
       ....

======  exit_bat
	....
   IRQFIQ  = 0x00;
   TIMCNTR = 0x003E0000;
   //disable_fiq(64);
         ....
	
======  batradio fiq handler
	.text
	.global batradio_handler
	.global batradio_handler_end

batradio_handler:
	stmdb sp!, {r6-r7}
	mov  r6, #0
	str r6, [r9, #0x40C]	// TIMCINT = 0 // clear interrupt

	mov r7, #0x2000		// 1 << CNVST
	add r10, r10, #1
	ands r6, r10, #0x0001	// set toggle speed
	bne off
	str r7, [r8, #40]	// led on
	ldmia sp!, {r6-r7}
	subs pc, lr, #4
off:	str r7, [r8, #28]	// led off
	ldmia sp!, {r6-r7}
	subs pc, lr, #4
batradio_handler_end:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
