Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2446146735
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ocwLBI9dAh+F+WkyjzNyBD6FPhQur0PPp+7refzoqUU=; b=KeSLJTAerNa9Nt4QOM7OnS0BG
	4bt7NsAm8N1QFyfhcRN4d0VBkEbCxbbozWFSXTDkDut+6xoq+2NpxGs+KJkCSKxpGtQIvaKEAHjD8
	LQGpGPk8LbHpEZ/gz0kExFgvABd5iQm9RxkxFpXqFawU7GTdQB4/ir0TN16exUOKLOXOBvY/rxvP2
	sNRkcO+2a2f5FGXpbRfyRBPqNz2RHeFyXrbLK2ECe+fbQbC2ICYCaD2qQGKsvr/DtnTQE+54FmTof
	WP0n/Urf9a433HIZ3aof9MAumMZCig/t6ctoE8x/vlWYF5kOWfupGTHJ2gTFwir2CRNPeYhfOQy6X
	LiZ+BoEJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuayf-0004SM-2X; Thu, 23 Jan 2020 11:48:49 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuavq-00028p-30
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579779952;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OrVyjo0oqyywlytVkCXxXhcblo/6CF8e8F0Ha+//2Ek=;
 b=jTwfxExrq9XdDLrl7eNlWk0frfwupPj/VzNCzAS2Hli/uXW/FlWgizF8peiQ9LLiJ6ojUJ
 XOqMXmlynBpWe+VSJWY/aMU7KlSibMDVWII5JWwnrhb5SixB8t1wzoON0plEt3BmGh1tGt
 CL45IcM0YDmvxzXLZ/OHB8Q9TmOdiWQ=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-Aq8JbntwNVqB2GFG70MKZA-1; Thu, 23 Jan 2020 06:45:51 -0500
Received: by mail-wm1-f71.google.com with SMTP id y125so616259wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 03:45:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OrVyjo0oqyywlytVkCXxXhcblo/6CF8e8F0Ha+//2Ek=;
 b=Sr861W7JCV56P/tux2t6g4iygeFvzc7++uhu3T5vWObhZHwUOqzJF4jJxVyr9lKLRF
 WMZpqmLQw5M7gUKWejSrkz0fh6tlTNAURAo2y3xQMvoFP3RgpjU+kPaqmH1/Kv7Ix4bl
 QJlcZYgGiZH0j6T5NCgRMs7BfERdpisg/ISMb/8SVVFR3Dck69jxoWo19mdneiPzOfcB
 gn4SFq5GJPEwZrUxwlUJIvxC8gqUrvFkWU5k/0+ysyjCKO+sDWfIyrEq5gPVJok5JUhN
 o/1K2S2K+SA/L1Y7otLxV20/hVsjcbrQC0wwuOTYltBO9AvjBvtV2HLpxjXpX3bpg8Ca
 uAZA==
X-Gm-Message-State: APjAAAWkvd5DZJXqEnH+gq2O2edVQNCJsN67zxLvhqGD86Kp7bE45bjA
 PXgN4sUzTm6PKCF2K/2xW6ohsNHF/ZmlqUXYfMhSyFSb6VmkB+mw0rIg8T8c3yDBu2z4hMQtSP4
 pEs4XFcSf07xESaDAhx1r8rS3Derknzuiwt4=
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr3757819wmc.36.1579779949712; 
 Thu, 23 Jan 2020 03:45:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqy2/RO25x3GfNc/hah6VfoFxhZcx6jhmB2U+pGiK4uHFhpzGYFNDnmyuXKIw0WXa3XSq+SyYA==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr3757800wmc.36.1579779949529; 
 Thu, 23 Jan 2020 03:45:49 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id x11sm2750016wre.68.2020.01.23.03.45.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 03:45:49 -0800 (PST)
Subject: Re: [RFC v5 08/57] objtool: Make ORC support optional
To: Josh Poimboeuf <jpoimboe@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-9-jthierry@redhat.com>
 <20200121163747.kbasjd2wn4q44vcf@treble>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <7d1df0d8-87ee-01c1-1fdb-7d25e1dc4f5b@redhat.com>
Date: Thu, 23 Jan 2020 11:45:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121163747.kbasjd2wn4q44vcf@treble>
Content-Language: en-US
X-MC-Unique: Aq8JbntwNVqB2GFG70MKZA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034554_230437_E51ECB5B 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 raphael.gault@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 4:37 PM, Josh Poimboeuf wrote:
> On Thu, Jan 09, 2020 at 04:02:11PM +0000, Julien Thierry wrote:
>> diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
>> index d2a19b0bc05a..24d653e0b6ec 100644
>> --- a/tools/objtool/Makefile
>> +++ b/tools/objtool/Makefile
>> @@ -6,6 +6,10 @@ ifeq ($(ARCH),x86_64)
>>   ARCH := x86
>>   endif
>>   
>> +ifeq ($(ARCH),x86)
>> +OBJTOOL_ORC := y
>> +endif
> 
> I think this should check SRCARCH instead, a la:
> 
>    https://lkml.kernel.org/r/d5d11370ae116df6c653493acd300ec3d7f5e925.1579543924.git.jpoimboe@redhat.com
> 

Yes, thanks for pointing it out.

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
