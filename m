Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897718482A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VhQS6bpkK/lb6Ssr8J1Ks7ivhi9UlNHiH20JLRac4uA=; b=VBWGl0n06yFmUC/3daTt/hnjg
	vktFGdqF5ZG1mJl2XC5y6lMyfrtmRmn4lRbofiDHCsX/j4PdPzxQY7sbNIEgeFsXleuPDlnEHDL9W
	noODiA2zIf/q1aj7W6T8esHesgxzk2HEY6I3Q5/sYt3NkRXUf0rIMBaNkvjzAYx1wuLMrHnUEZTet
	AIpxwtiJqPPe/HmiTHbCWPBwusqtQx9nCvdbWsD/WDpjjF66U+mRtx+yrOS/TdDe0vuI51R8oAW1n
	V6H/TP9yEJT/LfhRMh4p0Dy5zoy6hpeDirA97gQ3dg1aFff3a7zwNdGDUsWyWQG0qDV5End3khpZH
	JYmA6ruIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkP8-0002lG-Tw; Fri, 13 Mar 2020 13:31:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkOu-0002fo-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584106253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Zr+KPeie+yoAZtVSZnlWsX5gt6YKL/Jm3XuRBVo7aJw=;
 b=KtJ2gIu++0XxDEta6W3g/cN179ISFU5H5r3r6+Dhv6XtrV8aRELr57bBIZPpz295s8/k5V
 tXlpf0Ia/qoIHOQsibkLQQuGn3hUUegFHenVM9szmVciZXnbffHTYML8LaYF9C7l/Xo2MC
 +uBUJIQ4+nGm6Ke0VZypCyFClQrZ8ZU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-sv-xomHaN2GPTw3So5jgPg-1; Fri, 13 Mar 2020 09:30:47 -0400
X-MC-Unique: sv-xomHaN2GPTw3So5jgPg-1
Received: by mail-wm1-f70.google.com with SMTP id t2so2935111wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 06:30:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Zr+KPeie+yoAZtVSZnlWsX5gt6YKL/Jm3XuRBVo7aJw=;
 b=ABJlJ/gw1F2OfbcalEAxYc06ASxh/EM6MIBjQgJ30A+OEhlzSYuoRZpJAJqAsA6i8b
 OBAGe8Q/GTeJvB29UfzmCBCHgj1l3DTDfC+EFX0g/w1wcHzeeZ6ehlso7ROVuDiToMhb
 DbGfRndNfy9RQRksR1fLEb+6cBgTpCNgjX/Y4ENeGSizO3AMldYLTM7rmdKVl+zx5P0N
 Svqprawbp+ybaFY4bXJri3TFZ/uFSI9xy/QrNEOqAbix2NUDwlshTZEsbUTjUaV0a7cs
 X92m7oQ+bzz2/a9JR/z2VS/Lc/HShpb/51rdAf1K50iNmimx483xDTp37DfSku0CXvU7
 iDaA==
X-Gm-Message-State: ANhLgQ1grBWZw0SlxDI6BbPiAmpnc6vEKgRIHO7Hpd8GoQUqpQJZZerV
 CMtORqYPsSQmOZg9OdfvCes6WWbcTZF12jQ7bfF+VYwF5QWGtT3NM1luwruSy8aTNDbtTTBQHvy
 auI4u3Uqvsa0JPJEjYbjthg/IPf7TE8mMXDM=
X-Received: by 2002:adf:a2d9:: with SMTP id t25mr17639101wra.414.1584106246000; 
 Fri, 13 Mar 2020 06:30:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsLYemjmrrWZxRzt/EOX2o+jDs1q9FV/8Dx1PNh1Lwu84a2s5vkEYAn4ev4AeQJvdwy8uViKw==
X-Received: by 2002:adf:a2d9:: with SMTP id t25mr17639079wra.414.1584106245699; 
 Fri, 13 Mar 2020 06:30:45 -0700 (PDT)
Received: from ?IPv6:2a01:cb14:58d:8400:ecf6:58e2:9c06:a308?
 ([2a01:cb14:58d:8400:ecf6:58e2:9c06:a308])
 by smtp.gmail.com with ESMTPSA id c72sm16626306wme.35.2020.03.13.06.30.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 06:30:45 -0700 (PDT)
Subject: Re: Current status about arm64 livepatch support
To: Mark Rutland <mark.rutland@arm.com>, Xiao Yang <yangx.jy@cn.fujitsu.com>
References: <5E5F5647.3040705@cn.fujitsu.com> <5E6AEF8B.4090905@cn.fujitsu.com>
 <20200313122244.GI42546@lakrids.cambridge.arm.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <f248adc0-e3c5-0519-3a4e-50935d0d1a76@redhat.com>
Date: Fri, 13 Mar 2020 13:30:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313122244.GI42546@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_063056_555783_91B89579 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: live-patching@vger.kernel.org, Torsten Duwe <duwe@suse.de>,
 Mark Brown <broonie@kernel.org>, Torsten Duwe <duwe@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Cc-ing live-patching mailing list which might also be interested in the 
progress of arm64 support]

On 3/13/20 12:22 PM, Mark Rutland wrote:
> On Fri, Mar 13, 2020 at 10:27:23AM +0800, Xiao Yang wrote:
>> Hi,
>>
>> Ping.
>>
>> Best Regards,
>> Xiao Yang
>>
>> On 2020/3/4 15:18, Xiao Yang wrote:
>>> Hi Torsten,
>>>
>>> Sorry to bother you.
>>>
>>> I focus on arm64 livepatch support recently and saw that you have tried
>>> to implement it by:
>>> -------------------------------------------------------------------------------
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609126.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609124.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2018-October/609125.html
>>> -------------------------------------------------------------------------------
>>>
>>> This patch set seems to be blocked because of some issues, but your
>>> another patch set inlcuding the first one "arm64: implement ftrace with
>>> regs" has been merged into upstream kernel:
>>> -------------------------------------------------------------------------------
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631104.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631107.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631105.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631106.html
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631114.html
>>> --------------------------------------------------------------------------------
>>>
>>> Could you tell me current status about arm64 livepatch support?
>>> For example:
>>> 1) Are you(or someone) still working on arm64 livepatch support?
>>> 2) Are there some unresolved problems about arm64 livepatch support?
>>>      What are they?
>>> 3) Will you send a newer version for arm64 livepatch support recently?
> 
> 1) I beleive a few people are working on portions of this.
> 
> 2) I believe that some work is necessary.
> 
>     Julien Thierry has done some work on objtool, which is necessary to
>     check ensure that sequences (including assembly functions) manipulate
>     the stack, and calls/returns as we expect. Mark Brown has been
>     converting our assembly to use modern annotations which objtool
>     consumes when checking this.
> 

I've recently started working on the arm64 objtool again and saw the 
work to use new annotations by Mark B. which is very helpful, thanks for 
that. I've rebased the objtool work on them and working on solving the 
new/remaining objtool warnings.

I've also reworked the arm64 decoder. I'm not sure yet when I'll be able 
to post a new version but it's coming!

>     There might be additional assembly work necessary for this, depending
>     on any deecisions we make for objtool.
> 
>     For reliable stack tracing we may need to rework some assemvly and/or
>     rework the stack tracing code. That will likely depend on the objtool
>     bits.
> 

There is one thing I'll be introducing in the next arm64 objtool 
patchset which are unwind_hints (inspired from 
arch/x86/include/asm/unhind_hints.h) which are annotation indicating in 
which state we expect the stack to be when entering assembly code or 
fiddling with stack registers in the middle of assembly code.

I haven't finished the work on that yet.

Cheers,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
