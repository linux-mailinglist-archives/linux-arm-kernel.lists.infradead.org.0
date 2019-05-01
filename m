Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0021A10EBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktZjC9i92fztShXPAwLs2eRZxyi0HSiasgLvaZs1kyw=; b=ZdD55eB1sknN1t
	j3dzx8+CdAE30uFL7blxPkrtL0oKteN2wADTPwEB6FVTi5dt4aHoA7S9rEEnI9YSQtuOq9cd/lTi1
	OlByPDPwQqUZUTUzBwViO5KhD58RQcgcbuVfK1AreYkfiha7x9p7XvtxJ0CGJl7QFnjGF14w3U+9n
	+YwZjYK6dP/Bk4R6vhmD4JnQy6+pF4bRdE7k1ExPOi2QZ1OsH1EtClm+XQE3+vIni05NmS0eHTnJH
	Bc0lvlwtzmahrYvyrQOSrLWtaF3kgAWxxwEUrdWZLYRXUuY7sd/tcsvlbNcPPnp+Twh2B6eDRo9kO
	Y57DA+Gz4bz2/F6zzkrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLx5O-0004QR-GO; Wed, 01 May 2019 21:48:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLx5H-0004Q5-UZ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:48:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id k16so355738wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 14:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ISxFsNQTTZgb94Y+nE3oZI+k8F70LS/7cW4W/9uLa7U=;
 b=OcHYTYyMKiyld7evqlH2vdeCYcF6+pxC+w2hlQ6NSntJcjs0NMlozgV+dTlEL/aDOq
 1avpIR9qmwl7frnX6lGtFw28I/4yE0YIOzJ2L2zKHB4j4UKA8bOT12WDD7veT4UF1ghp
 +FDT3woAmbc/CncNlT/fZrWHrjkAheIS48VwSyK1mKF0Jla4P72Sqc4A7V2PHfSvZviI
 GkV5J/y2jdeWoIqUqAYJuhUj2+c5LDYpWz/uhfgeEBjhbmYn1q9ukrlNyJ7PuB8Kbw9P
 kfNcfc4h5RVllMCyxoPCh+LNvl5FoW1nTCXRkMZ7m677AVsP1LY36az1L1ULuODoYZv/
 jCzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ISxFsNQTTZgb94Y+nE3oZI+k8F70LS/7cW4W/9uLa7U=;
 b=jL/ycgxRjpx2b02kxmMc2idte2RVEiQrkH97V6ajSk/gOuGjrPHFeZM8nCDnndVE9B
 UC8k81XCM3iqe3JCOEiIKXqNnohYb0tYI9d7NxLx+P2nlr75BIHfR6AAsyBEUfMgFIdG
 cJzELPzIUQJb6xRzfQAdfaFWOe2qRGmo0EoN63HNgs+cwa0DtNmdFDSRLbOtX4Ts5MGe
 r/Gt2cKD8TFEgxOreRVJSjhltZpEAr8BCm+Lw1r5kS5tbGw8vcGdAglrfW4GhHLKqRa5
 8dQM/KWw7aaDj3gU1suuQWVVsGPEyLXDXQvKlgNkoy7yp3DJgd3tg/Kfh7ZrxX9d2pBW
 PKfg==
X-Gm-Message-State: APjAAAXE4fg8cIw25lZ2Irc8EFj/0hOkqZeRS5gIuTul4OnDdxBDeSCz
 aqxbyQan2HucZfuCTVkFsMg=
X-Google-Smtp-Source: APXvYqzWng3pdPQ2BP2fhMvQnPtjtHCcqRh/94dsv2GLRx9Y0hUc1T0Qby9lY2ggvwI9sBUOqXKlVA==
X-Received: by 2002:adf:e6c6:: with SMTP id y6mr195674wrm.225.1556747289408;
 Wed, 01 May 2019 14:48:09 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id d16sm34471858wrs.68.2019.05.01.14.48.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 14:48:08 -0700 (PDT)
Date: Wed, 1 May 2019 23:48:05 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 4/5] x86: don't use asm-generic/ptrace.h
Message-ID: <20190501214805.GA54736@gmail.com>
References: <20190501173943.5688-1-hch@lst.de>
 <20190501173943.5688-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501173943.5688-5-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_144812_032778_026BC2A3 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.4 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org, x86@kernel.org,
 Oleg Nesterov <oleg@redhat.com>, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Christoph Hellwig <hch@lst.de> wrote:

> Doing the indirection through macros for the regs accessors just
> makes them harder to read, so implement the helpers directly.
> 
> Note that only the helpers actually used are implemented now.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/include/asm/ptrace.h | 29 ++++++++++++++++++++++++-----
>  1 file changed, 24 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/x86/include/asm/ptrace.h b/arch/x86/include/asm/ptrace.h
> index 8a7fc0cca2d1..9b81ef539eb3 100644
> --- a/arch/x86/include/asm/ptrace.h
> +++ b/arch/x86/include/asm/ptrace.h
> @@ -98,7 +98,6 @@ struct cpuinfo_x86;
>  struct task_struct;
>  
>  extern unsigned long profile_pc(struct pt_regs *regs);
> -#define profile_pc profile_pc
>  
>  extern unsigned long
>  convert_ip_to_linear(struct task_struct *child, struct pt_regs *regs);
> @@ -175,11 +174,31 @@ static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
>  }
>  #endif
>  
> -#define GET_IP(regs) ((regs)->ip)
> -#define GET_FP(regs) ((regs)->bp)
> -#define GET_USP(regs) ((regs)->sp)
> +static inline unsigned long instruction_pointer(struct pt_regs *regs)
> +{
> +	return regs->ip;
> +}
> +static inline void instruction_pointer_set(struct pt_regs *regs,

Nit: missing newline between inline functions.

> +		unsigned long val)
> +{
> +	regs->ip = val;
> +}
> +
> +static inline unsigned long frame_pointer(struct pt_regs *regs)
> +{
> +	return regs->bp;
> +}
>  
> -#include <asm-generic/ptrace.h>
> +static inline unsigned long user_stack_pointer(struct pt_regs *regs)
> +{
> +	return regs->sp;
> +}
> +
> +static inline void user_stack_pointer_set(struct pt_regs *regs,
> +		unsigned long val)
> +{
> +	regs->sp = val;
> +}

Other than that:

Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
