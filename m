Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98B36BFF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ//TqHlRicHnzdp8hQunNHSeD0ccfQr3ZFa0ehgfz0=; b=pFdVDYhB/5VOmK
	PTLXkH+GUK1K8bcK9khgXiJtKbW/5vxeqsWg+5WUhJn1Lq/XzZnhEHlKzZ/e2pC4sLyrUVSPsLQkO
	K4ZI1mspeurGxmYtqSaD4JwaUL8++hIja/H2ooHzN4RChdFLOBcQKBom3kSRzLmTPgkYSyZDAs4bs
	qO6/CK9LQDPgiy/vwNgJoZmNFnqC355VgvcuKPI3RBwo+iNRQtiTjtMS55X0n5fwhpBDCtWxJBFeE
	Xc3GcDwHYz9TeyYjKeGU1W2bwPgwcVd7jpeB6fhybvfOXDY+wC2TkpYyktNfccYTJPCgwavQxXImJ
	31p/rDT+udrmrbuPAB7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnEA-00015C-7r; Wed, 17 Jul 2019 16:56:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnDs-00014O-70
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:56:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so11110340pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 09:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eRdvNNXf680pv7D/wawCnGMGaTK8ArdDiNd3rmgruSA=;
 b=OqS301R6mRNRehR4uGTXv0VV1/d8X2+7vTjX40IJdztlF7CzIMf3gdlKs4Pw1YDka6
 ozi9wO9oZxUUrRGTzGu8Whn2pSDRIlKEGO2+krx+DRpJZCgP5HzdMRUQ0NbWIB416Yse
 PI6925mzzQHd1KpPXXFlWZbOgeN/4tsS1S/8ri6Nch+UPiWm+olERXNItaZK3AMI6gZa
 qAl2TeWVJuzYoOrbiBe2iYE3JaALmHSv3AKG0QQ6dxIUNqWCquBedCQfcfg0XPQgU88P
 OSsw1MypUZry4HI6b4AlYcPflWFVtpxhVp2/Wb9x5NhQd0PcJ3pKEX5QJ2MWssneAp8g
 jLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eRdvNNXf680pv7D/wawCnGMGaTK8ArdDiNd3rmgruSA=;
 b=HJWJJhXfEvhuZiW6Oznt/72PS9/Ls2+lGz9ftMZaW1+jkMyDPHDXmOvRNKN3zgGEeb
 +INygwOEYE0fB7B7K+4g8csCPPHBIYg/EpMEwDvWBuMtkAgNnZ1Gloz9DYZTyCnj1NhG
 h3juvp0mT/BhiscN2if2hBq3ruq/TnfBAnDnZ5b5R2jtOh5aWyxNHN4nkJ3NciqWs5JB
 j8kXG0mcOnzDrO4fPaOBasdbYv9I9Jx4Ln4451XjJ+Raot6xpwvA16vyX0dEFQLTTu3O
 PtLOP1YsB6uvFzPuZUiqHQQhWp6PBJv+sydiNY/+xo2a+KTRQBHWlGFBNhEtggS4vHn9
 FoEw==
X-Gm-Message-State: APjAAAXIzcsuL5Oq8SBj30ehTDOZ5Itu3A20pmGcJruuBPDV1urvKAr5
 jzItFoRj/+pAYWbIwqcT1u12UQ==
X-Google-Smtp-Source: APXvYqzTrYLK7QiA/TroDZIzFbso2uhc7uRFGpTDcKT52ivkJaDvr5D6L6k0GVFbmjbz8somUyeSIw==
X-Received: by 2002:a63:4846:: with SMTP id x6mr5659707pgk.332.1563382565821; 
 Wed, 17 Jul 2019 09:56:05 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id e5sm30815070pfd.56.2019.07.17.09.56.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 09:56:05 -0700 (PDT)
