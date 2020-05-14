Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6BC1D2628
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 06:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unqmRxjprDag7j77x7fgjCbsjFayLCZfRE3xhrsZbkE=; b=PyPTyc/NVml/2t
	oRxt9s8zslHrzFqfOHh0E1dpfuJv0lh3eBF1WekYNorXhKwW7Q2zp442whmvjvU8BXhai8eu8GRl9
	sIdo8FvumFe+87dO9aumv6t+Ug1tBRztfNA++fwf7spR5xUpXzdbKIjfNFfzs3b0kW+3kiCN1EkPa
	n1UJTxzW5kiumCOPawG3+N+nIIOhRIlJxzkpTfCleuit7djWcDV8U6RfXC8yUDBhUxJbU0t8Kv2np
	me56DnSzBpPuJi0Ol1gf0+m/RZLGhDC4IdH+BE1VvnaY/D/5R9pQbpmt6MkyZAauGAwhiZkpJ1YlF
	kzb09nYk6OvCByP+Hu2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ5xa-00065v-C1; Thu, 14 May 2020 04:59:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ5xQ-000654-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 04:58:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id b8so746147pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 21:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XB9iR1Wtni03RNsjVOMYUq9aoFsWINR5LTN8xhVnTBE=;
 b=wjDd6XVS335MCJz9fDAbV1AJWTNo6NfWf4m+5LBZrK5OZvhYRFS7xdg7rvVKwsStr0
 0GZKzpEEeDPKMlo6yRynvB1Py/hJpE7BdKPYvhOHlY5iZPRmTLVKPxDGadQrq9288OTD
 bXmo47fVNu8lfa0j4e6PZ6phtHOTmgKaLvm7kUcLeS3nehSQ3dQXUoRyj+jvBcbrhnAN
 g7OSwaQxYwqJT54/+bQeyy/xEm0H8osNIoLSNDpPu5bGko684DCE+LjlRJNHZZ3Ydo5X
 fc4G9VljKI/7ZhlOFs+YM4Zf/bGUyIaMxZlmd0kHF0AdrH2gQKMoDs5ixQv/638Quu5V
 Eycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XB9iR1Wtni03RNsjVOMYUq9aoFsWINR5LTN8xhVnTBE=;
 b=ORQ4Gyss7agSF+8VU4S/Gw954s/CVONTPaIMBgLJOZ1cCX7SWnQFnHKNFtOIJpmoAw
 FA7y9KHq4/2jPQJaquja/RFFNDympFCKN0R4MnDQK92DUzQu9HolUkVGMLq719nZfuN6
 tlbNpfCKIa5uAhsGIgb0Tqrum6fjcXzJverquhM+pNZnINDls7R+JTbWSxKgEker4uws
 ylIXS+v4leviOq0nPnAlKiuAlach3n4oMyjVDTVL5zexIH0HB5PfuyUuhBLqKyQkkBL3
 YaYtRUfn4zZdAnckm2SRtRR/IWZsMTYl5Et/sAltcbr7O3ZOwkwZ2dbhovkQKz3zYxDt
 /GgA==
X-Gm-Message-State: AOAM530gzqS9vSWek49qcmzU3s6QWNVrxoTGPIETYRz0LbT4Wyaei3l2
 +wwUDrOR+Nz/VQ2849XXuoycCw==
X-Google-Smtp-Source: ABdhPJwtJMENg8lvG2CR/fcdWf8E4zka+8LBZfgW9TaUXTChBfsuSaci4EXXRp2CUpbC+jWVbtUTAg==
X-Received: by 2002:a63:1557:: with SMTP id 23mr2564283pgv.104.1589432335637; 
 Wed, 13 May 2020 21:58:55 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id d203sm1052337pfd.79.2020.05.13.21.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 21:58:55 -0700 (PDT)
Date: Wed, 13 May 2020 21:57:24 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 02/12] remoteproc: stm32: Request IRQ with platform
 device
Message-ID: <20200514045724.GH16107@builder.lan>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
 <20200424202505.29562-3-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424202505.29562-3-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_215856_332121_10716A94 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Fri 24 Apr 13:24 PDT 2020, Mathieu Poirier wrote:

> Request IRQ with platform device rather than remote proc in order to
> call stm32_rproc_parse_dt() before rproc_alloc().  That way we can
> know whether we need to synchronise with the MCU or not.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Loic Pallardy <loic.pallardy@st.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/remoteproc/stm32_rproc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 91fd59af0ffe..1ac90adba9b1 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -261,7 +261,8 @@ static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
>  
>  static irqreturn_t stm32_rproc_wdg(int irq, void *data)
>  {
> -	struct rproc *rproc = data;
> +	struct platform_device *pdev = data;
> +	struct rproc *rproc = platform_get_drvdata(pdev);
>  
>  	rproc_report_crash(rproc, RPROC_WATCHDOG);
>  
> @@ -553,7 +554,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
>  
>  	if (irq > 0) {
>  		err = devm_request_irq(dev, irq, stm32_rproc_wdg, 0,
> -				       dev_name(dev), rproc);
> +				       dev_name(dev), pdev);
>  		if (err) {
>  			dev_err(dev, "failed to request wdg irq\n");
>  			return err;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
