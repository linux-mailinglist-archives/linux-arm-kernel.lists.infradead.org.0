Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4482BA6101
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5z2RhStQUKDqsBthqrXuWGvaoNdeEjTW1tBuP1WIwY=; b=d3othtVCdhcuu5
	9z+gFIYYEw1JKrK98V+qtsuCnPQcCbMxlNTg6q5lkqKWLePwkrbUxC6LurASKZODkO3L7r6kRfn2K
	e78Ivva0XZziLN5w/sXZi80ufaCutg18Q23zHgtOPNx1uiU27HvD/Xj8pC+BVU8cV8B6ELJwCGXga
	1RG8mqW170Zg/H+RkVvTfT/TSDax6p8rycQ61/2rooyHYowp7gqlOE0z5AHNVZbeL4FewafHlvW/G
	JTHAKE9iqhoemRHWob6RTq3hT55lI1IhEnG7DXZbvOP2LOW54HKmHdI/rqXsP4odOnIsvMkOysXdm
	lB4Xa2Pllc/23z9CEuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51sa-0002gC-Fs; Tue, 03 Sep 2019 06:01:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51rZ-0002Y2-4A
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:00:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id k2so15173102wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 23:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+KpURmXo/gpvzuxLacI8l4/Y18yyT2tyrHZ3w0JhZY0=;
 b=pzONr97trKK7CgvTxacgV84rSm2votAIVgVQArPIMDNfdYXHOhMvCg0p9Niu9eDQ0n
 xMp+KBwIBVUhszSzuaG2hBsFjHr0hMvM+H2Wbs8a92I9QdCfU+JuQG0n195Ftik1fXcx
 RHpXeT4DIdLN8gE2jccKMNNRNNQU1kNn4bQCUXxDOZKRz5VvC1u4kqY1708UEdVWHtZy
 aQqB9tpH7CDGENjNTGhPJfQ0r3L23SZlipUm7b1+5xPJRPSzI7n66LVVdYhUQ/CCNS/G
 7oMErcpXo+ZETyACc1fU3S79nX5bLaK2kk2Zt/4JawFY8KtIXLCwVtbDvLl44wcSQsFa
 mVmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+KpURmXo/gpvzuxLacI8l4/Y18yyT2tyrHZ3w0JhZY0=;
 b=t+mhLA5W2tWpAC2ECgkDI4lFC9bayc71CbQus2Lf7YTqdo9OzN9YBuqEoZMOnGlf5O
 Uw43OYGozIJrjTHM/066ZqfwI7yGLDzmxjuRto2opNSdRGdC4xzfPNpHN3BizD9dfd8/
 sP4kRo8X4WxfTRQrY5+DMU5vlZ1Lv7J1Qp90riWD39hvGbYOH8vUBcnBw9JIe2Rke1lA
 YUlk14QRTm1kF6AS68QVW4ta5Zx+IjOtMwX3JMFFvdwwhU7eN7yBMrFrT0b6czBhrqqS
 wOmSr5AofZED8ww/2dXooKEJ1/BrzcgGpzie9GJr4n5b+DK36oluq28Dysph49piaVFG
 019Q==
X-Gm-Message-State: APjAAAWi1lvk7eB0k0Hcb09LKnijU309y2/CiYPFSmfT3LWQe/BnaPfz
 7oZ0Urg67/nbnPN2F8gkUFo=
X-Google-Smtp-Source: APXvYqy8LDsbBFUAwkeK3lWNATKJs7zKcwLPFrCw+Vx6bFdJVJmmHfieEWdz8AOyRDGu2I2LGEAK9w==
X-Received: by 2002:a05:600c:144:: with SMTP id
 w4mr5742715wmm.94.1567490413613; 
 Mon, 02 Sep 2019 23:00:13 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id f66sm6080272wmg.2.2019.09.02.23.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 23:00:13 -0700 (PDT)
Date: Mon, 2 Sep 2019 23:00:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903060011.GA60737@archlinux-threadripper>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154834.26547-4-will@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_230021_707754_6F2B1D26 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, andrew.murray@arm.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> From: Andrew Murray <andrew.murray@arm.com>
> 
> When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> or toolchain doesn't support it the existing code will fallback to ll/sc
> atomics. It achieves this by branching from inline assembly to a function
> that is built with special compile flags. Further this results in the
> clobbering of registers even when the fallback isn't used increasing
> register pressure.
> 
> Improve this by providing inline implementations of both LSE and
> ll/sc and use a static key to select between them, which allows for the
> compiler to generate better atomics code. Put the LL/SC fallback atomics
> in their own subsection to improve icache performance.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

For some reason, this causes a clang built kernel to fail to boot in
QEMU. There are no logs, it just never starts. I am off for the next two
days so I am going to try to look into this but you might have some
immediate ideas.

https://github.com/ClangBuiltLinux/linux/issues/649

There is another weird failure that might be somewhat related but I have
no idea.

https://github.com/ClangBuiltLinux/linux/issues/648

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
