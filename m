Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCD5F3884
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 20:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8NHQmvek5VvymbhL8oe23lp+ny2d7QgzjVS7M2A/CA=; b=ZAA9JtIiAMmK0n
	7vYTWbFvoeNZJXXmIY5pgpo1IdxnfckqGfkeyOurF7IDg/2lnVp2cY79EwMziibD8yapP9tBU0xvP
	DCOD6ptyr0KUd8hmYYv03z7VMwTegZadjGRANLmdnNalIBJsQxuVecxw7aNvpFce+sUjYgiKWAmkH
	Y7G84MAJQnCOwJbrsvylsE+dTLBEa7stwCgtK7Ny8QoxPk6V3ECXWpS4Jj6x1ksb/CDfN8DnkW62S
	Ee6N1gBUvN35jiRuLcq4OEFpQUEKdLSuLQgdDn2QBSqmKlmL3Lg92kOTRoZEZURL2QCzHjGLkLrh6
	6BI9lKk6vb1ZrPxXJ+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnNP-00016p-Il; Thu, 07 Nov 2019 19:23:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnNG-00016H-P2
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 19:23:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E31B2084C;
 Thu,  7 Nov 2019 19:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573154598;
 bh=ftSd/7ehpdn2j3hx+l5leGMaV+fCv0vWroHDpGfHRto=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=0hfQhQvlAHgZvgSiYj3SqZoxBDYPhBwxS6V8lIJkE4gCKLNVwr8xFW/VnOTg57eas
 U5E6mrzmitJwEZL+uDSfwiAvFlvQcY6Fb59c8wJ2ZggGWcAqQMi/X77ePluNmW6djh
 BeIajKROeKq22+QdH6HG0wwx9TC+ayGA5ru8WZoU=
MIME-Version: 1.0
In-Reply-To: <1573120694-6015-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573120694-6015-1-git-send-email-rajan.vaja@xilinx.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, jolly.shah@xilinx.com,
 michal.simek@xilinx.com, mturquette@baylibre.com, nava.manne@xilinx.com,
 shubhrajyoti.datta@xilinx.com, tejas.patel@xilinx.com
Subject: Re: [PATCH] clk: zynqmp: Warn user if clock user are more than allowed
User-Agent: alot/0.8.1
Date: Thu, 07 Nov 2019 11:23:17 -0800
Message-Id: <20191107192318.3E31B2084C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_112318_834984_ACDB5772 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-11-07 01:58:14)
> Warn user if clock is used by more than allowed devices.
> This check is done by firmware and returns respective
> error code. Upon receiving error code for excessive user,
> warn user for the same.
> 
> This change is done to restrict VPLL use count. It is
> assumed that VPLL is used by one user only.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

This sign off chain is incorrect.

> ---
>  drivers/clk/zynqmp/pll.c             | 9 ++++++---
>  drivers/firmware/xilinx/zynqmp.c     | 2 ++
>  include/linux/firmware/xlnx-zynqmp.h | 1 +
>  3 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
> index a541397..2f4ccaa 100644
> --- a/drivers/clk/zynqmp/pll.c
> +++ b/drivers/clk/zynqmp/pll.c
> @@ -188,9 +188,12 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>                 frac = (parent_rate * f) / FRAC_DIV;
>  
>                 ret = eemi_ops->clock_setdivider(clk_id, m);
> -               if (ret)
> -                       pr_warn_once("%s() set divider failed for %s, ret = %d\n",
> -                                    __func__, clk_name, ret);
> +               if (ret) {
> +                       if (ret == -EUSERS)
> +                               WARN(1, "More than allowed devices are using the %s, which is forbidden\n", clk_name);
> +                       pr_err("%s() set divider failed for %s, ret = %d\n",
> +                              __func__, clk_name, ret);
> +               }

Shouldn't we catch this much earlier when clk_get() is called or
something like that?

>  
>                 eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
>  
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 75bdfaa..74d9f13 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -48,6 +48,8 @@ static int zynqmp_pm_ret_code(u32 ret_status)
>                 return -EACCES;
>         case XST_PM_ABORT_SUSPEND:
>                 return -ECANCELED;
> +       case XST_PM_MULT_USER:
> +               return -EUSERS;

This is for filesystem quotas? It's a weird error return value.

>         case XST_PM_INTERNAL:
>         case XST_PM_CONFLICT:
>         case XST_PM_INVALID_NODE:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
