Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC9E189B41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:52:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qK39HBDLOWHi3xDsVMyjvBpHkJ8ak3IwggyHVCEdZs=; b=ShLKCy+taFU0LD
	laPcaO2jhBgYe32UYGwz9ME/n5NVxQYOvm/861HmXWcBesrmykqphVKsGyrdKTBapGNdK2KXbrP11
	WguVQdS/56VPx7t8F4H+yjiCIYQ0CSxZVgjnikpU2WEAJ6Bb90rSNbUPFOBefhV7Fw53L4ELCZ2+F
	GgJBEAx6DcybW3yYlKSTqp9okvv2XipjQF+vt0P121zdutswBc4ONjExrMj5i6Hx083YKrRSoNCEf
	9/9AUoglZitzpkOx31/pcjQCc5gWNCEiR8pzqMpzoQ0weBY2Z2e3dtnAFq3G2T2I3YhlF+D4et2w0
	hCWmzZAEzuwrWjZGV6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXEq-0005cH-R5; Wed, 18 Mar 2020 11:51:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXEd-0005bD-RH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:51:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 194272076D;
 Wed, 18 Mar 2020 11:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532303;
 bh=rs4bW0ZkVYcjeCL/A3Dq7xVlHy1e1mmqD+dUYRHTOV4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UA5oJmRW1Y3nkwrN+PxYHwOUwy7KCIYjMDZpxhQ7+8l7cn585mnhCDiCwkUg2uNqj
 1M9zGCSCFbixeD2m6QHFMuJojACUIlZ8IGdXEbzT7iuMdV3r9/4AgZosWCL510hsHf
 G1yXGg9Gp1cOWzeFnTaUcV5nzK0asQVaoRwE25WQ=
Date: Wed, 18 Mar 2020 12:51:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write
 GGS/PGGS registers
Message-ID: <20200318115141.GB2472686@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-21-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-21-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045143_899239_9FD72044 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keescook@chromium.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk, dmitry.torokhov@gmail.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 sudeep.holla@arm.com, mingo@kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:47:28PM -0800, Jolly Shah wrote:
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -105,6 +105,10 @@ enum pm_ioctl_id {
>  	IOCTL_GET_PLL_FRAC_MODE,
>  	IOCTL_SET_PLL_FRAC_DATA,
>  	IOCTL_GET_PLL_FRAC_DATA,
> +	IOCTL_WRITE_GGS,
> +	IOCTL_READ_GGS,
> +	IOCTL_WRITE_PGGS,
> +	IOCTL_READ_PGGS,

You do not have explicit numbers here?  Bold :)

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
