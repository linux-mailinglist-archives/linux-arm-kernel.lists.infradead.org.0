Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D461A3076
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jmElr9YSKS3WH571gBHhBRM5p7fSIVROH9V83VHVSzA=; b=D9Tk+CIxBKkGt6DCo9XlVUCKx
	cAN8uWLCBNd9952qYTlKByzjUXcE56lqdZRKlHLybQxQF8qbpsg5Lz+jXd38lXlTP2YUYdto8E5np
	MOr8a5TgIxRsLOnTOYx0rKwZpuGabR0K/6kNs72SkSs42Vci8sPFEd/0eDfzC/tgMsf98SPS5Px3y
	P1411szdvY0UMOTVaw6MTuuFv01LLFoidb2M/Ixv69y1G8z8IK84vJX0PKQiyV5vywezny99fcMoH
	PXbQFWUVhZ5OzxST7VfIKtucQpoU04nz97ogO7zt4wWFwERtR7lbiCSEriG9ofo+SDKFLKc/y6r+9
	cvYFd1BSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRyO-0006Z5-Jo; Thu, 09 Apr 2020 07:51:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRyD-0006Yf-97
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:51:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586418690; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=xrWTTOY2ADY2AUD5EsjPbs7aUNyeVE/cj6sqUAzf9Pg=;
 b=lq2DXLmdxPwZMObWt5XeuRdEbplC5sFVSkU9JsvD4AnZvUCS0BbDhoJAXjUdnb4cNtD3A1iP
 qjHrgzgjANjVG4yf//qhktCipB2RORuRjZZ5FYotmlFFCcrp7X9os5Rludyjo3NGvQ2V1hIr
 fPCs3z7QtiMunaTaXNwPTFd83Ak=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8ed3f8.7f3fa40c3bc8-smtp-out-n03;
 Thu, 09 Apr 2020 07:51:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A3DCFC44788; Thu,  9 Apr 2020 07:51:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 960FDC433D2;
 Thu,  9 Apr 2020 07:51:18 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 09 Apr 2020 13:21:18 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <Suzuki.Poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <20200408224347.GA388414@ewhatever.cambridge.arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
 <a7074f44ebbde720b5e0189801eab7c9@codeaurora.org>
 <20200408224347.GA388414@ewhatever.cambridge.arm.com>
