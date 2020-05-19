Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894C61D9FF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Y85IhnfJDjNAKMIAnYscPPPv6VFV9/AJd9Wz+Ihy8g=; b=DtZ77lqSiZ+o/q
	+Fq0YYZZEXd78qW6edn+zgSic1edVPcwKr/4hDQ+DgnmZXYw0kheXOsRyvHvMGF9+uhtnD3BXQD6P
	SdHA/BMyzIElv4xpeNvbZF1CZeHPPCqiQ55L0GShzhOhbV8xmQo2LDUUfXApdbJrSo1ufSIhcFy9W
	Fc0EfbDMdQK2VXT5Hu+MdeA8JRntCOjv5Bukf6BbpchYql3117/yoskJLKQt5B97uM6PAfQ1PdxPi
	MOxeXKjt/aYVCRQ3ad8bkLx8dj0GTYWRVLw/XyzNx/yqfpx4LAvPLsaIAIV+YO8E7MBbrgcv1j1qN
	DD8ydd2dHuOH3OmQcbMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Gw-0004aq-Ut; Tue, 19 May 2020 18:47:26 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Gm-0004Zf-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:47:18 +0000
Received: by mail-il1-f193.google.com with SMTP id a14so469011ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V0YVAkM2HLojpq1b1+p0fXyP5bQOH8dXeAGrEDtHiho=;
 b=LPROX33RLdztX9Gxx5NhBEcCqdk7F9eFHz4AC5dNxHC9ysIdS5cjC/+Qft1elxUSpC
 2PuEeCEVV05OgaLr46KfLhk8HKTZQaMxiVaygbffcMFCN8ZeyD19hag7MR6latzCB2kh
 qWaIZJ7+/RkR6j6X7cnmS6NdGYjyCRgtm6CdRGgudgIPnkaJ0gDgKaoA2QTpQG2xytEo
 86bidzYVTAqRn677RnoRt+z4yOL4Xf55YyCvFe55+yWbhzNJhT+8LQt4iAdI2zseoea3
 lg+JfZJZoLRw+zT4gWzJn/7TmQpIcIsaARAPhfgL/3z30uP326e/prhjZZL94mjcgzx1
 Kw7Q==
X-Gm-Message-State: AOAM531iIh8chBJcOP8ItCR0+NpBDY6ElwcKTEmwdkEVNQZlolFtKdI8
 BhQS6bMbOUjHfc24N+jViA==
X-Google-Smtp-Source: ABdhPJyzd1P9DWDtFNJWkIwwMCBUct5L83pHOE4PIc8p5UKRsYNsbjmDE3c6SZ6DlG9Xm7yO1lWSrA==
X-Received: by 2002:a92:1949:: with SMTP id e9mr452979ilm.106.1589914035610;
 Tue, 19 May 2020 11:47:15 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w26sm131757ill.19.2020.05.19.11.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:47:14 -0700 (PDT)
Received: (nullmailer pid 457373 invoked by uid 1000);
 Tue, 19 May 2020 18:47:13 -0000
Date: Tue, 19 May 2020 12:47:13 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V1 RESEND 2/3] bindings/perf/imx-ddr: update compatible
 string
Message-ID: <20200519184713.GA453195@bogus>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-3-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512073115.14177-3-qiangqing.zhang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_114716_956081_073F960E 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, will@kernel.org,
 john.garry@huawei.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:31:14PM +0800, Joakim Zhang wrote:
> Update compatible string according to driver change.`

Why?

You are breaking compatibility.

> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> index 7822a806ea0a..b27a1d4fec78 100644
> --- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> +++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> @@ -4,7 +4,9 @@ Required properties:
>  
>  - compatible: should be one of:
>  	"fsl,imx8-ddr-pmu"
> -	"fsl,imx8m-ddr-pmu"
> +	"fsl,imx8mq-ddr-pmu"
> +	"fsl,imx8mm-ddr-pmu"
> +	"fsl,imx8mn-ddr-pmu"
>  	"fsl,imx8mp-ddr-pmu"
>  
>  - reg: physical address and size
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
