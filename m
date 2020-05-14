Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3A61D269D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNmhQfJMFg3DpwoVzFBTeClQXQRB1dQu48KDuE8wQ0U=; b=HvuePHgZ8gWglz
	mvKIKJRLSW2nv7iapWKyFA/x3xEoT3/jJY2z+J8NXxGmz5gw7uQqOLs20wD3gAXJp+D1TXgkgNABp
	aaB0R1xxs5As4q/teAA6tZi70eGmPyjNeiUoXLjTwD7qPUqWnnAuuCp9LQJCO8FqwcDMVfZDIuDeJ
	8GKReh3Bu8XFOOZBqcSZkJKOM30xgjsTY/3Gqo5gafDGAfgzBBaryqAyPDmGBDh8XcsClfpx6L2Qq
	9EJNWmXP1jkpJSqaiBM/0OMYa/eVkQ29yVefzEqBmDpXjdnqn/mdOMBv0td7uABjXOJO3w6Ce8dht
	dRQugTcfzSSoofchPJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ6FT-00086m-NZ; Thu, 14 May 2020 05:17:35 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ6FM-000867-19
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:17:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l73so2446865pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 22:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GjJPgwHAWLCdp+4b5y9We0V/4Ec6i8aFUo1gPxwMZ7w=;
 b=MkuhUNV21I7fxjv4MrVDEcmFSHwUJ9lvNGa8cXCPIn1dx62l2uSsNsmmCeUQUAS43c
 nSBL/PzySbiBqaxWXoaUqcFN4ADbjC3t4Xb9Lvu49f4EjFmeUeGrJ3izVna5vv3tvv3q
 CulRTby5nRpPCy1ASOPVRug05M2Ky27e6fZQ+faMWY3rzOeXkdzbjf/QghV0sgzv9sfU
 7TRQ58vGck02M+Wrm/1GoCQ0sdlvDSoFrEOmQo+bQB6vZ1gPEqYB4BwIA7+BHFNlhp/p
 d6BqcGuXO/C2zmjGPLXrbWachYsg3NZ1dIU9EauzT7U0aS9REMPNzBRSGJZ10hk/BUJG
 lOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GjJPgwHAWLCdp+4b5y9We0V/4Ec6i8aFUo1gPxwMZ7w=;
 b=pRAq0hgihif5E9iMdS4ogF7GnlSz05UfiW9XIENQLJhpFgbnfmxKW2HdTwQOGN27ah
 GEc9OoASw9ncUE+RgVVLFZPnAW2PfNjgmI1EodSJTMl9cU3tL7AyOpcEgib0APrfLX+x
 QJK6Pe4F6vzmOCe1GglDc7r6vxFmatRJR2Pf5B0uaPFARW/BFNLc0yO4qGOf6BOC1yZW
 XX7O9i4mgUWWZ8hGKy80EvgZyWmVYrMzCKeCkliGUqGtxNTX5b5q1paQLcr93aZj/T2O
 4GRvYlLSpSwlWfdcrHax6sn+Vw3uIgiAchoPqTc3Ku2ay5YqVdcuUdUP0brA1WM6xLu8
 kNjw==
X-Gm-Message-State: AOAM532PQm+lqcyr6LBs2pwZflDd6YhLjO4RPpjIrWsh8HXbni8QrhKK
 EIag1HHsZWGltiAz+Mj5KwZuhQ==
X-Google-Smtp-Source: ABdhPJwPKu284FGW2y3JeQslHbE7FXQ0tLPsAtF5Z1Sd1/eTKJSL1+BfVYzPKbw4EN2fAafX5g9fYw==
X-Received: by 2002:a17:902:c406:: with SMTP id
 k6mr2369370plk.203.1589433447383; 
 Wed, 13 May 2020 22:17:27 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a7sm1126526pfg.157.2020.05.13.22.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 22:17:26 -0700 (PDT)
Date: Wed, 13 May 2020 22:15:56 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 11/12] remoteproc: stm32: Introduce new loaded rsc ops
 for synchronisation
Message-ID: <20200514051556.GB396285@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-12-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-12-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_221728_075325_E8C2CBC2 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: ohad@wizery.com, alexandre.torgue@st.com, loic.pallardy@st.com,
 arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 24 Apr 13:25 PDT 2020, Mathieu Poirier wrote:

> Introduce new elf find loaded resource table rproc_ops functions to be
> used when synchonising with an MCU.
> 
> Mainly based on the work published by Arnaud Pouliquen [1].
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>


But I would have preferred if we during probe (when we discover rsc_va)
could just set it on the rproc.

Regards,
Bjorn

> ---
>  drivers/remoteproc/stm32_rproc.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index b8ae8aed5585..dcae6103e3df 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -319,6 +319,15 @@ static int stm32_rproc_sync_parse_fw(struct rproc *rproc,
>  	return stm32_rproc_sync_elf_load_rsc_table(rproc, fw);
>  }
>  
> +static struct resource_table *
> +stm32_rproc_sync_elf_find_loaded_rsc_table(struct rproc *rproc,
> +					   const struct firmware *fw)
> +{
> +	struct stm32_rproc *ddata = rproc->priv;
> +
> +	return (struct resource_table *)ddata->rsc_va;
> +}
> +
>  static irqreturn_t stm32_rproc_wdg(int irq, void *data)
>  {
>  	struct platform_device *pdev = data;
> @@ -593,6 +602,7 @@ static __maybe_unused struct rproc_ops st_rproc_sync_ops = {
>  	.start		= stm32_rproc_sync_start,
>  	.stop		= stm32_rproc_stop,
>  	.parse_fw       = stm32_rproc_sync_parse_fw,
> +	.find_loaded_rsc_table = stm32_rproc_sync_elf_find_loaded_rsc_table,
>  };
>  
>  static const struct of_device_id stm32_rproc_match[] = {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
