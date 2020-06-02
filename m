Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384321EC2BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIoTeOyIfy/m7M/CbREyZ0izPEH9cE2rchjmaoNYekE=; b=V+7TkXKZcEByGh
	ItnAfr6VAo1X+iLwSRGxuJNL4hzxg46XcBPBSGNSFm55jaJgVMFl9brH7XCA+JPiwgs/csomB55dF
	uw/u2KpW0PskFZt5uhaOXY+tPfuyUDNURfK+FNXekcvyTQ34dwaZ/okPSfNjo4UC5OUUq98X00g2l
	48mlKhJD9zJ2rsVKCfaJYwHUUlGz9M3gvp3Q5UT9S219DmTVSsLjgY8b7/NxnPBvnRK9JHKk0zJTQ
	NeC4Y43QxAQizwaVS4gc23YkaLaklc7/9RAoULac1/KfdTY35XAzUe/sjRICGaP6OGMmPSaejQJmo
	gib0LCNSAAcGNTCVERFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCbP-0002kH-NT; Tue, 02 Jun 2020 19:29:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCbJ-0002jG-5i
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:29:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id w20so5604533pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 12:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jt9wTvbBB9l8BA385ydswer9G/ASNFMgQz2sVTAlGwY=;
 b=BGjm8Ah3Pr7hHscdoJXTL21nGZPG4PnLKU6jA9IWJJGiA3WnGcbIzvTS7bxWuFIUQw
 DPDRWnq2PLJmKzmq5Uf8cCKL7sHZKR5bCnU/j65E0birBHYZWTXje41hiOgnXH/qTjow
 ijI6FUsie6nRXhrLqyHtL+qqUQrZ4bpjgliRZtslnm1Vt4k9hkLunsOH+efJeWr01hLj
 dz/uqXkmODoVaCaF2mdefg2ay3SvWLgY93xskoihdt1S3hQ3siqSAumw2cYrhovzu4SV
 u+OwNhe5YYDzQaxC9jimnrgVzhr3cV5o4cYRthNKu3/euNBxL6MW2ywxy4cd4kbCMYMF
 V4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jt9wTvbBB9l8BA385ydswer9G/ASNFMgQz2sVTAlGwY=;
 b=aXPiAjI1pW1i3kHYl86fJh+qwmzcITXbIvQiNjaJ0/l8ZXMiSgtuR6CKyr3XH1YGfb
 AEgmw+7z+PqQqUtIVXJw/Kf3bOR4fnI2s628Ka/Ch6c0/G1XtL6XOy71DiKBIlYdyEgj
 Zd6EjhoJyFQMX1HqmT6btuxO9wNXVcYcEpeHLvEFA5g3EUsCrCHDYgbBOb8hAtE7FyyE
 W6ZuKcLTvgvqRnMVN/HOChmijt0ZcDRKaba9R6ZBjXLZ0GyDuLrmZYsZu8BM/273uqe7
 Uw4U9XM0vHBQZ+gDAjhbl2dxu0rGGYy7OKvM30qu3TcBT6YMPeW+ExtDNt5AEtmesbZJ
 b2oQ==
X-Gm-Message-State: AOAM530AzSvoSPBcNAL+/XdjSZ8RzZ8V4P3B11u0HOIy4h8YT5KXDx8q
 tyGIdcDvLp9YoLq+VMYDIhtx4LoQhwAHGw==
X-Google-Smtp-Source: ABdhPJzONNh6ti+mI0rlAqkmgvqRBA1IcAxfDD8TOiWcba6fmr7wI9/I20P9retKbEDJLLAu40knuQ==
X-Received: by 2002:a63:565b:: with SMTP id g27mr24394556pgm.166.1591126163012; 
 Tue, 02 Jun 2020 12:29:23 -0700 (PDT)
Received: from ?IPv6:2a02:8084:e84:2480:228:f8ff:fe6f:83a8?
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id s197sm3267932pfc.188.2020.06.02.12.29.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 12:29:21 -0700 (PDT)
Subject: Re: [PATCH 3/6] arm64/vdso: Add time namespace page
To: Andrei Vagin <avagin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200602180259.76361-1-avagin@gmail.com>
 <20200602180259.76361-4-avagin@gmail.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <fd789c85-f08b-3397-d463-501f7ee5c974@arista.com>
Date: Tue, 2 Jun 2020 20:29:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200602180259.76361-4-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_122929_212768_FA677B3A 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 6/2/20 7:02 PM, Andrei Vagin wrote:
[..]
> --- a/arch/arm64/include/asm/vdso.h
> +++ b/arch/arm64/include/asm/vdso.h
> @@ -12,6 +12,12 @@
>   */
>  #define VDSO_LBASE	0x0
>  
> +#ifdef CONFIG_TIME_NS
> +#define __VVAR_PAGES    2
> +#else
> +#define __VVAR_PAGES    1
> +#endif
> +
>  #ifndef __ASSEMBLY__

Not an issue as-is, but:

on x86 vdso+vvar is always the same size with/without CONFIG_TIME_NAMESPACE.

Timens page isn't allocated on !CONFIG_TIME_NAMESPACE, but vma is the
same size. Which simplifies criu/vdso migration between different kernel
configs.

Not any critical, but just to note..

Thanks,
          Dima

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
