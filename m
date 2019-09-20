Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F44B8A25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 06:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohkGciVzCwLAHS/Ve0cA3mn93QidDxEQhkmoYyL51gM=; b=Sjlxf5epjyGVLW
	TxeZuhPb/nLLCYulcjlkRxQsiK00dKtO3hU/LuqWNDq+OlQjAgeell2MW1RFQuF5FbcMLhQnyQY7C
	d8TglcGA+qqICqw6oWw/JKc/uEFpX1VKTT8dMCRf48X9qceFZ4iq4AOVMfu7qnc51AgUglAlLftUP
	jKIKN5+i/vndCCxkn+NOUaK6UBJdapXWu4JiFyUgDtNwnCcvDSxMyqlly5Mp0VtRpoCjj+/KnyfG8
	SYj9+XETj28i6OWqDkOc9o9AaeLvILmVEt+rtSHYoPt997/+y+erlkL8e+xQpRG8NhyioHvfGuPde
	R5AhOi2XX9ZnSs6mAtnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBAUW-00069I-Dj; Fri, 20 Sep 2019 04:25:56 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBAU5-00068T-GD
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 04:25:31 +0000
Received: by mail-ed1-x541.google.com with SMTP id h2so5117612edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 21:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=c5bLQ44DHFFsF9a/l+fvIthJAUI4IpWyFZ6HUIWlQ5g=;
 b=PE6/GJMxGendc9vmFm2rfrsD1RIU1p4ZoNxCgjg1+1T2bds+bx+vnQeV2BV8bB1Ezj
 sS6yqD6MhOkuRGs9TDgbrddAf4b3al3NSj/cEL2PyepIUPXfU2b8rZWTIOc3I6UxG9k3
 sfD1NsHwjuMO87J1TnlP9dcEOSiE/yFZULAJh2FulfylSaBCBIqKJediE7SLng72ppBR
 CgMFKUmaXFG0CHp5WO0YxYk+xp5RKbuW/gO4GnVQc70zKkheyQLR9b+ChZQGjYdzNtOO
 949dxMk+a+BRPrezoJOCm0oIXUJSHsGzLrt167Bnd6sphlSkhJPBDkTiojgaujym+fD3
 slWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c5bLQ44DHFFsF9a/l+fvIthJAUI4IpWyFZ6HUIWlQ5g=;
 b=ICt966q8gcNCboDF4kfOThjSvRkPPqyNAPOwt00SB1C8VDq4K/DSrnx+kOBh03YvuN
 Flpmf3HIH9D2+0bfnSGj1jkXnP3/Wcf5ByYRrbeE/ugueiSHRoSoaGLHBcspZeFrflRu
 IwMJTGzlhXiD/R/sjkzwx6ILJ8tIrZgy7V+FHuyv5V3xtPQi5lN7kpk1/WL28SYWwkHh
 Y1wvrC4igoiXuqyVuEOcVMQqY70E7USNi94RkKwh9NPTwN2NStuQ44tmbJB5FK1aKmo9
 aHF0ET4Cy93vEadPgbmQ7eaZXLT+CmwKyBArHTkcEOewud4Udm3fMjwPVGrTKb0bKNsa
 Dmvg==
X-Gm-Message-State: APjAAAWIH9I80/O10gSfDB9f2vC1XcZfKOxsoycggkXUyh5zklhP9Osi
 7JiUfJ/QGZNButaw4ayzug==
X-Google-Smtp-Source: APXvYqyDgdtkl74lEOF8tJe9DMwo1fx58ulo7VOciTOb+B6z43KJN8vrWu6lIVkGCqCBGzLCSCGWEw==
X-Received: by 2002:a17:907:20c4:: with SMTP id
 qq4mr17587171ejb.161.1568953525081; 
 Thu, 19 Sep 2019 21:25:25 -0700 (PDT)
Received: from localhost (tor2.anonymizer.ccc.de. [217.115.10.132])
 by smtp.gmail.com with ESMTPSA id qx25sm92713ejb.61.2019.09.19.21.25.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 21:25:24 -0700 (PDT)
Date: Fri, 20 Sep 2019 14:25:01 +1000
From: Jookia <166291@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [breakage] panic() does not halt arm64 systems under certain
 conditions
Message-ID: <20190920042501.GA5516@novena-choice-citizen-recovery.gateway>
References: <BX1W47JXPMR8.58IYW53H6M5N@dragonstone>
 <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917104518.ovg6ivadyst7h76o@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_212529_579417_323B2CC1 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (166291[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (166291[at]gmail.com)
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, mingo@redhat.com, bp@alien8.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 11:45:19AM +0100, Will Deacon wrote:
> Hi,
> 
> [Expanding CC list; original message is here:
>  https://lore.kernel.org/linux-arm-kernel/BX1W47JXPMR8.58IYW53H6M5N@dragonstone/]
> 
> On Mon, Sep 16, 2019 at 09:35:36PM -0400, Xogium wrote:
> > On arm64 in some situations userspace will continue running even after a
> > panic. This means any userspace watchdog daemon will continue pinging,
> > that service managers will keep running and displaying messages in certain
> > cases, and that it is possible to enter via ssh in the now unstable system
> > and to do almost anything except reboot/power off and etc. If
> > CONFIG_PREEMPT=n is set in the kernel's configuration, the issue is fixed.
> > I have reproduced the very same behavior with linux 4.19, 5.2 and 5.3. On
> > x86/x86_64 the issue does not seem to be present at all.
> 
> I've managed to reproduce this under both 32-bit and 64-bit ARM kernels.
> The issue is that the infinite loop at the end of panic() can run with
> preemption enabled (particularly when invoking by echoing 'c' to
> /proc/sysrq-trigger), so we end up rescheduling user tasks. On x86, this
> doesn't happen because smp_send_stop() disables the local APIC in
> native_stop_other_cpus() and so interrupts are effectively masked while
> spinning.
> 
> A straightforward fix is to disable preemption explicitly on the panic()
> path (diff below), but I've expanded the cc list to see both what others
> think, but also in case smp_send_stop() is supposed to have the side-effect
> of disabling interrupt delivery for the local CPU.
> 
> Will
> 
> --->8
> 
> diff --git a/kernel/panic.c b/kernel/panic.c
> index 057540b6eee9..02d0de31c42d 100644
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -179,6 +179,7 @@ void panic(const char *fmt, ...)
> 	 * after setting panic_cpu) from invoking panic() again.
> 	 */
> 	local_irq_disable();
> +	preempt_disable_notrace();
>  
> 	/*
> 	 * It's possible to come here directly from a panic-assertion and
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

When you run with panic=... it will send you to a loop earlier in the
panic code before local_irq_disable() is hit, working around the bug.
A patch like this would make the behaviour the same:

diff --git a/kernel/panic.c b/kernel/panic.c
index 4d9f55bf7d38..92abbb5f8d38 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -331,7 +331,6 @@ void panic(const char *fmt, ...)

        /* Do not scroll important messages printed above */
        suppress_printk = 1;
-       local_irq_enable();
        for (i = 0; ; i += PANIC_TIMER_STEP) {
                touch_softlockup_watchdog();
                if (i >= i_next) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
