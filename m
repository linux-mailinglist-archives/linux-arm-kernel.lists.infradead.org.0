Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B652FE550
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze2U6Q2mcLFI86bdeOPNC3V98KxA8/ncHNZb/JrKeqo=; b=pwB1Esngyr+oF+
	UOzY9/7EuUr6EWwlFPrvB4wgTsGtvus5CQpPkbb+Juj/vZ0w+fj4Kjr8Chvafb8GDdO+3/gaerzJO
	gwuRrylPVkllMqPOH1ylEEMnuhDz3ISWf7A5fDr8zmUCfOSgS4qpJMwsBMYjFi2KdCOQGxZWcZYzp
	FeJKSf/8Ep2FLJBr0zE2a8b3urEZzJGpCvhYgK6ghGZipkr4o607SqVrYPxAkVPyNVtLma8tM2LGe
	rm9U2bdlzjNMiojBr4Oy5fuzm3xdfkJR6arn1y/Kr2OW0GAbZ4QHf6kzRCL0JJg7TUPrmBmY++5L+
	MYOCW3G4HAT/LUY2GX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVglG-0003iQ-19; Fri, 15 Nov 2019 18:56:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgl8-0003hh-CJ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:55:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id k1so5100735pgg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5/DV9l5vjoy566bD7j+28Px5X64vcSjdjpGgZ+iBNys=;
 b=H/KXp98I7VNkHc8aGry+k4qMOXigEvqS5f48d8OiOYilQ4J2JwVhl6GgokzI6hyV62
 XWkMKULwF03dKbwXHrV25fcvG4pFGGEMexDLJ+Yh3PK+hdPhnERKyqc4g3AzSJ3SGCJZ
 OyCkTZIxlmqlvqF1t+Fnyrlxhd1HP2fIBp/M5NcGjSuffzdMZKMyUk70LicNWBtTC9KY
 I3uBGnreTlwa5iuUJWIJvLlCr5Mbzk9WqyHIHjlGMetRB/9asxXqYDEDtQTGCPZIDZNb
 QWoUp0LtC4qbXAZ+ZD7roicUqYHW05JcJu8W8RRz9Xo7s6emVbzQ9YdMKkWyU+qHPNTs
 Oc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5/DV9l5vjoy566bD7j+28Px5X64vcSjdjpGgZ+iBNys=;
 b=s4ULK6WqO6lTf80BP8a4jPmKxcvWlGVOKnZJkw9QxIg+8dymKjFiWUqgiUFAWsL3wk
 XoNWH1GZrsFwuV6AGIIKLBMscjB7e0Y0J6/Uij7a8v0Ha58Is3lJPO/zzw2NM4uMJhZ2
 m/0RtjFbzsxw7nfqo1NVA1Ek6sPqa/SnLx0+JJ1xIRNUQufc6fXpCxUfLPWfw6AemExh
 WGV10BwvNFdTjW+T5G5G6RS7QHiZjtcZ0Ys1gNmFVu2AJ89Wy8USq5Syv6DUih2KNSv8
 SWyGsZSTfwJcA6IS+a+GZ+ke/TSdWq1HZhJ1kVxLB7+U16vefgzTv7AFFY0DwqZWHqSi
 wIdw==
X-Gm-Message-State: APjAAAV+k6c4tvIElC6tW5koOH++CDGHnLBUFJk4/Ek0Tf0qqkqV5xa9
 QC7zejUj/2nzxPfoIEn8EtL+yg==
X-Google-Smtp-Source: APXvYqxiuLVF6hREoHjpiqNAQJjrFwPI2aFPUGj4Kmc+5j35f5RvAklf22Il0U3b+Ud+37gdYfUmww==
X-Received: by 2002:a63:d70e:: with SMTP id d14mr17742459pgg.10.1573844152375; 
 Fri, 15 Nov 2019 10:55:52 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id l62sm10835645pgl.24.2019.11.15.10.55.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 15 Nov 2019 10:55:51 -0800 (PST)
Date: Fri, 15 Nov 2019 11:55:49 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v4] remoteproc: stm32: fix probe error case
Message-ID: <20191115185549.GA17332@xps15>
References: <1573812188-19842-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573812188-19842-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_105554_429690_B2FD883D 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabien,

On Fri, Nov 15, 2019 at 11:03:08AM +0100, Fabien Dessenne wrote:
> If the rproc driver is probed before the mailbox driver and if the rproc
> Device Tree node has some mailbox properties, the rproc driver probe
> shall be deferred instead of being probed without mailbox support.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
> Changes since v3: on error, free mailboxes from stm32_rproc_request_mbox()
> Changes since v2: free other requested mailboxes after one request fails
> Changes since v1: test IS_ERR() before checking PTR_ERR()
> ---
>  drivers/remoteproc/stm32_rproc.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 2cf4b29..bcebb78 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -310,11 +310,12 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
>  	}
>  };
>  
> -static void stm32_rproc_request_mbox(struct rproc *rproc)
> +static int stm32_rproc_request_mbox(struct rproc *rproc)
>  {
>  	struct stm32_rproc *ddata = rproc->priv;
>  	struct device *dev = &rproc->dev;
>  	unsigned int i;
> +	int j;
>  	const unsigned char *name;
>  	struct mbox_client *cl;
>  
> @@ -329,10 +330,20 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
>  
>  		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
>  		if (IS_ERR(ddata->mb[i].chan)) {
> +			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER)
> +				goto err_probe;
>  			dev_warn(dev, "cannot get %s mbox\n", name);
>  			ddata->mb[i].chan = NULL;
>  		}
>  	}
> +
> +	return 0;
> +
> +err_probe:
> +	for (j = i - 1; j >= 0; j--)
> +		if (ddata->mb[j].chan)
> +			mbox_free_channel(ddata->mb[j].chan);

Do you need to set ddata->mb[i].chan to NULL as it is done in
stm32_rproc_free_mbox?

Also I'm wondering about the error path for this function.  If something goes
wrong in mbox_request_channel_byname() none of the previously allocated channels
are freed and no further actions is taken.  Should we simply abort the probing
of the rproc if any of channels can't be probed?

Regardless of the above and without surprise:

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org> 

> +	return -EPROBE_DEFER;
>  }
>  
>  static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
> @@ -596,7 +607,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> -	stm32_rproc_request_mbox(rproc);
> +	ret = stm32_rproc_request_mbox(rproc);
> +	if (ret)
> +		goto free_rproc;
>  
>  	ret = rproc_add(rproc);
>  	if (ret)
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
