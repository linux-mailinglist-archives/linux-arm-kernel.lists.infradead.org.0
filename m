Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA76105477
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nzWHzX7S8iicSQ+03/5oyXNGsRNYbvCWAxSzJkOVL8=; b=Sczxet2HMbsg2S
	17zPXy4LFaIjUX1i5RCDDMRvmU9IE/CxGt+yrPKVx5Yg/t8dfQZBskOW5APHJax4W4QgS5IlMsri1
	hHiP3l42X5Ig9wZ6wKyiNE2zKcmxiNqh1ypIdQk6Qxx1HzspKr3LJJcvn7QWy4LnbXc3GUfh1J8qy
	Z601S2Cpz7p92UQBulwkhRMzwfURstFTDA3Mrzb2YrHUqZzDZz6aIukgvlksUt63v4iuA6M4g/AYr
	8tZnls8vhnmHteNDNWLgNpBpkeh7ceh5yPg0aIdMSGkZqHR3cE3dPCAHLqHYywB5nBWaiZ3ozwc8X
	gVi4sN4vWfgEEb/lSi3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnUw-0000ih-N2; Thu, 21 Nov 2019 14:31:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnUn-0000hk-Oe
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:31:47 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1iXnUL-0002mS-FN; Thu, 21 Nov 2019 15:31:17 +0100
Date: Thu, 21 Nov 2019 15:31:15 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH 3/7] clk: zynqmp: Warn user if clock user are more than
 allowed
Message-ID: <20191121153115.50340e47@litschi.hi.pengutronix.de>
In-Reply-To: <1573564580-9006-4-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564580-9006-4-git-send-email-rajan.vaja@xilinx.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_063145_799682_9AE9B69C 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, ravi.patel@xilinx.com, gustavo@embeddedor.com,
 sboyd@kernel.org, nava.manne@xilinx.com, mturquette@baylibre.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 jolly.shah@xilinx.com, linux-clk@vger.kernel.org, dan.carpenter@oracle.com,
 m.tretter@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 05:16:16 -0800, Rajan Vaja wrote:
> Warn user if clock is used by more than allowed devices.
> This check is done by firmware and returns respective
> error code. Upon receiving error code for excessive user,
> warn user for the same.
> 
> This change is done to restrict VPLL use count. It is
> assumed that VPLL is used by one user only.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
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
>  		frac = (parent_rate * f) / FRAC_DIV;
>  
>  		ret = eemi_ops->clock_setdivider(clk_id, m);
> -		if (ret)
> -			pr_warn_once("%s() set divider failed for %s, ret = %d\n",
> -				     __func__, clk_name, ret);
> +		if (ret) {
> +			if (ret == -EUSERS)
> +				WARN(1, "More than allowed devices are using the %s, which is forbidden\n", clk_name);
> +			pr_err("%s() set divider failed for %s, ret = %d\n",
> +			       __func__, clk_name, ret);
> +		}

In case of -EUSERS this prints the warning and the error. This seems a
bit excessive to me. Isn't it enough to leave the existing
pr_warn_once() for the new error code? If not, then add a new warning
for the -EUSERS error, but leave the existing warning as it is.

Michael

>  
>  		eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
>  
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 0137bf3..ecc339d 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -53,6 +53,8 @@ static int zynqmp_pm_ret_code(u32 ret_status)
>  		return -EACCES;
>  	case XST_PM_ABORT_SUSPEND:
>  		return -ECANCELED;
> +	case XST_PM_MULT_USER:
> +		return -EUSERS;
>  	case XST_PM_INTERNAL:
>  	case XST_PM_CONFLICT:
>  	case XST_PM_INVALID_NODE:
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 25bedd2..f019d1c 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -96,6 +96,7 @@ enum pm_ret_status {
>  	XST_PM_INVALID_NODE,
>  	XST_PM_DOUBLE_REQ,
>  	XST_PM_ABORT_SUSPEND,
> +	XST_PM_MULT_USER = 2008,
>  };
>  
>  enum pm_ioctl_id {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
