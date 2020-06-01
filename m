Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49DF1EA6B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=on0NvrR1QUPT6pdlLyr+6LoeVR8lfsuyBL+rC7tj4Wo=; b=A06s0Obk36A6qNyQ7yTbA/RVL
	uG0Qx6hoWegg2KsxPbbQGucD2VPJiQS3OmqVxYwM1e9ABOnGoh+dYGl98De1FsAna9ZE/mfaKFlOg
	okevFPdJGPLwpUglo4XIqoE8o4ZAabKrlhpzjH5vG8/6ZTrVhB+N3kwlOsSfZ2Pm2TtvQtcwp4Sp0
	9uve+7g4BvtVA+cer+kBfLfkc2p35VI8MXaQgOxcqR8AV/tOCgOZ+ISu+vtbY0AF2EKouiGrKBX5T
	dzU5Bwu2wRWKIDhegWZQocRQ0xQUlmYFLqHPhGod/iMDVaoVXwZQ18r6bn8mWzvZjrItSSlrxx93v
	MpURRq3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmC8-0005jV-Jq; Mon, 01 Jun 2020 15:17:44 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmC0-0005iy-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:17:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id n141so9396302qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 08:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ema+g3ydcyCdysveoaQH1feMW/DzdkijzM30liMIeLc=;
 b=p4c/KeKeBCGilR218OwT2br3ctbK2eklA+l1wE8ewKXqdos7sbDPXS40gHMQOdh68X
 KqXRtOU8YD8+iGvY9iq05r+ljxTHn8cBFnagZoqpz79ZP80dt7EXwil/x9IwCuvyobTD
 1Jq/tgpbx221KMxvBd8bzsqzzoK2L3DVJls5H1TS9WEbCVgQLG3vCT/Lj0umaOzYgrip
 PuxdzVXDNIwzgs6ZJxy+58CjcAs2oeqzWHValY81rDrw96QpfVMFRRVSq/w87kGUuFz0
 gPhN55vk6L/m9oDQJjy8cUuzJWTC0fASvVXGeVWN42nR/acdG9QRPJ18qJvec3+WoOWj
 pa5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ema+g3ydcyCdysveoaQH1feMW/DzdkijzM30liMIeLc=;
 b=nopkr8/KqaCOY4Dos1g2eZNj+2vTjOfGRMWkXacCz023DADZciWnb7rBEoUvzRVfJ7
 bRdjCpQPOL3JaYa6QxgopjCGeuMs1lhCx68mmEJVyPBw2YcBkIYn7POFWQj8/p2utuxc
 XaOARv4CcwpxAoNl+th9CFC3gVnKVpHVDNcAtb8+F6PG5Edu9RuXEM1Sj1StnetI0Rwq
 BLiZh9VaAGSSKiu6arl6TzngcBR95ExKpvnWnvTURc21wBqY9xJIKLwoeHJIJjzwk0qH
 vab1Q8sAGArhLlE7z0rpXrWh9O/iws/ZFr8dpLYGWooL3GCCPnNXFfniHkjYzIpY1szB
 Uunw==
X-Gm-Message-State: AOAM532GCEUGWY7U9y1jrxhgQYD61IzhdWt+4MlROd0+ao2FQqjk5pFc
 c26jXsXnf9Mv1+9iSD8AJunF9my2uydKWQ==
X-Google-Smtp-Source: ABdhPJxSSpARofioiGe2yw6QlG/+AbT7/HnykawI21N2+Bqe2kgJgrayV/hkOu12C3TI1fbpeg20ow==
X-Received: by 2002:a37:bfc1:: with SMTP id
 p184mr16652777qkf.207.1591024654357; 
 Mon, 01 Jun 2020 08:17:34 -0700 (PDT)
Received: from [192.168.0.185] ([179.183.10.105])
 by smtp.gmail.com with ESMTPSA id l9sm14947635qki.90.2020.06.01.08.17.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 08:17:33 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-19-catalin.marinas@arm.com>
 <a6fb329c-b4ad-9ffa-5344-601348978c34@linaro.org>
 <20200601120724.GB23419@gaia>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <48197e4c-0b77-5e35-c735-922aede425c5@linaro.org>
Date: Mon, 1 Jun 2020 12:17:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200601120724.GB23419@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081736_179873_9EF86685 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Omair Javaid <omair.javaid@linaro.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/1/20 9:07 AM, Catalin Marinas wrote:
> On Fri, May 29, 2020 at 06:25:14PM -0300, Luis Machado wrote:
>> I have a question about siginfo MTE information. I suppose SEGV_MTESERR will
>> be the most useful setting for debugging, right? Does si_addr contain the
>> tagged pointer with the logical tag, a zero-tagged memory address or a
>> tagged pointer with the allocation tag?
> 
> The si_addr is zero-tagged currently. We were planning to expose the tag
> in FAR_EL1 as a separate siginfo field. See these discussions:
> > 
https://lore.kernel.org/linux-arm-kernel/20200513180914.50892-1-pcc@google.com/
> https://lore.kernel.org/linux-arm-kernel/20200521022943.195898-1-pcc@google.com/
> 
> In theory, we could add the tag to si_addr for SEGV_MTESERR, it
> shouldn't break the existing ABI (well, it depends on how you look at
> it).
> 

Having additional fields in siginfo that hold useful information is 
probably best for debuggers. See my comment below about Intel MPX.

>>  From the debugger user's perspective, one would want to see both the logical
>> tag and the allocation tag. And it would be handy to have both available in
>> siginfo. Does that make sense?
> 
> The debugger can access the allocation tag via PTRACE_PEEKMTETAGS. I
> don't think the kernel should provide this in siginfo. Also, the signal
> handler can do an LDG and read the allocation tag directly, no need for
> it to be in siginfo.
> 

While the debugger can request this information from the kernel, the 
debugger has already received a SIGSEGV signal and will have to fetch 
siginfo for si_code. Having to do another PTRACE_PEEKMTETAGS call just 
to fetch the allocation tag doesn't sound great. Remember this can 
travel through TCP to gdbserver so it can call ptrace from the remote's 
end. It would be best to avoid the round trip.

Also, there seems to be past precedent to include more information in 
siginfo. For example, Intel MPX includes upper/lower bounds violation 
data in there.

Regarding using LDG, are you suggesting force-running this particular 
instruction in the traced process? If so, that isn't the way GDB (in 
particular, not sure about LLDB) does things.

>> Also, when would we see SEGV_MTEAERR, for example? That would provide no
>> additional information about a particular memory address, which is not that
>> useful for the debugger.
> 
> Yeah, we can't really do much here since the hardware doesn't provide us
> such information. The async mode is only useful as a general test to see
> if your program has MTE faults but for actual debugging you'd have to
> switch to synchronous. For glibc at least, I think the mode can be
> driven by an environment variable.
> 

I suspect SEGV_MTESERR would be a reasonable default then, for whoever 
is responsible for setting the default settings.

I'm assuming it is not the debugger, as it doesn't know how to toggle 
prctl settings.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
