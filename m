Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E7813D111
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 01:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRinczMKxNPd/DFGVFWNpuosTYcWaUoazRaYpj9XyYE=; b=QGoBMhoXywS/UH
	tucbXowW3QKyRE+RBWGSMFHvvP8RBZvA5gy8C7Lg1tS0iErptMqwSDg5X6yFJcl68yiig4IFsQZ9e
	zb2WKCyogegQonxVElU8Pn4kjMfhF/Qhxt/0HXvlHjBiDDIZ4mVgpmEeq2FApPHCyeaznbjlGn4zZ
	bNKNmlQLHBBuLpUWlgU46CqZQIF5hfBjd86jj+Mr4dfhaaQ0y7adrIhXGcOfPF8l3gEUKUjGqcLR7
	TDYaRHl1SO19HEB3iqoI5EcnrbMwofmd3o+r2QyVPJhwfEKH4jUL7C9+mEyzzHaFC62RoEcGqN0lf
	6ZI70RpG/tIfEeIG+FIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irsx3-00064U-3Y; Thu, 16 Jan 2020 00:23:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irsws-00063x-Ik
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 00:23:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id s64so8973771pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 16:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C8Mdmfur4dwu03vbvevYDb1XO1Q3CqzN0gcG963gaRE=;
 b=Z6jK+gPGtSkZY2rulY4paNUMJILhzdqiBfxQpA4qUBv0hz9tQzB3q5t0aBjxd1z8lq
 WwPSXLwll1N3fAsqsGyB/sxKeCoGWmatzZVEh8/5/73NxPnj0Wqb/O/28OKqS2PWMgAS
 uTkUC3zEP9oWFy0rLnBGWP8XmVmFQvcAplhrAkTy/xVfn0bd26UmIUO+vOnTa378f0W5
 KvX+Qp8ToI4+wd4zwS6gsVWTb6xuoov3tnDWc45ROW4OePb+MJI/tcZmaulZOLIgN/Va
 5pdeWe8VS3A/Nf9+t5PgQQBN4cEsvcfDK9sS52x1utNAVvh80T9IQLqCp0uYmwim6AQ3
 O+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C8Mdmfur4dwu03vbvevYDb1XO1Q3CqzN0gcG963gaRE=;
 b=sIIL/Q3Ewka1fu7Tn4ExlKn2Yu+BTvpbuhZ/L2pXir1Mmrw2sEIahoGxLyKc8IvSKm
 huQ7jsODq0Vw43A8LxzuvYSri7wXuLar4JdoYX3ckKQhn+xq+TPXW2C8nJWAd4TKXJlP
 BKYfVRh2va4Nhgpsg9hoTe/2b6mY6wdvIfpL4ooiSmyqoVK2VvgD/ckGt36fuYn42I6t
 ton/Nwn9MkQhyAm433StnHOgXE43/8/Y2Jri0iczbYbt9xOs//LDSxg1u1vzxmC9mlg+
 z8ncfGmzayi9DT2UNtB9BGy4pDnUND/vrX8JG4h9BlXrRcv6z9UrgrGSu10bWiEDVH8F
 2L/g==
X-Gm-Message-State: APjAAAWlEm8/GRkjKu/w8lNmcGjN3ovWvYSNfZnGmJP8flpYqu5PO0S3
 69HNoECrPtPk0xzSYD+eB4YLmGuMvoc=
X-Google-Smtp-Source: APXvYqw6p2dG4aYUy5ryvLd60tWrDdS3RiWUjcaBPx6mxGkAYeBH6GOuWofmu+I8maBwljzbvFeU6w==
X-Received: by 2002:a63:d14:: with SMTP id c20mr35187016pgl.77.1579134224096; 
 Wed, 15 Jan 2020 16:23:44 -0800 (PST)
Received: from [192.168.3.43] (rrcs-66-91-136-155.west.biz.rr.com.
 [66.91.136.155])
 by smtp.gmail.com with ESMTPSA id w187sm23776762pfw.62.2020.01.15.16.23.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 16:23:43 -0800 (PST)
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
 <20200115110720.GG3897@sirena.org.uk>
 <20200115142611.GC3429@arrakis.emea.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <a789713b-8d0a-a997-d348-3521950e9d90@linaro.org>
Date: Wed, 15 Jan 2020 14:23:39 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115142611.GC3429@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_162346_644724_752D8A8D 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/15/20 4:26 AM, Catalin Marinas wrote:
> On Wed, Jan 15, 2020 at 11:07:20AM +0000, Mark Brown wrote:
>> On Wed, Jan 15, 2020 at 10:24:21AM +0100, Ard Biesheuvel wrote:
>>> On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
>>
>>>> I see your argument, but I was just going on the side of consistency because
>>>> we're continuing to expose other features as HWCAPs when the capability is
>>>> just a proxy for the cpuid field. I was in favour of stopping the addition
>>>> of such HWCAPs years ago, but I couldn't convince Catalin ;)
>>
>>>> The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
>>>> our hand forced.
>>
>>> I don't have a strong opinion either way.
>>
>> Me either, or at least not enough to object to doing it - Will?
>> Catalin?
> 
> Until the ifunc resolver can work with CPUID, I think we should keep
> adding HWCAPn bits. We can revisit this with the toolchain people before
> introducing HWCAP3.

Why would the ifunc resolver not be able to use HWCAP_CPUID?

The first argument to the ifunc resolver, apparently since the beginning of
time (2013-11-25 7520ff8c744a), AT_HWCAP has been passed directly as the first
argument.

That means HWCAP_CPUID, present in AT_HWCAP, can always be tested directly.  At
which point one can access architected registers, with no dynamic linker
relocations, to make further decisions.  Admittedly there's a trap to the OS
involved, but there is *far* too much info in those registers to copy
everything to HWCAPn.

The current state of affairs, as of glibc-2.30, is that the first argument is
augmented to include a _IFUNC_ARG_HWCAP bit, which indicates the presence of a
second argument, a pointer to struct __ifunc_arg_t.  This struct does include a
size field, allowing the struct to be extended in future.

That said, speaking as a toolchain guy, you should conserve HWCAP2 bits so
that, by preference, you do not need to introduce AT_HWCAP3.  Or at least delay
adding it.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
