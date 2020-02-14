Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCB615FA12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 23:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMz8vxQ0DCCO3rBorBxRBl8nB/mYA8Q19P4Vyw9lr5s=; b=oQCT1EAdKEepEu
	J988CytXQW0xMMcVpledENhA69k/Uu7C7XWlwXksmGCfsSO9N9g1j8fuNs9KAQ/mJHbFqPw4csXfb
	OAREO3pmRN/3xHTmmBYnfbsk9+NYXQyABZnRIXy+/xel1EsUtf3bj4Jdi7YehHLInlIhiJxRtKPuQ
	niAGek5yTrYf/wb/V+NyGwTeXFPFK2omGWib8IVej91upQnASK9rK0qVezrQPDffLIvsL3QFXAbyw
	7t4HlTPgfjBWnngPXKoBjQUj1prV38RqTN56kR8Dg03YDnyrcepSJHpvejWYEvKLyqY0YMfm8UrXE
	lJfZPoqCBZaephim0XfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2jvD-00074J-LM; Fri, 14 Feb 2020 22:58:55 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2jv2-00073u-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 22:58:45 +0000
Received: by mail-yb1-xb44.google.com with SMTP id w17so5606311ybm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 14:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OfncaOBUirWGLh9Iq7kwxxSsByucOt2Wppw4ynvXDuo=;
 b=u90Wxsf5Ig6CIpSBubkniP8EqwOm+uA3CGPM2VlU1xJwm/CNWNMzqWgIgc4zTvEKnZ
 pXIiA2MJtIB5CaDlq0rjvS5gBY7vXxXr1nTjo5Ber3QKd8vkG51mHN2D3JbfQLrFsQDA
 1Dbm6iHADDO1Q6eUbS+x/kWC0EkLDSzWXa9LJHgp139x0L6qTtm8MVNkfj92bSkWE4O3
 Z1jWuFWLfGlcFh+dD/4KvBYKz9ssSO9bEo7/MpSw93nIxa1FFVBq5MLgwCeZhPo0KOwk
 gQXux8ij+iBCPMTfbs+DsjU9Hchfr4oxd9RgjsohIAaTo2JcuonM/kV1CFl0WIwtqSjO
 e0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OfncaOBUirWGLh9Iq7kwxxSsByucOt2Wppw4ynvXDuo=;
 b=iwEWWDK8JtwAyloSwb5QXCYaewbLwnWeaHT6HT2anJqwSCdpVEyhBhBP+skys46bZx
 cXVGnmJpqnI+SIaCCRfdWpmXEbAqtuLRr62thvmuJ22CH88FfwH7pWxzwqUhTrZhSfD8
 EF09Ffs/j8usm0ysZ8M7rNwZZDJxqprghoHWy+ARdTwraD8VhLmA7kVJWtC8GZFPBLh7
 mY1Rr0iiuY/GxyhbQVG7UVhwFIK+n8k0O0OgVyYIZ2QZqzoNqAE8tmehxAvJAVkGpF/w
 3B2+2tfzS0nBGNfr2vsB2rKVth6SNq6qU94p1lPeC7b8waxDj+aRSSm2r/CN6vCxS3F8
 JgJw==
X-Gm-Message-State: APjAAAX42WwsiFgiMdGBjlYiv+rAGqTYuibt9UoTyxUVrXfiE+Jq8MLT
 eEpB0v85V8g+jl6ODvelTRrhqA==
X-Google-Smtp-Source: APXvYqzE3ne/xD31Jgns9lDh+Obe40lIZIm7x1bBVViPpTWpRAdA9aqaJHaVEF5ciDTUGB5ipW67/w==
X-Received: by 2002:a25:6d88:: with SMTP id i130mr5279654ybc.402.1581721122491; 
 Fri, 14 Feb 2020 14:58:42 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c84sm3331908ywa.1.2020.02.14.14.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 14:58:42 -0800 (PST)
Date: Fri, 14 Feb 2020 15:58:39 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 5/6] coresight: cti: Add in sysfs links to other
 coresight devices.
Message-ID: <20200214225839.GB20024@xps15>
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-6-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211105808.27884-6-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_145844_119949_5A3A3E98 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 10:58:07AM +0000, Mike Leach wrote:
> Adds in sysfs links for connections where the connected device is another
> coresight device. This allows examination of the coresight topology.
> 
> Non-coresight connections remain just as a reference name.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-cti.c | 41 ++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 9e18e176831c..f620e9460e7d 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -441,6 +441,37 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
>  	return err;
>  }
>  
> +static void cti_add_sysfs_link(struct cti_drvdata *drvdata,
> +			       struct cti_trig_con *tc)
> +{
> +	struct coresight_sysfs_link link_info;
> +
> +	link_info.orig = drvdata->csdev;
> +	link_info.orig_name = tc->con_dev_name;
> +	link_info.target = tc->con_dev;
> +	link_info.target_name = dev_name(&drvdata->csdev->dev);
> +	coresight_add_sysfs_link(&link_info);

I understand there isn't much to do if a problem occurs so just catch the error
and add a comment to assert you're doing this on purpose.

> +}
> +
> +static void cti_remove_all_sysfs_links(struct cti_drvdata *drvdata)
> +{
> +	struct cti_trig_con *tc;
> +	struct cti_device *ctidev = &drvdata->ctidev;
> +	struct coresight_sysfs_link link_info;
> +
> +	/* origin device and target link name constant for this cti */
> +	link_info.orig = drvdata->csdev;
> +	link_info.target_name = dev_name(&drvdata->csdev->dev);
> +
> +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> +		if (tc->con_dev) {
> +			link_info.target = tc->con_dev;
> +			link_info.orig_name = tc->con_dev_name;
> +			coresight_remove_sysfs_link(&link_info);
> +		}
> +	}
> +}
> +
>  /*
>   * Look for a matching connection device name in the list of connections.
>   * If found then swap in the csdev name, set trig con association pointer
> @@ -452,6 +483,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
>  {
>  	struct cti_trig_con *tc;
>  	const char *csdev_name;
> +	struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
> +						   ctidev);
>  
>  	list_for_each_entry(tc, &ctidev->trig_cons, node) {
>  		if (tc->con_dev_name) {
> @@ -462,6 +495,7 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
>  					devm_kstrdup(&csdev->dev, csdev_name,
>  						     GFP_KERNEL);
>  				tc->con_dev = csdev;
> +				cti_add_sysfs_link(drvdata, tc);
>  				return true;
>  			}
>  		}
> @@ -546,10 +580,12 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
>  	struct cti_device *ctidev = &drvdata->ctidev;
>  
>  	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> -		if (tc->con_dev)
> +		if (tc->con_dev) {
>  			/* set tc->con_dev->ect_dev */
>  			coresight_set_assoc_ectdev_mutex(tc->con_dev,
>  							 drvdata->csdev);
> +			cti_add_sysfs_link(drvdata, tc);
> +		}
>  	}
>  }
>  
> @@ -602,6 +638,9 @@ static void cti_device_release(struct device *dev)
>  	mutex_lock(&ect_mutex);
>  	cti_remove_conn_xrefs(drvdata);
>  
> +	/* clear the dynamic sysfs associate with connections */

s/associate/associated

> +	cti_remove_all_sysfs_links(drvdata);
> +
>  	/* remove from the list */
>  	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
>  		if (ect_item == drvdata) {

With the above:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
