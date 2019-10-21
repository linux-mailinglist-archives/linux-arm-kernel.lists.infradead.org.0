Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3695EDEC3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8hYj1UE0gWdo0zeFAlW6nzjZJvVuC43uUX3O2Pp9TM=; b=LivKBfP5HjnMfq
	8Lk9Zug6Bbxg8/iT9h2dHquQ/Qx5NXXnF6BkHn1nqY7Ucfy6n+fWQloOpEmVb0NmzhyltU7pRZkno
	GMub91H5vD6VBTucAjp8NDHccWOcE/nvps/4l7a8jCpU4JCUwmP5pUbd2Hd53dylZQtre4ORom8fF
	bjJwLP+3rYWivKscU2V0wYKh9DExrqan3Y4JXqf7ShjaXMit1lS4wO2i+7STAQyKQa4Lba+8eYjT+
	KwEcN8+aVRXwKOvOzpYiTNWP2xnA2P8vdH3YhYQMeCkMyXyBbSqpcaBFnMkX7i3KhdgT2lvu4G3Yg
	SWJwBM1yuuOOIyfHf4xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWpQ-0005A0-PZ; Mon, 21 Oct 2019 12:30:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWpF-0004za-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:30:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so13219428wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MKfn7Qq96hAb4iGxGvvNjTY5LcHJmhrRPIK5yxoQ9Y0=;
 b=TzdDrmtjzpZq+YFruP5kGDkrOcTZBWWoDy/kM/gOgpKmgg23xYaLmHj5R8rF6f5dAt
 dd8ByMJTZf/pih6wLCgc/KnCi7nlZnF3bfjN9+1/fScNSZrbk5bgL1XGUHvRk7WdEXlL
 Wf+MZ+DkJvOR3vCE6hmM0i2ejVqPpx1Fr4zkJfVnut5jO3oHRYQTwcdyWXzZpEsx5hBX
 YzVRhfmpFJThu3t8wDMfwpWydj6DE62w6j1KOLDzklot9hGksSJA/hVn+JXrnWWfOfMt
 OZ8q52wqSAA1ckfJ+loIpVjz9rRsdolUyTAi4vuH9KmPhVkfifDA2XFrqqYD0W8dkyAg
 vj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MKfn7Qq96hAb4iGxGvvNjTY5LcHJmhrRPIK5yxoQ9Y0=;
 b=qRYUa6uqS33MP8WN8ijURcElAtgUWTv2I8mVwiINayIVWm2ZikkeYJHqZpUHXwZecF
 ia3rX6AIEGwYjOAOsGNpSr2R2gngN1h5ThuqCqTt7Ik0lNmSdJYPJV4H8xne1Nz7H3Li
 +dapO1VB54pMVV5pOIzPXSqdDuotO9QeeN31FYl9b7eUWCPwIMeJLGk4JnBLtLpVwDhy
 zwEwK+sQsFwAw0QUiBg1SV/6d4xpbQUnhHiRzl0XqovRvA4YYyikz1PX6YOwyo21kqTj
 +EY3iuFsq94ZYwmIeWS8NAEFJ7Wxt59ApNK6mcy+ltOdZ1YbhClPkXfSHaVh7g8nOa9c
 8zag==
X-Gm-Message-State: APjAAAXLv/H/pRrKNpI/8A0tA1vt0F0N7unnxkrIwqFdsoRefxb2+zA7
 u6Dt2PQjGKIzL039qejsQVEjIg==
X-Google-Smtp-Source: APXvYqyg0YciwtBGWYvFialeJsnKQ0DH2VQACLRJSaRErKbjHyZ+SvIDbc2UI9ay8YKCDrU2GiDlUQ==
X-Received: by 2002:adf:c143:: with SMTP id w3mr19822761wre.77.1571661014249; 
 Mon, 21 Oct 2019 05:30:14 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id r9sm9332012wrx.28.2019.10.21.05.30.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:30:13 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:30:12 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 7/9] mfd: mfd-core: Protect against NULL call-back
 function pointer
Message-ID: <20191021123012.qpk7tgyjtwp3wtxv@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-8-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-8-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053017_897448_F66810C6 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:20AM +0100, Lee Jones wrote:
> If a child device calls mfd_cell_{en,dis}able() without an appropriate
> call-back being set, we are likely to encounter a panic.  Avoid this
> by adding suitable checking.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  drivers/mfd/mfd-core.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 8126665bb2d8..90b43b44a15a 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -28,6 +28,11 @@ int mfd_cell_enable(struct platform_device *pdev)
>  	const struct mfd_cell *cell = mfd_get_cell(pdev);
>  	int err = 0;
>  
> +	if (!cell->enable) {
> +		dev_dbg(&pdev->dev, "No .enable() call-back registered\n");
> +		return 0;
> +	}
> +
>  	/* only call enable hook if the cell wasn't previously enabled */
>  	if (atomic_inc_return(cell->usage_count) == 1)
>  		err = cell->enable(pdev);
> @@ -45,6 +50,11 @@ int mfd_cell_disable(struct platform_device *pdev)
>  	const struct mfd_cell *cell = mfd_get_cell(pdev);
>  	int err = 0;
>  
> +	if (!cell->enable) {
> +		dev_dbg(&pdev->dev, "No .disable() call-back registered\n");
> +		return 0;
> +	}
> +
>  	/* only disable if no other clients are using it */
>  	if (atomic_dec_return(cell->usage_count) == 0)
>  		err = cell->disable(pdev);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
