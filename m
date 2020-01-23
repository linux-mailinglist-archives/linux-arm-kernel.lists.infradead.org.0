Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5736A1469D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XMajKQwq3S3f2VQOmWJSF8VBd9TT6eM6fLUsIPVVt1s=; b=W6kYsrO9mWHh642nsF4HkuDxi
	dEo5rf5pHr4HWNC1BqP7FLT9lNnDx/G01Iqz2U4Caeetv9S1fGzHI1keHx8JVYHrKvIlr/6y/PW/w
	pga5PYr/LcnhqG6clHVybAjOz54PT1zARttqWXsLkTPGwktwMuyHKavjAE5zdf+tMklDsMH/hojVd
	kqEx3rmTqNxhrVyzMCqq9JAd1FfJEfUKnaqPvWxb1bW02oZNGB0pKtB/Yw5dTd+6UYAsjlHWleUQ5
	6y2cf//qEQpiKVpYw08tuGd4a961xRmQSR5xlHNAEEp+uedYZ+vQh7r/V+4TKs7+huzrDPRlkbJEs
	zAjt4D3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucuV-0001gQ-BW; Thu, 23 Jan 2020 13:52:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucuG-0001g3-Ui
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579787543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FzK0nabFcVqCxu+Dc6EYvtOWvTDLB9MHtbAW7toY8PA=;
 b=Huj2ztxM6yIVBJtnYEPw4PqLO0PLaaEoFSG0ZFOmKAOh/qa7S8s//R+M2OsWSi+8d0+80x
 JbNgHfJwHk4GMo2nBV0r1anP6bdFB9d01OXh4oS1okErhph26FzA0uCqBrCB9izrMrfA6z
 sqvSSSXiOJDe0jni6ncupUYn2nw3zMs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-hXc4Y_WZPQCnNW7F7cjsaA-1; Thu, 23 Jan 2020 08:52:22 -0500
Received: by mail-wm1-f69.google.com with SMTP id b133so1061049wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:52:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FzK0nabFcVqCxu+Dc6EYvtOWvTDLB9MHtbAW7toY8PA=;
 b=NZsTELP0WmjiHGpaf3uRpwVB4GOlVDcEznjDSTdPzMgP8Q+eYOhbjNxZ7uC9l/5oE5
 Z/W4tDlObvQCx2Fx5njsZS17QFCtvfC8BW8kUOX+ZJKtEduiGE4Z87DkKr7iB8akVW1F
 fmxgHm6J1lERBa2avg61iX5DbJ8XHS5+kUiRnmPlHR8wsPQQmvtioCjzsagstC/7eTip
 aAoJbcNYN/rAYyQZphzxpQZUteGO2b+14DTsFYLVhWE90vuPyrvtaNjg9z1bhm+Au9Yv
 UJO4JiZB05aa9dju+Y7nX476ayMyUhSiZRCpQvOrRGQyz5thdIWiXpKRMJdU63Svs7Vk
 eZXg==
X-Gm-Message-State: APjAAAU4IetSDODVcc/2mcORJU1h0C8PsRLHBv7SKXLEvHpbi1THT+5J
 u3Vmo4fBVxnX0vwcOV9jI39lU8VdwoU9fzdykdSMNujvj3/y6HHcN0xQTM0a15jtOwxPljZHWd3
 fZ20JlsTO1u8rbxk5V1ES2ovTTilHK4F8PsM=
X-Received: by 2002:a1c:4008:: with SMTP id n8mr4342416wma.121.1579787540987; 
 Thu, 23 Jan 2020 05:52:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqwwuAHOv3mQdajAOj8Wx0mgp4dKgh3ugzrnb0nmfg+V0M9H/8uW8obx7N/CZnGLglD/gLhKTg==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr4342396wma.121.1579787540799; 
 Thu, 23 Jan 2020 05:52:20 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id l3sm3135558wrt.29.2020.01.23.05.52.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2020 05:52:20 -0800 (PST)
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Will Deacon <will@kernel.org>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200121103025.GC11154@willie-the-truck>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <400d402d-c964-6f0c-2954-6f6afcb94635@redhat.com>
Date: Thu, 23 Jan 2020 13:52:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200121103025.GC11154@willie-the-truck>
Content-Language: en-US
X-MC-Unique: hXc4Y_WZPQCnNW7F7cjsaA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_055225_073720_28CC0790 
X-CRM114-Status: GOOD (  15.97  )
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
> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
>> This patch series is the continuation of Raphael's work [1]. All the
>> patches can be retrieved from:
>> git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
> 
> [...]
> 
>>    objtool: arm64: Decode unknown instructions
>>    objtool: arm64: Decode simple data processing instructions
>>    objtool: arm64: Decode add/sub immediate instructions
>>    objtool: arm64: Decode logical data processing instructions
>>    objtool: arm64: Decode system instructions not affecting the flow
>>    objtool: arm64: Decode calls to higher EL
>>    objtool: arm64: Decode brk instruction
>>    objtool: arm64: Decode instruction triggering context switch
>>    objtool: arm64: Decode branch instructions with PC relative immediates
>>    objtool: arm64: Decode branch to register instruction
>>    objtool: arm64: Decode basic load/stores
>>    objtool: arm64: Decode load/store with register offset
>>    objtool: arm64: Decode load/store register pair instructions
>>    objtool: arm64: Decode FP/SIMD load/store instructions
>>    objtool: arm64: Decode load/store exclusive
>>    objtool: arm64: Decode atomic load/store
>>    objtool: arm64: Decode pointer auth load instructions
>>    objtool: arm64: Decode load acquire/store release
>>    objtool: arm64: Decode load/store with memory tag
>>    objtool: arm64: Decode load literal
>>    objtool: arm64: Decode register data processing instructions
>>    objtool: arm64: Decode FP/SIMD data processing instructions
>>    objtool: arm64: Decode SVE instructions
> 
> That's a lot of decoding logic which we already have in
> arch/arm64/{kernel/insn.c,include/asm/insn.h}. I'd prefer to see this stuff
> reused or generated from a single source, since it's really easy to get it
> wrong, has a tendency to bitrot and is nasty to debug.
> 

The thing is that the code in those files is mostly encoding logic 
(motivated by BPF) rather than decoding (except for the instruction that 
might be trapped, but these rarely overlap with instructions that 
objtools cares about). I agree that ideally the decoding/encoding should 
be under arch/arm64/lib, I was just a bit weary introducing a lot of 
decoding code under arch/arm64 that wouldn't even be used in kernel code.

But I can make an attempt for the encode/decode lib and post it as part 
of the next version.

Cheers,

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
