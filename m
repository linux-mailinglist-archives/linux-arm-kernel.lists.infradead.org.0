Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D362EB07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSmlhdKbocAckG0fOAnBbLdQvQ8bt3eHiGxe9L+Qjjs=; b=fyrvyogY04nLPB
	loC7YDgdJevzLPRD5ajIoHO2ZGGlEUkwvYUhS+ckYj1ps9NYQo75BKxzyXAEjLid86wCSI/E/S0/n
	BhAfMtk250tb2F+j3+GjsiXRCzXHan/KnLwdSI0BTlerqEr/g5Cc9i+AShhmyFYNxqMRusBQh+80T
	6AHzgvg6jFrcK0oHBG2wvD5vJGFoLeZ7HfsQiMOHHtgiztS70uxtabSPh8vIRIq1dGBO3qak2oJFQ
	Bb2TUgi54KkkeDR5dLdOwNqyJq2FMuoPiEGejsL7mwvrhaRCVZfR4mTnJLpos7MyNyi8wXMNi9/9i
	RWWOAstK5m3z9+FkuU3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBRi-0005NF-5V; Thu, 30 May 2019 03:09:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBRY-0005Lo-Kv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:09:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so1930357plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OmzS0cCYSeF9wLdQxR8FG/dwjSDDPJoLt6uVYN4rcVg=;
 b=fwN9bbh6ICGItxjtlQGwVEtg/04KQ/MDyZPr5CTAhamH/j6zEETGIIyGIoiOT7tMkm
 TYCOiM7AodXisvs0B72naq6ccu+t9epOC/7mvSMCyIsQ9vgzrOZWE9bnKRSaW3eS5Dvz
 vokmc19RcilM4JSeA8bjFdx5NLXJPvrxbzQQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OmzS0cCYSeF9wLdQxR8FG/dwjSDDPJoLt6uVYN4rcVg=;
 b=etl+AF8Rz4NK2OkvgMkTc0pJyQTOKch7QoZvnXHELdkm+b53zQ73sxgTCn6OjXazjg
 xTzYxJ1s/tb6/g0sJgDDXbOAuvQWh9bQPnz/3eyRn6FngWdpE06dKGnvDgZaRoyndVVQ
 ANwpyULzvkzto87aZpPp++DqG3ZWa3TEd5uZrz5SyEyo168+41rnTpxWE+9oB19Y8lJn
 1YnTLDM2GBKgQligCPBT/Wgxc+ioNh+rwD2POsY4MTKw6/+KobF881xXP0RfxOG0TFBj
 jzpYhmTaxtZroaFlbUgaYlXQNVUkV2ZngOuMz2SKaARgpHgVqtPZ4aCbPcFx0DDXrrl3
 nzPw==
X-Gm-Message-State: APjAAAU/Z2KUN1Bd4HM+R3bvdDXBtAbIM83kOI19sjul8/eKzWcvkZr+
 HrulhG7y75ZAIiRpW13lj2ho+Q==
X-Google-Smtp-Source: APXvYqwiLyr3dWB88BT/rlnHRbPujmIWoSVzwcXAGnHqu8cE/OYRKnziV0QLXkDkqh/Rl5OdogOHGg==
X-Received: by 2002:a17:902:9b94:: with SMTP id
 y20mr1599597plp.132.1559185765844; 
 Wed, 29 May 2019 20:09:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e123sm698835pgc.29.2019.05.29.20.09.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 20:09:25 -0700 (PDT)
Date: Wed, 29 May 2019 20:09:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <201905292004.3809FBAA66@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_200928_705694_046F7FC9 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Diogo N. Sampaio" <diogo.sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:25PM +0100, Kristina Martsenko wrote:
> This series improves function return address protection for the arm64 kernel, by
> compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
> should help protect the kernel against attacks using return-oriented
> programming.

Can you speak to whether this feature should be enalbed in addition to
or instead of the standard stack canary option?

>  - The patches make use of the sign-return-address/branch-protection compiler
>    options and function attributes. GCC supports both, but Clang/LLVM appears
>    to only support the compiler option, not the function attribute, so with
>    these patches (and CONFIG_ARM64_PTR_AUTH=y) an LLVM-built kernel will fail
>    to boot on ARMv8.3 CPUs. I don't yet know why LLVM does not support it, or
>    whether support can be added. This series may need to be rewritten to not
>    use the attribute, and instead move the functionality to assembly, or to
>    disable return address signing when building with LLVM.

I've added Luke Cheeseman and Diogo N. Sampaio to CC. In looking quickly
at the LLVM support for branch-protection, I think it's just missing the
attribute target glue needed to "notice" the attribute markings. Luke,
is this expected to work Clang currently? I'm not familiar yet with
how attributes get wired up, but I think it should be quite possible.

>  - more testing

Is PAC emulated in QEmu yet? (I assume I can't get real hardware to help
test this yet...)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
