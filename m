Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00CC1860CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipMjctsxqayYxGNhTRsVb7DTrjWwMak5GEcmxL7uzQ4=; b=uwbY5akJ1YIPeB
	PpwmY/k4GNJQ77GJGOk0smbZVJuc4wv3DrG7QSxIR7p33/wNmR6gd7OlugHnhIyOdNkfEvQ9YP1JF
	gYQ5vTD1CX+IA462+0UfwekSd66D3dTk7BWRoOO14aAJD9aIovlCBS0yS+gBtgmbkYFpCh/XWJX+6
	0pI7d1ElwPTjRTYe89n4bc3A9NVH/1PvNp2LhuNTlaiG2CMDXkzr5GgZsx85ywmPPm380JNBWELrz
	MQcZGsogysXpYrqjDZsqD3cWIHqyEmWgWRlF6pgq+FYsymAFDSglPDc+/MlOHv6WW4FEVTDoQkdUN
	9nTk+Ul4fq2xBmcPqHyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdcL-00072s-8w; Mon, 16 Mar 2020 00:28:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdcD-00072N-8Z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:28:22 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E12C7205ED;
 Mon, 16 Mar 2020 00:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584318499;
 bh=7mS3ixlj3Z2fEufutJZBKCVTlxROm0o1iSECfEWYPus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kj2QyDQgDqMp3oWKZVS49hoxbhcJ/SEABJVxKM04nCqfSe2w+BJ2BWY1e/kiIKZam
 lgwtJEsQ5HS4dobQ+gsyXayKxneTQBPsR2s3Gcpcgj8Ifb+0HH4JdYJvF8O1X5JWpv
 UgJ8cXyz6Sj8Ns5lqRnIEQ3sEeNlDYXgvvb2OlSk=
Date: Mon, 16 Mar 2020 08:28:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200316002803.GL29269@dragon>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_172821_342686_41EA48D7 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-rtc@vger.kernel.org,
 robh@kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 daniel.lezcano@linaro.org, yuehaibing@huawei.com, krzk@kernel.org,
 Linux-imx@nxp.com, linux-input@vger.kernel.org, rui.zhang@intel.com,
 ronald@innovation.ch, linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 a.zummo@towertech.it, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 07, 2020 at 09:25:53AM +0800, Anson Huang wrote:
> Add stubs for those i.MX SCU APIs to make those modules depending
> on IMX_SCU can pass build when COMPILE_TEST is enabled.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Already had such a patch from Peng Fan.

Shawn

> ---
> new patch.
> ---
>  include/linux/firmware/imx/ipc.h | 11 +++++++++++
>  include/linux/firmware/imx/sci.h | 19 +++++++++++++++++++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/include/linux/firmware/imx/ipc.h b/include/linux/firmware/imx/ipc.h
> index 8910574..3fff0e2 100644
> --- a/include/linux/firmware/imx/ipc.h
> +++ b/include/linux/firmware/imx/ipc.h
> @@ -34,6 +34,7 @@ struct imx_sc_rpc_msg {
>  	uint8_t func;
>  };
>  
> +#ifdef CONFIG_IMX_SCU
>  /*
>   * This is an function to send an RPC message over an IPC channel.
>   * It is called by client-side SCFW API function shims.
> @@ -55,4 +56,14 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg, bool have_resp);
>   * @return Returns an error code (0 = success, failed if < 0)
>   */
>  int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> +#else
> +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg, bool have_resp)
> +{
> +	return 0;
> +}
> +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc)
> +{
> +	return 0;
> +}
> +#endif
>  #endif /* _SC_IPC_H */
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 17ba4e4..4688b60 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -16,8 +16,27 @@
>  #include <linux/firmware/imx/svc/misc.h>
>  #include <linux/firmware/imx/svc/pm.h>
>  
> +#ifdef CONFIG_IMX_SCU
>  int imx_scu_enable_general_irq_channel(struct device *dev);
>  int imx_scu_irq_register_notifier(struct notifier_block *nb);
>  int imx_scu_irq_unregister_notifier(struct notifier_block *nb);
>  int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> +#else
> +static inline int imx_scu_enable_general_irq_channel(struct device *dev)
> +{
> +	return 0;
> +}
> +static inline int imx_scu_irq_register_notifier(struct notifier_block *nb)
> +{
> +	return 0;
> +}
> +static inline int imx_scu_irq_unregister_notifier(struct notifier_block *nb)
> +{
> +	return 0;
> +}
> +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable)
> +{
> +	return 0;
> +}
> +#endif
>  #endif /* _SC_SCI_H */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
