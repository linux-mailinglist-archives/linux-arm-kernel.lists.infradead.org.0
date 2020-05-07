Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF71C989B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xmY/cwIFs9yBOnPSg7rsEVCFq74IPVZkkQUyc/od0zg=; b=XT7m5/WzcSCak6by0kWSGMvd3
	gZhkbHgZiVCLf4cfImMYubLZJWRAIWN8P3opd/SbECliD+MQtbiAvCvZ58V1aWEn8h94d40Q5EorB
	k9WFYTOEpszyIH19mQV+Tur0GPVq4B98FYmDDGOKYZyQcSytpifTzYZO2fxORVP69EEJzetqugy++
	v+h7KS7debYCkpucocTbkf/B5U/f0zVt9++UHjXDli+zmPmzGDYnHv5rqFz0Yr5G7OssOxhglu5ev
	H0jszYfrEovhG7HlFZ0ZQ4dik32/lvIFb9KDRBteH9HKMewB8dKrVf7CcKIAQc/95/5q5uP2HIyjh
	x4KAQ5IAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkql-0003LR-05; Thu, 07 May 2020 18:02:23 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkqY-0002XP-Op
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:02:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588874535; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=4yDrMYccwPReA9j2ANAELXNtg9SFRUnwpspfAHYq0jQ=;
 b=gq0Veui9b9RmM8qIn5B0+oW7e+kYDSuIy4dQg6j/qlklFVrd3lxLUAGIaL7ZSO74DLiArewl
 CgNdw2ZQjwY2Ha77bNKOxvj4pp6Y1cuyLqh3llOib0xKdX/r5yb6UPwSJtr3EHclsxUVhfbh
 RTCoUaUzATfxqTyDo8O4m8StjX4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb44cf6.7fdb737c36c0-smtp-out-n02;
 Thu, 07 May 2020 18:01:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 29402C433F2; Thu,  7 May 2020 18:01:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rishabhb)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 64528C433D2;
 Thu,  7 May 2020 18:01:24 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 11:01:24 -0700
From: rishabhb@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 3/4] rpmsg: glink: Integrate glink_ssr in qcom_glink
In-Reply-To: <20200423003736.2027371-4-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-4-bjorn.andersson@linaro.org>
Message-ID: <bd5db1445c94f40c8d71504dc642d811@codeaurora.org>
X-Sender: rishabhb@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110215_830507_CA4FF401 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc-owner@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Sibi <sibis@codeaurora.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-22 17:37, Bjorn Andersson wrote:
> In all but the very special case of a system with _only_ glink_rpm,
> GLINK is dependent on glink_ssr, so move it to rpmsg and combine it 
> with
> qcom_glink_native in the new qcom_glink kernel module.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Acked-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>

