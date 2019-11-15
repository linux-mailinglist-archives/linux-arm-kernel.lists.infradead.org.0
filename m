Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23815FE385
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ez3s/K9IMd747gB/8EFgW0IEwplKHuBF0QAgC4LZKRQ=; b=opvuBHMX0R+iwA
	WQPi2P3NLCT6DA/IcOKb0zbyvUZPcPlrsU3cdf+yvKm9sXDFaCNym8CiOPsDCccLet+mLoGv6GTbo
	+4J5ChYMUM8GOtStM3MnZqL1QZb2/xdt9ahemeM/ZshA6u7nwUgNcVeTM9U0wivJy46Hx0Bt3L4/T
	RRlWoce4CaNYxuZBxZGUTvbH8gNQoO/SO5f68X/kK/98miL4gtceFD8MbARw28Gy/RVu20w9FpUkw
	eywzRxKLHww3q2V0FTAILdD8W8jISXxx0OKaRHY+gsCDGAcepZnmTmp3bRsXr3fyqpQRaRMAqrwME
	v5pTyxD4CbiCsiDrlxJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVexc-0005oN-Jx; Fri, 15 Nov 2019 17:00:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVexT-0005nM-Tk
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:00:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id d7so5061200pls.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 09:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6KJTXmV3nRW8gUbGqQ4GcrDPQULApXAqF7C+3pqi6RM=;
 b=lea72v0aKBO/HzkW9xRW0+gmfuKWuweJm8ZuZhTIE6ZspE9e3DdbgdeOqryeh2WpHs
 69VCzsotxdw11qrFs2/xzVdgNpKaC8lZYDeHIj6pnZlDX4VWEl4FWcoKYqGnAas8lUU4
 1dbEIwD9NKRURLHoHwSslyp2NZXgzpz91sk68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6KJTXmV3nRW8gUbGqQ4GcrDPQULApXAqF7C+3pqi6RM=;
 b=is2OAtAZK1xXIbF/EuxZ2JTeUf3WSOOqx2sUKbqPkT4AdZcvUcoMDadQWLoNZLdT6z
 S04gdsdPEB8tW3q1gsoHqF6z0WX99Sk1XrZGuKFQsXNVZQ4eNuwu2xikhQ/BGVhY/XMB
 KXxny9WprJN2dQvRKotZgZZtDluAQErOVA54gxWnM/i6EyBNLt4O5mJSIy5hIW97ci+W
 VL2he3ZqldOKhCV8w6t8ILShy5eddNYv1WufIAV/Y35lW+UZLH3h/rkeHqMVp/MKOBd2
 h2PSWaX1pJ0ga9DnwZrC7dH48EdF42Xm/tx9MVfHPt6gaE92SOMAOOhgxPtW1U+Hdqzq
 +aug==
X-Gm-Message-State: APjAAAUq3eCjQCmDQt1iPFGx6JQ1KzhVurr8m1kLcnzfIgzxNo7UKjcr
 pCURedhNHaPVc8PxoHCC1raZYg==
X-Google-Smtp-Source: APXvYqy13tvuu58lwI0ZashXZBglnAc01GHqKKGLWlQ1kA0mCtTgoAkAcwI/Gc3rB016Is7SqriZWA==
X-Received: by 2002:a17:90a:b393:: with SMTP id
 e19mr21641421pjr.115.1573837228497; 
 Fri, 15 Nov 2019 09:00:28 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i22sm8907804pjx.1.2019.11.15.09.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 09:00:27 -0800 (PST)
Date: Fri, 15 Nov 2019 09:00:26 -0800
From: Kees Cook <keescook@chromium.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: clkdev: Replace strlcpy with strscpy
Message-ID: <201911150900.817CDE33@keescook>
References: <1573812819-5030-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573812819-5030-1-git-send-email-peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_090031_982497_2FC294A2 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alice Guo <alice.guo@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 10:17:53AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The implementation of strscpy() is more robust and safer.
> 
> The strscpy was introduced to fix some API problems around strlcpy.
> strscpy is preferred to strlcpy() since the API doesn't require
> reading memory from the src string beyond the specified "count" bytes,
> and since the return value is easier to error-check than strlcpy()'s.
> In addition, the implementation is robust to the string changing out
> from underneath it, unlike the current strlcpy() implementation.
> 
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/clk/clkdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 0f2e3fcf0f19..ee56109bc0b4 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -165,7 +165,7 @@ vclkdev_alloc(struct clk_hw *hw, const char *con_id, const char *dev_fmt,
>  
>  	cla->cl.clk_hw = hw;
>  	if (con_id) {
> -		strlcpy(cla->con_id, con_id, sizeof(cla->con_id));
> +		strscpy(cla->con_id, con_id, sizeof(cla->con_id));
>  		cla->cl.con_id = cla->con_id;
>  	}
>  
> -- 
> 2.16.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
