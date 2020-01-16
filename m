Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D474213F2A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:37:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWYRbLeM78JX00WqJltdtEuC4B8QA38rmoTPFyXAwfw=; b=Hq1KkdK7VvGxoH
	57rRtYd4eMzbogRbhD4UD7Yb7ym6FIYkTWOfwS4u5IJrdKWoWNHj0EWrwtVPuJHIFr0BPfK4t5SQB
	uTZ/2bKXt4n/5msLkm6mGkJ/EsSVPOmS7rDYwGiL5u9sTBnJZ7bLeS8F6aeuR58lQeUPTG8bF6JWa
	BTZl3P+WbOa7QiNRCn+HWDJD/DWvsvQGWUm/w/R+CO2tshR/DII+PzhrBSweHnZJxBpiX1L5r+iOX
	nUOBtsp9JJ3ynd6PWQ4kk4LOwWOUPsUZPsbO+Ct+JURPfDpyKnyDJJSLwIAGsCGtb1gzCY/X0aJOK
	4fHhegFPzBdMHSgz6pAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA0k-0006K6-8a; Thu, 16 Jan 2020 18:36:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9FF-0007am-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:47:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E01792468D;
 Thu, 16 Jan 2020 17:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196868;
 bh=qgwuVNNpFdCc0+ZOl5qpDoUQmhiEEmnb/2EBaZ+Or9Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zhPIL1EXrxLJ9zQQ7bEFkZWA7AWqtAjYqdQSmnvfZjye2DRhfSFwsSLLTYMu9V0Mg
 eQ/3fUbX8BTSoHXiW8WhIQt+1erUB/4740KmjBBJkoodYcsgRVRzY54PCjVGThuSlb
 cpFRRfHtCiwi8f5mqkZlFMK+vFG/zTgB9EQpSWx0=
Date: Thu, 16 Jan 2020 17:47:43 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
Message-ID: <20200116174742.GF21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-14-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_094749_751683_9425B5E2 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 02:13:49PM -0800, Sami Tolvanen wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

Same comment as for the vDSO; can we remove the -ffixed-x18 as well?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
