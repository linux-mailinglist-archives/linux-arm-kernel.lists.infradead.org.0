Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21DD181DC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grv1hTFN/ult5xVf1XsTC/0gpc67FRGiPUFRpiJ09Vg=; b=N9wl9vNFaj0ENB
	Da+SlcBRoeVESGbqtpa7re+b1BfPF6ZycbWqlb7WBJvng9uEmeuxLMeEM9/dQZQgzvxoIm38wt9iY
	EE+VFb2zsvaM2vdYU+FBi9PyBRpcHwnwrO3phTUAjrGQQsUeGFhiS+Yhd572d0a6bdX1zu7elcxcO
	vJog2RX7+pAx3jfqZ2nMq0W3onzAV0NlodEw/N6nrd7I1Ppe5mtoBFQmQ6THvyDaHjfRcRGBF8YJF
	mV1zLQuZ2oL07rx68E5jZRc7QYieIWEulYOQKQgWAJymrE1wpJL/BgDfS795nTEjDyaS7Xe1q6z1U
	ulU1R65IVI1J9UUhusVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4Bp-0007Od-CX; Wed, 11 Mar 2020 16:26:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Bg-0007Np-Cz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:26:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so1344454plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 09:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sgEL1n9bMN/O1CVsdBOAUN7B6KuMrGBamPwvlUPomHs=;
 b=N3LP2s05koqIsRBODtJJNqQ30YJXE8DrJbP/lZ+mhj7afZUw6P1NPsitJsx0cT4DKP
 +tN7X4nGfwdAXkSGBD/RuWlFu5sQqTjG6Qelgue+1S1LMbvc13cX5hcIhQmfo+32npLq
 NC6+ucUVyahgjS1qz0zA5oJjebrXCOqdexXdS3l7sLdpYAe/+7lmBYPScRG6/qr1Q0pT
 gAhRLxaYzzSLLBoQH+O9FI55aGssTGOFViVBGn0UGmDVJYNBXhfdQHidqwaJUFjUkTVK
 sZ7/Qa7FulIbLZN73FsLtVuWZ7F4Y6fyh+zcIg1mpfLStHHTsxWZC0NPm0wWu+DcAK2o
 zzRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sgEL1n9bMN/O1CVsdBOAUN7B6KuMrGBamPwvlUPomHs=;
 b=H3XiNMbX4/SKUKMYcCsQzh2kM9diVnxeYDhT9+29qdAqrw10c+E7fxt0FGyHjfc3uO
 TmyA2OiqS58ksTSKOCUNCTwIjW3cdXAaKIkDBzRkfE9p8xEt5E9zt3CI1qOiL1ris+RY
 8XJ+B6g/OAK2Q8wBGXmhh4aejyMCGxuovPT5QGqo71bLeg+EpQyBVXNgOE6SfcBYWKM4
 rkEhjBN0a391OhRewhn7Ui2kH39eUg9kJlCZv+An8WF1dwcW0GjrbuEvWUmzAvCdVhwP
 UoU4G9rRZeLVMFlUQkae6xo4GPTbtoqdmFacswc0tx63Zh3B7GMR/pcxpkgaUQ8FuX7n
 pfzg==
X-Gm-Message-State: ANhLgQ0HcdhSb4FD3MoW040zCYvmI6Uv7V0987I7QTpPla1zf77dUqt9
 TJbLTLeAja281wv4xfMxre70Rw==
X-Google-Smtp-Source: ADFU+vtYHkA1RwRTnEx/D17mP3PWcu1tYDU6Vt1EnLy/Moje/acIYiygvM0mMQ8rn5GlHvWSoajW8w==
X-Received: by 2002:a17:90a:f0c1:: with SMTP id
 fa1mr4170355pjb.180.1583943987427; 
 Wed, 11 Mar 2020 09:26:27 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id u24sm50163508pgo.83.2020.03.11.09.26.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 09:26:26 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:26:24 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH 3/5] firmware: xilinx: Add zynqmp_get_node_status API
