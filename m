Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33666FD677
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 07:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPsg29q7ZuFrZ4e7FUP63XzQOlwen6bt3/4aCuB81jk=; b=tAbTm+zkxFMKdj
	+fibsIC4ZzS9A8zuMhOL3VOg/h0ikeimgDn3t1Za/Zfm4736yGOBUsp6ICLm9EpKW9SsV9mXDI3Ip
	GiHwKeLbTYUBkp9cFFknt7cWs3I5HGcf15gZreOW6+3qCFE7xkZqXPB+84MGCuX+i4zV/EiavqxXF
	1jcJgCA4r9o/x+9NjO+vNr5v9kHbh7UDSrPMyB5O4sb1ZnUULzzayg9EKFzTpNaQkY5c8ZmZy2GWK
	mAuXGdKmuAkuwux6SpQotyz6Y1w+y9X9uO74NorJl6+B0TNvjw8Dw7lKsNckveMaipgNoUnFuaY5C
	4ze0+wLZtTNEDv09Zp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVV9t-00012P-C5; Fri, 15 Nov 2019 06:32:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVV9l-00011y-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 06:32:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id bb5so3943910plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 22:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q3ePoHPIIdr3W7D+aaS4Z60EnVlbf0EDqLIH1S2hQUU=;
 b=IDUmX0KGEbj6muhIKJyL7HEhTXwt+PkuOrsqDIMdJNfODpcksOOJ4zuhsAIsOr/Oce
 U27ZwTq8v6TVX2+Mm7OMb2JyPNhU+gFqNK6itxctNYK+T7Beoe3iwMML41GMjVpy7iRW
 p9QrS6/uZ7hhBUVoYO1vBF2n7h4u0ac3aKJM3Sv2mS82gGvsO9ZSsHCIng271RLEqKgc
 ussy0+OzHFTn9oj0QukKglzMDdkO5Xk8PZSKKceMb0VCOSrLdyAgGnyrSGxVbGhJW3kf
 iJ53JmuF4I2o6rTRRvcX3VwVUcWOuNhknIkWTpzAgKryWtidmIWwgK8nYkLweoAu4GC+
 4LOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q3ePoHPIIdr3W7D+aaS4Z60EnVlbf0EDqLIH1S2hQUU=;
 b=uktn7mJHQP+yq1FaqtWo9p4JCvxnKinzS8ZB3Sh+o9YogzpOzocIVMmhV3P9uau4gC
 Hzf6I8SNErhc1mW+aGayn7Kt+oL3s555MuW69YcJue9ggg6qSfXCVC/tu9sJo04M0E4q
 K6uS10r4B0yfLLtVuC64VB6/YnxVNCTWZ4tPel47n2/N91t6DnjI/zTpE9cWRxSZrxmC
 4j5MBvh357/SpsheMxSaTKvFCefOf5wx8W8TiqVdatWdSWyb9XgyeiVDIKesS5v/jRqX
 jPGunqYSuk4HiZK05Nw1ySTYZE3Sj8h6o2lm3Jjt5MpAkzSb04PSw1W/OtR3xybRFJ4F
 cliw==
X-Gm-Message-State: APjAAAUm1u7Tx6tIzpSnHHJ/OaQ2r2iFm6S+zbk5X811y+6jOERuBjxz
 fApu3lMwzQDJWJJauKPLPPNegA==
X-Google-Smtp-Source: APXvYqwXmWhg5Qpo4vphioNQf1z/8vt/0yg96EIeaEoylI37/2yBLu1fWTS4R30QXtIhmfgqLJ6KzA==
X-Received: by 2002:a17:90a:bf16:: with SMTP id
 c22mr17129860pjs.83.1573799551704; 
 Thu, 14 Nov 2019 22:32:31 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p16sm9058430pfn.171.2019.11.14.22.32.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 22:32:30 -0800 (PST)
Date: Thu, 14 Nov 2019 22:32:28 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v3] remoteproc: stm32: fix probe error case
Message-ID: <20191115063228.GS3108315@builder>
References: <1573635167-24590-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573635167-24590-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_223233_379159_F3C30532 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 13 Nov 00:52 PST 2019, Fabien Dessenne wrote:

> If the rproc driver is probed before the mailbox driver and if the rproc
> Device Tree node has some mailbox properties, the rproc driver probe
> shall be deferred instead of being probed without mailbox support.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
> Changes since v2: free other requested mailboxes after one request fails
> Changes since v1: test IS_ERR() before checking PTR_ERR()
> ---
>  drivers/remoteproc/stm32_rproc.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 2cf4b29..4b67480 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -310,7 +310,7 @@ static const struct stm32_mbox stm32_rproc_mbox[MBOX_NB_MBX] = {
>  	}
>  };
>  
> -static void stm32_rproc_request_mbox(struct rproc *rproc)
> +static int stm32_rproc_request_mbox(struct rproc *rproc)
>  {
>  	struct stm32_rproc *ddata = rproc->priv;
>  	struct device *dev = &rproc->dev;
> @@ -329,10 +329,16 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
>  
>  		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
>  		if (IS_ERR(ddata->mb[i].chan)) {
> +			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER) {
> +				ddata->mb[i].chan = NULL;

So this relies on the caller jumping to stm32_rproc_free_mbox() to
release a subset of ddata->mb[x].chan. While this works I find it error
prone and would prefer the idiomatic solution of cleaning things up, in
this function, before returning.

So, could you please goto a snippet that loops backwards from i-- to 0
calling mbox_free_channel() and then return -EPROBE_DEFER instead?

Thanks,
Bjorn

> +				return -EPROBE_DEFER;
> +			}
>  			dev_warn(dev, "cannot get %s mbox\n", name);
>  			ddata->mb[i].chan = NULL;
>  		}
>  	}
> +
> +	return 0;
>  }
>  
>  static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
> @@ -596,7 +602,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> -	stm32_rproc_request_mbox(rproc);
> +	ret = stm32_rproc_request_mbox(rproc);
> +	if (ret)
> +		goto free_mb;
>  
>  	ret = rproc_add(rproc);
>  	if (ret)
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
