Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2DB4C716
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7RrxrqgmFdT4fkeYHecuGc2Vm3NAz9VArPQSTt+ynM=; b=cUsgS3w6xaWhSA
	5ad9Fz2owea+4edIdBifA8R/suAQ+aczDm50zoJNlRR1Em6eiGpddy2h3z6buIRmLlRSoIg+5MEXe
	UNttxnyv+FJR+F5V8mWfTsVLtfKIdAzGbPA4zPMfjix4w/JhTpfeGn1CWvPU3zG4xLn1hhlhbqtO0
	CgaWwl3hwhW3J+lz1+HJqwDChLglj46Xmgw2mK51rJh5dvImpBchRDzThDNUUXc9btk2j6ROEPa3X
	iKSHIR7iXOl6ofAOn3dJm/m1y4A8rNAS40sREiVt67rD9y/DG8cyBt96hVHfUExyeL3jtSwLbFtIQ
	Xq1LPZK7qLmSS67RCrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqCF-0001ro-Nh; Thu, 20 Jun 2019 06:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqBy-0001QM-BN
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:05:03 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E3AB20B1F;
 Thu, 20 Jun 2019 06:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561010702;
 bh=JxSBMAnuVjwaDaLG39Kh0Z+is/lXGybcgQprRrj5mk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HdaqC/eZukFxGK735GcvEtjnNS+ktAAR5MrFATmBXzjr7fK0C2Ym1FCqq8DoG6NK/
 Zq3UZ1N0DHVSOj9a48kBQ53Kf0KRhEmdp0NpozPIPN6oeqm1d9I9WpVaQR59XbpOlh
 tn6ktBRS8ISuW1w8mVFI03RjIE2ypgFtyTsZTAA8=
Date: Thu, 20 Jun 2019 08:04:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 25/28] coresight: etm3x: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190620060459.GF26319@kroah.com>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-26-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619195318.19254-26-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_230502_426229_EFDE8B92 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:53:15PM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Based on the following report from  Smatch tool, make sure we have a
> valid drvdata before we dereference it to find the real dev.
> 
> The patch 21d26b905c05: "coresight: etm: Clean up device specific
> data" from May 22, 2019, leads to the following Smatch complaint:
> 
>     ./drivers/hwtracing/coresight/coresight-etm3x.c:460 etm_get_trace_id()
>     warn: variable dereferenced before check 'drvdata' (see line 458)
> 
> ./drivers/hwtracing/coresight/coresight-etm3x.c
>    457		int trace_id = -1;
>    458		struct device *etm_dev = drvdata->csdev->dev.parent;
>                                          ^^^^^^^^^
> New dereference
> 
>    459
>    460		if (!drvdata)
>                     ^^^^^^^^
> Checked too late.  Delete the check?
> 
>    461			goto out;
>    462
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-etm3x.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index bed729140718..225c2982e4fe 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -455,11 +455,12 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
>  {
>  	unsigned long flags;
>  	int trace_id = -1;
> -	struct device *etm_dev = drvdata->csdev->dev.parent;
> +	struct device *etm_dev;
>  
>  	if (!drvdata)
>  		goto out;
>  
> +	etm_dev = drvdata->csdev->dev.parent;
>  	if (!local_read(&drvdata->mode))
>  		return drvdata->traceid;
>  
> -- 
> 2.17.1
> 

Looks like 5.2 and possibly stable material, right?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
