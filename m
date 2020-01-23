Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D289D146976
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lCSEVd40yZ+7QsnR0KPfLzmy60Z6P/H0mo5eeiZBIxE=; b=EbMSuMtF17ROJMlZlBDnB4z43
	Woz0IgJj6MHDiZo3WIFOPu4f7L04t9cb7vz3dW6UOB3u36EA12gFrOdrSAkRLTgKUpDLya3vvc1Cg
	lUkfheDLPZZFS42D2IConqQSkoCZxSkJ9CP+5GiFFS0PYO8GkSYhU03MqsDVBAbddPgwHRaBqWIs6
	8cLN2IRzQFFSUCWs9XZWunGbpWxTgyi2igmcYtGg305mDEIQLRXugG2KnLtpwPnLapD7E7BGSt3kw
	zuBZ9Yo0I07kMMhj2jYFwMBQ45UNAHdpQrOZuKXNO2kIb/a7FDs4NIv6e0YNh/mSERasXI0RdTFIy
	j6Nee2LTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucoN-0007NG-D7; Thu, 23 Jan 2020 13:46:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucoB-0007MZ-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579787165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VtZifEes/xPS0tX2V6FJysZYwcxBaACzo8UdIegQS8I=;
 b=SQq4RbV4hCSRrzwwgSrlWgldR15TSA0QknjEFZ3Lo8wC49yUPhfKEmRh41gA1ZSYJ+cIyN
 wYuH+ZiM34kIFvim7cVDGt6etQzPGf9TG2JXEQ+/aegtXU2LQcONndntfIOSDL/E1EKdpe
 KmV2yBpWuLQ6hJH6dF/Zz6DE0fFuURU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-429-0aq6bqIpP5u2tKxT_TtDlg-1; Thu, 23 Jan 2020 08:46:03 -0500
Received: by mail-wm1-f72.google.com with SMTP id o24so612175wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:46:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VtZifEes/xPS0tX2V6FJysZYwcxBaACzo8UdIegQS8I=;
 b=t1+bFuwrAIzv8PLOc5M3BD89SlnHJ9rJFhE5QuLLKNbJ8xFS6V2Jc+aSz2v/S1fU4v
 4+/Wusbmt8tht7AMfz2Qm+SZ2y/KC9mhGdheMO35E2M2q1wnd16+lD8PL9KkTmLh0hCX
 jxGrfVrGx632vHOIQNCOqlXnTebi+YDZX6G7EZkOOf8EmMzR9wzLJKpHWKMEGlAY/Q3W
 axlJg3kUsdLbc8DMfwdvN4t9boMf3rZKBbZMQhm8wtXCa6QOZ4SeHNgcqbprGjGtPVWL
 wjRDwH4zTmMzwYBJ+X0vK0ASWve1SM/rDxyDCOIdTadVbiCFSKNYUiOjLmn+qp7NiufW
 25YQ==
X-Gm-Message-State: APjAAAU81GNhEYGdHMTEX66GX4u9DDOStrDE1EXkvJlJY8YbWFi8O2Bt
 Bb/Mb4wFk8yDzseA+ZrgftsGMMowt7FdYSJmAqbbsCMwDEEDoQQmesAbHj6WOl5PTDqYR/KTw/d
 d+ttx9pqnJE0jiHUucRlo3JGw//XGldnZWPM=
X-Received: by 2002:a1c:9d08:: with SMTP id g8mr3280714wme.141.1579787162466; 
 Thu, 23 Jan 2020 05:46:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqwAtcy2+OVcrCE6/tOfXs/OQbjMwjI+6j59QafTu+Mi1s5U7hfolm3QkEabmC9Ir6oE+U5Etg==
X-Received: by 2002:a1c:9d08:: with SMTP id g8mr3280703wme.141.1579787162301; 
 Thu, 23 Jan 2020 05:46:02 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id f12sm2527135wmj.10.2020.01.23.05.46.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 05:46:01 -0800 (PST)
Subject: Re: [RFC v5 47/57] arm64: assembler: Add macro to annotate asm
 function having non standard stack-frame.
To: Will Deacon <will@kernel.org>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-48-jthierry@redhat.com>
 <20200121103005.GA11154@willie-the-truck>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <66b1746b-c77b-a4d3-846b-cecdc5a15357@redhat.com>
Date: Thu, 23 Jan 2020 13:45:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121103005.GA11154@willie-the-truck>
Content-Language: en-US
X-MC-Unique: 0aq6bqIpP5u2tKxT_TtDlg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054607_773272_71715C91 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 10:30 AM, Will Deacon wrote:
> On Thu, Jan 09, 2020 at 04:02:50PM +0000, Julien Thierry wrote:
>> From: Raphael Gault <raphael.gault@arm.com>
>>
>> Some functions don't have standard stack-frames but are intended
>> this way. In order for objtool to ignore those particular cases
>> we add a macro that enables us to annotate the cases we chose
>> to mark as particular.
>>
>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
>> ---
>>   include/linux/frame.h | 19 ++++++++++++++++++-
>>   1 file changed, 18 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/linux/frame.h b/include/linux/frame.h
>> index 02d3ca2d9598..1e35e58ab259 100644
>> --- a/include/linux/frame.h
>> +++ b/include/linux/frame.h
>> @@ -11,14 +11,31 @@
>>    *
>>    * For more information, see tools/objtool/Documentation/stack-validation.txt.
>>    */
>> +#ifndef __ASSEMBLY__
>>   #define STACK_FRAME_NON_STANDARD(func) \
>>   	static void __used __section(.discard.func_stack_frame_non_standard) \
>>   		*__func_stack_frame_non_standard_##func = func
>> +#else
>> +	/*
>> +	 * This macro is the arm64 assembler equivalent of the
>> +	 * macro STACK_FRAME_NON_STANDARD define at
>> +	 * ~/include/linux/frame.h
>> +	 */
>> +	.macro	asm_stack_frame_non_standard	func
>> +	.pushsection ".discard.func_stack_frame_non_standard"
>> +	.quad	\func
>> +	.popsection
>> +	.endm
>>
>> +#endif /* __ASSEMBLY__ */
>>   #else /* !CONFIG_STACK_VALIDATION */
>>
>> +#ifndef __ASSEMBLY__
>>   #define STACK_FRAME_NON_STANDARD(func)
>> -
>> +#else
>> +	.macro	asm_stack_frame_non_standard	func
>> +	.endm
>> +#endif /* __ASSEMBLY__ */
> 
> Hmm. Given that we're currently going through the exercise of converting
> a bunch of ENTRY/ENDPROC macros to use the new SYM_{CODE,FUNC}_{START,END}
> macros, I would much prefer for this to be a new flavour of those.
> 
> In fact, can you just use SYM_CODE_* for this?
> 

You mean to not introduce the STACK_FRAME_NON_STANDARD() macro and just 
mark the asm callable symbols that don't set up a stackframe as SYM_CODE_* ?

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
