Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C75189B49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBWNlsiDZaiXizBDvFdNUi5SlPWsXpCqyBuHkYkIkvk=; b=hXJmLF948sUG8V
	kQE0mktcXjoxTGIcMUtdeMHj70eaPeuPqfpSxQ//uZXL1VSqKKgyl0fITmQbAiq+B3D8wjdYH3uLn
	ZXV3ejYkNWJQzWzV/pxTL6eAxPvvrkewHH2i8npsiyW2mpNORrJrOLJ5lC02cV9Q0FS3wUCU1owvZ
	InEeQ0A/0Vr2DicS7UjB4eCUFe9b6m1AI0Jep7ZqetnKNaUbBt5jIpQ7q9plKIiQZ+vNCVXHiVnO4
	ltbTQE+Gk8nh1QwIheFJPTmS+Od4v7wmHKBApDpACwB/y1STPwpuoFph/PWiLQki+DBTteLb8XjTB
	RH6IiQR/7v59VTW7Yw3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXFQ-0005yJ-St; Wed, 18 Mar 2020 11:52:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXFG-0005xf-DW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:52:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97191205ED;
 Wed, 18 Mar 2020 11:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532342;
 bh=j4eMMoarX1f4rYZawVdTSJLmd2Yr8lYae78R5pTEHGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tx+/3CzPnBDsnwzf8p0lZ7jLmQGWwOz1Ql9yItxh/eRbr/BxG26LeROVZBZ+nGwB0
 ZZ/AFlTnjMlrBbxyfvIbMkO0MeCJco8di0kIAsHdPzooI3IYc67PFNkI567Y3n6xY2
 wBkLIeOLIbn0DDewBarQDdqltUU0OIxwolHXdjts=
Date: Wed, 18 Mar 2020 12:52:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 22/24] firmware: xilinx: Add system shutdown API
 interface
Message-ID: <20200318115219.GC2472686@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-23-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-23-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045222_469889_E5792644 
X-CRM114-Status: GOOD (  14.12  )
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
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 Jolly Shah <jollys@xilinx.com>, rajanv@xilinx.com, sudeep.holla@arm.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:47:30PM -0800, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Add system shutdown API interface which asks firmware to
> perform system shutdown/restart.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Jolly Shah <jollys@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 13 +++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  4 +++-
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index f671b6b..d3f637b 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -834,6 +834,19 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
>  EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
>  
>  /**
> + * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
> + * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
> + * @subtype:	Specifies which system should be restarted or shut down
> + *
> + * Return:	Returns status, either success or error+reason
> + */
> +int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
> +{
> +	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
> +				   0, 0, NULL);
> +}
> +
> +/**
>   * ggs_show - Show global general storage (ggs) sysfs attribute
>   * @device: Device structure
>   * @attr: Device attribute structure
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 8ccaa39..13b9fdb 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -66,7 +66,8 @@
>  
>  enum pm_api_id {
>  	PM_GET_API_VERSION = 1,
> -	PM_REQUEST_NODE = 13,
> +	PM_SYSTEM_SHUTDOWN = 12,
> +	PM_REQUEST_NODE,

So you might have changed the value of PM_REQUEST_NODE, is that ok?

Why remove the explicit value?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
