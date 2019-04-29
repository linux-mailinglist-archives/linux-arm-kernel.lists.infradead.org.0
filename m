Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC50E96C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7T08D9X4GXvuZ8xO2Tkduh0amEa2X9ceR3nds7HRezY=; b=oZBPsPNFDPx7nz
	zjt2W6vgLvY/CzZKCcMcQ7jJE27ZDWpUoS6xiPxCkLYbPHegQAyFaQhWiUBQbAiJonJs7kgGX/YHE
	bsQhzCoIaUYs6CiyBu7Ec0+sZtVznn3bSAkAslu+aoYG9RUju6LxuXKwAyVQ2gsgowsvoFxaf6j2f
	MlAwsyDHGurgwJyiqoDDSsc3YOAsNtViSWezAcC3yjl512oV/8Ib/Uzr3sMMiuGNxYEsNfWfeHgEf
	J07atUCaVRJxwmgzPxPuCiCXpPrWdyVfmDpahfcOt8i+x5WFfRnAzeKGePXPywkmIK2XtzUiwvhJM
	xN7/6z5LqY0l2rktDNOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAKZ-0000ZK-Jq; Mon, 29 Apr 2019 17:44:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAKS-0000Yq-HC
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:44:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi2so621661plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k1NomnPWMIfso5x9ImCRSbz25mvLyl8gFIQ8b/bFOKU=;
 b=cKzT/jECdjkEqqAqdqgiVNtmJx5QGXkHirh7YnqVt5rNVYMskoK+zKZQyuFzkPJxno
 5AYGHxgllC2CbVNUdL+mNkm4B4eBeokIMKQHdluM17yqfP+8cg/DoL/6CfkLuBazikHf
 4YpzBUCzq6MTjps7nW/JKehIzwO2k+csB39pgksxnQkbqkPPOLgIPu0h5TigJ8U657Y2
 3ID46ruVukzp+FvgQZ9TeRXWJSKrVSB7dCob3me3OnLA7uFa2WI8OlQGPcxWrVOH8FZ2
 xObdVCMqL9iuJ5+AQW0GvOVU91VwSOKLJ+Fa/ZAVjsma9rHjF1K24K3cb+9UHzAsj5kD
 MsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k1NomnPWMIfso5x9ImCRSbz25mvLyl8gFIQ8b/bFOKU=;
 b=I6IS7LAlXHSmuyVegFIK8E2V5P03uxEgmOkEpKa0F6dWeRHu9j7DazQ6X3fV8LmIpw
 aYse8sJctO+Du7ZwNrT8tvGiuFbECGzpLcS3g3S7+DRuKKOYfprq9am1hoX3PbiaoCRv
 PbjOgyaZCbD5px3mG0CMEVSJR2JMWtP4a8ECzID+8aaxk8k6kt/atQc+S37EZxTzT2dw
 05Izcvw7jpdfEScuMCd/R5PvH4g5bHRBtBNmLWcIV/bggd56BMzGbZoDTeuxKRR0RNDV
 GK73m1mnoV7SGh0vLQc6JIyZSDp8mwjU8UwHVBjq3urLJ1124ZCn8iWr8czPle8jtkp9
 3fJw==
X-Gm-Message-State: APjAAAXuaoAnMAy7y5E4rFUnyypx9LENk1XJoJEaTtKyJFB4jg51mrZP
 xGuvvE+9jd28do8FMbFvzaLsGQ==
X-Google-Smtp-Source: APXvYqxfDdgpKbi7c5IJfSUSR96PBo3aTr9H2pdfHg77PXLqLz0S0cq3UFVcfj/69GieeS/am76LyA==
X-Received: by 2002:a17:902:bd0c:: with SMTP id
 p12mr12365704pls.50.1556559875914; 
 Mon, 29 Apr 2019 10:44:35 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c22sm46860290pfn.136.2019.04.29.10.44.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:44:35 -0700 (PDT)
Date: Mon, 29 Apr 2019 11:44:32 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 35/36] [RFC] coresight: add return value for fixup
 connections
Message-ID: <20190429174432.GB18807@xps15>
References: <1555344260-12375-1-git-send-email-suzuki.poulose@arm.com>
 <1555344260-12375-36-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555344260-12375-36-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104436_566111_EF77E3BF 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 robert.walker@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 05:04:18PM +0100, Suzuki K Poulose wrote:
> Handle failures in fixing up connections for a newly registered
> device. This will be useful to handle cases where we fail to expose
> the links via sysfs for the connections.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index 010bc86..4d63063 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -1025,18 +1025,18 @@ static int coresight_orphan_match(struct device *dev, void *data)
>  	return 0;
>  }
>  
> -static void coresight_fixup_orphan_conns(struct coresight_device *csdev)
> +static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
>  {
>  	/*
>  	 * No need to check for a return value as orphan connection(s)
>  	 * are hooked-up with each newly added component.
>  	 */
> -	bus_for_each_dev(&coresight_bustype, NULL,
> +	return bus_for_each_dev(&coresight_bustype, NULL,
>  			 csdev, coresight_orphan_match);

After this patch the comment is no longer true - please consider amending.

With the above:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  }
>  
>  
> -static void coresight_fixup_device_conns(struct coresight_device *csdev)
> +static int coresight_fixup_device_conns(struct coresight_device *csdev)
>  {
>  	int i;
>  
> @@ -1056,6 +1056,8 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
>  			conn->child_dev = NULL;
>  		}
>  	}
> +
> +	return 0;
>  }
>  
>  static int coresight_remove_match(struct device *dev, void *data)
> @@ -1265,10 +1267,15 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
>  
>  	mutex_lock(&coresight_mutex);
>  
> -	coresight_fixup_device_conns(csdev);
> -	coresight_fixup_orphan_conns(csdev);
> +	ret = coresight_fixup_device_conns(csdev);
> +	if (!ret)
> +		ret = coresight_fixup_orphan_conns(csdev);
>  
>  	mutex_unlock(&coresight_mutex);
> +	if (ret) {
> +		coresight_unregister(csdev);
> +		return ERR_PTR(ret);
> +	}
>  
>  	return csdev;
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
