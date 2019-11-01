Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A9EBC8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULhpxiQ5s6W7/vZ6/C4cS+CrxtehzKBnHhKLl6Jqji8=; b=QlDV4WMex8N+1W
	KVhn//C5jImU9nkJgVSSsA4B/Fz3lPQi9UuE3ViNz47P2tTkVqJuW5iIp44tFy5pB1748+QwD+rv6
	nswX7OU1enQhASFrqG85GMnEIQ6CaBnFOV4JgpawHTwdHu0y8K5+6gBa0Ut3zeTXNFbxJJjTk63fg
	dHHUjk6MxKSVXeNqN/cEm9drcAk2iODc3c61xKTTAS9LhPr4DIOY/FR15C2OctWITAw4DZ+tYAcTX
	+uCew5EQVvG/ki6cEVwCt6ULPy4aUSqOaHJKXkAn2CoG+5vpnPmftpLqeCRqT12ormmWEvwksXixb
	CNCoRbdrMSUo4/wOM1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO2G-00010G-2n; Fri, 01 Nov 2019 03:55:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO23-0000yp-QC
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:55:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id p26so6078067pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YiqPN73/qfLoGFPAaCK046WeDsIyHq2v7vxAoPf2Hxg=;
 b=DGvNnz+GeHeNfKZ6f7YLJzc3HABEEC30I8/B/IBZTbAoWTqYDEBA+PWjh7ne14xEji
 PE2FdEWksdLdMt2PKYPe0QSMEXkBcV49KFClWQ42/xFPVspDKk4kFzSNVn/0QiVKU0Hk
 Z4vIKb88INGDp/qLR22O2YTnuCwiKgJmJAvqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YiqPN73/qfLoGFPAaCK046WeDsIyHq2v7vxAoPf2Hxg=;
 b=O3J+0QqzVilNx8muMIbcFo49dHGP5qw0MMK4DMngvqCewGVE2XjTsoDlVgTwSWvbFB
 3jOPIYOn/IRmBoaZDPC61M3jVVJN9r/DZ5i/Kut3LMBmKetOhcIHDFdwRs0rMWV1CzfR
 swlNG/ZBAe6T1uGWZkSdpgY96h6xCmLJ6KENGXk2b9Xi/j99XoV58aMk23uzdNCKPzhX
 7AhTzo48EUfh4xHQde5yoUinLN/LC6rCFrCkFHN10JO/r1kEdC5kak6gFU29tlxnTEM8
 G7nCcHQ8vqNxq0ZNcyRdLYYICyxMMhQ83gMw9fb17QNxGAAFbgCxoItAdO9ZO7kLDRD1
 oFsQ==
X-Gm-Message-State: APjAAAVJMfW86LAtas4SHUfGERPSl9kqM40okJsu9eIW6UoVWzTPbig9
 1YvWwn8nvo27qcGP+zarIfkjcg==
X-Google-Smtp-Source: APXvYqxD7MNY1jVYOjRfhYGo3ogwiiuExle/jPXGM0/pINsljnFcAcPtUzMI8R27pVSvoSzQhhOLJg==
X-Received: by 2002:a17:90a:f310:: with SMTP id
 ca16mr5852511pjb.20.1572580527358; 
 Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 2sm4704403pfo.91.2019.10.31.20.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:55:26 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:55:25 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 08/17] kprobes: fix compilation without
 CONFIG_KRETPROBES
Message-ID: <201910312055.B551A6CB4@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-9-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205527_846095_E1389BF5 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Thu, Oct 31, 2019 at 09:46:28AM -0700, samitolvanen@google.com wrote:
> kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> even if CONFIG_KRETPROBES is not selected.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

FWIW:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 53534aa258a6..b5e20a4669b8 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
>  	return (unsigned long)entry;
>  }
>  
> +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> +{
> +	return !offset;
> +}
> +
> +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> +{
> +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> +
> +	if (IS_ERR(kp_addr))
> +		return false;
> +
> +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> +						!arch_kprobe_on_func_entry(offset))
> +		return false;
> +
> +	return true;
> +}
> +
>  #ifdef CONFIG_KRETPROBES
>  /*
>   * This kprobe pre_handler is registered with every kretprobe. When probe
> @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
>  }
>  NOKPROBE_SYMBOL(pre_handler_kretprobe);
>  
> -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> -{
> -	return !offset;
> -}
> -
> -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> -{
> -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> -
> -	if (IS_ERR(kp_addr))
> -		return false;
> -
> -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> -						!arch_kprobe_on_func_entry(offset))
> -		return false;
> -
> -	return true;
> -}
> -
>  int register_kretprobe(struct kretprobe *rp)
>  {
>  	int ret = 0;
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
