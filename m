Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B6E13742F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDn5Oc6jL1vSq/6LDQfMbrplmWuAp+VQ9/GQuMw1brI=; b=dw6DobYQb4fDpU
	Ey446nXL9xfx6RYm5gEVbYmFFA9myp/O1MF1au3JjuX72L7Q5L6fbA6WtPE2yNYz8SOs4K7JjEzbp
	G1EoOSSzUWAnvqWDkzQvBdVj08JVUx+C2AOakx8KUTyEC6PFs9V/eAlHPd9STKtOkPluDY9uF6swv
	P3q4NcZ2HnBnhC9ldcHq6MjF9ouYkWuLFGrOADcfPZ+L2dvAwc0ZHIt+aB7ZCPOj9jfuntw0NR7AY
	JRfDGEHUmleyy+i8P839P/crw6AXmQyYD1Vn1Gqld4mGNdcaH/r0YPMk+H3Patv4pSE4dGWeF1O+/
	kXWfzdn45DyZsN5AXkNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxaX-0004Ls-N1; Fri, 10 Jan 2020 16:56:45 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxaE-0004EH-4D
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:56:27 +0000
Received: by mail-wm1-f65.google.com with SMTP id 20so2703205wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 08:56:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=hhy+D+Y638NFesS4UWxMs4YRL6hkOF6UIwSPS4DTzV0=;
 b=g340D9VnBXSLkiw3t7CAaKYa/dsJV4cRxot6p92as3FI5NJdkTf9I5tLG5GgqlYp8t
 4JEdAb2WlIsguOFc96nIXO55jFTkhRB5+c/rXVgM7aftvpFuvQXehmxhsWbY9RsUkgJR
 Qk6NJ3KP9opeJ+FgDyEjsWIcvx9i/HrXTju+HcF+xTOUuj/6wmS8uuXAudNL4L41iM5D
 /7Wr5NrxlCKDr3v4xnntRviN2v5+3YPrTCi2Ygs4qcW9ZfC1YVnpSYUCtFRxmudPEnyF
 cjc6p9DqsIqobhG7e7gul0a/IoEpLnpBs3DyqZUGoPI3f7mgo0szaeZvJeoCdnY/PwNt
 ZmNA==
X-Gm-Message-State: APjAAAVKogPu9IRlrfKCH7OvjMyKSMkHzQ1AnauY11vHbq9uJaj22n9w
 n9/ITfLXVx08cmeMlY62qTfuEK+W
X-Google-Smtp-Source: APXvYqxWBJsUHmu+7WRx7lZEt6eMzudXXneSzx/A1SJSkl49Z7dcCFQALr3WSLSri9cYzV9RLjMj8Q==
X-Received: by 2002:a7b:cf26:: with SMTP id m6mr5071890wmg.17.1578675383895;
 Fri, 10 Jan 2020 08:56:23 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
 by smtp.gmail.com with ESMTPSA id g18sm2731399wmh.48.2020.01.10.08.56.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 08:56:23 -0800 (PST)
Subject: Re: [PATCH 2/3] arm64: lib: Use modern annotations for assembly
 functions
To: Will Deacon <will@kernel.org>, Mark Brown <broonie@kernel.org>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-3-broonie@kernel.org>
 <20200107144445.GC29001@willie-the-truck>
 <20200107174741.GG4877@sirena.org.uk>
 <20200108122957.GA16658@willie-the-truck>
From: Jiri Slaby <jslaby@suse.com>
Autocrypt: addr=jslaby@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c241898d-3a0f-4356-0f2c-7d18ee35f45c@suse.com>
Date: Fri, 10 Jan 2020 17:56:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108122957.GA16658@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_085626_204720_F4138BB9 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jirislaby[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 01. 20, 13:29, Will Deacon wrote:
> On Tue, Jan 07, 2020 at 05:47:41PM +0000, Mark Brown wrote:
>> On Tue, Jan 07, 2020 at 02:44:46PM +0000, Will Deacon wrote:
>>> Jiri -- is it ok to omit the stack frame for leaf functions annotated with
>>> SYM_FUNC_START? I'm guessing it should be, since the link register isn't
>>> going to be clobbered. Could we update the documentation to reflect that?
>>
>> Yeah, the documentation isn't great on that.  I was going on the basis
>> of both trying to minimize changes to the generated output as part of
>> the bulk change and looking at it from the point of view of the caller -
>> if as in this case the caller thinks it's a regular C function it seems
>> sensible to annotate it as such.
> 
> Maybe a small tweak to the documentation as per below, indicating that the
> stack stuff is just an x86-specific example?
> 
> Jiri?

Yes, the text in the documentation was too x86-specific. Could you send
the below as a proper patch? Thanks.

> diff --git a/Documentation/asm-annotations.rst b/Documentation/asm-annotations.rst
> index f55c2bb74d00..32ea57483378 100644
> --- a/Documentation/asm-annotations.rst
> +++ b/Documentation/asm-annotations.rst
> @@ -73,10 +73,11 @@ The new macros are prefixed with the ``SYM_`` prefix and can be divided into
>  three main groups:
>  
>  1. ``SYM_FUNC_*`` -- to annotate C-like functions. This means functions with
> -   standard C calling conventions, i.e. the stack contains a return address at
> -   the predefined place and a return from the function can happen in a
> -   standard way. When frame pointers are enabled, save/restore of frame
> -   pointer shall happen at the start/end of a function, respectively, too.
> +   standard C calling conventions. For example, on x86, this means that the
> +   stack contains a return address at the predefined place and a return from
> +   the function can happen in a standard way. When frame pointers are enabled,
> +   save/restore of frame pointer shall happen at the start/end of a function,
> +   respectively, too.
>  
>     Checking tools like ``objtool`` should ensure such marked functions conform
>     to these rules. The tools can also easily annotate these functions with

thanks,
-- 
js
suse labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
