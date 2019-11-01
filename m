Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9CDEBCB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psuj2LlzdsTmXjWJU3y02Ao+oJSodLWLT6lbhEYnuco=; b=iIMYq+bh20O1tL
	sdrBshFxH1ouqp/Sv4vo4v23D8NFiM9zX3yPIn3VJq18e7zlgmE3pEQbcd1mQKkV0JF7uimlzLUBI
	4U8XmOz6i+ZfqU24V/qLrhGcBrjMgOoQjcJ7o6bA9kDzAUszrCBX2xI7IMvGVX8vOJOKjULKId5b8
	69zujGuivEi+8mMWb1pyfyitgVyfZ+MuJTF4dpqizCT66czkeRtZPoSXkiyJ42G+N76q3Go+hnOW/
	r0jHHv9OiiiHUJTF5Ol9ESc0WFBhpNHeRuDnlvXjpCcRtD35AotmO/eHzx4lfpbRRfR6GOqd8469k
	76apogG07t6qcu1dYvsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO8v-0004kF-8h; Fri, 01 Nov 2019 04:02:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO8e-0004jt-Vy
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:02:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id e10so5595859pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BAe1ln5Hx2gY8GJiVnbrjacBTRiF8zYUc3i9OMgoBV4=;
 b=d20dfeMUMO7iAV+Fn0SFBoJceIxy/S9eCh9MpKcU+8Svi9/nIYjbdD5L/UkHZhnzix
 JkU7VA7dyGF/sNbCwHD80C0s1IhuF/GjsyEtDZet5D5R19m1YB1nTHn4RH8s+keb8EXh
 TN5h9u8K3SVZV7Ba8Rr1S3a6ZJ8AbVBGmjB00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BAe1ln5Hx2gY8GJiVnbrjacBTRiF8zYUc3i9OMgoBV4=;
 b=ea1NHE9XemwXXBtxB1KEHStkHHiX4Ifzw9131D1snZCsPKjuzd4qnQvq2lP4zfslyO
 qmtQZBRvRz++HWOGnLQR27T3wv3jZjNbL8NWqSJ5+7n+0Fh4o2ipYRTnEV5qPwhByRkj
 mi63Ip4Nr0lOq7FaNLYxVuagCrALiAkeU+/UIJU4vv/83tsTd8g3VfGUKJYsAiNWcI9O
 wtCmVwRODMtgZtZUgjgyTWip9k3oBmWu+Fe0PTACcLjn9mR4liWo7obcKvLutQX9amAx
 tF97aXzcxPu+UPv1OlflMzHEtXb1S4AemoylXD0nBm8hmsKfVZDMqytbx4x2eFBSKrrw
 r91g==
X-Gm-Message-State: APjAAAU8LBUQlhDs1mg9/1DtmNzgFYrLLDJV+KE/ZG6NIaw+1wMNnHKl
 yhO8w6MP5ERfdyDS81CSKNR5iw==
X-Google-Smtp-Source: APXvYqyPHiOd3taHNtWSlPaVTh8guZzdREmzdQBPCQtoOfjQY9wgtCAJXeLozcbxVyvdbHL+RNqt5g==
X-Received: by 2002:a62:b616:: with SMTP id j22mr10383274pff.201.1572580936603; 
 Thu, 31 Oct 2019 21:02:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e5sm6101564pfa.110.2019.10.31.21.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 21:02:15 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:02:14 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
Message-ID: <201910312101.2A014A8F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-17-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_210217_028756_BD8CD2EA 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 09:46:36AM -0700, samitolvanen@google.com wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

(Does it make any sense to merge all of these "disable under SCS"
patches? I guess not, since they're each different areas...)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
