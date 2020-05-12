Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4C61CFDF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 21:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3WiMBXu9uDEEj3UqOz9Bele5unh2i88WxCGY0xkQZU=; b=IxH5pQD+EtZq9YC0wNmtBLrpK
	344eAgVeDB7oaUcfmRrQxPzhau36Z3VBySpLyW8R5PEViDg0DfMPMd2PS8LuSWVAjjDA1PRDN2DMI
	gVdt9sdyeV2R20NOvth1Z5ebWDNcaKJz77omtdzBDSTyR7ZvTS2Do+oVgmbWICQkwioameQ407mLe
	OjZ1jyb4FHHblQd+svei33GMnn94odxBfOs5fIGJfNZW3TI/irpKceNZYbIhHB6VDhBiPGS2/6fhu
	tpkWpiRrkS50eQP3/hb4qTKPWqGKY9rH6BcLt52rZZ3H1RK+7fBQMcLg3NvPQRZEy7m07Vs/tzg4p
	PJR61QQZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYaDd-0000b3-Lr; Tue, 12 May 2020 19:05:33 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYaDT-0000aV-Uh
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 19:05:25 +0000
Received: by mail-qk1-x744.google.com with SMTP id g185so14805349qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 12:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UI6RUzLO2uiSdCmhyivddJoxgBl/MIl48jarD2peWbs=;
 b=BFbHfn98jaGHpu9xzKX+MtSFyYJFBTaHBIt7T3i12X1xzHaO5DG2IOXYytD8A4j/sw
 ZWOt9i4uHd+XqVOA3HUuDyzhDJX9f7OyFa+vVlb1q6Ash9xC5BH7HlmvAknlXIA7lzOy
 OpgAPF1IrwiU/Vi1mMHFLAKYu8i14mADsufWBrahExAGByxA5spM9Pv1JP+avyL7l6rp
 3zm0ZFvv4IpTowGzjbA4uZr0c40u+sI6Al+xrDdK1zOR9rP/S20AraDtbbmyvUxqMGGf
 uZW7bE3JEfI0KzON5dj6KzECbXQNMvGXckvIhxfViSlgPu02tRufwwLmy8advGwvP+E5
 6Tqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UI6RUzLO2uiSdCmhyivddJoxgBl/MIl48jarD2peWbs=;
 b=ZRTRIPrjIi7OvtzgDPE6PvO8OTZh884iF2x8SbKXo2lGRW1DS0BZ+q5Qvh6hRMwtuo
 gtXYoCXYse7/x9Rw7k7EZaHraIzFLFGObcClGubMYqVC5uTt/nnXMOM0c23Ws6OT1z6E
 nlI/2E7Zk/Lk8MwU5DO4L97cqHfK1VfX02iE4ca+xwC+Rbd7jyQ9dUTbUicieQ5hoBqy
 zapysM/D57eY9vsyp+NSPHYYQsbQWTKdKUO58ZHWXTvkeSdxzxot2gQ5DlapFb4j430j
 rw/xJQlL7jqg52TZeveSxLji01/L5dwdrnicetRwz1wTXKsNOHx7YAyt2Qcagp5IwcAG
 giKQ==
X-Gm-Message-State: AGi0Pubzmu7Atd8V9pogil0S8sHTYg5Wz/QbxP+wM8Fxv9WS0TEjlAth
 OoHo+gjEUlPG3GyYAXo+t+Nykw==
X-Google-Smtp-Source: APiQypI4CZtjCar/kgfGa4Bfbol01l3EXMP1gUNn0S19TRhpzZu5I+980B7SFbBcj15iChRZHQHcWg==
X-Received: by 2002:a05:620a:624:: with SMTP id
 4mr22287532qkv.86.1589310321938; 
 Tue, 12 May 2020 12:05:21 -0700 (PDT)
Received: from [192.168.0.185] ([191.34.158.63])
 by smtp.gmail.com with ESMTPSA id k3sm1025697qkb.112.2020.05.12.12.05.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 May 2020 12:05:20 -0700 (PDT)
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
Date: Tue, 12 May 2020 16:05:15 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421142603.3894-20-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_120524_030816_DB445922 
X-CRM114-Status: GOOD (  18.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 4/21/20 11:25 AM, Catalin Marinas wrote:
> Add support for bulk setting/getting of the MTE tags in a tracee's
> address space at 'addr' in the ptrace() syscall prototype. 'data' points
> to a struct iovec in the tracer's address space with iov_base
> representing the address of a tracer's buffer of length iov_len. The
> tags to be copied to/from the tracer's buffer are stored as one tag per
> byte.
> 
> On successfully copying at least one tag, ptrace() returns 0 and updates
> the tracer's iov_len with the number of tags copied. In case of error,
> either -EIO or -EFAULT is returned, trying to follow the ptrace() man
> page.
> 
> Note that the tag copying functions are not performance critical,
> therefore they lack optimisations found in typical memory copy routines.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Alan Hayward <Alan.Hayward@arm.com>
> Cc: Luis Machado <luis.machado@linaro.org>
> Cc: Omair Javaid <omair.javaid@linaro.org>
> ---
> 
> Notes:
>      New in v3.
> 
>   arch/arm64/include/asm/mte.h         |  17 ++++
>   arch/arm64/include/uapi/asm/ptrace.h |   3 +
>   arch/arm64/kernel/mte.c              | 127 +++++++++++++++++++++++++++
>   arch/arm64/kernel/ptrace.c           |  15 +++-
>   arch/arm64/lib/mte.S                 |  50 +++++++++++
>   5 files changed, 211 insertions(+), 1 deletion(-)
>
I started working on MTE support for GDB and I'm wondering if we've 
already defined a way to check for runtime MTE support (as opposed to a 
HWCAP2-based check) in a traced process.

Originally we were going to do it via empty-parameter ptrace calls, but 
you had mentioned something about a proc-based method, if I'm not mistaken.

Regards,
Luis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
