Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD1064B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 18:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrmA3JwhoANmdZT8CbPLYCk/5EPB4B7+LDwBX7/yZQQ=; b=o1h6WhBLYgRN+Z
	TairCChuibcnQK9F5kpr/zQkK1eP9MC85nemOo3CGbLve9ENEgkMgsMt50YOJ2cj77wOiQNGmZILR
	wPjw/ODmmqhsdEJF1KDd7iYlzIZSaRXpYSWdTjgD6TYgizE+JOzIMjgBep1JC6zaw3Jv3jnwW8uqK
	5ugcSpZUFdwrUW+LxDbiYGToEgtGHNL/q4odCV5MoceipYCZVioT+bnlJVsGBWI71bij4cXOoOtTh
	uBGUPv6pTKwdqw88WxHdMjBVMJEjQVXv0pCE5PB7a4juhFLvqvokGjwUdM5IYNRO3uE7LwTwPjPxy
	HwBwIjGDz/LgtTrZ7x+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFu1-00024m-Hh; Wed, 10 Jul 2019 16:57:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFtn-00024I-UI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 16:56:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id 207so3035034wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 09:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7OwvYhB15aIMvo/DzgqTZyHfK2iyk2Ozeap178Si5cc=;
 b=fF4+44OiqYPDLpiMhDd8uRC81fZ+5ZiTlL8IYEnymiVPLjDQK1feNJAv4DvCgWujg/
 Dtld9lq52t0/fGN+oXZ7AflJPZuAJvgF2fg1UuBiciR0ko37nM/9QQUdnMDobkcM0d5O
 F+Daz1XqOp7PFE98PLoRu57txu1Voa7s07Sde+AIjohwN3FF4tJTFLap6zQVzrFELqrX
 L1CctMo/eXdVaidD6gtjUYn2sYwcrWkuoCvnHI34rxfypgfpS5y7lYp4tyBJrC3nYtjQ
 Z27nSQfFdfcjcxCcDOuX4lfXsjWeP6T/GnpqkUD3OusK22W5xzG48iH+cMSN1eYfNxw2
 c5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7OwvYhB15aIMvo/DzgqTZyHfK2iyk2Ozeap178Si5cc=;
 b=qMY5qz6a5v8g6r89EftRjryNhBeGa4IWLzSOg/sqGE//48ZWV73333TIFcbn/DT9Pp
 yKELh1hLduZTQ2D45v1+nOUS6R6ZeImh0d0IWTi/h1Jj5ZDOQIcP8dUDCAlyVBzXEU9v
 IuQ9r3eFUQHEuqkPBHqSgDSY3YwGE38Avwhl/sWwaMuDvdYHHwcWAI4sQ1q8ZjwWK8br
 PjrO1vOzmw1iujL1RCo1VzNbTsvfSVVuYUTUPV+Fj1mkJtj56aDLjtsxtezrARgtbk/8
 9gU5+3iv4VAlQerPBRrmSZu/tsMqSrqLSLEz5Wp4wlX/O92yP17jc/bnVcT6rZSx/ls/
 SVtA==
X-Gm-Message-State: APjAAAVn2Gdo6UNFzrU6EmzSf7iLqxy2XPtLGYgzbQG9AfEb+pnFl7S3
 QbsZQ0DrsgNanLzufdzAvKc=
X-Google-Smtp-Source: APXvYqxYbymgnQTtkuBAonwUEvUE2MH+9+rn1rpzlqSEVDTpmHe1buRlfNK4vNYxBPWpVLMx3aTOzA==
X-Received: by 2002:a05:600c:2243:: with SMTP id
 a3mr6023248wmm.83.1562777813579; 
 Wed, 10 Jul 2019 09:56:53 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id e5sm2553928wro.41.2019.07.10.09.56.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 09:56:52 -0700 (PDT)
Date: Wed, 10 Jul 2019 09:56:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
Message-ID: <20190710165651.GA29814@archlinux-threadripper>
References: <20190710130206.1670830-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710130206.1670830-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_095655_996685_7F3C4942 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Dmitry Safonov <0x7f454c46@gmail.com>, Mark Salyzyn <salyzyn@android.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 03:01:53PM +0200, Arnd Bergmann wrote:
> On 32-bit x86 when building with clang-9, the loop gets turned back into
> an inefficient division that causes a link error:
> 
> kernel/time/vsyscall.o: In function `update_vsyscall':
> vsyscall.c:(.text+0xe3): undefined reference to `__udivdi3'
> 
> Use the provided __iter_div_u64_rem() function that is meant to address
> the same case in other files.
> 
> Fixes: 44f57d788e7d ("timekeeping: Provide a generic update_vsyscall() implementation")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  kernel/time/vsyscall.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/kernel/time/vsyscall.c b/kernel/time/vsyscall.c
> index a80893180826..8cf3596a4ce6 100644
> --- a/kernel/time/vsyscall.c
> +++ b/kernel/time/vsyscall.c
> @@ -104,11 +104,7 @@ void update_vsyscall(struct timekeeper *tk)
>  	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
>  	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
>  	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
> -	while (nsec >= NSEC_PER_SEC) {
> -		nsec = nsec - NSEC_PER_SEC;
> -		vdso_ts->sec++;
> -	}
> -	vdso_ts->nsec	= nsec;
> +	vdso_ts->sec	+= __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);
>  
>  	if (__arch_use_vsyscall(vdata))
>  		update_vdso_data(vdata, tk);
> -- 
> 2.20.0
> 

What an interesting function. Looks good to me and I can confirm it
fixes the link error.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
