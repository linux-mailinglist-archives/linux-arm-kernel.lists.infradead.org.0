Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9356E146A02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:56:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iuUxw0EiVTSzRLu+S/DW9wXv8fZuDirYOXvkQuzk29k=; b=LXGTOW843Dz96G04+9ZmzeNSD
	y950AOAscorfzKFLD7JYdLefboUE5Mglz+gyZZi0OokZIbkdHgK/MxlPVKaF9ZPoQ3ql4lMp64iRb
	ag4ogqzKfJ1E0EcnLesaVWg+bkC9Zfog551PxfSHJlwP7DJMrIrV+/YQmG+IWzbIjdqVrMg84PXGR
	Mcm2dBKt48XlFiSDnrHGYtistcpf3DeR6dfHm5GQY5w088A3fRbSF7Re6IHxzR2kXRDCX6IDXWnI2
	NhLsEjlSK9oxucUV+c4HONHHe09j3CQTugR3gRIYxASK6+LrQKOBfqf+PCJjTnfKPmqKwjyXd8JKX
	mg449e+3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucye-00049y-Rk; Thu, 23 Jan 2020 13:56:56 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucyU-000406-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579787805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mHr+dKKy6YFY8CdkcCg0p7DmA174EWGz4sMjLUwEXGU=;
 b=RyUGKTMcPBvTu7s8pxcjZeUwbdHPKclHkkTNLPW1wH/nELK4NwWlZmPai2zIHAoCzhBQS4
 K/QdSDiUcvyw9y/huVdeGROB2x9sMvUWJfQz8Yp3fgyAKpDP3NAxCo10ZFjiBN9R8VJ2KX
 QOMbiM6S93yYu6rubmUjYtU7XIY8V64=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-x3AxcxloPy6rbjKeLV0xZA-1; Thu, 23 Jan 2020 08:56:43 -0500
Received: by mail-wm1-f71.google.com with SMTP id e12so761202wma.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:56:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mHr+dKKy6YFY8CdkcCg0p7DmA174EWGz4sMjLUwEXGU=;
 b=T5osREPvAgtuUGcv2Qu7J9h4TZJ+gSWHqr9kt9NYxBWkzyVOP4yJt37TYK63OBw6M2
 FnVs9bE/+N5Evpd+XZQPChVSOKmC7TXpAoyK82O5dxFE2y/gipIPElzEL7dzgH0nx1xw
 zJHiZp+iOhmOU8L4ooVtjqYio34yxNatmsU++BGKjCn6FO68yc8iFeXj8ryE9VTwlPhP
 tcYNhIGkr2T6DnHf+JQuZ64lTyJTiV7vMsaRxzJuH0z/gHj0nsMykBlA32PgqutL3AY2
 OPi5s1E8lSPMYDJntbPZDMvx4oSzBvv7bFtYwEyEigiCe0C53MZIRkFro+B0482VPpxT
 lFYA==
X-Gm-Message-State: APjAAAXGCZTPuONL1N0sDCvba0nBgkJ5i7yDkhfBhGmZjRYRNZgDL4gB
 6yy9f7evDUnlcoBCrSnGP2nPtHI1uqDJ47qlSLlHo8rm4r4LwIOKqx3minZq/BNf1bEGJ6uATJM
 sZarJ1lO9dErF4RaBhHajS7ShVzxg4P9I+os=
X-Received: by 2002:a5d:4805:: with SMTP id l5mr17456357wrq.3.1579787802226;
 Thu, 23 Jan 2020 05:56:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZC7YBx84D1F36G8gvu21bmP7ysQY2lzIRWZ71Z2AzAlJvArAH8hVVcrlvIvltJI2Auz8fqA==
X-Received: by 2002:a5d:4805:: with SMTP id l5mr17456334wrq.3.1579787801943;
 Thu, 23 Jan 2020 05:56:41 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id l17sm3148064wro.77.2020.01.23.05.56.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 05:56:40 -0800 (PST)
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200120150711.GD14897@hirez.programming.kicks-ass.net>
 <20200121175001.5jltrjuxrjklq5o2@treble>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <ec4dc8a9-da6e-7269-dbda-3721b2dc50fd@redhat.com>
Date: Thu, 23 Jan 2020 13:56:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121175001.5jltrjuxrjklq5o2@treble>
Content-Language: en-US
X-MC-Unique: x3AxcxloPy6rbjKeLV0xZA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_055646_754095_530A60C4 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, raphael.gault@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/21/20 5:50 PM, Josh Poimboeuf wrote:
> On Mon, Jan 20, 2020 at 04:07:11PM +0100, Peter Zijlstra wrote:
>> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
>>> In the mean time, any feedback on the current state is appreciated.
>>>
>>> * Patches 1 to 18 adapts the current objtool code to make it easier to
>>>    support new architectures.
>>
>> In the interrest of moving things along; I've looked through these
>> and 1-14,16 look good to me, 17,18 hurt my brain.
>>
>> Josh, what say you?
> 
> Agreed.
> 
> Julien, thanks a lot for splitting these up nicely.  If you post 1-14
> (updated based on the recent comments), we can look at merging those
> sooner.
> 

Sure, I'll repost the refactoring patches separately once I've updated them.

> 15-18 also hurt my brain -- probably a symptom of the existing fragile
> mess -- so I'll need to spend more time staring at them.
> 

Yes, the whole state update code hurt quite a lot as well. It took me a 
while to convince myself that my changes felt correct (to me at least, 
it might be that I got things wrong :) ).

Thanks,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
