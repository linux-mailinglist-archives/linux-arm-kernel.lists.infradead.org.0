Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30BA146C5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nEdVKUzphVJKgAw8Sgi9QcpmPGNGMgdw03dmyvdhKtE=; b=FrU76F2O0lm82hfO0dh4Mk0lI
	WwprGkF7J6AssU2FzJzR0P9wECbH7bcj3AVAcpGf2Eij4+hgJmXHmwAXeTR+yRoWGI2qPUzu8Xeg6
	dsISzjwwb0rOR3dHKYDls2HO9lgW4svSUXDAJYLoicElvXeWOgziUGPUnESyaoWZZhshLbIUHN6i8
	AjOKdmiZCCG42fy8UB0OmjifHQrzTV35/0gHCU367Ogu+9FifYJ5pTRrgINv+UMwJK9teNS5Uerno
	kj76eYGCBfE/6FnY2gXdnOaey+YRe8VScgTINxrx97Up3v0CFz04GRPwUtKzj2eFPsX0KlAQO6beE
	KucNjfR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iue97-0001dW-Ng; Thu, 23 Jan 2020 15:11:49 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iue8n-0001cl-Tv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579792287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G0UV4KnB1lt7EMsASswd8dWEm02CKeOR2gA8iM2LVcI=;
 b=bsIpyYojRfNL46FqCcY4jTLn3wiRbKnKf07KWhyuwdTNyVpNgwOG7cl3rlVMTKtLiIaHo8
 lsdUwi1Jlu+lU6oAhZnyi2QyT/8v79jMMQ94K8afDq+PyegMgU9Laqot19mnoiuE77udr8
 0407mud70ubO+ZLIH7F2W/CAtDGXCm0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-c4qOwguQPKWx79MNlmKy7w-1; Thu, 23 Jan 2020 10:11:26 -0500
Received: by mail-wr1-f70.google.com with SMTP id r2so1916073wrp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 07:11:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G0UV4KnB1lt7EMsASswd8dWEm02CKeOR2gA8iM2LVcI=;
 b=qrhPZRZd0alMpcORAFskYb9doQv/lNKiOPejvqHDE08P3a3KrMoEu6+dzusq+kD4qH
 E7DozUUW4FXlguxYqjaZXcDbPmX+wtjWk3QcfBfNImVDloJ5vsJeekFBCCfrFFndX02H
 Z6vQdycwH5M/9XeQyPEoxt3yUjkjiNzx2xPyJejsiRf0Qf3SSTXRFobT9wvDi5Bm+DX6
 iSy8x9y/eLUND8jXWAJgoYYmihwPG8EyOst2Z6481SbstJ+2s7FxninmO908efaQzqWY
 fQxwmvTKWhkumOxZxDEqcH1oc1st66jyJzsaaJcIC6akKWdMF+KlepqBfoNpESpW9s3B
 aMJQ==
X-Gm-Message-State: APjAAAX1QJPNPRNbS/8bsDsm9A2bwLg0kYIVOuOXVHnsUFkz1OKo3jCQ
 pTEpWqabeCAVNzwkkmc9wUire7djf6LnS2+ahEfC4dlOe2kYyMl8vNWSUA9wN/EP3iF75bso5p7
 ouLO2xUuqeiWwfkyP+0yt1vrUWuW0TTGq0jY=
X-Received: by 2002:a05:600c:2059:: with SMTP id
 p25mr4912887wmg.161.1579792282960; 
 Thu, 23 Jan 2020 07:11:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqyuG8AqgpsWohRveZfsCX1EDtHU8w7RprAsRh0cBlav4qVZZ5HalRTUC8mBUSmFThwXkidyhg==
X-Received: by 2002:a05:600c:2059:: with SMTP id
 p25mr4912872wmg.161.1579792282748; 
 Thu, 23 Jan 2020 07:11:22 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id k16sm3720036wru.0.2020.01.23.07.11.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 07:11:22 -0800 (PST)
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Will Deacon <will@kernel.org>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200121103025.GC11154@willie-the-truck>
 <400d402d-c964-6f0c-2954-6f6afcb94635@redhat.com>
 <20200123143503.GA19649@willie-the-truck>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <ad6f3a12-60b9-f2d8-b0c9-0de59c0e0c2c@redhat.com>
Date: Thu, 23 Jan 2020 15:11:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200123143503.GA19649@willie-the-truck>
Content-Language: en-US
X-MC-Unique: c4qOwguQPKWx79MNlmKy7w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_071130_047634_11173833 
X-CRM114-Status: GOOD (  17.77  )
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
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/23/20 2:35 PM, Will Deacon wrote:
> On Thu, Jan 23, 2020 at 01:52:17PM +0000, Julien Thierry wrote:
>>
>>
>> On 1/21/20 10:30 AM, Will Deacon wrote:
>>> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
>>>> This patch series is the continuation of Raphael's work [1]. All the
>>>> patches can be retrieved from:
>>>> git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
>>>
>>> [...]
>>>
>>>>     objtool: arm64: Decode unknown instructions
>>>>     objtool: arm64: Decode simple data processing instructions
>>>>     objtool: arm64: Decode add/sub immediate instructions
>>>>     objtool: arm64: Decode logical data processing instructions
>>>>     objtool: arm64: Decode system instructions not affecting the flow
>>>>     objtool: arm64: Decode calls to higher EL
>>>>     objtool: arm64: Decode brk instruction
>>>>     objtool: arm64: Decode instruction triggering context switch
>>>>     objtool: arm64: Decode branch instructions with PC relative immediates
>>>>     objtool: arm64: Decode branch to register instruction
>>>>     objtool: arm64: Decode basic load/stores
>>>>     objtool: arm64: Decode load/store with register offset
>>>>     objtool: arm64: Decode load/store register pair instructions
>>>>     objtool: arm64: Decode FP/SIMD load/store instructions
>>>>     objtool: arm64: Decode load/store exclusive
>>>>     objtool: arm64: Decode atomic load/store
>>>>     objtool: arm64: Decode pointer auth load instructions
>>>>     objtool: arm64: Decode load acquire/store release
>>>>     objtool: arm64: Decode load/store with memory tag
>>>>     objtool: arm64: Decode load literal
>>>>     objtool: arm64: Decode register data processing instructions
>>>>     objtool: arm64: Decode FP/SIMD data processing instructions
>>>>     objtool: arm64: Decode SVE instructions
>>>
>>> That's a lot of decoding logic which we already have in
>>> arch/arm64/{kernel/insn.c,include/asm/insn.h}. I'd prefer to see this stuff
>>> reused or generated from a single source, since it's really easy to get it
>>> wrong, has a tendency to bitrot and is nasty to debug.
>>>
>>
>> The thing is that the code in those files is mostly encoding logic
>> (motivated by BPF) rather than decoding (except for the instruction that
>> might be trapped, but these rarely overlap with instructions that objtools
>> cares about). I agree that ideally the decoding/encoding should be under
>> arch/arm64/lib, I was just a bit weary introducing a lot of decoding code
>> under arch/arm64 that wouldn't even be used in kernel code.
> 
> Hmm, but kprobes decodes instructions somehow :p
> 
> Not saying you have to refactor everything, but I'd hope you could reuse
> some of the aarch64_insn_is* and aarch64_insn_extract* functions at least.
> 

Oh, you're right, there seem to be more than what I remembered. There is 
probably a bunch of things I can reuse (and I'll feel more at ease with 
that rather than introducing a whole bunch of new code :D ).

Thanks,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
