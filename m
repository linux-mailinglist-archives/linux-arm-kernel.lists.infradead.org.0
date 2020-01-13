Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AAB138EED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yvwKM4022wMxXQMevT0wbSe6MUpTXDNfTEXTXSZCXKA=; b=Qi6ksIipEk0ijr27SZ5wciQa0
	HkUcwtbmTOOWRHxYELNLdN5f8TnsNvRVH+KQX3eQnwFGtewlCWWvFIUVahIWHAljpwZof4mQxDsw7
	x/lWaKOnP7IoYzF3GxfmPRN4q1OVX5L9eZUfYohleAhFjxCxypivg3V7si9LTGslUNQbcYrXCqcrY
	Nf+H6QN2TgM7S6ruDEFADYmJFq1oyZL/WhMYdq4JBwVHbF3BKcvw8e6D2yXrlK9nRGh2J5nnJg9B2
	tnce+FK4ZYLbzBqKAfW4xidDSfHLBby3BPVwo/TK3vUhkgYKpTlYIoucvbb53Sdff67v91iflScGO
	zhi+j2Ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwpl-0006Gz-F8; Mon, 13 Jan 2020 10:20:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwpZ-0006GO-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578910820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9b6t3nrFthuT+clwEzkYFFr2C6WgvCiJj3wXim9dnJ8=;
 b=jOpllNu8K1urxCKxNVpjEOqTsIL8vZwa7bPdAL1hfm5ebtX1bTuaTlTMNYuIntrz23FQkh
 M82SgN/zXnnTgWsL6taWc4Q0O2jEfGg8UZQImLeT5ZWxz3rbiSo9UGf8L64+4ot6uvhW3b
 gKpDC6UQyXX+9TWwAbaxvE6gAsoAwMs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-YtnxyUq9P4esxtpnET2kPA-1; Mon, 13 Jan 2020 05:20:18 -0500
Received: by mail-wm1-f69.google.com with SMTP id s25so1219166wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 02:20:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9b6t3nrFthuT+clwEzkYFFr2C6WgvCiJj3wXim9dnJ8=;
 b=NYzHduK8w4yIlESfQ8t3yKKI6h+9FPmZi/BjTEnc9+0fvoGsqo6BqSoXe/byJOQldO
 j/v2q/ilsEtrNWC3DJ+Q9Ezr1QH+rIcABd2yTHhBNQa/jWaYe5khaWBZ6YfEVj05vwfv
 14KPTfRL21HhIkrwO1MGQJvjg9BSzDYUlyTOG8oOUHJyt9gMSEczWHyVdzadqiVphr70
 bl53c0lnk5gzYq7ZJu7JIQxYRmkJXbJBhJRilQPy4klONfkttykQ8NY0suAMlKaqQRj6
 Peb+06Yps4cB/7/1UcMlTOXbmn+YsMTBdXio/lUUBna4wOvVn1H+eeitmBfoIV5DVFD6
 +AaQ==
X-Gm-Message-State: APjAAAXDCf+++P3stM+4HS2syrTOFsAIL2pb6OaxOo3hgx0ytt+b3RiK
 N2Dmc5BFZtaEsT/hBNjuqpZCSGAV/40ooto0aZspiOmjQPsDlFYAiFCDOQro2+1Vn+YKdfYEopM
 XZJ8qBM9m6jq/LQTskpYXGg7ygqQww29AizI=
X-Received: by 2002:a5d:6284:: with SMTP id k4mr17401076wru.398.1578910817459; 
 Mon, 13 Jan 2020 02:20:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/3sZwKnGufJX+Iq7HNuXEFlwnipNGd9n2lT6CXWdDIZIKmf01k0FO6pbo7HJF6BuMtL62Rw==
X-Received: by 2002:a5d:6284:: with SMTP id k4mr17401061wru.398.1578910817265; 
 Mon, 13 Jan 2020 02:20:17 -0800 (PST)
Received: from [192.168.1.81]
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id 25sm13439981wmi.32.2020.01.13.02.20.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 02:20:16 -0800 (PST)
Subject: Re: [RFC v5 14/57] objtool: Do not look for STT_NOTYPE symbols
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-15-jthierry@redhat.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <6c555096-3f20-0ae5-d04a-20eb30ebf7c7@redhat.com>
Date: Mon, 13 Jan 2020 10:20:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200109160300.26150-15-jthierry@redhat.com>
Content-Language: en-US
X-MC-Unique: YtnxyUq9P4esxtpnET2kPA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022021_513826_8DFF21D9 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, raphael.gault@arm.com,
 will@kernel.org, jpoimboe@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/9/20 4:02 PM, Julien Thierry wrote:
> ELF symbols can have type STT_NOTYPE which have no standard semantics.
> 
> Arm64 objects will contain STT_NOTYPE symbols at the beginning of each
> section which aren't of any use to generic objtool code. Those symbols
> unfortunately overlap with the first function of the section.
> 
> Skip symbols with type STT_NOTYPE when looking up symbols.
> 

Turns out some x86 callable objects have STT_NOTYPE (in the current case 
error_entry in arch/x86/entry/entry_64.S, and it seems to be the case 
for all asm symbols annotated with SYM_CODE_START_LOCAL).

A solution that works both for x86 and arm64 is that if the symbol has 
STT_NOTYPE, continue looking for another symbol at the same offset. If 
none is available, return the STT_NOTYPE symbol.

I'll fix that in next iteration.

> Suggested-by: Raphael Gault <raphael.gault@arm.com>
> Signed-off-by: Julien Thierry <jthierry@redhat.com>
> ---
>   tools/objtool/elf.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index edba4745f25a..c6ac0b771b73 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -62,7 +62,8 @@ struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset)
>   	struct symbol *sym;
>   
>   	list_for_each_entry(sym, &sec->symbol_list, list)
> -		if (sym->type != STT_SECTION &&
> +		if (sym->type != STT_NOTYPE &&
> +		    sym->type != STT_SECTION &&
>   		    sym->offset == offset)
>   			return sym;
>   
> 

-- 
Julien Thierry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
