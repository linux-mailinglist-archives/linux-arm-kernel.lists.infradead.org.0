Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813D75AE10
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 06:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWAkTSAtPRGaZhqWl8aa9/GXWQ6BZHbaLujW43+TmEI=; b=I/PisFhhNmBpLT
	+ANFQ+DUAQoOc3GLoEmNohb5s6I7j2vZXhUylo5E83cVvXhWiN5aYcFDmgbL+2dCh9LKabgIZvOTV
	dixshJ50ZKJqNUXY9l/JZkF5tssRecV2cfBinQuNKnvUdx8czun2w749Mu2aOImjG+B5H46uL/q9C
	5aS2LfF941k5P0b6pdF5jelmN3kWFNIniQgYr/wSZUoI4pfaHOqlr9proc/HxlMCO/SIK1s2lYNe0
	H7ev5mV2AjfJiWdRXa020qFMPxs99WY8N0HOwWyByqH62M4UmBP0VuvaO2AV6rluYINUwCtFH3QMB
	s+u4O38yX/v3kN+GThFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhR5s-0004A0-0H; Sun, 30 Jun 2019 04:05:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhR5i-00049e-2T
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 04:05:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id 9so4706795ple.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 21:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nZ4faO3Hxt6Vv9DkaePS/Kvvg767f3TOfeZ7FItgRpc=;
 b=rl7EAg+f3oXHBc8Pbo//vWa3my/Z7+d6GEro+N5fRkuf6eXL3Ar1+FGnrNGb58Nkyp
 c7f4MXGR0IHjlG7BmA/rmUzxOAnzGP6xMCHReP4yqY7rm3uihkIYFlHy3wUjZDJ+M/Zb
 I4I+XIWi4KVSVqdJxjdxlhdrAdIcqttsszNBUKYbP0wRubhUFc7zFvMQ4Icd1Vr/OWHA
 Q3y9oGRxxyPp07pxYRbtvqicG+f3Cwc8lH89BWEeheh3G9HiL3+ytCZtYrqHxKeNE6qj
 xFOCGAzC1hlSrLGFC34ZqTBi5S1XvC4x7RPzAUW2Pfb27bY6g4qhSCfWI/rBNsOVj4dh
 Ah/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nZ4faO3Hxt6Vv9DkaePS/Kvvg767f3TOfeZ7FItgRpc=;
 b=hRs7Ztd48Qwvgjytw4ygPGCE/LCyeyHc5ehvugVBwbaReK8OKs9NCmuPwICNUoioEq
 caostrp5syiGy0b+6nfK/Cx92oGpjdKN2b6hPR9y44SDdWMwgPKDlLF3Wr1pgUhKn0fn
 NygFVyw3eI6a5b82LJNC5LFrNybOTBrruUxULbKDMFBvX6HLJPXn0a6HsJtFvKMo6n23
 7zIIrSdVf5LsMMgnhI812eduYRFhB7/ekabOTDi3aV/GMOwK3GqBdkhnR3EOwqUYN92U
 v2aA3a1PmLr7j3Jmcs2B6Qvd0uOc3kr47k+aakRpeNDUBLfOW30iaXdeD39tAFCZxQUX
 kJUQ==
X-Gm-Message-State: APjAAAVVPx4zj+PIssE1qmsvgVTNcLEu2nWEZeE+/WwM0sCVrfLr63nw
 Gw+QNoxA8UhzgDgoJX5YRuudIw==
X-Google-Smtp-Source: APXvYqxg5hDllg1TQKAIWeDHYzxBnrioiXmu06H2WlpeMePI7Rp+znhieN/1bfFWv6zaE9kfcQ+ElA==
X-Received: by 2002:a17:902:a40c:: with SMTP id
 p12mr21215977plq.146.1561867525153; 
 Sat, 29 Jun 2019 21:05:25 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z13sm6984605pjn.32.2019.06.29.21.05.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Jun 2019 21:05:24 -0700 (PDT)
Date: Sat, 29 Jun 2019 21:05:22 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH] hwspinlock: stm32: implement the relax() ops
Message-ID: <20190630040522.GA1263@builder>
References: <1551973336-23048-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1551973336-23048-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_210526_122181_7F177A35 
X-CRM114-Status: GOOD (  14.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 07 Mar 07:42 PST 2019, Fabien Dessenne wrote:

> Implement this optional ops, called by hwspinlock core while spinning on
> a lock, between two successive invocations of trylock().
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>

Applied

Thanks,
Bjorn

> ---
>  drivers/hwspinlock/stm32_hwspinlock.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/hwspinlock/stm32_hwspinlock.c b/drivers/hwspinlock/stm32_hwspinlock.c
> index 4418392..c8eacf4 100644
> --- a/drivers/hwspinlock/stm32_hwspinlock.c
> +++ b/drivers/hwspinlock/stm32_hwspinlock.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/delay.h>
>  #include <linux/hwspinlock.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> @@ -42,9 +43,15 @@ static void stm32_hwspinlock_unlock(struct hwspinlock *lock)
>  	writel(STM32_MUTEX_COREID, lock_addr);
>  }
>  
> +static void stm32_hwspinlock_relax(struct hwspinlock *lock)
> +{
> +	ndelay(50);
> +}
> +
>  static const struct hwspinlock_ops stm32_hwspinlock_ops = {
>  	.trylock	= stm32_hwspinlock_trylock,
>  	.unlock		= stm32_hwspinlock_unlock,
> +	.relax		= stm32_hwspinlock_relax,
>  };
>  
>  static int stm32_hwspinlock_probe(struct platform_device *pdev)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
