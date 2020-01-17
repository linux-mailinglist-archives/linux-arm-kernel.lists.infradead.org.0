Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D662714122D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 21:16:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUPztZfctEDEF4kQKipR9k7Ixnx8ldPac0/5I8oTIHo=; b=IrBfFvSfbu5EW8
	DyTzhs2yXz2BJ+XJMaxNHeyBMUx042taufYbUp3ZcG/JBXkSn6PYUtH35W6Tlrp9HB3vncU9WHzMg
	iXfy97wdUkAQgFg6ad+1/hKbyI+/NM4qTJ0WmQ/uwgiyLUKlkpC7WAc/fNmj4AyM5U6eQ8R+ycmd/
	BQAwUqMMCVeNU2GtdXQs0XtwX6MSb2c4JwJfAAfN5s0Wg2CUWitxaFFznpkxMf0UdQuqT92k0ZpG9
	pHmtZ8xs6ebz0WwLnrXRhbnzrUcwcWNMmO4FdI7rFcv+XinKa8zAYzSHoMbkoLqjdbPE2HsDdD8vA
	bvNH1pTMl3rQS/YvuxJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isY2F-0006aA-A9; Fri, 17 Jan 2020 20:16:03 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isY1z-0006ZE-Qe; Fri, 17 Jan 2020 20:15:52 +0000
Received: from localhost (87-49-44-45-mobile.dk.customer.tdc.net [87.49.44.45])
 by first.geanix.com (Postfix) with ESMTPSA id 8A681AB7CF;
 Fri, 17 Jan 2020 20:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1579292096; bh=NyD2V5SZSfQVTYmJ6N+L70KBjajwnojRIy5BahhEoVQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=b/n+rnpA3v2O8rwAeqUqPDB/3pEwDc8aT2Fzok20ORw+bUJDTkgOWQJHZ3Eb86Nia
 h98IRvImFLnZ3NQRetCb6D/15fc32Ni9LV793Q5O3DKiP92rHDevyMv5bwJLFN0Ta6
 ctOCLIZmzJBbNrwj5Z2qa7uSVgnhjj37BGjVLtTy5oUdnotiRsWizk+MAELt9JT9KH
 GFdOjdO64TpbS+k62YS0jqpEbH46IEswdqmK+kaLNugVhwRmefu4zDFGZCI48g0Lsf
 W4gUgVPD8KoWVI0J28kJEVZhPwjJMfaGqologNqBxhwXb0FMrHeMhgdOTg9/hJ2g9S
 as4l4hd/ssMvQ==
From: Esben Haabendal <esben@geanix.com>
To: Han Xu <han.xu@nxp.com>
Subject: Re: [PATCH 6/6] mtd: rawnand: gpmi: set the pinctrl state for
 suspend/reusme
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
 <1579038243-28550-7-git-send-email-han.xu@nxp.com>
Date: Fri, 17 Jan 2020 21:15:44 +0100
In-Reply-To: <1579038243-28550-7-git-send-email-han.xu@nxp.com> (Han Xu's
 message of "Wed, 15 Jan 2020 05:44:03 +0800")
Message-ID: <87wo9pvnyn.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on ea2d15de10a4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_121548_008315_90354A07 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vigneshr@ti.com, richard@nod.at, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
 miquel.raynal@bootlin.com, dmaengine@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Han Xu <han.xu@nxp.com> writes:

> set the correct pinctrl state in system pm suspend/resume ops
>
> Signed-off-by: Han Xu <han.xu@nxp.com>
> ---
>  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> index 73644c96fa9b..de1e3dbb2eb1 100644
> --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> @@ -15,6 +15,7 @@
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/dma/mxs-dma.h>
>  #include "gpmi-nand.h"
>  #include "gpmi-regs.h"
> @@ -2692,6 +2693,7 @@ static int gpmi_pm_suspend(struct device *dev)
>  {
>  	int ret;
>  
> +	pinctrl_pm_select_sleep_state(dev);
>  	ret = pm_runtime_force_suspend(dev);
>  
>  	return ret;
> @@ -2708,6 +2710,8 @@ static int gpmi_pm_resume(struct device *dev)
>  		return ret;
>  	}
>  
> +	pinctrl_pm_select_default_state(dev);
> +
>  	/* re-init the GPMI registers */
>  	ret = gpmi_init(this);
>  	if (ret) {

Acked-by: Esben Haabendal <esben@geanix.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
