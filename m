Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8A2A93D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wFhaVIFp4GNNtYHRVgc6e2b8M2ushVdkGAWCQaglx0=; b=q4eXgSZYQslWP5
	XG2NObDj/DAKNWBLU03xfrqXECaDssOeRIwt/WBZQnB7/ryyxHRVFdMvNrb204f6P2lOGdUGi58T3
	FNToZj7oUdbJBiYHTH46MxxvXcPNpRHxfiy/O0ExQPUAZhSeakoB0VUPcNlZa5am9LvyMH8ryo+n7
	8D3QQo2oJPuGfprrqZbnoHUT/AX+x42wPCDGzeXEsvpaIumzQ1MdM6fIuOLj2ysqwaFEC9IWvE08t
	QB+BDhHWGTvOrkkSVtOkGeMaIBRqjr1Zm6OiQiuRcIcDnGuh38aTXLiRXshEqSpSazQqoQXzZkYag
	CAkfYNLUatX6JD9w08LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c0Y-0000fV-RL; Wed, 04 Sep 2019 20:36:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c0P-0000eo-Hl
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:35:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id s12so19714pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y9dPfxiGVl9B5eQCHDgsbYOLG2ykYyi/7SM+jtLAnog=;
 b=IoH/DtjsZSHeuM5ZH1ZL9Fy+rFnrY2sGhJTxYoxekXhLlmUNBAwbZWtGkaZWeLkrWB
 p/OHUOdc3ZVgXUSWEXgPCdOxzHj6ou+8a/ZlebDKFUrcBI8Zk36WiZ7RUbG2Hn1T5Xy6
 q4NVyGK9q203NBKeABXcjGCfEhXMgChZweccIQ+Inc7zwHL8h+V9H4Eoo0tWROMxKNck
 zeuF2Fq/ec/RE8H+zHbNtYl55DYiCg2BVdGE41d25DtwtA1Bl1qs11JMSGCNhXZoNW7G
 GszHlkzz1S81UpO64iP8lHJFTqcYhkcuFgvYXx6J8GUw8BLi/FgP2ITaAvZ2KhBllLib
 M6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y9dPfxiGVl9B5eQCHDgsbYOLG2ykYyi/7SM+jtLAnog=;
 b=GzRe28lGt8rau4xrWp/zp14rmuXmz/soz3MvJJgPnZDAYR4rfbxR7PjbQ+g02LTQ1R
 edX0+dtm6J/aOP5L5G1QXzrC+Fvks7flHSmDs7pmhLl/Me/6fLdGJXLdizN4mgwUUbiN
 Gk4F/EDlQQR4blcDHF6utA/l+HowJwbRx7bs6hPB9C7bUcQelzVc2NkyjkgaMDZ5p/6I
 8WiMcBqRE+/3JgojWJ/Y0US90u9NHV/MXj4ZHf+79AiE3P/mkuZHGS0/LRjGszkoKBR4
 av5DWOuijUgqkI6NMRnMzyNVDwnNwE0KkDEgnvMzTLLgt797/GKuIfQorozNZ5qTUWGq
 gCgQ==
X-Gm-Message-State: APjAAAXWXCaRc9n7m052v+G60WZefibVdDdqXPDCgRpbGiSWIwbWiOJC
 kUJlKFiNvD4iw97fbo/TCoI4dcwqWN8=
X-Google-Smtp-Source: APXvYqyNUCdVh4CrjvfM5UYakm4eAZf3UXsz8CmJ1f360GpgwL9mGAfC1CL0i304toSE0+cTRHBGxA==
X-Received: by 2002:a63:6a81:: with SMTP id f123mr38808pgc.348.1567629351901; 
 Wed, 04 Sep 2019 13:35:51 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id h70sm14724pgc.36.2019.09.04.13.35.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:35:51 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:35:48 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190904203548.GC580@tuxbook-pro>
References: <20190904113613.14997-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904113613.14997-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_133553_593614_692F7439 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, agross@kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 04 Sep 04:36 PDT 2019, Lee Jones wrote:

The subject implies that we select FIFO mode instead of DMA, but that's
not really true, because with DMA enabled we still fall back to FIFO for
messages below 32 bytes. 

So what this does it to disable DMA, which neither the subject or the DT
property describes.

Also missing is a description of why this is needed.

Regards,
Bjorn

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index a89bfce5388e..dfdbce067827 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_dev *gi2c)
>  static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  				u32 m_param)
>  {
> +	struct device_node *np = gi2c->se.dev->of_node;
>  	dma_addr_t rx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf = NULL;
>  	struct geni_se *se = &gi2c->se;
>  	size_t len = msg->len;
>  
> -	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
> +		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> @@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  				u32 m_param)
>  {
> +	struct device_node *np = gi2c->se.dev->of_node;
>  	dma_addr_t tx_dma;
>  	unsigned long time_left;
> -	void *dma_buf;
> +	void *dma_buf = NULL;
>  	struct geni_se *se = &gi2c->se;
>  	size_t len = msg->len;
>  
> -	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> +	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
> +		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
> +
>  	if (dma_buf)
>  		geni_se_select_mode(se, GENI_SE_DMA);
>  	else
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