Date: Wed, 17 Jul 2019 10:56:02 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv8 5/5] coresight: cpu-debug: Add support for Qualcomm Kryo
Message-ID: <20190717165602.GA4271@xps15>
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <e2c4cc7c6ccaa5695f25af20c8e487ac53b39955.1562940244.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2c4cc7c6ccaa5695f25af20c8e487ac53b39955.1562940244.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_095608_267477_DE365DAD 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 07:46:27PM +0530, Sai Prakash Ranjan wrote:
> Add support for coresight CPU debug module on Qualcomm
> Kryo CPUs. This patch adds the UCI entries for Kryo CPUs
> found on MSM8996 which shares the same PIDs as ETMs.
> 
> Without this, below error is observed on MSM8996:
> 
> [    5.429867] OF: graph: no port node found in /soc/debug@3810000
> [    5.429938] coresight-etm4x: probe of 3810000.debug failed with error -22
> [    5.435415] coresight-cpu-debug 3810000.debug: Coresight debug-CPU0 initialized
> [    5.446474] OF: graph: no port node found in /soc/debug@3910000
> [    5.448927] coresight-etm4x: probe of 3910000.debug failed with error -22
> [    5.454681] coresight-cpu-debug 3910000.debug: Coresight debug-CPU1 initialized
> [    5.487765] OF: graph: no port node found in /soc/debug@3a10000
> [    5.488007] coresight-etm4x: probe of 3a10000.debug failed with error -22
> [    5.493024] coresight-cpu-debug 3a10000.debug: Coresight debug-CPU2 initialized
> [    5.501802] OF: graph: no port node found in /soc/debug@3b10000
> [    5.512901] coresight-etm4x: probe of 3b10000.debug failed with error -22
> [    5.513192] coresight-cpu-debug 3b10000.debug: Coresight debug-CPU3 initialized
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../hwtracing/coresight/coresight-cpu-debug.c | 33 +++++++++----------
>  drivers/hwtracing/coresight/coresight-priv.h  | 10 +++---
>  2 files changed, 21 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index 2463aa7ab4f6..96544b348c27 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -646,24 +646,23 @@ static int debug_remove(struct amba_device *adev)
>  	return 0;
>  }
>  
> +static const struct amba_cs_uci_id uci_id_debug[] = {
> +	{
> +		/*  CPU Debug UCI data */
> +		.devarch	= 0x47706a15,
> +		.devarch_mask	= 0xfff0ffff,
> +		.devtype	= 0x00000015,
> +	}
> +};
> +
>  static const struct amba_id debug_ids[] = {
> -	{       /* Debug for Cortex-A53 */
> -		.id	= 0x000bbd03,
> -		.mask	= 0x000fffff,
> -	},
> -	{       /* Debug for Cortex-A57 */
> -		.id	= 0x000bbd07,
> -		.mask	= 0x000fffff,
> -	},
> -	{       /* Debug for Cortex-A72 */
> -		.id	= 0x000bbd08,
> -		.mask	= 0x000fffff,
> -	},
> -	{       /* Debug for Cortex-A73 */
> -		.id	= 0x000bbd09,
> -		.mask	= 0x000fffff,
> -	},
> -	{ 0, 0 },
> +	CS_AMBA_ID(0x000bbd03),				/* Cortex-A53 */
> +	CS_AMBA_ID(0x000bbd07),				/* Cortex-A57 */
> +	CS_AMBA_ID(0x000bbd08),				/* Cortex-A72 */
> +	CS_AMBA_ID(0x000bbd09),				/* Cortex-A73 */
> +	CS_AMBA_UCI_ID(0x000f0205, uci_id_debug),	/* Qualcomm Kryo */
> +	CS_AMBA_UCI_ID(0x000f0211, uci_id_debug),	/* Qualcomm Kryo */
> +	{},
>  };
>  
>  static struct amba_driver debug_driver = {
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 7d401790dd7e..41ae5863104d 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -185,11 +185,11 @@ static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
>  	}
>  
>  /* coresight AMBA ID, full UCI structure: id table entry. */
> -#define CS_AMBA_UCI_ID(pid, uci_ptr)	\
> -	{				\
> -		.id	= pid,		\
> -		.mask	= 0x000fffff,	\
> -		.data	= uci_ptr	\
> +#define CS_AMBA_UCI_ID(pid, uci_ptr)		\
> +	{					\
> +		.id	= pid,			\
> +		.mask	= 0x000fffff,		\
> +		.data	= (void *)uci_ptr	\
>  	}

I will pickup this patch - it will show up in my next tree when rc1 comes out.

Thanks,
Mathieu

>  
>  /* extract the data value from a UCI structure given amba_id pointer. */
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
