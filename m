Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B57F16F79A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rogX9/HH1CocDKiDrW22FKTl0/4d/xhf0zD75MjNTzM=; b=j7FHyhVg/PzM4w
	XAwl1lyz39rOHZ+bAD7pmg1tsb6rZ6FIlmQezLsp65pBWqhnpS6U6OZbd4lktmx7IFlK6mvO3zsBI
	SUFXqTPT7mJ1laAJHeykpvW6ePl0vAJLfsQwNXbkfKYIdf4aogdOt0SpiJuF/3xKILYoU6yGpMDs1
	K8NEqSUyGXaD5Nm7bNAWUExKaTzBNFHN/P56n81bCo/apBuTad2gfy6fXmZ6k/dssepn3PUJ84zQC
	jvLor07zFdyi3uwoqQBdCa/f2E+NMcXwyU453lhNO9e6R+2XF8aKrT4dh6V/suPg6Fzl45j2tgMmV
	V5NpY9fWg/xfAE3g5ERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pXt-0001Qt-UM; Wed, 26 Feb 2020 05:47:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pXj-0001QR-Mw
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 05:47:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id p14so875842pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 21:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mptYcm23xnKvc9dgW9yrQXDjYvemyNk9HOkOd35jyu0=;
 b=GG34xp+sWUcxvfNAwlpF2R/g3l9vUFYZh5jCdgnO1j5GJFdkhJ8n8xO7GULcjNoKEp
 QxNEXfAL5rOSEhshwXbzHaFc2qzrx7b9Gwp0mbHXHVCjBSiWC1UNiT8q6G9dTjhshfOG
 ocqn8ZnQkBG8WTcYA/SDlaoUa0SHMRrTDEjZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mptYcm23xnKvc9dgW9yrQXDjYvemyNk9HOkOd35jyu0=;
 b=nRPtbwCYC9Iq+JhkTU6yIusHHIsRAa5eaqmax43LEmYv26PAoeH9KwtB8a93lCaoCf
 6mprcG1+0umv4D/N3cIMNkZvbVuNIIheKPTvV/kLxJCPIeu4vbCW8604YNp/N6ysBq9b
 wOARyCODonpnHb0cHAa16bD9WzIXcBpHXqOmUEl0BGwEwZ4VQFEVa8jcTRM9oClqDAw/
 +jRI4EJhe+v6cZcTmsLHIcf8JXbJQFFr1VrGW11nwKJKd+XEUF/Ps8CsOxVa/X70JnDM
 yjJczyQ7LVVbzGSHTW9Xz3sicSjxJ4BO/x9/CXDdFLPFrg+9SalYa0zh/yvFtkyXC2kS
 O+PQ==
X-Gm-Message-State: APjAAAUuCtZy9rWsVNDpAu/0/vzB+cMebaf+K9x4+g6ZH5a/Vi4jhecH
 2fE2QkdzQylCs5gNQvifLBE1aw==
X-Google-Smtp-Source: APXvYqw9Hah4jb9PwhTerdiDuprKFah9gRyTjuGaX0a1kpnDdbyuJ+/fWg81/jtilUouDk0Nrkg0Fg==
X-Received: by 2002:aa7:85d8:: with SMTP id z24mr2682501pfn.202.1582696054765; 
 Tue, 25 Feb 2020 21:47:34 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o22sm898504pgj.58.2020.02.25.21.47.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 21:47:33 -0800 (PST)
Date: Tue, 25 Feb 2020 21:47:32 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 05/11] arm64: elf: Enable BTI at exec based on ELF
 program properties
Message-ID: <202002252146.7230873E@keescook>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-6-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212192906.53366-6-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_214735_772256_96388CD3 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 07:29:00PM +0000, Mark Brown wrote:
> diff --git a/include/linux/elf.h b/include/linux/elf.h
> index 1b6e8955c597..5d5b0321da0b 100644
> --- a/include/linux/elf.h
> +++ b/include/linux/elf.h
> @@ -63,7 +63,11 @@ extern int elf_coredump_extra_notes_size(void);
>  extern int elf_coredump_extra_notes_write(struct coredump_params *cprm);
>  #endif
>  
> -/* NT_GNU_PROPERTY_TYPE_0 header */
> +/*
> + * NT_GNU_PROPERTY_TYPE_0 header:
> + * Keep this internal until/unless there is an agreed UAPI definition.
> + * pr_type values (GNU_PROPERTY_*) are public and defined in the UAPI header.
> + */
>  struct gnu_property {
>  	u32 pr_type;
>  	u32 pr_datasz;

I think this hunk should be in patch 1.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
