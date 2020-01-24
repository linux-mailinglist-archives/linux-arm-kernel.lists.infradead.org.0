Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B83E14799A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iaLEMwCJeveww7w0V6BIRt16EVWXh4eOFDACUeepxrM=; b=TaUlIdp0UlKFD96mW4NTxPLlb
	XVK2O3oCmRTEZtr3/IgrJRqXM0iMRostBTM/3ezoOCpTqo1iUdIFqm+POnQzV45WnFEdnAGPjqhJ3
	Jb9ED32u3VJ93/h1nA/PSdsmeAH38t9W7vc2HMfxKExEhco6V+cKqb6Y13GX8FHETvrZxBbdYa3oA
	UG4GcwN+5fTOqj67tujRproekZNGvRg4Y8bsS331LZG+W9nfuivGsagPB/gxE5/FZwxyuU7hIrhH+
	Viihww9YIarSJnkR500LcADY3Aqw0cXHWrlmonBnierzPfvsrTO0G7cU0MR0HjD0P/5Hv02PT9PC6
	kyHFLVkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuudk-0008IJ-CG; Fri, 24 Jan 2020 08:48:32 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuudZ-0008HE-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:48:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579855699; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=qJBBtjitA++VUyWFDcRJ0WyV5UvQnNj9dtREvFgLIhA=;
 b=Zp/zyRZMS3jGtMi8HEzZEfuOAb47o65sYxnVx73NpW+EUaKV4k7F/HHbrAFWrRw7JerOWQZ1
 FVu3kUms92S8vncgJ5SKeaB7Z6zL85F+PfKhGeggffK2cu9XCV7Ni6CmMrpdg+PbJ2WbiA8Q
 vgRJ8XtRy55+/8NdhnCL5EEGLiY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2aaf4f.7f9dd243dd88-smtp-out-n01;
 Fri, 24 Jan 2020 08:48:15 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1A275C4479F; Fri, 24 Jan 2020 08:48:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 529C6C43383;
 Fri, 24 Jan 2020 08:48:14 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 24 Jan 2020 14:18:14 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] pstore: Fix printing of duplicate boot messages to console
In-Reply-To: <5e29f8df.1c69fb81.fc97b.8df8@mx.google.com>
References: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
 <5e29f8df.1c69fb81.fc97b.8df8@mx.google.com>
Message-ID: <80957b8f069b513fd2b6f031a94a3474@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_004821_866544_6926A835 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-msm@vger.kernel.org, Anton Vorontsov <anton@enomsg.org>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-24 01:19, Stephen Boyd wrote:
> Quoting Sai Prakash Ranjan (2020-01-23 08:00:31)
>> Since commit f92b070f2dc8 ("printk: Do not miss new messages
>> when replaying the log"), CON_PRINTBUFFER flag causes the
>> duplicate boot messages to be printed on the console when
>> PSTORE_CONSOLE and earlycon (boot console) is enabled.
>> Pstore console registers to boot console when earlycon is
>> enabled during pstore_register_console as a part of ramoops
>> initialization in postcore_initcall and the printk core
>> checks for CON_PRINTBUFFER flag and replays the log buffer
>> to registered console (in this case pstore console which
>> just registered to boot console) causing duplicate messages
>> to be printed. Remove the CON_PRINTBUFFER flag from pstore
>> console since pstore is not concerned with the printing of
>> buffer to console but with writing of the buffer to the
>> backend.
>> 
>> Console log with earlycon and pstore console enabled:
>> 
>> [    0.008342] Console: colour dummy device 80x25
>> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
>> ...
>> [    1.244049] hw-breakpoint: found 6 breakpoint and 4 watchpoint 
>> registers.
>> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
>> 
>> Fixes: f92b070f2dc8 ("printk: Do not miss new messages when replaying 
>> the log")
>> Reported-by: Douglas Anderson <dianders@chromium.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
> 
> While I like the idea, it seems that this breaks console-ramoops by
> removing all the text that is printed in the kernel log before this
> console is registered. I reboot and see that
> /sys/fs/pstore/console-ramoops-1 starts like this now:
> 
> 	localhost ~ # cat /sys/fs/pstore/console-ramoops-0
> 	[    0.943472] printk: console [pstore-1] enabled
> 
> Maybe this console can be "special" and not require anything to be
> printed out to visible consoles but still get the entire log contents?
> Or we should just not worry about it.

Thanks for testing this out Stephen, I should have tested this some 
more.
Lets drop this patch.

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
