Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4C6CADE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99G+Tyy7FqxOO3hn8CLJswNRBqJWuDMwd+hf6yrGgQY=; b=uOtgYjqIrpukS4
	5UzXDUN95tTknU3RkPbpWmHGfUmYeIr8q1AzAsmPYvCr5gEPG1ySs32pDLc/WdYH3FnCLImu0JlNy
	RZJt3uUyJ6BDSk72VaYSPZOAFrn2Q4p8G6rQn+bm0/U7ZO3bBZ1oqgKJAtjqZbMUSsIxj1QHoWzyB
	58GFKxVkPST8taE9d0EIFjiXFmRsJlaM+SU1cXO2PqidIesamSYPYJ2i7FrXk7ETzyMk4MpyMBGfi
	bEuBNqwMnskcUNs9o2iZOfg9HvNfwKKIlPftnqBOmruc2jv1nrhq28SbGj8eQRsAsCw/iCqTjA9V2
	StPlVurhQmHNOWUVBysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1gh-00016i-Co; Thu, 18 Jul 2019 08:22:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1gP-00016O-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 08:22:34 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A1A32173B;
 Thu, 18 Jul 2019 08:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563438153;
 bh=g4IuIvW9pxmuWhc4yVBUShOQ7C6dIX/1CpC97IThK1A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KFLfokf78OfrmVaEQ82oKyna3QYuK1PvnANlsbLTa+qRGtykWAWvvcCbmMyV85ut6
 WFvLS2A/4SWlaVUtLc5HRoCWOLAjfm1OCtvQBZhSVEdtJWMDhva2rX4Q996k46K2eM
 L8MXo/fdx6oytGFxjHN5iFZGPRaIHRgDcnG4moPQ=
Date: Thu, 18 Jul 2019 16:22:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com, Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH V3] soc: imx-scu: Add SoC UID(unique identifier) support
Message-ID: <20190718082216.GO3738@dragon>
References: <20190702074545.48267-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702074545.48267-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_012233_458567_FD9684F9 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 03:45:45PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add i.MX SCU SoC's UID(unique identifier) support, user
> can read it from sysfs:
> 
> root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> 7B64280B57AC1898
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

@Marco, are you happy with it?

Shawn

> ---
> Change since V2:
> 	- The SCU FW API for getting UID does NOT have response, so we should set
> 	  imx_scu_call_rpc()'s 3rd parameter as false and still can check the returned
> 	  value, and comment is no needed any more.
> ---
>  drivers/soc/imx/soc-imx-scu.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index 676f612..50831eb 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -27,6 +27,40 @@ struct imx_sc_msg_misc_get_soc_id {
>  	} data;
>  } __packed;
>  
> +struct imx_sc_msg_misc_get_soc_uid {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 uid_low;
> +	u32 uid_high;
> +} __packed;
> +
> +static ssize_t soc_uid_show(struct device *dev,
> +			    struct device_attribute *attr, char *buf)
> +{
> +	struct imx_sc_msg_misc_get_soc_uid msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	u64 soc_uid;
> +	int ret;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> +	hdr->size = 1;
> +
> +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
> +	if (ret) {
> +		pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
> +		return ret;
> +	}
> +
> +	soc_uid = msg.uid_high;
> +	soc_uid <<= 32;
> +	soc_uid |= msg.uid_low;
> +
> +	return sprintf(buf, "%016llX\n", soc_uid);
> +}
> +
> +static DEVICE_ATTR_RO(soc_uid);
> +
>  static int imx_scu_soc_id(void)
>  {
>  	struct imx_sc_msg_misc_get_soc_id msg;
> @@ -102,6 +136,11 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
>  		goto free_revision;
>  	}
>  
> +	ret = device_create_file(soc_device_to_device(soc_dev),
> +				 &dev_attr_soc_uid);
> +	if (ret)
> +		goto free_revision;
> +
>  	return 0;
>  
>  free_revision:
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
