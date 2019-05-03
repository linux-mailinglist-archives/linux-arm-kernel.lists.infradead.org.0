Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B62132C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+XMKSZRAUeJAWP7isk3+xAG9rASkTJELFn3dKy+ats=; b=hQ+fv8ROr8NVVW
	5rCoCDnGH0iKGGf7rOszIc639cGy97gKWhB6F25HfZ/xVjPCo7RJTvcpXR9M0gUa2arWwDHgIleMf
	UtEHqdPO3P81bDPTJEC8U7AsFvK4s42KMrQwFvUHRN6thgPEIU4Ks9YZnPWno4yrE3lb5j6ZV1ygu
	t8+XMyt+Zw3gapbG7eDtCHYgQcuDTLe7Q0Lejr1/f4nY5jcpP48ZCCI7h1m8Yfpid4y4uf3Uxs1VE
	PVZbR91mGQNnhON5GWI9JcDNdjWX+fD8oUH3Dr+2PFLy6Fk97Iy8RIE1GnNByAm1vUty0Mv3OfOMH
	K3Fjof4mJZEIB6pAS5aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbaN-0004xl-Oe; Fri, 03 May 2019 17:02:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbaG-0004wT-U9
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:02:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so3179206pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 10:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=e71LeW3j52z02CfoTglw12Lmjisq73YxcosFVCbh53o=;
 b=hrUWYPl6ix6lmEUT+7gmZcFzhb63MdRST9wYPDOIVDmC/LzaxdIO5YqMR9VHPo0Bm0
 82stpci7nJLYQd5BJl4soh4Z123TLPBWd09ZiRFMLpvEXvCMb061QG9scqw6rKtpjh1E
 kkX/N5wtLrWsHL4J8i87lISK1gdR2s5yYRrwWyERLEcyPvXTU/sq2szATYe2giWY1Voi
 xegRCJX/tNYrsRrlMBUOoE/lSVvaj9xedR/ofO78sPnsVcn8prsnDB5Yr6LyCqUE5WTv
 mbWGCLv9qzSIZdmyGpriTFfAh+bRHrqHP2qnfunh3CTdkyZihHHjTUToVuOGOkc6JjZe
 6jDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e71LeW3j52z02CfoTglw12Lmjisq73YxcosFVCbh53o=;
 b=mCIjDZ+PNeqc+8RbjUzLmZtQEvfc9gGupJwJaNrNWQfgHrez/EzsAojmup8vZ+YfMX
 fzTag0TKRKkDUodXRxXKjUu+bqcYHdb2yolKYh7MYyn8UNpqUSfc9iWB3RUAzVlVubik
 qsyFLIwsgwOwnBeikN7JcAGyOkGgFQ9dJQVAWK+1K6RWZR207pMa//74q0p97INjLqHo
 PMRIi9C+e0d11zMNSlspfb/5ZXQP2kwp+VPWZjSRK4PIn83jnW0AK5f+oG+kHegAaNAa
 AVIVyNO+vWbw93ztKSIC3+UaRpaJtLXvgbbyM+q1SfjyPoM+c4Td9GukM9/Ea6jNCIOl
 7u0g==
X-Gm-Message-State: APjAAAVuGajDLwFS+pFaf6H03kLdYPl5bDzcn0XYb/LLz7jMSRLvqJD+
 3kJRRn8nPFTnzwcpI8GWp3jlZQ==
X-Google-Smtp-Source: APXvYqyTK6cg0M1/C2OXTAJ465eNh4Ogi4rZP6tl1I9CMzK8OhQ3QscAC72wbWMwk3C+thhafvr1Sg==
X-Received: by 2002:a62:5fc7:: with SMTP id
 t190mr12168728pfb.191.1556902968531; 
 Fri, 03 May 2019 10:02:48 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id j7sm3380683pfh.62.2019.05.03.10.02.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 10:02:47 -0700 (PDT)
Date: Fri, 3 May 2019 10:02:42 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 2/2] arm64: use the correct function type in
 SYSCALL_DEFINE0
Message-ID: <20190503170242.GA211922@google.com>
References: <20190501200451.255615-1-samitolvanen@google.com>
 <20190501200451.255615-3-samitolvanen@google.com>
 <20190503102128.GD47811@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503102128.GD47811@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_100253_000929_EB4CA0A4 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -13.3 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 2.4 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Fri, May 03, 2019 at 11:21:28AM +0100, Mark Rutland wrote:
> Generally, this makes sense, but I'm not sure that this is complete.
> 
> IIUC this introduces a new type mismatch with sys_ni_syscall() in some
> cases.

Thanks for the review. You're correct, sys_ni_syscall needs to be fixed
too. I'll include this in v2.

> We probably need that to use SYSCALL_DEFINE0(), and maybe have a
> ksys_ni_syscall() for in-kernel wrappers.

Why would we need ksys_ni_syscall? It seems something like this should
be sufficient:

  asmlinkage long sys_ni_syscall(void);

  SYSCALL_DEFINE0(ni_syscall)
  {
          return sys_ni_syscall();
  }

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
