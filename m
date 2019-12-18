Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6F8124A75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8heP+NuNnXmGN9qnVOeIvX+Q9i7203C+I4PhEtX1OA=; b=MRw7RRn4gRjcdR
	tn13Y3MgKZ0MJfrdb+AnRgSjIk2pjPkhXFDhFYfaSkIFBOV3pxBtGHZbGsXZ0xPzgzr+9Z0dU+tBg
	XrzCC975By1VN9oYsRpN4oZ+owicQAjj2hrIG9299UUkAnwxinpjg0k3PhnLY5c4jRCZp/+lQ5BPu
	zGsrXZKFQ0Q/oEllwMkFqjcymaMwDu9UDbh6xZNNnOlTqy9DM3FKRciUIDT5FvFQ8jc9u92EwDpLu
	2pR3RP8sWX8kNPgQ4Pm2aJRg97BsF+R0L9Os2bd/psqqMDHVohEWd0Qtf1iWlPRb4TEFQdOlFlhjj
	UHy4ar24Cb8kezWBMAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihajn-0002f6-RM; Wed, 18 Dec 2019 14:55:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihajb-0002eN-KF
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:55:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A0F430E;
 Wed, 18 Dec 2019 06:55:30 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D48613F719;
 Wed, 18 Dec 2019 06:55:28 -0800 (PST)
Date: Wed, 18 Dec 2019 14:55:26 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH 1/5] firmware: xilinx: Adds new eemi call for reg access
Message-ID: <20191218145526.GB12525@bogus>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <1575502159-11327-2-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575502159-11327-2-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_065531_717146_7744CDAA 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Sudeep Holla <sudeep.holla@arm.com>, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 03:29:15PM -0800, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> This patch adds new EEMI call which is used for CSU/PMU register
> access from linux.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 183 +++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |   9 ++
>  2 files changed, 192 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index fd3d837..56431ad 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -24,6 +24,8 @@
>  #include <linux/firmware/xlnx-zynqmp.h>
>  #include "zynqmp-debug.h"
>  
> +static unsigned long register_address;
> +
>  static const struct zynqmp_eemi_ops *eemi_ops_tbl;
>  
>  static const struct mfd_cell firmware_devs[] = {
> @@ -664,6 +666,26 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
>  				   qos, ack, NULL);
>  }
>  
> +/**
> + * zynqmp_pm_config_reg_access - PM Config API for Config register access
> + * @register_access_id:	ID of the requested REGISTER_ACCESS
> + * @address:		Address of the register to be accessed
> + * @mask:		Mask to be written to the register
> + * @value:		Value to be written to the register
> + * @out:		Returned output value
> + *
> + * This function calls REGISTER_ACCESS to configure CSU/PMU registers.
> + *
> + * Return:	Returns status, either success or error+reason
> + */
> +
> +static int zynqmp_pm_config_reg_access(u32 register_access_id, u32 address,
> +				       u32 mask, u32 value, u32 *out)
> +{
> +	return zynqmp_pm_invoke_fn(PM_REGISTER_ACCESS, register_access_id,
> +				   address, mask, value, out);
> +}
> +

If you have this API, can you remove all other APIs and implement them
using these ? This kills the EEMI abstraction.

NACK for this and any attempts to provide direct reas/write access to
the PM config space. EEMI should have better abstraction than this.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