>  drivers/rpmsg/Kconfig                                    | 6 +++---
>  drivers/rpmsg/Makefile                                   | 3 ++-
>  drivers/{soc/qcom/glink_ssr.c => rpmsg/qcom_glink_ssr.c} | 4 ----
>  drivers/soc/qcom/Kconfig                                 | 9 ---------
>  drivers/soc/qcom/Makefile                                | 1 -
>  include/linux/rpmsg/qcom_glink.h                         | 7 +------
>  6 files changed, 6 insertions(+), 24 deletions(-)
>  rename drivers/{soc/qcom/glink_ssr.c => rpmsg/qcom_glink_ssr.c} (97%)
> 
> diff --git a/drivers/rpmsg/Kconfig b/drivers/rpmsg/Kconfig
> index a9108ff563dc..f96716893c2a 100644
> --- a/drivers/rpmsg/Kconfig
> +++ b/drivers/rpmsg/Kconfig
> @@ -24,13 +24,13 @@ config RPMSG_MTK_SCP
>  	  remote processors in MediaTek platforms.
>  	  This use IPI and IPC to communicate with remote processors.
> 
> -config RPMSG_QCOM_GLINK_NATIVE
> +config RPMSG_QCOM_GLINK
>  	tristate
>  	select RPMSG
> 
>  config RPMSG_QCOM_GLINK_RPM
>  	tristate "Qualcomm RPM Glink driver"
> -	select RPMSG_QCOM_GLINK_NATIVE
> +	select RPMSG_QCOM_GLINK
>  	depends on HAS_IOMEM
>  	depends on MAILBOX
>  	help
> @@ -40,7 +40,7 @@ config RPMSG_QCOM_GLINK_RPM
> 
>  config RPMSG_QCOM_GLINK_SMEM
>  	tristate "Qualcomm SMEM Glink driver"
> -	select RPMSG_QCOM_GLINK_NATIVE
> +	select RPMSG_QCOM_GLINK
>  	depends on MAILBOX
>  	depends on QCOM_SMEM
>  	help
> diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
> index ae92a7fb08f6..ffe932ef6050 100644
> --- a/drivers/rpmsg/Makefile
> +++ b/drivers/rpmsg/Makefile
> @@ -2,8 +2,9 @@
>  obj-$(CONFIG_RPMSG)		+= rpmsg_core.o
>  obj-$(CONFIG_RPMSG_CHAR)	+= rpmsg_char.o
>  obj-$(CONFIG_RPMSG_MTK_SCP)	+= mtk_rpmsg.o
> +qcom_glink-objs			:= qcom_glink_native.o qcom_glink_ssr.o
> +obj-$(CONFIG_RPMSG_QCOM_GLINK) += qcom_glink.o
>  obj-$(CONFIG_RPMSG_QCOM_GLINK_RPM) += qcom_glink_rpm.o
> -obj-$(CONFIG_RPMSG_QCOM_GLINK_NATIVE) += qcom_glink_native.o
>  obj-$(CONFIG_RPMSG_QCOM_GLINK_SMEM) += qcom_glink_smem.o
>  obj-$(CONFIG_RPMSG_QCOM_SMD)	+= qcom_smd.o
>  obj-$(CONFIG_RPMSG_VIRTIO)	+= virtio_rpmsg_bus.o
> diff --git a/drivers/soc/qcom/glink_ssr.c 
> b/drivers/rpmsg/qcom_glink_ssr.c
> similarity index 97%
> rename from drivers/soc/qcom/glink_ssr.c
> rename to drivers/rpmsg/qcom_glink_ssr.c
> index 847d79c935f1..dcd1ce616974 100644
> --- a/drivers/soc/qcom/glink_ssr.c
> +++ b/drivers/rpmsg/qcom_glink_ssr.c
> @@ -164,7 +164,3 @@ static struct rpmsg_driver qcom_glink_ssr_driver = 
> {
>  	},
>  };
>  module_rpmsg_driver(qcom_glink_ssr_driver);
> -
> -MODULE_ALIAS("rpmsg:glink_ssr");
> -MODULE_DESCRIPTION("Qualcomm GLINK SSR notifier");
> -MODULE_LICENSE("GPL v2");
> diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
> index 19332ea40234..5140bd82f1be 100644
> --- a/drivers/soc/qcom/Kconfig
> +++ b/drivers/soc/qcom/Kconfig
> @@ -35,15 +35,6 @@ config QCOM_GENI_SE
>  	  driver is also used to manage the common aspects of multiple Serial
>  	  Engines present in the QUP.
> 
> -config QCOM_GLINK_SSR
> -	tristate "Qualcomm Glink SSR driver"
> -	depends on RPMSG
> -	depends on QCOM_RPROC_COMMON
> -	help
> -	  Say y here to enable GLINK SSR support. The GLINK SSR driver
> -	  implements the SSR protocol for notifying the remote processor 
> about
> -	  neighboring subsystems going up or down.
> -
>  config QCOM_GSBI
>  	tristate "QCOM General Serial Bus Interface"
>  	depends on ARCH_QCOM || COMPILE_TEST
> diff --git a/drivers/soc/qcom/Makefile b/drivers/soc/qcom/Makefile
> index 5d6b83dc58e8..e9cacc9ad401 100644
> --- a/drivers/soc/qcom/Makefile
> +++ b/drivers/soc/qcom/Makefile
> @@ -3,7 +3,6 @@ CFLAGS_rpmh-rsc.o := -I$(src)
>  obj-$(CONFIG_QCOM_AOSS_QMP) +=	qcom_aoss.o
>  obj-$(CONFIG_QCOM_GENI_SE) +=	qcom-geni-se.o
>  obj-$(CONFIG_QCOM_COMMAND_DB) += cmd-db.o
> -obj-$(CONFIG_QCOM_GLINK_SSR) +=	glink_ssr.o
>  obj-$(CONFIG_QCOM_GSBI)	+=	qcom_gsbi.o
>  obj-$(CONFIG_QCOM_MDT_LOADER)	+= mdt_loader.o
>  obj-$(CONFIG_QCOM_OCMEM)	+= ocmem.o
> diff --git a/include/linux/rpmsg/qcom_glink.h 
> b/include/linux/rpmsg/qcom_glink.h
> index 09daa0acde2c..daded9fddf36 100644
> --- a/include/linux/rpmsg/qcom_glink.h
> +++ b/include/linux/rpmsg/qcom_glink.h
> @@ -12,6 +12,7 @@ struct qcom_glink;
>  struct qcom_glink *qcom_glink_smem_register(struct device *parent,
>  					    struct device_node *node);
>  void qcom_glink_smem_unregister(struct qcom_glink *glink);
> +void qcom_glink_ssr_notify(const char *ssr_name);
> 
>  #else
> 
> @@ -23,12 +24,6 @@ qcom_glink_smem_register(struct device *parent,
>  }
> 
>  static inline void qcom_glink_smem_unregister(struct qcom_glink 
> *glink) {}
> -
> -#endif
> -
> -#if IS_ENABLED(CONFIG_RPMSG_QCOM_GLINK_SSR)
> -void qcom_glink_ssr_notify(const char *ssr_name);
> -#else
>  static inline void qcom_glink_ssr_notify(const char *ssr_name) {}
>  #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
