Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240D2F1B59
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITlmv9TlvA8j+vJQMPcQjJ+tgQ8RB5iAJQnXUg48R7A=; b=CnB++K909MzTtI
	7GLQd4F+Ga8TP/4daOwz+LC74v+xoggL0zdyg4Yog1V34irmzgPtz86c1kNGHYUYspI2nFQboe6+f
	s1TOKQD//RVdjS881k485l3guYRAzM4GjZ/lih9QEdgiyE1OzkqM3p3N7i9RQK895NhX3cVhlK0IE
	A5yT64SZW0fBsOLVqPol6zO81Yt1/9XplIIrnpDEjp4tue+KLdVAq+CV5KO9PRgd1zxB8rN+KXgLP
	2uelBP3qmhbBqKPT7WsC8LUDULO9I2nMW/CSPqmqcxMgK0GqSLiL6EA0MoF2uEs79HC9fXS/LxuoU
	KA6Qj8LLPD7d64CtqITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOFB-0007Jk-SQ; Wed, 06 Nov 2019 16:33:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOED-0006YT-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:32:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id q16so11680110pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 08:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YDXR99N/YzQ/pZqCEI29huJxwejGrYigJcQpVl3mLN0=;
 b=RDjOLla7UpdFA1uZVV/RjkQ6SwfLGswLg8cNYaDk16wAy2jKbHaMgvrGMS8PErrxrW
 GFDxosOG5HVnj4O+ADH20k7STXbGnrgA7hy1HmziitFTqXDWjWdcbKeriEp4JFFQeLZa
 kDyPWLHToo27tjU2eNGO/Vllhc2AHU6Bdq/yxqnkKCoOCkUQH6vfLsUVOoMGt/A/2npb
 gnyLGHxmd5oYviEmAREMcaw4zruZmAxc07zAPbTcHGNNXl8MvZLk3Fl2rWYvWkwoyDCE
 1xPysUBCTD+eYaEZERw3pv6bKvd/HaBKrT6uITNWO/cM57G9mxGX2doCTFJq47dDsnYs
 p8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YDXR99N/YzQ/pZqCEI29huJxwejGrYigJcQpVl3mLN0=;
 b=Cy6RXG0D0uNN6jhqVzKIr/qiNHgt7e94wpXro8efnWYs4PveWkLHPeHn9nf10svQmg
 I4U0qX1v60z0t4NcQ+5xfdH8hh422w6qL0OBDpQ56Hx75YJSwVmb9v3s7Hl/bMalJmSP
 jWuwHFMU3yfyjwk3n/n1PinJhdnQkOGegcu1q1NerXyp5gnkYDYQSU8LwqVJzcxDnpQJ
 8Y4ZZWZovQ61tSDzxErxGsg/ZXTN90lyd/wbqss3HsrDyN1wIaihcLYzs9h06+EdItyT
 wQ/H3hdoU/cmWDetyfGvAKp5tVJhfD+X1lbQcauLKckgiepUTHv1sliTpOCXV4X85V9l
 btpg==
X-Gm-Message-State: APjAAAWa4gQ18M5AW/s3PdFHg4AeRDJ5Y6OFbBSq4vZ8o5gbor4sPFD9
 /O//1+2TOJfj2nYh3dDbhrDYPw==
X-Google-Smtp-Source: APXvYqzGnty5jGHPlGvF4cPMglmlPHfo5F67afnyOnzik5KBFCH43E7LJ5r8u2evmErEOI3pDLHStg==
X-Received: by 2002:a17:902:8486:: with SMTP id
 c6mr274839plo.137.1573057934474; 
 Wed, 06 Nov 2019 08:32:14 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id m12sm2974603pjk.13.2019.11.06.08.32.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:32:13 -0800 (PST)
Subject: Re: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-6-dima@arista.com>
 <20191106091258.GS25745@shell.armlinux.org.uk>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <cd6c5df5-effd-a1f9-8a25-9f5aac3a92f9@arista.com>
Date: Wed, 6 Nov 2019 16:32:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106091258.GS25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_083217_096795_FAA74A00 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, clang-built-linux@googlegroups.com,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/6/19 9:12 AM, Russell King - ARM Linux admin wrote:
> On Wed, Nov 06, 2019 at 03:04:56AM +0000, Dmitry Safonov wrote:
>> diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
>> index 7c3f32b26585..69e35462c9e9 100644
>> --- a/arch/arm/kernel/traps.c
>> +++ b/arch/arm/kernel/traps.c
>> @@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
>>  #ifdef CONFIG_ARM_UNWIND
>>  static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>>  {
>> -	unwind_backtrace(regs, tsk);
>> +	unwind_backtrace(regs, tsk, KERN_DEBUG);
> 
> Why demote this to debug level?  This is used as part of the kernel
> panic message, surely we don't want this at debug level?  What about
> the non-unwind version?

Right, I wanted to keep the old loglevel in this patch - KERN_DEFAULT.
But got confused with log level in unwind_backtrace().
Will fix.

[..]
>> diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
>> index 0a65005e10f0..caaae1b6f721 100644
>> --- a/arch/arm/kernel/unwind.c
>> +++ b/arch/arm/kernel/unwind.c
>> @@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
>>  	return URC_OK;
>>  }
>>  
>> -void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>> +void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
>> +		      const char *loglvl)
>>  {
>>  	struct stackframe frame;
>>  
>> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
>> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
> 
> Clearly, this isn't supposed to be part of the normal backtrace output...

Yes, sorry it's debug for a backtrace - will return pr_debug() for the
message.

Thanks,
          Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
