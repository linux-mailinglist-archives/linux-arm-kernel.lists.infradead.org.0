Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED20C9559
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 02:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rsz7vcSyFEu+9/62FKDv4OqmpZLCHVFSkIHCBkjgMU=; b=TIHHOqdKlidv+j
	SUx+2zRcpi2oT+E1tAXQG0n9CWXCfbVIyatHsLVhQCIfOaabHLUwnlzyYMw8bIGi9QtsvfRoXQrNa
	ZB11b1y0Ukphd0AvcCrjXLPMPmbDcwjgsxDh/gy4tcO7g5YVfLj1HumVXqj5Gy7kkgpJCwY2T0YrJ
	aT0oiTWdHxo/LPW33FtzNH03js3XJ3njW6kENVOca7GbUTtI27cJE20cO/+sDOFsBmIK6cPz7aWZw
	2Ph68QjKatobmuPgOEfSrFv5RZmLieUdQUSDNLyWumzgAKvKQTQ+NtnnIlzpHjlKd/Sa9QhEMREvO
	VwU/Cxr1kOYLme0nE4Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFocN-0007Jo-S5; Thu, 03 Oct 2019 00:05:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFocC-0006WM-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 00:05:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id x127so524453pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 17:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eSERWv/dAeDYZPDPVmR4SV3khOIaqqcs+Bqlu8Q3nUM=;
 b=XCxoDAk5bkJ0qaDYm24OZRCwpIXFugB3PiG7CE1ieFg5zkMHAD78Ax/TdgawPzARFU
 Asstm9Mx73DxEvNLehqMpPFa84Pg/cSg9xJ876NW2VVNHxcPqdT9I2xX6hRovi7Aqsoa
 dwPLDnYfdPvvAoT/c+wu9A32Hp4nfNnnAqlm5y9N5SMgsY2Zv77cismDg5PdrDV1g06f
 tPSfQ3kxtjnIXFxumsR/tTkqdxz570jyI6/iDNmUY5IO2D8VFyl7TmnDAK8d4NO0O5kQ
 SLjk9BC3EwVbkIPhi1b0MnlEMrTzQZm6BnPEFBHfGTnLHWc+eb9FP1P2KG0Ydkxtu5AE
 UKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eSERWv/dAeDYZPDPVmR4SV3khOIaqqcs+Bqlu8Q3nUM=;
 b=YQxE50wslqUOZZ8L6NYgjNnCsWztjxANCIiDwRPPLhwps3ij267JQwTkX1zS7C8vA9
 gu396QXSVZYiwUKZTqqcRQL6grNY1LDBryNXPcLZ/r3OmINqG16HfAFI4Y6MNQo8BXAH
 Kx2DbugPRT2aCUdXiiC8qcFWRxO/QjXPNWwtVAkjEBjOyogEEcUZPWIsgo06QttRrrBi
 cOSdNzZ4Aq4P6oIu4UWTFs9M3jXVc9Xzq1PZO7JEK+fFKm7frn3vWbECYCjiakYI2Z+E
 tCEutpUL1YU3eJeM+gWHlekeT2/JmV3SRbp3jKxqgzm3ezURvztkpR0jNfQchUC9bEH4
 1JNg==
X-Gm-Message-State: APjAAAXR16fWfKDNH5OVoRhIEinmuqVev6DUYH2UTqTqILba5NqSmaLF
 XlVelvpmcH7MePpE6LviqMA=
X-Google-Smtp-Source: APXvYqwpVPqlXZYER/PW/zibmkEhfpORcZfQ8gp2Ub7xXCBl9cEqt6R89r7+jxiBp7Ap0cg0aq/Elg==
X-Received: by 2002:a65:4145:: with SMTP id x5mr6396476pgp.321.1570061102585; 
 Wed, 02 Oct 2019 17:05:02 -0700 (PDT)
Received: from localhost ([106.51.243.182])
 by smtp.gmail.com with ESMTPSA id b185sm589731pfg.14.2019.10.02.17.05.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 17:05:01 -0700 (PDT)
Date: Thu, 3 Oct 2019 05:34:59 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: Regression: Cortex-M w/ XIP not booting
Message-ID: <20191003000459.GA5467@afzalpc>
References: <20191002061637.GA7743@afzalpc>
 <c9a8d667-0dfb-2dd7-3537-8683cfc3914d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9a8d667-0dfb-2dd7-3537-8683cfc3914d@arm.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_170504_549660_DB802ABE 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.243.182 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

On Wed, Oct 02, 2019 at 12:55:55PM +0100, Vladimir Murzin wrote:

> Can you try diff bellow? I do not have XIP target, but non-XIP seems to
> stay happy...

Thanks, it fixes the issue.

Regards
afzal

> 
> 
> diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
> index a7810be..4a39828 100644
> --- a/arch/arm/kernel/head-common.S
> +++ b/arch/arm/kernel/head-common.S
> @@ -68,7 +68,7 @@ ENDPROC(__vet_atags)
>   * The following fragment of code is executed with the MMU on in MMU mode,
>   * and uses absolute addresses; this is not position independent.
>   *
> - *  r0  = cp#15 control register
> + *  r0  = cp#15 control register (exc_ret for M-class)
>   *  r1  = machine ID
>   *  r2  = atags/dtb pointer
>   *  r9  = processor ID
> @@ -137,7 +137,8 @@ __mmap_switched_data:
>  #ifdef CONFIG_CPU_CP15
>  	.long	cr_alignment			@ r3
>  #else
> -	.long	0				@ r3
> +M_CLASS(.long	exc_ret)			@ r3
> +AR_CLASS(.long	0)				@ r3
>  #endif
>  	.size	__mmap_switched_data, . - __mmap_switched_data
>  
> diff --git a/arch/arm/kernel/head-nommu.S b/arch/arm/kernel/head-nommu.S
> index afa350f..0fc814b 100644
> --- a/arch/arm/kernel/head-nommu.S
> +++ b/arch/arm/kernel/head-nommu.S
> @@ -201,6 +201,8 @@ M_CLASS(streq	r3, [r12, #PMSAv8_MAIR1])
>  	bic	r0, r0, #V7M_SCB_CCR_IC
>  #endif
>  	str	r0, [r12, V7M_SCB_CCR]
> +	/* Pass exc_ret to __mmap_switched */
> +	mov	r0, r10
>  #endif /* CONFIG_CPU_CP15 elif CONFIG_CPU_V7M */
>  	ret	lr
>  ENDPROC(__after_proc_init)
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index 1448f14..efebf41 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -136,9 +136,8 @@ __v7m_setup_cont:
>  	cpsie	i
>  	svc	#0
>  1:	cpsid	i
> -	ldr	r0, =exc_ret
> -	orr	lr, lr, #EXC_RET_THREADMODE_PROCESSSTACK
> -	str	lr, [r0]
> +	/* Calculate exc_ret */
> +	orr	r10, lr, #EXC_RET_THREADMODE_PROCESSSTACK
>  	ldmia	sp, {r0-r3, r12}
>  	str	r5, [r12, #11 * 4]	@ restore the original SVC vector entry
>  	mov	lr, r6			@ restore LR
> 
> Cheers
> Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
