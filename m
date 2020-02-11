Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD41158676
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 01:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UX0HfZ00XPmiY1O6JGagEXZr9JnoF+SYGWlejLTrj0M=; b=pcKA8Sk+J3NZHI
	xTuq47XakwXZNQ597bNkMkOtFNMZ4nycMVsU7GGiB/zimHL41JSMlU60FP5nCWoN/73iYEap1SEbr
	fJ9LoOWvsWPwPYsWnEb+R2ZQbrrdSy8kQSTsSoRoPXKm91wvoUY7Bnbq7t1jbdLsG52+OIMv5U6p3
	0MmwA4cQOcZxyteX0pMcKvQvSsmw76UNBnOcPskB0lF5+hd5FZhBcUZBSXrl3nqWpAJDYwd1X3H5S
	gVuPHe2UbjEub8WWUr+7LQfl8CaTcMA1fQSp9vL1csSS+D+9uQc/X90Iofc7FsciXLeSLT9mSh+iX
	0xegjxGKMkuI+9sCy4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1JDG-0001rb-2Z; Tue, 11 Feb 2020 00:15:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1JD9-0001pp-Ew
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 00:15:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id u131so4740975pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 16:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r5ohSbrtojTxCSFCkg8rYW9zCxgtMfpQZkLpXgHPTpk=;
 b=KQylGPxdiaGvk+7Y+4BneWCRdxmvASR00418Jv7gHTm/EZxZkAZt8Hj7qbRh3JOGFy
 oxl2x5m6yV6iMc5YLIlOjEox0c90qBOT+fwVam8DvtExHZ1JkoYBwPjGtqNhiRcZzwQq
 TtY0mLuruewCig3yfcTFRMCAesZI8xyGIGReVInSiRC1XvxvpQq6veSmY1sNTWCG4Fwl
 LLMc6e0KVLz+vy3Umv/5RTzT1ubEHIv95CCcWRKM8oKJcjqI1cX1Y8UcJSx9wMbYbBi7
 H3aZXfZWPc9EK8I+72g6uwnDPYF0MUz4QJtn6UjV0uyHk3G1avz4AXDxhznkFQy9s/5o
 JNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r5ohSbrtojTxCSFCkg8rYW9zCxgtMfpQZkLpXgHPTpk=;
 b=Ra9aQmY44jYTtv3FDC0qL32YdtB0J6mLN26mp2fmClatNSwo0vl46mZ5dBU8wMjSCt
 hWPW3UlFXXJptGK75g4eT51oyn4kbk5YRRvLH81f0tt0MljCfJvhUzh18aVroEl+2exQ
 7CgPLm7shmAyrBUymYKVoXYfpTsAzjVFecAVSoetyT8knfCN/k8pBtt7paW8VVzyUdlf
 u5kK/TRcbLF8c5Wq31kgHyGZT2oU0n979jhhEp8c0ZQbsJ1lmfpraftGh1PjzcqRydvj
 JtyVY7+Bwh62Gv1Boc/BSTKVpeLlXKczdy8CrK3Z1N8jcnnCMVWm96fKSo2NngKXeQtA
 vq2w==
X-Gm-Message-State: APjAAAWU5K/U9MDjpdL/jEKoXyo2PlBDPPKzBqR+VEeJ74bvkI8AZtXx
 ISLD9iPT6bEomjPC4/aTTeo8UH08
X-Google-Smtp-Source: APXvYqwaI1pmqbF0HQJmCdNPwqmI2s1WtrWOIQeTyY/IRieg6LQrDFvOhcDN4OionXTTqMh7Vs1K2g==
X-Received: by 2002:a65:5549:: with SMTP id t9mr4124065pgr.439.1581380129926; 
 Mon, 10 Feb 2020 16:15:29 -0800 (PST)
Received: from ast-mbp ([2620:10d:c090:200::2:685c])
 by smtp.gmail.com with ESMTPSA id z26sm1201161pgu.80.2020.02.10.16.15.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Feb 2020 16:15:29 -0800 (PST)
Date: Mon, 10 Feb 2020 16:15:27 -0800
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
Message-ID: <20200211001526.xbfwdnpjqrg3ed6q@ast-mbp>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <20200128021145.36774-5-palmerdabbelt@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128021145.36774-5-palmerdabbelt@google.com>
User-Agent: NeoMutt/20180223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_161531_526421_5CF4009E 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alexei.starovoitov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: songliubraving@fb.com, andriin@fb.com, daniel@iogearbox.net,
 kernel-team@android.com, Bjorn Topel <bjorn.topel@gmail.com>, shuah@kernel.org,
 ast@kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 linux-kselftest@vger.kernel.org, catalin.marinas@arm.com, zlim.lnx@gmail.com,
 yhs@fb.com, bpf@vger.kernel.org, will@kernel.org, kafai@fb.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 06:11:45PM -0800, Palmer Dabbelt wrote:
>  
> +	/* Handle BPF_REG_0, which may be in the wrong place because the ARM64
> +	 * ABI doesn't match the BPF ABI for function calls. */
> +	if (ctx->reg0_in_reg1) {
> +		/* If we're writing BPF_REG_0 then we don't need to do any
> +		 * extra work to get the registers back in their correct
> +		 * locations. */
> +		if (insn->dst_reg == BPF_REG_0)
> +			ctx->reg0_in_reg1 = false;
> +
> +		/* If we're writing to BPF_REG_1 then we need to save BPF_REG_0
> +		 * into the correct location if it's still alive, as otherwise
> +		 * it will be clobbered. */
> +		if (insn->dst_reg == BPF_REG_1) {
> +			if (!dead_register(ctx, off + 1, BPF_REG_0))
> +				emit(A64_MOV(1, A64_R(7), A64_R(0)), ctx);
> +			ctx->reg0_in_reg1 = false;
> +		}
> +	}

I'm not sure this is correct, since it processes insns as a linear code, but
there could be jumps in the middle. The logic should be following the control
flow of the program. The verifier is a better place to do such analysis.
I don't see how JITs can do it on their own.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
