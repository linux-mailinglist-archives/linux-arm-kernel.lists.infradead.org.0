Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E721248B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gK8140xmbn9nobUtN8jJIcHbree11bZzdkPuQjxzt9Q=; b=COcBdWxdbEQ5FVXINu2Zy6MhB
	spM48B20kdMAz/yr4z+/+h6vK18J/4fiEWe0oSoSYP8qz+AXAWBWcITSjcjtvCbCp9N6IVnUoY8vH
	6YNdxtUwmnfCz3shDu23yBMznT/1uyEZNPK4uw2vzSUgr/K7wC6z+HdJnHxt3buNgQA5LBHY+aIAD
	xPpbeAYaz1qZDeMCNiHp9hwj5rHpEJ6pF3ALrDLs925nAZfShDvg9zbrdnIb0jyN/OUrmICGMbzOi
	4OrEklTUkuPu/p0aRNmByypgRQAA5W2/q0tOoPLyIcW783R8GM5VsZzxeDwAJcwlzVn7+dRK90fci
	KbX+GPF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZch-0001aE-Fo; Wed, 18 Dec 2019 13:44:19 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZbI-0000SS-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:54 +0000
Received: by mail-wm1-f66.google.com with SMTP id b19so1882620wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r0yvD4aEOMXXVpjkkN0poMNE/QpN2meBOCkGKZ6hMsY=;
 b=lRL8XAurgt+44qtuKq773e+ZmWN781S07pZrak3hfaG201OV6FP3vaBoQVc+IOKeHa
 NnDgMuvG1hU8axghmJ3zdW3W93qs41XXylEsIu6Ll4x/bHrIGv2RdwjOtrNRyIcqKMuB
 c5TxOu5xO88QGSQ57eYQTVb1EeOnLBaElQhF84POjr/xq/fO6Zt+d1vbfv6/Z0a8Dof1
 8BkhyCtd8T6YKQTh1oHUo44BPLgQJBoOq8WtFu9gFhBICpZY3rrl234HBzTAGJ/5lVk6
 3I21Q4jJp5vy3YdauiL6pXA2dGlFT9csC0DeiYpEAl4DX5XQgwQmbjczV6PEYbmEM9O8
 iH7g==
X-Gm-Message-State: APjAAAWRcrEdL9RvfLPedaH+njIRTjsH0qM/OYwnXjO6k5mu6LgfqUoY
 nNMWCpv9G+2gDwwOPMORTbAY6eeqRP8=
X-Google-Smtp-Source: APXvYqy3v7Hs/mhDtIVnO5gLvQcsdatFtYS+7Lpqx8/l38oodvTUsxBhiIxMpzTukxGMYOcvyzhCKg==
X-Received: by 2002:a05:600c:118a:: with SMTP id
 i10mr3267115wmf.142.1576676570072; 
 Wed, 18 Dec 2019 05:42:50 -0800 (PST)
Received: from a483e7b01a66.ant.amazon.com (54-240-197-234.amazon.com.
 [54.240.197.234])
 by smtp.gmail.com with ESMTPSA id v3sm2583376wru.32.2019.12.18.05.42.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 05:42:49 -0800 (PST)
Subject: Re: [PATCH] arm64: xen: Use modern annotations for assembly functions
To: Mark Brown <broonie@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191218123756.41363-1-broonie@kernel.org>
From: Julien Grall <julien@xen.org>
Message-ID: <6c62f578-dd5e-1821-d9a4-2f3fc0abcfd5@xen.org>
Date: Wed, 18 Dec 2019 13:42:48 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191218123756.41363-1-broonie@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054252_583382_389B76A9 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.grall.oss[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18/12/2019 12:37, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC. Update the annotations in the xen code to the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Julien Grall <julien@xen.org>

Cheers,

> ---
> 
> This is part of a wider effort to convert all the arch/arm64 code.
> 
>   arch/arm64/xen/hypercall.S | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/xen/hypercall.S b/arch/arm64/xen/hypercall.S
> index c5f05c4a4d00..305c2274b8eb 100644
> --- a/arch/arm64/xen/hypercall.S
> +++ b/arch/arm64/xen/hypercall.S
> @@ -56,11 +56,11 @@
>   #define XEN_IMM 0xEA1
>   
>   #define HYPERCALL_SIMPLE(hypercall)		\
> -ENTRY(HYPERVISOR_##hypercall)			\
> +SYM_FUNC_START(HYPERVISOR_##hypercall)			\
>   	mov x16, #__HYPERVISOR_##hypercall;	\
>   	hvc XEN_IMM;				\
>   	ret;					\
> -ENDPROC(HYPERVISOR_##hypercall)
> +SYM_FUNC_END(HYPERVISOR_##hypercall)
>   
>   #define HYPERCALL0 HYPERCALL_SIMPLE
>   #define HYPERCALL1 HYPERCALL_SIMPLE
> @@ -86,7 +86,7 @@ HYPERCALL2(multicall);
>   HYPERCALL2(vm_assist);
>   HYPERCALL3(dm_op);
>   
> -ENTRY(privcmd_call)
> +SYM_FUNC_START(privcmd_call)
>   	mov x16, x0
>   	mov x0, x1
>   	mov x1, x2
> @@ -109,4 +109,4 @@ ENTRY(privcmd_call)
>   	 */
>   	uaccess_ttbr0_disable x6, x7
>   	ret
> -ENDPROC(privcmd_call);
> +SYM_FUNC_END(privcmd_call);
> 

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
