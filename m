Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683081A3BFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 23:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y9ge+U41yOH2vmcaxx007RsSwcPzfXN3Jq9Z7KuXyE=; b=g0hRyOplNLp7Gu
	qqvPXb2ZmsDRNHJE0OQpLYgOEFUZIQam6JcvaFdZz1AvLz3osCE1MauN5lWkHg4iOfXA18Z2IylHO
	JuEqqQm6nUP2OL6MVbPsYHLeIPk6oJ3STwfxtNoPjaXczh86dqyUQ8tLg9wINzgAZcdfNVKlZLi3W
	8lzEbhpjjFEgjivYu0oMYz7fl7LAEG+3HQmXgZgdR6rQMASD2xqKSebXF4tDN9icMzg9R/rK2LwTF
	HR2yLjyDTYiwjx+3zK9L2SQJt9HFn8pzUpuQ4CMUHS/cZxzA1dkArYRYq1gjp5x2+UV+IHBXmAi9b
	A/0iGHLf5LmpfbiwEJNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMeqp-0006ED-I6; Thu, 09 Apr 2020 21:36:43 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMeqi-0006DZ-NB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 21:36:39 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l36so18057pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 14:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CKSH66DRpSKDttW0HoIJ+Q7V/JrDgmsRLWNjAkPoZvs=;
 b=OgYeFYtz9TG5T5+OQ5HdreAp7UJvnomOdemJ2ZanB1NbWyQdpKatCBGGj9201dn3RE
 FF8XRBH/yJeSte8EZ+hYYArAFlXsD0Vq29xTsILMMytu0Gp4Ml+mWC/4UZXcHFl4NRu0
 tpr4AwAAIMIewL1kAwI+GwStxQj+LcbqXPGzZonSVmkcwuVC+NBCleuUUTU92XmljVXT
 BSjZrcLCoPZVBlWSXCYnFKBRPtYcDmaVtRVR8SvI6IrxIDUqKrY8QJflivLUUhl1Wsyi
 c0sQfB/wEZpmvdX6haHiJtufdMgKcjD5hQQsWVyY0dvsdYPPoy1KKkpS+wL3pCXy1uzJ
 X95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CKSH66DRpSKDttW0HoIJ+Q7V/JrDgmsRLWNjAkPoZvs=;
 b=aAdr8hO1TYsVcbkDH+75301e1yuFyJJvLsu9BDYEpt9cop2ztDyFokyr3lPpXHxHNp
 8tmciy0HzZAmhdpxJseE2rdLgSbCmqtOIVdF0ffLQAU3EfZ5Moa7RP249hqWXLQkZuo+
 Hxfocpmq9XUzt6Ym1oGhv4PIwyi1KlPnJ0o8guIwhbyLZk/xMII9y3VJplmtdLR4+xTv
 WbvrCxAMTJN8qEY1gBUWCNCpEUoDapC3IQjNUtWDMjDz/17hZZ8so3OKTCS/vkL7zzom
 t9X9xFHZalbVgEhqOx+/GNfXoADAaIbGwEyXMg7esjahJwBomg335mX4Y4sPFALamKx2
 Uztw==
X-Gm-Message-State: AGi0PuZiQL2uCy7Sh/Xa+VhcDK3ksFpEpoyUQU1U75r3kT4ptB5pKnAP
 GNF2QlT/N4UbrrvdPjC5pWI/2g==
X-Google-Smtp-Source: APiQypLaCPRkZGps/eMNdIh0y5VzobKlrdqJ7muVqbtpELbjLw8rCU9TWBniqmpH8PoKINDrrdRABQ==
X-Received: by 2002:a17:902:7c8f:: with SMTP id
 y15mr1555480pll.202.1586468195817; 
 Thu, 09 Apr 2020 14:36:35 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f8sm58901pgc.75.2020.04.09.14.36.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 14:36:35 -0700 (PDT)
Date: Thu, 9 Apr 2020 15:36:33 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 6/7] remoteproc/k3-r5: Initialize TCM memories for ECC
Message-ID: <20200409213633.GB32029@xps15>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-7-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201819.23095-7-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_143637_277404_EA3FAAB5 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 03:18:18PM -0500, Suman Anna wrote:
> The R5F processors on K3 SoCs all have two TCMs (ATCM and BTCM) that
> support 32-bit ECC. The TCMs are typically loaded with some boot-up
> code to initialize the R5 MPUs to further execute code out of DDR.
> The ECC for the TCMs is enabled by default on K3 SoCs due to internal
> default tie-off values, but the TCM memories are not initialized on
> device power up. Any read access without the corresponding TCM memory
> location initialized will generate an ECC error, and any such access
> from a A72 or A53 core will trigger a SError.
> 
> So, zero initialize both the TCM memories before loading any firmware
> onto a R5F in remoteproc mode. Any R5F booted from U-Boot/SPL would
> require a similar initialization in the bootloader. Note that both
> the TCMs are initialized unconditionally as the TCM enable config bits
> only manage the access and visibility from R5. The Core1 TCMs are not
> used and accessible in LockStep mode, so they are only initialized
> in Split-mode.

Everything was going well with this changelog until the last sentence.
Intuitively one is looking for the code that avoids the initialisation for
"Core1" in the patch but it is not there, and rightly so.  In locksetup mode the
second core is not registered with the remoteproc core and as such the
associated TCMs won't be initialised.

Simply put, I would just remove the last sentence as all it does (at least for
me) is add confusion.

With that:

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/remoteproc/ti_k3_r5_remoteproc.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/remoteproc/ti_k3_r5_remoteproc.c b/drivers/remoteproc/ti_k3_r5_remoteproc.c
> index 655f8f14c37d..8c9b7ae5d8b7 100644
> --- a/drivers/remoteproc/ti_k3_r5_remoteproc.c
> +++ b/drivers/remoteproc/ti_k3_r5_remoteproc.c
> @@ -366,6 +366,17 @@ static int k3_r5_rproc_prepare(struct rproc *rproc)
>  		dev_err(dev, "unable to enable cores for TCM loading, ret = %d\n",
>  			ret);
>  
> +	/*
> +	 * Zero out both TCMs unconditionally (access from v8 Arm core is not
> +	 * affected by ATCM & BTCM enable configuration values) so that ECC
> +	 * can be effective on all TCM addresses.
> +	 */
> +	dev_dbg(dev, "zeroing out ATCM memory\n");
> +	memset(core->mem[0].cpu_addr, 0x00, core->mem[0].size);
> +
> +	dev_dbg(dev, "zeroing out BTCM memory\n");
> +	memset(core->mem[1].cpu_addr, 0x00, core->mem[1].size);
> +
>  	return ret;
>  }
>  
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
