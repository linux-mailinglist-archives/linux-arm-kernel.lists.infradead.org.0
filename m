Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEBF2E5F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j11iK3MzaZfe/5uyboOExv418cgIIRZkDxjLYc2wVSI=; b=Fg2hNZZuDN49Is
	Xk4rcUp1gDyD2I9rmE4L8aU9BYrzQ1rezIGPj8GqAUJCEasxI3Vepq7sAcXxoA3587oI5IWe0Ve1T
	tBGb5bSEN4FpkpFc16LCphRV01z9rZD9Uxwmm6R0nJe1vGlgO0H5rEZtnVXJP1ovLCvSuGBLusWSl
	12my3TkoiK7JtuPsRWkBstkCQxHw4wGie5DeFXbCAmL+3FRDcQIOeJ25jFWnwNXACiWlTVQipW+8A
	j2JIg64oTBPfuUcocdsjLzeNLgUmXZTjbxIJMVP1337lynAOZtYAR2a42FOV2cbrmV4ErDVuqIqHJ
	xcktCYT+NNJjMSoJfrCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4zj-0001oP-Jf; Wed, 29 May 2019 20:16:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4zc-0001nF-HX
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:16:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so2336780pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 13:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=byH71jcEnWiZocWjFrPDlTMOE7pd8EPRHoYGyukaY04=;
 b=bwKrSUcAFY5li8JHROxevBRkVdZvfftmbN2jvX4D8l/n4Q/b0ePv+zprqpG2KluSLn
 rSYJBFUhtygfnfgM4xMNPYR/Vp/NGpVKFovwEIHmtk8emThGP6iRNZH+rg7exn2dW3QV
 qTeu7YoFimL+W4CSITeRLNxas0G8YpYTWwbHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=byH71jcEnWiZocWjFrPDlTMOE7pd8EPRHoYGyukaY04=;
 b=Icd7rYOl6EqSoB380zfUaIuXEkl3KbsujxVgpHyuOivhSKWYnIcS4Gcqq0rZCd20IN
 zwxIWquA07c3XXfzjscZRrANJULYS+LH3wZIv9H9pxcRjeDc8/L5skDlmEeL5AaROZy6
 /OL1Qx/T0KfGDpHu/g2gbyAYI5UNXgAxSEo8N50SBIQMZlOOJOQ86y166eHwV91oZXSd
 94fVR6r8wPyHL3BlqCMSyWDXCS3AatKwV/yYT6t3oUJRf2vGYxfSdHTxuO2PxJH36Emk
 XzUYnt05YJlIfnBfi/RfY+CTL8iAAcY2QSDWCpZP/5tijDa2kRrydohV1e7/J3lG6NmP
 zliQ==
X-Gm-Message-State: APjAAAVsLkkMUsZUqhJ70j+67PfGRnJvZ1P8YgIRMNjlcOYZIdsqPG9V
 JI7WrwLrgg/TRKy6CEkU/uzP5w==
X-Google-Smtp-Source: APXvYqwOtLbXvQF12v2iQzcTzlTPHXYwr/VbPiH/+9zX0lzSfnaAmA5ZoEnSGfNESsFHQ7AnnjhQoA==
X-Received: by 2002:a63:f44b:: with SMTP id
 p11mr139393871pgk.225.1559160971649; 
 Wed, 29 May 2019 13:16:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u6sm227693pgm.22.2019.05.29.13.16.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:16:10 -0700 (PDT)
Date: Wed, 29 May 2019 13:16:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 00/14] Provide generic top-down mmap layout functions
Message-ID: <201905291313.1E6BD2DFB@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-1-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131612_614914_FD38C799 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 26, 2019 at 09:47:32AM -0400, Alexandre Ghiti wrote:
> This series introduces generic functions to make top-down mmap layout
> easily accessible to architectures, in particular riscv which was
> the initial goal of this series.
> The generic implementation was taken from arm64 and used successively
> by arm, mips and finally riscv.

As I've mentioned before, I think this is really great. Making this
common has long been on my TODO list. Thank you for the work! (I've sent
separate review emails for individual patches where my ack wasn't
already present...)

>   - There is no common API to determine if a process is 32b, so I came up with
>     !IS_ENABLED(CONFIG_64BIT) || is_compat_task() in [PATCH v4 12/14].

Do we need a common helper for this idiom? (Note that I don't think it's
worth blocking the series for this.)

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
