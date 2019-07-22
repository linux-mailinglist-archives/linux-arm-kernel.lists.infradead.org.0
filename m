Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56978706F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXyOF2iyKQpuIZMaUQ+v0PHnZ3W9G+U6hxldOvqA4wU=; b=KWTBnOEEA4Fwnd
	CFwiNXcelEQ6+rA77hBZN6b9Jdpa4VjJXpsK78DDYfKfaFXxwuZ2ljGFWfMZmuGY5YDgJ88FQhGo+
	QRoEAKWWMcWMk5fghbl27K8rJflYK4QpAlzdxNtw8XfIvj4WiJo1gbqaw9553GGkNFQqmtPIXG++H
	wvHwpr2+jDHj19LUjU8RKVMdRldIodJk9dUJu+Mo8JzxIOjcJOkhMDRlFJivmxcP+o9GrShD7+Ifx
	qDF7lx6g8IcNsmxj74jRdDikHdXleoDFPJ+AzCJXUaQH3LMcMuXQeMQjbY8DKaVjBTZOEf7mBgln1
	LUSzJlpTKTnetL6vECHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc6e-0003kd-IK; Mon, 22 Jul 2019 17:28:12 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc5e-0003R9-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:27:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so19423570plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 10:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SQ33AwzI3NDOuW3IDAovvXN7l4pJWY4tNHdtV0VRYjM=;
 b=EN4hpXtpbeCYLrhVjVUO67Odd+T4F7+RV1sAeWxAF8+oa3WunangbwYkF80CxRIUIl
 GPVV0qTfLxBu62hY/FDcHCsX3eT95rvVfvJrA7j3SiybcGAFyQa7Y11N52IT3JTnqIKn
 1kACK/+p3hvFX68glEvE/jgkHFQJV3MeUsbtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SQ33AwzI3NDOuW3IDAovvXN7l4pJWY4tNHdtV0VRYjM=;
 b=YlNgvxHG5XPxrjuo4Clg03DEzUHoisX4MF+IUIU+QXT5lFlRqusqNShaZvgjX7ZO3U
 D2xdWPQ5XAX2JNRhGO0uktkoSEV4NlNJfF3/5ZG2AYqd2anAQ7R4le5ijGm0gGCrHBme
 ByGyhCbcFHcgpBxYxCWvSvoy5GgKGLZnQz6Ty9MsAtfDYrb2nfnsdj5SH5oN4pIErfrG
 XEIDSBjUG3LH4wx55DDsabrw+WeLqcOaCndQBVGWj/hx7qP8KNmoWZzR8Y+93ZDQVzzd
 o5h9+VGk/kRWa07c2RLRfICBikZMtMS7SkJAYamNJqTsKnBAvPnv/4BO208Hv4K4NELg
 wxvQ==
X-Gm-Message-State: APjAAAXlO4qNZSu8Z86W9CgULjCYpkt0uBjrVDQqG5UNH74M7ucUZUdS
 4kEEsCZXLeq3i9j5SxB5gFRBmw==
X-Google-Smtp-Source: APXvYqwu7O9cyrsTy+qKshO250OnYoWKEebhFiF+IfEM9I94jMP2wBXe5wJ2ovpIFq/NES7VfJ9D+w==
X-Received: by 2002:a17:902:8203:: with SMTP id
 x3mr77003449pln.304.1563816429424; 
 Mon, 22 Jul 2019 10:27:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g8sm33456124pgk.1.2019.07.22.10.27.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 10:27:08 -0700 (PDT)
Date: Mon, 22 Jul 2019 10:27:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <201907221024.3BC2ABB13A@keescook>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
 <201907220942.69F916657@keescook>
 <20190722171141.3cgmw5ej7p2caddn@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722171141.3cgmw5ej7p2caddn@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102710_820349_C4E1901D 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 06:11:42PM +0100, Will Deacon wrote:
> On Mon, Jul 22, 2019 at 09:43:54AM -0700, Kees Cook wrote:
> > (Also, what happened to the *_checked() variations?)
> 
> The new implementation is intended to replace the *_checked() variants,
> and the discrepancy in naming doesn't make any sense to me once everything
> is inline in the header file. Am I missing something?

I haven't looked at the resulting builds, but the reason for the
_checked() macro stuff was to provide a way for callers to opt into a
checked refcount_t regardless of the state of REFCOUNT_FULL (especially
for architectures without special refcount handling). If that is
retained, then all is well. It just looked odd to me in the patch.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
