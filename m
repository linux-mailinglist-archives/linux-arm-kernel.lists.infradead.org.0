Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046AD85E1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sTRSYCNJYzk+6idplO97Um98YJTw3PFJFE4TTzk47bg=; b=p9ZvxIgFyNfcBg6fwIewnq0f3
	gTqQHY02rZ7ZvGY8ucKWdskp032hxn5DacBS+Su5bwXZHziisBqYN6tq/1x1DVAKhzCxMeMUOGVXC
	VR2AepH3EWLHbha7zGiAH9HTW+TQJWqC46TGsMz2Tkp1rSLq1n73oilxNQTq5AEyiECfFpPwRYrBb
	4V613qaRV7kOmNQjsz77AyfErM6mbvVf1EWi/eevKCLDvcxv21IOLQcxcUhuOoJuTMQXG/NDRjQNN
	BtNYPObdFZmLV7mcRGjoRurQz+TajQjWG2SYjOzDy5+8uuWz0xu9b4hhb/nwU9zOKOp5JePifqon2
	FkF630wCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvebD-0000B0-Ev; Thu, 08 Aug 2019 09:20:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveah-0008MW-Ho
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:20:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so88202252lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 02:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OCitiiIQARt2srQdTEp8HHKk2MswJS9hy+qm/HN3L5Q=;
 b=eGiX9Khh6PGwyt3vEDZS5i+7Ttn3dev6cKijGsAKu98PEo2SOHWYpChGzAR8G6rqiH
 jzgQRh6WatLMuo4AbNf4LAJr20oUT+cZdU/1CJnSqTguKc+Ybw4jmkdw0OadBReXodeF
 ebkbMHm8MDy0PwD/pEvqEAPbq07rO3qstGtOj2YxInvoyEp2nXA39FzVCr7+4l19jsYI
 3s9hm6A/4KWKEqwiGw05Tvffpb0A0mj+ayAeSD24M3N45J6I7gHbT2TjJqBsaCxM8sqn
 rQPLBU1qx5jTkktaKHQLtADroikDfkHoEs6q4//nMMWQlm8Px3F2v3VdsnP0ZIgPpvGb
 4l2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OCitiiIQARt2srQdTEp8HHKk2MswJS9hy+qm/HN3L5Q=;
 b=N1ZG++lJbLUuyGbYFbbluxfm4bnWGqEcdqT3NiFyMRtWNIa+rfV3zJa7m2aDuG4AEf
 CwofC2yuQDuAMcblKByAimqLi68pIGHgZSwBL42wgRQ+WD3Oe2HA0NxNtVZsBSdlyizi
 7dkwNhXF6l8OsSRF4dwozbrw9zarmgsHcELO8f8IDQJBlNhYuQVLvCTl2AUjfYQFvLnI
 ujvqF8SraHaquPlTslW1GD2hTMtLARAEGLbAE81skYEasR4QIM18EKZsPs5qLRIu1y+M
 QtXDuWi47HHhqeppQWCdzeKUh5EvqoA+Ji/BPginqTH3Nv2T31+HDIj7K5/loAYjoYgO
 KFQw==
X-Gm-Message-State: APjAAAW+ZV8JtB//tbRYxXm5vCZF1g+1noXVk4AmbCB4cPgfafdZZycg
 Aqgwutg2D/+lhkBdEHdkSrAi/Q==
X-Google-Smtp-Source: APXvYqwAgmAyvFxsvAFzBlQwmsh/xeHT2UOBWqRNNJ6VrtKLtOr+7Myij8Z/3eE0oJPU4/4mQFntnQ==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr6063276lji.227.1565256009622; 
 Thu, 08 Aug 2019 02:20:09 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:8c7:ada9:25b2:24d8:3973:eb87?
 ([2a00:1fa0:8c7:ada9:25b2:24d8:3973:eb87])
 by smtp.gmail.com with ESMTPSA id u27sm17024138lfn.87.2019.08.08.02.20.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 02:20:08 -0700 (PDT)
Subject: Re: [PATCH v6 11/14] mips: Adjust brk randomization offset to fit
 generic version
To: Alexandre Ghiti <alex@ghiti.fr>, Andrew Morton <akpm@linux-foundation.org>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-12-alex@ghiti.fr>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <68ec5cf6-6ba3-68ab-aa01-668b701c642f@cogentembedded.com>
Date: Thu, 8 Aug 2019 12:19:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808061756.19712-12-alex@ghiti.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_022011_827427_2DE19F57 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, James Hogan <jhogan@kernel.org>,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 08.08.2019 9:17, Alexandre Ghiti wrote:

> This commit simply bumps up to 32MB and 1GB the random offset
> of brk, compared to 8MB and 256MB, for 32bit and 64bit respectively.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Acked-by: Paul Burton <paul.burton@mips.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>   arch/mips/mm/mmap.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> index a7e84b2e71d7..ff6ab87e9c56 100644
> --- a/arch/mips/mm/mmap.c
> +++ b/arch/mips/mm/mmap.c
[...]
> @@ -189,11 +190,11 @@ static inline unsigned long brk_rnd(void)
>   	unsigned long rnd = get_random_long();
>   
>   	rnd = rnd << PAGE_SHIFT;
> -	/* 8MB for 32bit, 256MB for 64bit */
> +	/* 32MB for 32bit, 1GB for 64bit */
>   	if (TASK_IS_32BIT_ADDR)
> -		rnd = rnd & 0x7ffffful;
> +		rnd = rnd & (SZ_32M - 1);
>   	else
> -		rnd = rnd & 0xffffffful;
> +		rnd = rnd & (SZ_1G - 1);

    Why not make these 'rnd &= SZ_* - 1', while at it anyways?

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
