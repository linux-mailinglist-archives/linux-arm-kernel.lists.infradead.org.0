Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1A1121AF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 21:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4JFWFf5Yo6zbSW83S4Qk6F0A1acmu806zboRWa+zpU=; b=VhZC9bo1Fxp7caO+LNSK8eYMJ
	k9lIlRDbNMJvHuaV3PPxQSDdc56xQmHSIwS+FymFOWUsGmNuoaD6guhWc/ZDkGybcCFzQLT7Sooyj
	XDST88yTEsDRJURsZDiSOOYVg63MVxzPuug5pqFMJ6623c/R73XlITGxM1dzZDAURL+y6vDld6bm6
	rFv/6jSyiD8NjOK5Qz8wvMRLLzmXkQSL5ZNfFZRT2n5Vpd3hEw7lhTgbOlf1ra1t0Gd4bAPKGrwZW
	E220XW6xW5maPOq8yZ2c1LRe82sfRWV8revYyZeQHujbI7jGxMB/Hui6KLjOupYz30Qlpp8hkbnTy
	hJQHYK9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igx6i-000079-7a; Mon, 16 Dec 2019 20:36:44 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igx6U-00005o-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 20:36:32 +0000
Received: by mail-wr1-f68.google.com with SMTP id g17so8917382wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 12:36:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JF5j2QhBPiKVEsszO1fwNIEf5ztIBBW8hIVMIyB6TX8=;
 b=rHqSYEhzzwRDbh3+TC+QEt6dSHTd2brtkpzuLEh1REtqogd5q5pucSOHZ7CVQp/tz2
 pmrN9ZFNdGmQfednLHLL0LV82Rwus/WQkFoE6z2A9Ig0Z2y2yZtFebmIITSz3TJxaGhd
 MiTbhCWnUo5ht2s1lnfbcJU4Ubji5sFHaKRJYjD1iwqzuheA6J/SP0EAXdE+7faKQYX3
 VRcuXg115nEVhLatwP+8kU86u1e2JWif1sUclo+pGjFdbtL+h9JH07Y9pb0WLwswUo07
 LMCSdzAemZlADmgC9iNOZnjmV8TfudUUhV7efrAWzr4xeyz96oLNKLPlVhAY+TxyjwCb
 XMLw==
X-Gm-Message-State: APjAAAWlFXYZ0Er0QjPlFXDf5BPvwtyfDKEQR6BNSQIxcJPSYsMhlzGw
 Qbww6d/9ysaKi6KW20n7vm8=
X-Google-Smtp-Source: APXvYqz9kOCrk7TdGWR+j99RWSQ6+KDeJJaAl/3DJBRD938fSrWXpjD853kqh1J0TmYUVY6y872K+A==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr33173920wru.119.1576528585567; 
 Mon, 16 Dec 2019 12:36:25 -0800 (PST)
Received: from a483e7b01a66.ant.amazon.com
 (cpc91200-cmbg18-2-0-cust94.5-4.cable.virginm.net. [81.100.41.95])
 by smtp.gmail.com with ESMTPSA id v8sm22540503wrw.2.2019.12.16.12.36.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 12:36:24 -0800 (PST)
Subject: Re: [PATCH v4 1/6] arm/arm64/xen: hypercall.h add includes guards
To: Pavel Tatashin <pasha.tatashin@soleen.com>, jmorris@namei.org,
 sashal@kernel.org, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 will@kernel.org, steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 maz@kernel.org, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk,
 andrew.cooper3@citrix.com
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
 <20191204232058.2500117-2-pasha.tatashin@soleen.com>
From: Julien Grall <julien@xen.org>
Message-ID: <c5dcf342-90f4-beb5-d2b1-4a37ccedfe42@xen.org>
Date: Mon, 16 Dec 2019 20:36:23 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191204232058.2500117-2-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_123630_936185_CADECDC0 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.grall.oss[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04/12/2019 23:20, Pavel Tatashin wrote:
> The arm and arm64 versions of hypercall.h are missing the include
> guards. This is needed because C inlines for privcmd_call are going to
> be added to the files.
> 
> Also fix a comment.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>   arch/arm/include/asm/assembler.h       | 2 +-
>   arch/arm/include/asm/xen/hypercall.h   | 4 ++++
>   arch/arm64/include/asm/xen/hypercall.h | 4 ++++
>   include/xen/arm/hypercall.h            | 6 +++---
>   4 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 99929122dad7..8e9262a0f016 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -480,7 +480,7 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
>   	.macro	uaccess_disable, tmp, isb=1
>   #ifdef CONFIG_CPU_SW_DOMAIN_PAN
>   	/*
> -	 * Whenever we re-enter userspace, the domains should always be
> +	 * Whenever we re-enter kernel, the domains should always be

This feels unrelated from the rest of the patch and probably want an 
explanation. So I think this want to be in a separate patch.

The rest of the patch looks good to me.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
