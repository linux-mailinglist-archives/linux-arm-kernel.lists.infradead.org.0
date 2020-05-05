Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E171C5A34
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keTmh9fYCSI1Epo9Dx7EHUaqFeOrWnoHAy4L8gmbmC0=; b=YDIf+kCMgFAKFR
	4rvCay3wBeDD2ecaT+i44VKZ/xtw5JMMYh+s2zCZJBPdhS5yDjJh/z7Bq4ec9cNhqUOv8HgTCFAlJ
	vlD0oUxXm/+LwWGV19DPIg8faZjFSAjEvp6J8MWWpvcigINuxIxTT1gb3zZgdPvAP2Hsnp6s23ieJ
	Sd5pFQYou3i6OxxoszNzrZGXiJ1sCrLxG2Q7hKb8Puswk2sqVZ4LOnGXx4Af5Nw69SNxngHeNRYFl
	JYwUW5i77ySHEzRLSoorzto6cGdsN0pAIRMLSgn+rJ8vYSh81En2ZnRr9W579il0wWiA53rVAuefl
	7shqJGyWE5W6rjhD2CNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVz0D-00070a-5j; Tue, 05 May 2020 14:56:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVz03-00070G-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:56:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A25F206B9;
 Tue,  5 May 2020 14:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588690607;
 bh=VsWSq2B7ATKFsBs4BtkuB9J55zym2EEDhXZwpOotMRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rx6unWTxZ3spdPNWss5sKYksJjTZJrrPJglouY+nJMCeH6mBVyfWxfx7dyVUFW7M/
 uAF0yWq/pMCSpBq2Uv3Ki8em/UdcQVWvVncRKuopHLdsoWwN+a4LKCdHuJlF3TyDsJ
 hSQ9gR6PjKytlFId4nEg55s5XrsR5a6z18E3TBiE=
Date: Tue, 5 May 2020 15:56:42 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200505145642.GA24239@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429211641.9279-3-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_075647_770670_774129C7 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:33PM +0100, Mark Brown wrote:
> +#define SYM_FUNC_START(name)				\
> +	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)	\
> +	BTI_C
> +
> +#define SYM_FUNC_START_NOALIGN(name)			\
> +	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)	\
> +	BTI_C
> +
> +#define SYM_FUNC_START_LOCAL(name)			\
> +	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)	\
> +	BTI_C
> +
> +#define SYM_FUNC_START_LOCAL_NOALIGN(name)		\
> +	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)	\
> +	BTI_C
> +
> +#define SYM_FUNC_START_WEAK(name)			\
> +	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)	\
> +	BTI_C
> +
> +#define SYM_FUNC_START_WEAK_NOALIGN(name)		\
> +	SYM_START(name, SYM_L_WEAK, SYM_A_NONE)		\
> +	BTI_C
> +
> +#define SYM_INNER_LABEL(name, linkage)			\
> +	.type name SYM_T_NONE ASM_NL			\
> +	SYM_ENTRY(name, linkage, SYM_A_NONE)		\
> +	BTI_J

This break building the compat vDSO:

arch/arm64/kernel/vdso32/sigreturn.S: Assembler messages:
arch/arm64/kernel/vdso32/sigreturn.S:20: Error: bad instruction `hint 34'
arch/arm64/kernel/vdso32/sigreturn.S:30: Error: bad instruction `hint 34'
arch/arm64/kernel/vdso32/sigreturn.S:41: Error: bad instruction `hint 34'
arch/arm64/kernel/vdso32/sigreturn.S:51: Error: bad instruction `hint 34'
clang-10: error: assembler command failed with exit code 1 (use -v to see invocation)

I also see a scary linker warning about the native VDSO:

aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
