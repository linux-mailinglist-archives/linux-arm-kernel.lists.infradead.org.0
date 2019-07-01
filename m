Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01A55BAED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4FQNy91ESCbLzmU74gF6SGfs7NGbXBCwg8CwlUx7TA=; b=PGmV3hMk8ODhOyRhnqPKXZSOF
	Lt54xaEt5VYd9GpOf5Ux9nHHaIiGy4efS7iNcOlfMhUOVZzGJQlJqFoHPcXUBC+vhTWYufZNA9do7
	jHp2CW5IwiHAhapyyLuAyJBfy+cFixVMXWkgYDLmQBUnV9QoBf4cMAN4iI4Uq3KAajdHR1eDgMwkx
	cZZMXAF4esMi7isenrND2gfT5BBo3A2LaGOBmfWMZXJqil4PbDnQ96SPy8XqyvyI/7NBYNMgdc+kk
	IOw3nawwZzlm2L1Rx/MpL+GCQqUPmDXRhGxp+71lKfAr+3yE+uYlmTcgO4/C/i5Vops9eiG0C/ja1
	Y6MtHr44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuim-0003k7-GB; Mon, 01 Jul 2019 11:43:44 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuie-0003ir-6g
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:43:37 +0000
Received: by mail-qk1-f195.google.com with SMTP id d15so10670020qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:43:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LsbOcoFcfbHWJ2BbGzwqaI1iT+APhtMaltQvkyyA6ls=;
 b=m8wHhmw4kzdqJNcRpbvUgDgmjiD+k6dQ9BGVTF9yWb3v1/YVixPNkJMpdNi5p5QsYO
 vNw7htpzCANL2zGgTQ/gqGYCDAqy9b54rYCjYyhyD/2a2XDLm3zuUYN/uSAHycBLj/rW
 mEdeeQaO4OyTBjFm0lbo0cthZ2dTZr2ArHDI4Q36m4eqdzm+NCQAwgRFAMLto3FB61yb
 VpesaOX+eg7wGc8fC3heUOnJxkpzfwkK2lnNgm2wvdpGVCcF7D359dvvEg/LF2JMju5Y
 lJKWxh6ypRbG3FYRUqp+VSjIIH1zi6DbTC++KI5+KPxGyedNohagfogLaH1KrOk6QnRu
 KbUg==
X-Gm-Message-State: APjAAAVGhUw6F1VG2ZKi8/adbFnQ4Ca4YgVGkhLWgAwGxrUh7LdlL3Rh
 xhWN2Lb5lMeKlKwJT3OdsNM4Nw==
X-Google-Smtp-Source: APXvYqxhjxvfFMx5H8R1QudznXOIqDnGjcbkjCcXmSU+amSFprfZ8GJ4vg/6CaJfYx/lPRHuS4NhiQ==
X-Received: by 2002:a37:634f:: with SMTP id x76mr20791937qkb.205.1561981414830; 
 Mon, 01 Jul 2019 04:43:34 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id 2sm5197840qtz.73.2019.07.01.04.43.33
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 04:43:34 -0700 (PDT)
Subject: Re: [PATCH] ARM: mm: only adjust sections of valid mm structures
To: Doug Berger <opendmb@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <1561671168-29896-1-git-send-email-opendmb@gmail.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <c11ebd80-0692-b001-42e4-59a8130af056@redhat.com>
Date: Mon, 1 Jul 2019 07:43:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561671168-29896-1-git-send-email-opendmb@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_044336_254453_3D96AB7A 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/27/19 5:32 PM, Doug Berger wrote:
> A timing hazard exists when an early fork/exec thread begins
> exiting and sets its mm pointer to NULL while a separate core
> tries to update the section information.
> 
> This commit ensures that the mm pointer is not NULL before
> setting its section parameters. The arguments provided by
> commit 11ce4b33aedc ("ARM: 8672/1: mm: remove tasklist locking
> from update_sections_early()") are equally valid for not
> requiring grabbing the task_lock around this check.
> 
> Fixes: 08925c2f124f ("ARM: 8464/1: Update all mm structures with section adjustments")
> Signed-off-by: Doug Berger <opendmb@gmail.com>
> ---
>   arch/arm/mm/init.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
> index be0b42937888..bdc70dff477b 100644
> --- a/arch/arm/mm/init.c
> +++ b/arch/arm/mm/init.c
> @@ -616,7 +616,8 @@ static void update_sections_early(struct section_perm perms[], int n)
>   		if (t->flags & PF_KTHREAD)
>   			continue;
>   		for_each_thread(t, s)
> -			set_section_perms(perms, n, true, s->mm);
> +			if (s->mm)
> +				set_section_perms(perms, n, true, s->mm);
>   	}
>   	set_section_perms(perms, n, true, current->active_mm);
>   	set_section_perms(perms, n, true, &init_mm);
> 

Acked-by: Laura Abbott <labbott@redhat.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
