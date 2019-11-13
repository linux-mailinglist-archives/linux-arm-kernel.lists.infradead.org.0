Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D669FAA52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 07:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZNeKPVtsv+UciY08OAislsqDeVCJ1CO4k7RLN02AlQ=; b=YIDk0hELiXQpYb
	wBofv0gsFU/fWHCQu8mbKR25Jbiwp6J4SHIHQ07QpnCKV/NJ9yIuL41k4vTc9gUEmYYV6fnBvgFLl
	LHyg/5Pq9fUVbXAHOcdtb4O1lJowC5N/9CIcvHl6DeHescAmNAgu3RrwPpFuLNrL0+hOnV/MCzRpg
	dlAd3OzwbDIhpGGn5Ni/RZf4JpJ0PLYqQ8h4ijS2xbecBR6lPUbJeb6lam4F6eRZ9GoCD3c4/fpOv
	qp0rY8TVFOSBGkZmaMXV4hDbLRadNCHmLWJhO7SwFzM2mNGNRG8O62GtW2bRmw6rQh/fY3XNWIYsr
	BBdn+QB6goUoxYsFE5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmL1-0003rH-Oh; Wed, 13 Nov 2019 06:41:11 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmKs-0003q3-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 06:41:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id z188so755775pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 22:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bWvteqn5JmXy65hLFi+ydHqLLpEPnm2bFuPJS7mYS3s=;
 b=f/11EP4+vTaYywR0gxdn5v+kREW9r0wVaUr9BZc0pmzraw0u3PSkH8khlChdnGsqqn
 uZUlFRTFg4VK1hFDedbz/TOO18FEwl21IIhfZ2irtsEngcp5LwqwG8BZi62FzAIVclNy
 /Llie4z01jWcQQyo+tY+g6WnX964J0AlR8/VsyR36u20JFibjXziUsrlW9njo5GTQpS1
 EvZGYUMC7vZDre9t069coZruyR2xzLPg3pjgAAnGfrBWqUYwRzwSqVOp4S+lgI+/MHwA
 ZzcVs5SVKEpGHUoYiqamN9X1TPq13n1YJRDgzyvmWLnWVwBPTiX5x7rYAfh5soBpZMDX
 aEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=bWvteqn5JmXy65hLFi+ydHqLLpEPnm2bFuPJS7mYS3s=;
 b=N39rHALPGOIKNLpsNwxE0orYNhshoOTdn32OxdEreA3DqsLyXf0Sv5GoUzrVppP58+
 yQQN/dn5LTLAO0k8TeCtzyBUiiHGn3VLLMifzsLx01cglqAR15CG71C7tIrnkzbB8Lr5
 xifWKr8E8MNrr3rahBpqvM0xI1lsbL5nVXlMcdq1p4aQvnZaGzHlGnsEJE4Ip7WX91ss
 m4iFEyy37i0VuRXcMrwGW/byGBLBWWGXHf7rpPKdUfNB+rOVbxQenHhwFqjY8/o4/Wbw
 PlZlEY4auM7QQTROwy1RCgHsutJWmOPPlbinrJKgBAsoxGahwhG59uwfVOnWl1ZqhX+T
 ZIvw==
X-Gm-Message-State: APjAAAVFnUK7M+tnAcQmc0clVsU8RsvBuHrCgNa2XqVqVLVyiS9yelRe
 SeCF/lijN3KnxlEjT1VbuP7UIw==
X-Google-Smtp-Source: APXvYqxTXSCh3FHiA+NO6rP2y7YECV87KGSm3mqb9W2W+VI5PgMN9OPAzYFRcPzqrWlMsGI7VcSqQg==
X-Received: by 2002:a62:8495:: with SMTP id k143mr2361055pfd.47.1573627261423; 
 Tue, 12 Nov 2019 22:41:01 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id g20sm1071708pgk.46.2019.11.12.22.40.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 22:41:00 -0800 (PST)
Date: Wed, 13 Nov 2019 15:39:00 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
Message-ID: <20191113063858.GE22427@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, linux-kernel@vger.kernel.org,
 bhupesh.linux@gmail.com, Boris Petkov <bp@alien8.de>,
 Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Corbet <corbet@lwn.net>, James Morse <james.morse@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Anderson <anderson@redhat.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, x86@kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_224102_739458_A56AE2B5 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bhupesh,

Do you have a corresponding patch for userspace tools,
including crash util and/or makedumpfile?
Otherwise, we can't verify that a generated core file is
correctly handled.

Thanks,
-Takahiro Akashi

On Mon, Nov 11, 2019 at 01:31:19PM +0530, Bhupesh Sharma wrote:
> Changes since v3:
> ----------------
> - v3 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
>   instead of PTRS_PER_PGD.
> - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
>   'Documentation/arm64/memory.rst'
> 
> Changes since v2:
> ----------------
> - v2 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
>   ifdef sections, as suggested by Kazu.
> - Updated vmcoreinfo documentation to add description about
>   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> 
> Changes since v1:
> ----------------
> - v1 was sent out as a single patch which can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> 
> - v2 breaks the single patch into two independent patches:
>   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
>   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> 
> This patchset primarily fixes the regression reported in user-space
> utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> with the availability of 52-bit address space feature in underlying
> kernel. These regressions have been reported both on CPUs which don't
> support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> and also on prototype platforms (like ARMv8 FVP simulator model) which
> support ARMv8.2 extensions and are running newer kernels.
> 
> The reason for these regressions is that right now user-space tools
> have no direct access to these values (since these are not exported
> from the kernel) and hence need to rely on a best-guess method of
> determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> by underlying kernel.
> 
> Exporting these values via vmcoreinfo will help user-land in such cases.
> In addition, as per suggestion from makedumpfile maintainer (Kazu),
> it makes more sense to append 'MAX_PHYSMEM_BITS' to
> vmcoreinfo in the core code itself rather than in arm64 arch-specific
> code, so that the user-space code for other archs can also benefit from
> this addition to the vmcoreinfo and use it as a standard way of
> determining 'SECTIONS_SHIFT' value in user-land.
> 
> Cc: Boris Petkov <bp@alien8.de>
> Cc: Ingo Molnar <mingo@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Dave Anderson <anderson@redhat.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: x86@kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-doc@vger.kernel.org
> Cc: kexec@lists.infradead.org
> 
> Bhupesh Sharma (3):
>   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
>   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
>   Documentation/arm64: Fix a simple typo in memory.rst
> 
>  Documentation/arm64/memory.rst         | 2 +-
>  arch/arm64/include/asm/pgtable-hwdef.h | 1 +
>  arch/arm64/kernel/crash_core.c         | 9 +++++++++
>  kernel/crash_core.c                    | 1 +
>  4 files changed, 12 insertions(+), 1 deletion(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
