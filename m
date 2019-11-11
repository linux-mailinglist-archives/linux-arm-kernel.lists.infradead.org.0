Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3634FF82B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 23:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbusEyE81E7UiNYlKML66/wf3DFGNyQD9ivgtJ9nmWA=; b=hf06ibWBB662h7
	4wG/WBucm4IDGnQ5Tg8Ey6ICCWQQzmDtFKkTMXabAD0pP99DHjLstH3sILrpJXOQA+i1V9SqdU2V2
	KuY1gBidpP8PdAcVSd6JweRXtIzIHkefwlu01l+K1FqxJ+qomfCpRx5cIGCtAYtRxP9tjSO+mBlKj
	OS8NwUXRZa3eLhvDXq/n4wB1QyBSNbsZsIO+Azk1+l+oQsBiurUqJhXigXNsuauafJ/SXMTiZY6an
	8ykdAozT650dqtO+yYtxTol8wN7mK1aiS1ehca1KdSp9O+3eGtU/A4Qb3hAjPDw6z89UeMjZWaOwa
	G2cb/qhcZ71MOViPne5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHnT-00024T-70; Mon, 11 Nov 2019 22:04:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHnJ-000242-Kg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 22:04:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so11650456pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 14:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b6mNCX/KX4boUEtiC4AfiPV9MtFO5pIWwbz7PSRKAGA=;
 b=fL7Vo58nzJhGzD6mdJp1QeRvNGKLgdPvqHWFIW8gS1JkcmXyMkkZooq1lWwqynq6jy
 ye9GJKZGGhLs5Gl1BIidWCcJcwsg4S0ZHHYBS64Ac3uKvYlrHTkQ+YaNa+zP4iWIxUyl
 NKdUycwDJ1c5ARuP1+Hb8YD8aOl+oAgsTQ4s5Syi1t0XHfH8GII5MHsizKKYIGa0uj4S
 K0Jrl3XwFs7A2XZMG1qY6oo8LcTv7dHjA6fJPAM+ofy8gUxtLY6AqOsZ+g7CnDF7+caI
 ueNzcWI2NWy5M4toTT7ymIUUoTzAMD2T1uPphNtcdZ8XBjTU7tafFBd5QVB8ZTtOarMA
 MRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b6mNCX/KX4boUEtiC4AfiPV9MtFO5pIWwbz7PSRKAGA=;
 b=CN7oCItExM1cKtds9+8O63BNRA5KGmz7KyNwP5yL7EYYrbW7JJMCpH259uRN/gFTFq
 ezBtCHB9CHM4v5KIbVcFDlbmSpONtyIRTw4uZ8f9Gdxe+YpMyH3UtnzQWe/VDDgxEVEv
 0YlWlUvDpXAgZjTUpgrGnw0GQx3Rbvrh13DFPgzIzuXos95vi6vJv6UdHYzLC6ra9ES3
 bsK6ck13GnrMiAR9fsbz/79zoh5eCQfeMsmQSvog1da95KOP0K+MDxRXXNy5AzHD81IK
 HWJ4EB5+TSYaOUyKfWEPQx0M0/8nDnpLbhIbBCfgE6ZFXb2GapAkMfaHB8oAT0TH5xk7
 DIiw==
X-Gm-Message-State: APjAAAVfCr+OGn7rAQJRnO4FuHczNcakz1JTBOWzQnL/3d1+Ny/dPRJS
 sMdmCE/gqSw/Tus/ktFE49kW7g==
X-Google-Smtp-Source: APXvYqyWTI6bisXzwWbs7tADpWb7qCtkjIYrZwQXbVFK2S/mZ3Li94In+tKU3yps+tF5SFtBvVa+6g==
X-Received: by 2002:aa7:870c:: with SMTP id b12mr32518116pfo.30.1573509860257; 
 Mon, 11 Nov 2019 14:04:20 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id f19sm11173159pfk.109.2019.11.11.14.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 14:04:19 -0800 (PST)
Date: Mon, 11 Nov 2019 14:04:16 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v2] remoteproc: stm32: fix probe error case
Message-ID: <20191111220416.GB3108315@builder>
References: <1570433991-16353-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570433991-16353-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_140421_711051_57874530 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon 07 Oct 00:39 PDT 2019, Fabien Dessenne wrote:

> If the rproc driver is probed before the mailbox driver and if the rproc
> Device Tree node has some mailbox properties, the rproc driver probe
> shall be deferred instead of being probed without mailbox support.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
> Changes since v1: test IS_ERR() before checking PTR_ERR()
> ---
>  drivers/remoteproc/stm32_rproc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 2cf4b29..a507332 100644
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
> @@ -329,10 +329,14 @@ static void stm32_rproc_request_mbox(struct rproc *rproc)
>  
>  		ddata->mb[i].chan = mbox_request_channel_byname(cl, name);
>  		if (IS_ERR(ddata->mb[i].chan)) {
> +			if (PTR_ERR(ddata->mb[i].chan) == -EPROBE_DEFER)
> +				return -EPROBE_DEFER;

If for some reason you get EPROBE_DEFER when i > 0 you need to
mbox_free_channel() channels [0..i) before returning.

Regards,
Bjorn

>  			dev_warn(dev, "cannot get %s mbox\n", name);
>  			ddata->mb[i].chan = NULL;
>  		}
>  	}
> +
> +	return 0;
>  }
>  
>  static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
> @@ -596,7 +600,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