Message-ID: <20200311162624.GA32395@xps15>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
 <1582566751-13118-4-git-send-email-ben.levinsky@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582566751-13118-4-git-send-email-ben.levinsky@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092628_469872_2FADBAE9 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, mark.rutland@arm.com, rajan.vaja@xilinx.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, michal.simek@xilinx.com,
 bjorn.andersson@linaro.org, jollys@xilinx.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

On Mon, Feb 24, 2020 at 09:52:29AM -0800, Ben Levinsky wrote:
> This patch adds a new API to provide access to the
> current power state of a sub-system on Zynqmp sub-system.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>

Patches 1 to 3 look good to me but they will need an R-b from Michal Simek
before it is possible to move foward with them.

Thanks,
Mathieu

> ---
>  drivers/firmware/xilinx/zynqmp.c     | 42 ++++++++++++++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h |  3 +++
>  2 files changed, 45 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 486dcb1..98e35d4 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -725,6 +725,47 @@ static int zynqmp_pm_request_wakeup(const u32 node,
>  }
>  
>  /**
> + * zynqmp_pm_get_node_status - PM call to request a node's current power state
> + * @node:		ID of the component or sub-system in question
> + * @status:		Current operating state of the requested node
> + * @requirements:	Current requirements asserted on the node,
> + *			used for slave nodes only.
> + * @usage:		Usage information, used for slave nodes only:
> + *			PM_USAGE_NO_MASTER	- No master is currently using
> + *						  the node
> + *			PM_USAGE_CURRENT_MASTER	- Only requesting master is
> + *						  currently using the node
> + *			PM_USAGE_OTHER_MASTER	- Only other masters are
> + *						  currently using the node
> + *			PM_USAGE_BOTH_MASTERS	- Both the current and at least
> + *						  one other master is currently
> + *						  using the node
> + *
> + * Return:		Returns status, either success or error+reason
> + */
> +static int zynqmp_pm_get_node_status(const u32 node, u32 *const status,
> +				     u32 *const requirements, u32 *const usage)
> +{
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	int ret;
> +
> +	if (!status)
> +		return -EINVAL;
> +
> +	ret = zynqmp_pm_invoke_fn(PM_GET_NODE_STATUS, node, 0, 0,
> +				  0, ret_payload);
> +	if (ret_payload[0] == XST_PM_SUCCESS) {
> +		*status = ret_payload[1];
> +		if (requirements)
> +			*requirements = ret_payload[2];
> +		if (usage)
> +			*usage = ret_payload[3];
> +	}
> +
> +	return ret;
> +}
> +
> +/**
>   * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
>   * @node:		Node ID of the slave
>   * @capabilities:	Requested capabilities of the slave
> @@ -769,6 +810,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
>  	.set_requirement = zynqmp_pm_set_requirement,
>  	.fpga_load = zynqmp_pm_fpga_load,
>  	.fpga_get_status = zynqmp_pm_fpga_get_status,
> +	.get_node_status = zynqmp_pm_get_node_status,
>  };
>  
>  /**
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 0a68849..fb4efc9 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -62,6 +62,7 @@
>  
>  enum pm_api_id {
>  	PM_GET_API_VERSION = 1,
> +	PM_GET_NODE_STATUS = 3,
>  	PM_REQUEST_NODE = 13,
>  	PM_RELEASE_NODE,
>  	PM_SET_REQUIREMENT,
> @@ -309,6 +310,8 @@ struct zynqmp_pm_query_data {
>  struct zynqmp_eemi_ops {
>  	int (*get_api_version)(u32 *version);
>  	int (*get_chipid)(u32 *idcode, u32 *version);
> +	int (*get_node_status)(const u32 node, u32 *const status,
> +			       u32 *const requirements, u32 *const usage);
>  	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
>  	int (*fpga_get_status)(u32 *value);
>  	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