Message-ID: <9ad167836b0a22694d58d24f39db89a6@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_005130_559930_8B09BB0C 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 2020-04-09 04:13, Suzuki K Poulose wrote:
> On Tue, Apr 07, 2020 at 08:48:54PM +0530, Sai Prakash Ranjan wrote:
> 
> Please find the untested patch below.
> 
> ---8>---
> 
> [untested] coresight: Fix support for sparse port numbers
> 
> On some systems the firmware may not describe all the ports
> connected to a component (e.g, for security reasons). This
> could be especially problematic for "funnels" where we could
> end up in modifying memory beyond the allocated space for
> refcounts.
> 
> e.g, for a funnel with input ports listed 0, 3, 5, nr_inport = 3.
> However the we could access refcnts[5] while checking for
> references.
> 
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  .../hwtracing/coresight/coresight-platform.c  | 74 ++++++++++++-------
>  drivers/hwtracing/coresight/coresight.c       |  8 +-
>  2 files changed, 56 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c
> b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5bee429105..1c610d6e944b 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -67,6 +67,7 @@ static void of_coresight_get_ports_legacy(const
> struct device_node *node,
>  					  int *nr_inport, int *nr_outport)
>  {
>  	struct device_node *ep = NULL;
> +	struct of_endpoint endpoint;
>  	int in = 0, out = 0;
> 
>  	do {
> @@ -74,10 +75,16 @@ static void of_coresight_get_ports_legacy(const
> struct device_node *node,
>  		if (!ep)
>  			break;
> 
> -		if (of_coresight_legacy_ep_is_input(ep))
> -			in++;
> -		else
> -			out++;
> +		if (of_graph_parse_endpoint(ep, &endpoint))
> +			continue;
> +
> +		if (of_coresight_legacy_ep_is_input(ep)) {
> +			in = (endpoint.port + 1 > in) ?
> +				endpoint.port + 1 : in;
> +		} else {
> +			out = (endpoint.port + 1) > out ?
> +				endpoint.port + 1 : out;
> +		}
> 
>  	} while (ep);
> 
> @@ -117,9 +124,16 @@ of_coresight_count_ports(struct device_node 
> *port_parent)
>  {
>  	int i = 0;
>  	struct device_node *ep = NULL;
> +	struct of_endpoint endpoint;
> +
> +	while ((ep = of_graph_get_next_endpoint(port_parent, ep))) {
> +		/* Defer error handling to parsing */
> +		if (of_graph_parse_endpoint(ep, &endpoint))
> +			continue;
> +		if (endpoint.port + 1 > i)
> +			i = endpoint.port + 1;
> +	}
> 
> -	while ((ep = of_graph_get_next_endpoint(port_parent, ep)))
> -		i++;
>  	return i;
>  }
> 
> @@ -171,14 +185,12 @@ static int of_coresight_get_cpu(struct device 
> *dev)
>   * Parses the local port, remote device name and the remote port.
>   *
>   * Returns :
> - *	 1	- If the parsing is successful and a connection record
> - *		  was created for an output connection.
>   *	 0	- If the parsing completed without any fatal errors.
>   *	-Errno	- Fatal error, abort the scanning.
>   */
>  static int of_coresight_parse_endpoint(struct device *dev,
>  				       struct device_node *ep,
> -				       struct coresight_connection *conn)
> +				       struct coresight_platform_data *pdata)
>  {
>  	int ret = 0;
>  	struct of_endpoint endpoint, rendpoint;
> @@ -186,6 +198,7 @@ static int of_coresight_parse_endpoint(struct 
> device *dev,
>  	struct device_node *rep = NULL;
>  	struct device *rdev = NULL;
>  	struct fwnode_handle *rdev_fwnode;
> +	struct coresight_connection *conn;
> 
>  	do {
>  		/* Parse the local port details */
> @@ -212,6 +225,12 @@ static int of_coresight_parse_endpoint(struct 
> device *dev,
>  			break;
>  		}
> 
> +		conn = &pdata->conns[endpoint.port];
> +		if (conn->child_fwnode) {
> +			dev_warn(dev, "Duplicate output port %d\n", endpoint.port);
> +			ret = -EINVAL;
> +			break;
> +		}
>  		conn->outport = endpoint.port;
>  		/*
>  		 * Hold the refcount to the target device. This could be
> @@ -224,7 +243,6 @@ static int of_coresight_parse_endpoint(struct 
> device *dev,
>  		conn->child_fwnode = fwnode_handle_get(rdev_fwnode);
>  		conn->child_port = rendpoint.port;
>  		/* Connection record updated */
> -		ret = 1;
>  	} while (0);
> 
>  	of_node_put(rparent);
> @@ -238,7 +256,6 @@ static int of_get_coresight_platform_data(struct
> device *dev,
>  					  struct coresight_platform_data *pdata)
>  {
>  	int ret = 0;
> -	struct coresight_connection *conn;
>  	struct device_node *ep = NULL;
>  	const struct device_node *parent = NULL;
>  	bool legacy_binding = false;
> @@ -267,8 +284,6 @@ static int of_get_coresight_platform_data(struct
> device *dev,
>  		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
>  	}
> 
> -	conn = pdata->conns;
> -
>  	/* Iterate through each output port to discover topology */
>  	while ((ep = of_graph_get_next_endpoint(parent, ep))) {
>  		/*
> @@ -280,15 +295,9 @@ static int of_get_coresight_platform_data(struct
> device *dev,
>  		if (legacy_binding && of_coresight_legacy_ep_is_input(ep))
>  			continue;
> 
> -		ret = of_coresight_parse_endpoint(dev, ep, conn);
> -		switch (ret) {
> -		case 1:
> -			conn++;		/* Fall through */
> -		case 0:
> -			break;
> -		default:
> +		ret = of_coresight_parse_endpoint(dev, ep, pdata);
> +		if (ret)
>  			return ret;
> -		}
>  	}
> 
>  	return 0;
> @@ -627,6 +636,11 @@ static int acpi_coresight_parse_link(struct
> acpi_device *adev,
>  		 *    coresight_remove_match().
>  		 */
>  		conn->child_fwnode = fwnode_handle_get(&r_adev->fwnode);
> +	} else if (dir == ACPI_CORESIGHT_LINK_SLAVE) {
> +		conn->child_port = fields[0].integer.value;
> +	} else {
> +		/* Invalid direction */
> +		return -EINVAL;
>  	}
> 
>  	return dir;
> @@ -672,10 +686,14 @@ static int acpi_coresight_parse_graph(struct
> acpi_device *adev,
>  			return dir;
> 
>  		if (dir == ACPI_CORESIGHT_LINK_MASTER) {
> -			pdata->nr_outport++;
> +			if (ptr->outport > pdata->nr_outport)
> +				pdata->nr_outport = ptr->outport;
>  			ptr++;
>  		} else {
> -			pdata->nr_inport++;
> +			WARN_ON(pdata->nr_inport == ptr->child_port);
> +			/* Do not move the ptr for input connections */
> +			if (ptr->child_port > pdata->nr_inport)
> +				pdata->nr_inport = ptr->child_port;
>  		}
>  	}
> 
> @@ -684,8 +702,13 @@ static int acpi_coresight_parse_graph(struct
> acpi_device *adev,
>  		return rc;
> 
>  	/* Copy the connection information to the final location */
> -	for (i = 0; i < pdata->nr_outport; i++)
> -		pdata->conns[i] = conns[i];
> +	for (i = 0; conns + i < ptr; i++) {
> +		int port = conns[i].outport;
> +
> +		/* Duplicate output port */
> +		WARN_ON(pdata->conns[port].child_fwnode);
> +		pdata->conns[port] = conns[i];
> +	}
> 
>  	devm_kfree(&adev->dev, conns);
>  	return 0;
> @@ -787,6 +810,7 @@ coresight_get_platform_data(struct device *dev)
>  		goto error;
> 
>  	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> +	pdata->nr_outport = pdata->nr_inport = -1;
>  	if (!pdata) {
>  		ret = -ENOMEM;
>  		goto error;
> diff --git a/drivers/hwtracing/coresight/coresight.c
> b/drivers/hwtracing/coresight/coresight.c
> index ef20f74c85fa..f07bc0a7ab88 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -990,6 +990,9 @@ static int coresight_orphan_match(struct device
> *dev, void *data)
>  	for (i = 0; i < i_csdev->pdata->nr_outport; i++) {
>  		conn = &i_csdev->pdata->conns[i];
> 
> +		/* Skip the port if FW doesn't describe it */
> +		if (!conn->child_fwnode)
> +			continue;
>  		/* We have found at least one orphan connection */
>  		if (conn->child_dev == NULL) {
>  			/* Does it match this newly added device? */
> @@ -1029,6 +1032,9 @@ static void coresight_fixup_device_conns(struct
> coresight_device *csdev)
>  		struct coresight_connection *conn = &csdev->pdata->conns[i];
>  		struct device *dev = NULL;
> 
> +		if (!conn->child_fwnode)
> +			continue;
> +
>  		dev = bus_find_device_by_fwnode(&coresight_bustype, 
> conn->child_fwnode);
>  		if (dev) {
>  			conn->child_dev = to_coresight_device(dev);
> @@ -1061,7 +1067,7 @@ static int coresight_remove_match(struct device
> *dev, void *data)
>  	for (i = 0; i < iterator->pdata->nr_outport; i++) {
>  		conn = &iterator->pdata->conns[i];
> 
> -		if (conn->child_dev == NULL)
> +		if (conn->child_dev == NULL || conn->child_fwnode == NULL)
>  			continue;
> 
>  		if (csdev->dev.fwnode == conn->child_fwnode) {


Thanks Suzuki, I don't see the KASAN warning anymore with this patch.
But somehow tmc_etr probe fails with error -12(ENOMEM).

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
