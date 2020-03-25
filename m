Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CF11931D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySvctYWGieqJgICSNPWZv3/gFdRp4gRDP/jVnDmub0g=; b=SHIj1I+fTgufLS
	ONyg/wZwmRq2ArKPWbzsVUc+xBvkmD6o8QtB1dvmNEigK5eYKp7TXLNjWgYO46fFS+CohSIUYMio4
	wNivRHOmAj1eIWGBlCdAtV9om/Hj4XI6UqRJd6h7dtcEprsQRuJhFv68gMat4nJS7JYK063h8J1H8
	3nfyke2ANPVlgRfLN9qLMmkaOTvhXcDnUqX8rk2KEyqK94iaF9+w81YdBL1DQ2wGSrtA9UwkFyFLJ
	3l1QAwZijqD8H0+xjLeu1OEktdAMDLeQjYWy0ATlvzZ3rhJshVw77smSXHO5qk3mva/4mgWHbxYoM
	4aM5k6UML5Idt1Epfb5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCXd-0002bo-0b; Wed, 25 Mar 2020 20:22:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCXS-0002bT-R9
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:22:12 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q16so2610259pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 13:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PdpEIpQ/wKeSgsRAafJKurWryJo4Td2Yn8/4nS7DvLI=;
 b=M3COaVcIwpKVfcCr80swHvdh9xXacj7eY2qC2ds0xZUIr0GOt4mzJLwb1ZwbVI9+Bg
 XQEamHqFR+VeDMQ3FRvP7wohJct4eF4Q0yfFFLHyAiNgQdrXUvp5l3OBfu+dUDGlCeG8
 TwUeNQNwBIaBtP7S7OlSpq0LgGwC0BvmnAp9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PdpEIpQ/wKeSgsRAafJKurWryJo4Td2Yn8/4nS7DvLI=;
 b=m3M/W3i+U3aeAUSzNpKgA5ckIiVGF4XA6rxG4P4E3Y60QGBl2HZ0lkKN7x+Z4MHJPv
 KPd9eRiX6g5iMHwy4YZpKvwM9vEqDr1rjgVH+Z5fHE28jSF0ZKXHEZ2YE2+gCoHGZDw0
 021sALlvr7+tRGo95e0fDy6/8oNoNYQVr7vvMLHm8jb8X/RFB1TfMQNEllf5wA874vgr
 kdnpW0+G4rz7cc1ee+wJ1T/R1ZMrI5DzfEo1O48QT4DfN8BdqhEum5BtFJwPshwhmqXn
 k1+7AWoqz6mblWcqeeQ0/4fyhl4KfFDx5hMwvGE1qj+xj78afmXs1Iw7i0PELG8ZYkIu
 bh7Q==
X-Gm-Message-State: ANhLgQ0yKuHoXtGmji6Rvh1r+rFRYvyIhqRBR4MHaCM6gyB9SnCeY8Tm
 icKootDyqeHger7Jx4/Yxct8sw==
X-Google-Smtp-Source: ADFU+vs+9qXw30Y/gM8gDtnz4iYFAg0dyECDyKOna2Nf6+mD+qup1rem6mTHJ82584OyB/TSrpCOAg==
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr4491897plp.252.1585167729772; 
 Wed, 25 Mar 2020 13:22:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q19sm8285835pgn.93.2020.03.25.13.22.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 13:22:08 -0700 (PDT)
Date: Wed, 25 Mar 2020 13:22:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Message-ID: <202003251319.AECA788D63@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-6-keescook@chromium.org>
 <20200325132127.GB12236@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325132127.GB12236@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_132210_908002_B4E545BA 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 01:21:27PM +0000, Mark Rutland wrote:
> On Tue, Mar 24, 2020 at 01:32:31PM -0700, Kees Cook wrote:
> > Allow for a randomized stack offset on a per-syscall basis, with roughly
> > 5 bits of entropy.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Just to check, do you have an idea of the impact on arm64? Patch 3 had
> figures for x86 where it reads the TSC, and it's unclear to me how
> get_random_int() compares to that.

I didn't do a measurement on arm64 since I don't have a good bare-metal
test environment. I know Andy Lutomirki has plans for making
get_random_get() as fast as possible, so that's why I used it here. I
couldn't figure out if there was a comparable instruction like rdtsc in
aarch64 (it seems there's a cycle counter, but I found nothing in the
kernel that seemed to actually use it)?

> Otherwise, this looks sound to me; I'd jsut like to know whether the
> overhead is in the same ballpark.

Thanks!

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
