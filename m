Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F50C1F46E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/p/vBrr5qGifeS33wdCpl9WosmR+3GbHnwawcu5QTg=; b=lL3Ekqs9GuMzmD
	YB9bgelDN5f+BwXuwUGGNLjFCYl7JZ/aMbEorul102s7cKxoyfpjFW8EPNXgQ0CcwppjbvqNOhKe5
	P+7ZT7/8vixB91T+3/5LeP3BQx9KBHDBJ7dDgW6RY/wXCZbGhy+QiPGbRwx47mHKJv8hvw7ocq5F2
	uivkwzCvjApUx/7sDRATLdKG7HMokhdm89+8ANTYIss7BcILu7Zu1CZwGuHlnmDXyvoRQX8nXubot
	pWQFc2HUCb7w+hX52NaMDZqhBpyC2FrowsrDvllRPhU+yhzVx/q8LR3tlIAOaw6DmYkZiSrSkbqik
	NO9h1SBLdjwa+U9c14lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijiQ-0003Y2-DN; Tue, 09 Jun 2020 19:15:18 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijiF-0002Pw-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:15:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id s10so10761750pgm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tGGQ3VocRYuP1AxRJCcf0YOuFdAQhDzmAD+bQaR7nDA=;
 b=eHah8lXm/9NdioI0IQB1zdteauOgwpHoUWv7l0ccJihSiEXHjtaYGtLsa46BXQHRf7
 Yv5rlSSlQSgQ0xLs6A13uJrWkHUd4+wvxefc11Rip7Zheaq+tjhgPtKEc60jT/XwgsLw
 pO9xQmpan/wYr/eEowfxeA5uFIlinxoaAc56M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tGGQ3VocRYuP1AxRJCcf0YOuFdAQhDzmAD+bQaR7nDA=;
 b=TWFwgE1muiJHKvVTpUXsvKGupxmSOeFwEY9q1ADIwSUIBkdxJFAFwo/kBhs6s4zzHz
 XDbkbkUzuW31TeBWkzuNgf/V0gsCZLfbHeiMHJENY89eIzhork6lwewPNU5hguppTr2R
 3X/bCUv3ae0l5kVxNrmgMHFK/wS5bjvAW2qM1EHtdHpuR1hCEumikuNd81tSf6L590fX
 itYc8zTPgLkQqt64u3+G3L78bGen7UlKq9WmXocKTluDq1+iFEcUGpm6qXbBulT7ffLZ
 zZaWbJX4X2xU15RHe4ZSSvZegX5R31NaZ7N3cqgEQmlx2OOCxQyN/zGLCxZgVuVSzO4b
 xYyQ==
X-Gm-Message-State: AOAM532ZMkmn+FaIW/Sz5rnJBPL2tflFOkd1FZb+xGiRlxGOpTkOuayV
 9gHiQZcXPbZFUJLLRFcrM11jXQ==
X-Google-Smtp-Source: ABdhPJyMccFgBeerGRwQ2wfXEHGAf89Obho1rWhLY+bGl8E1JBTsrHPd/c8CjkZ038Wze8SEwIszmQ==
X-Received: by 2002:a63:2248:: with SMTP id t8mr25901047pgm.113.1591730105075; 
 Tue, 09 Jun 2020 12:15:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q18sm8933851pgn.34.2020.06.09.12.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:15:04 -0700 (PDT)
Date: Tue, 9 Jun 2020 12:15:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 0/5] Improvements of the stackleak gcc plugin
Message-ID: <202006091210.C139883AB@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_121507_424960_92201EA6 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 04:49:52PM +0300, Alexander Popov wrote:
> In this patch series I collected various improvements of the stackleak
> gcc plugin.

Thanks!

> Alexander Popov (5):
>   gcc-plugins/stackleak: Exclude alloca() from the instrumentation logic
>   gcc-plugins/stackleak: Use asm instrumentation to avoid useless
>     register saving

These look like they might need tweaks (noted in their separate
replies).

>   gcc-plugins/stackleak: Add 'verbose' plugin parameter
>   gcc-plugins/stackleak: Don't instrument itself

If you wanted to reorder the series and move these first, I could take
these into my tree right away (they're logically separate from the other
fixes).

>   gcc-plugins/stackleak: Don't instrument vgettimeofday.c in arm64 VDSO

This seems good -- though I'm curious about 32-bit ARM and the other
HAVE_GCC_PLUGINS architectures with vDSOs (which appears to be all of
them except um).

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
