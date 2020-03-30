Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D93197EB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26NH2AAHrfHaQujsTyNXhW0ZQao4xvNogg9tTS3AnUs=; b=IBwb4N7+BCDEhc
	kxtrB6uIvQjlArf4aS/gvluPWB4fhfELVK4eosonRgr7Owfy/UozEb1StgTSBeAyralNDEaB+46tz
	AdCAPNQYUL0zcIDydaodXKGCjWK4UZlqqRKJ/bI54ZPdOERhNMkKlQkt0aF1DsDx4a+H1l6QFZbaa
	DuP4wxpVwF8kqei+Rw+PZAx5lP2Z5WhDDudPv2U25xxWX6rs90pMRXjL+gK/1dpLIUP8Q/4fW7SkP
	cNsNQwIpAnM/g0wLSubqi7hMzKlXtU80xpYkPXJjddC2i0dax0+rgpm+JaObT17cvg8qRVyLVvDOD
	WWMWrAhRwi0V3w6D4aSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvdc-0002qV-Fj; Mon, 30 Mar 2020 14:43:40 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvdO-0002pT-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:43:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id b62so19175135qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 07:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xd6A0GRMLxn1sVuQYx0dEBJI+Khi8SI9odnvPdKtNY=;
 b=FTWBKZRrTY7rIbYSEHIeQyYd/hQy3dy/WbWyJ53h/4ujanI+6I4pNvflj4owXW+N04
 oC6K/P4sqqCc/rguk39sjD6Fe5JiZYEAmdN2yn7pLjnLMJG+7oXjPdhOSoYQ+BvIgGSM
 Q4zAdxPn0RxAhmdoTAD9wcqQpEFkw9pguzEkYkDNcrFIoiY1vaEx+WXbddFH3HBYL/ho
 bTBWu7Pe2G5jWxzJCENHqVLB+mdO/sowRNWHrr1OyMBa3i1p+v2MUTw0gxLC9i1/5x2i
 cH+W4uQdJ2OkSYQdUzFJ4YrM8q1ygoKxpscSWbMkUfCR7uidpixhz5ymo5nDFILSERbJ
 cqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xd6A0GRMLxn1sVuQYx0dEBJI+Khi8SI9odnvPdKtNY=;
 b=efqTtRHCTA6aV5ABReUSX85FfeZb3LxgmBs2UAlRLEu+k3+nU6K+rGbllFLgIFZh7o
 ec6w7Aot3wyFwEyUKV3VeEcIfZTa+knEfzelaNzegCZPItliYnx8XnA25KASZx07IxPR
 y7x2LAMyG0GxbVvH73n2EPa8p5uvHYgpJYnzkrMkUoYfle7X+Eey56yio7A9oHTWnNIh
 mSaPwndTDUsoe4dsNzQK6uKsRvMis/ZWd/vRoZ45WyR5kv/OXTTI458OKqhsxH59Um2c
 Y9uU4UpL0TRkRbiwjED4vA9VL66NcRkj2WBi5VsqZBC3sk9U0xo0Op5K2UNSounWaAFD
 u6+w==
X-Gm-Message-State: ANhLgQ0IQ5P7hj5shNr6fkaLeyJQTTs9xY1f+jOOOLZow+UiqnVRyGs5
 ca7bEgujg2f5/HUaa9T6cOobvTUzLBeuH8hGd+q9+A==
X-Google-Smtp-Source: ADFU+vuymU3G8a3jV7LmEUAfjyIdqXBPWPBMl5AwN06QHiZOh2xfhQmjAC1mgENLp2N8QlZhOnnv8bbgUHqtFsBLWsU=
X-Received: by 2002:a37:a93:: with SMTP id 141mr303468qkk.244.1585579402278;
 Mon, 30 Mar 2020 07:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR06MB45481A385F546CF5B6855C16E5CA0@BL0PR06MB4548.namprd06.prod.outlook.com>
 <d694432d-a3f2-4aa1-b9ee-f99f18ee2d99@www.fastmail.com>
In-Reply-To: <d694432d-a3f2-4aa1-b9ee-f99f18ee2d99@www.fastmail.com>
From: Patrick Venture <venture@google.com>
Date: Mon, 30 Mar 2020 07:43:11 -0700
Message-ID: <CAO=notwsjF3fVhY6gFVqsxTXYs=D7LHoOUDhcHSJLzRrsA7rGw@mail.gmail.com>
Subject: Re: [Bug Report] soc/aspeed: integer error in
 aspeed_p2a_region_acquire
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_074326_968641_4D8ADFCC 
X-CRM114-Status: GOOD (  29.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Changming Liu <liu.changm@northeastern.edu>, Joel Stanley <joel@jms.id.au>,
 "yaohway@gmail.com" <yaohway@gmail.com>, "Lu, Long" <l.lu@northeastern.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 5:37 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hi Changming Liu,
>
> I've added Patrick to the thread, who authored the driver.
>
> On Mon, 30 Mar 2020, at 06:07, Changming Liu wrote:
> > Hi Joel and Andrew,
> >
> > Greetings, I'm a first year PhD student who is interested in the usage
> > of UBSan in the linux kernel, and with some experiments I found that in
> > drivers/soc/aspeed/aspeed-p2a-ctrl.c function
> > aspeed_p2a_region_acquire, there is an unsigned integer error which
> > might cause unexpected behavior.
> >
> > More specifically, the map structure, after the execution of
> > copy_from_user at line 180 in function aspeed_p2a_ioctl, is filled with
> > data from user space.  So the code at line 136 that is
> >
> > end = map->addr + (map->length - 1);
> >
> > the subtraction could underflow when map->length equals zero, also,
> > this sum could overflow. As a consequence, the check at line 149 could
> > be bypassed and the following code could be executed.
> >
> > Although the fact that map->addr is a 64-bit unsigned integer and
> > map->length is 32-bit makes the overflow less likely to happen, it
> > seems doesn't eliminate the possibility entirely. I guess a access_ok
> > could do?

I'll take a look, but certainly adding a 32-bit value to a 64-bit
value has the possibility of overflow given a contrived attack
scenario.

> >
> > Due to the lack of knowledge of the interaction between this module and
> > the user space, I'm not able to assess if this is security-related
> > problem. I'd appreciate it very much to hear your valuable opinion on
> > why this could not cause any trouble if it's indeed the case, this will
> > help me under linux and UBSAN a lot! and I'm more than happy to provide
> > more information if needed.
>
> It's certainly not expected behaviour and should be fixed :) We need to check
> if the `end` calculation overflowed, but not using `access_ok()`, as the value of
> `end` is an address in the physical address space of the SoC.
>
> The current behaviour does have a security impact, though probably not in
> the way you're expecting, as the driver itself is a means to violate the SoC's
> security. The SoC is a BMC and exposes several PCIe devices to its host
> (a VGA graphics device and a "BMC" device). Both devices expose
> functionality that allows the host to perform arbitrary reads and writes to the
> BMC's physical address space _if_ the BMC has allowed it to do so. This
> driver controls whether the capability is exposed to the host (disabling
> denies the read capability) and what regions of the SoC's physical address
> space can be written. Regions are roughly broken up into memory-mapped
> flash, BMC MMIO, BMC RAM and BMC LPC host controller.
>
> Practically, enabling any region for write is to some degree unsafe: for instance
> exposing the BMC's RAM to writes doesn't in any way restrict what areas of RAM
> can be written, allowing e.g. arbitrary code injection into the kernel or running
> processes on the BMC. Enabling writes to the BMC MMIO region allows arbitrary
> control of the BMC and its peripherals without having to gain code-execution
> (including escalating by removing write protection for other regions).
>
> The driver exists to assist a trusted firmware update process used on some
> platforms where the host can request (e.g. via IPMI) that BMC RAM be made
> writable, then drop its firmware update payload into a predetermined location
> in physical memory, and finally complete the transfer by requesting that RAM
> region be returned to at least read-only mode.
>
> To unlock unexpected regions of the BMC's address space in this scenario the
> host would also have to exploit IPMI to craft an ioctl() payload with the properties
> to trigger the overflow. Given that it already has complete write access to RAM it
> may be easier to just exploit the BMC kernel directly rather than chain an exploit
> through at least one other userspace process.
>
> Anyway, enough background :) Thanks for the bug report and for analyzing the
> driver. Hopefully Patrick can take a look and cook up a fix.

Yeah, this driver was deliberately written to enable accessing the
memory regions controlled by the BMC, opening a security hole in the
BMC.  It's part of the design.

>
> Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
