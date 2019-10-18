Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0C1DCADD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHgUQ4DyeiPGEQgO3j5mREZPS9LNqMmKnQ0QEEj/o2I=; b=ssSOvPPcM9gUp7
	VZ+1PDcRdtONrFfDM10v4ipegS/UQu17zMr0NSG+x/c/Dl/0I0weMIgJsXjStQieTvQDN/YMzmOp9
	xux5DHh3OKQVdUa5Snr1F3k2/kHNWiBX5MBpH/nntRxVILbZ2k77lP/XV40rs4PzWcStST2ctz8WF
	t40Oe2udYoBVbA7AVyNMxEIx4hOuwq7nj+J77MG0y5LMGktSD4qGzuf+9t5BWf2r4BhUIUK9hiW0f
	nDwHbPtzoucNyMGSglBTE+sD0ZaNT9W8qajYUIKdwDijKMT1qj/Cvy3djFKUIFFIqbuMWMMbOp6E+
	xiE5Kun1MjIzPDlsDGsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUzR-0002ml-Ln; Fri, 18 Oct 2019 16:20:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUz8-0002Fu-Cd
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:20:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id e15so3618590pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AfaDsoO7BDCXGgyE8y5qxoqYSMBNLuiSARlydbyM/90=;
 b=FTbgBZ5vtVNqpGtGdSBffTWWAIx3fnBiLdEpKNbpZA+54AMl6zQEr49O5HkIUH8f6O
 mBbfX4SP4T5L7t9akGbb/gte9X1407z6VyFcgTfEehvGYX+dJLiammsPWYOxLO9Eiy7T
 X1Rskbg6DJqCB4Ru3Omi1R6JN+DPpR9zbMrWfEKbLZjE1XqIYh0H4X+RKxNYniqLuXBv
 4unTBrr/Vv8u9xO4MsxqCxTq77sP0mE15qj9BAHwCo3aGYDlDrDW5dSAZ1rv09qOTZbq
 UDi+yHdNjpke0EqB6ndEtG97VZFoBtx4BzROPSEXK21RI1DG/jsCgU1SGBn/hLO5uQrf
 AmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AfaDsoO7BDCXGgyE8y5qxoqYSMBNLuiSARlydbyM/90=;
 b=fMHq3jH9ZFhVCisPc7QJEE5pmDyuQT+uwMmsRCrasEIeDXCuDMSASB0W/GByYYJ9YJ
 XtXvftYv5Z/+kCLtwEkLtcRAuBWXT+nSzt32ff6d3YFYYoCL9uktvNaGSHuujXXWSPi4
 svFCX+NV2m9+3e577PGNMxD1wZu09BqUWUk3cvli7Z5zPXCM61n2grtbLxSx97S+aCmo
 xBV4ZsyCn+9SL4sZDFl7ucg3Z9kVWh2+wM8937qqjCI2mzDsPsJJTRf1gJj46OySeB44
 EibLgUF5VScO71mZzs5CO3c1Lp9BS4doZoHHzDRMOOXSudhX9VsPJZFIUoXbQuJJ8wpB
 9tRQ==
X-Gm-Message-State: APjAAAX70Par6NAxhRk0qhB5sINtO6BRYy1AvXGLqIFM6vs41rBHwx00
 rpXi9QzBOTSQ3V0f9Tu5cctgcg==
X-Google-Smtp-Source: APXvYqxJ1HL+ziWwAjS4myLRHiFDTI9m8ZIK+FD2gmSTv14J9lcE2jG1nlETPvFeukkUFPioEtiG5Q==
X-Received: by 2002:a65:5541:: with SMTP id t1mr10923407pgr.39.1571415612233; 
 Fri, 18 Oct 2019 09:20:12 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c4sm5751409pgd.3.2019.10.18.09.20.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 09:20:11 -0700 (PDT)
Date: Fri, 18 Oct 2019 10:20:09 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 10/11] coresight: docs: Create common sub-directory
 for coresight trace.
Message-ID: <20191018162009.GB12883@xps15>
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-11-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015212004.24748-11-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_092014_502355_1EDE03CA 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: corbet@lwn.net, gregkh@linuxfoundation.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:20:03PM +0100, Mike Leach wrote:
> There are two files in the Documentation/trace directory relating to
> coresight, with more to follow, so create a Documentation/trace/coresight
> directory and move existing files there. Update MAINTAINERS to reference
> this sub-directory rather than the individual files.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  Documentation/trace/{ => coresight}/coresight-cpu-debug.rst | 0
>  Documentation/trace/{ => coresight}/coresight.rst           | 2 +-
>  Documentation/trace/{ => coresight}/stm.rst                 | 0
>  MAINTAINERS                                                 | 3 +--
>  4 files changed, 2 insertions(+), 3 deletions(-)
>  rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
>  rename Documentation/trace/{ => coresight}/coresight.rst (99%)
>  rename Documentation/trace/{ => coresight}/stm.rst (100%)
> 
> diff --git a/Documentation/trace/coresight-cpu-debug.rst b/Documentation/trace/coresight/coresight-cpu-debug.rst
> similarity index 100%
> rename from Documentation/trace/coresight-cpu-debug.rst
> rename to Documentation/trace/coresight/coresight-cpu-debug.rst
> diff --git a/Documentation/trace/coresight.rst b/Documentation/trace/coresight/coresight.rst
> similarity index 99%
> rename from Documentation/trace/coresight.rst
> rename to Documentation/trace/coresight/coresight.rst
> index 72f4b7ef1bad..835e8aa0bf8c 100644
> --- a/Documentation/trace/coresight.rst
> +++ b/Documentation/trace/coresight/coresight.rst
> @@ -493,6 +493,6 @@ Details on how to use the generic STM API can be found here [#second]_.
>  
>  .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
>  
> -.. [#second] Documentation/trace/stm.rst
> +.. [#second] Documentation/trace/coresight/stm.rst
>  
>  .. [#third] https://github.com/Linaro/perf-opencsd
> diff --git a/Documentation/trace/stm.rst b/Documentation/trace/coresight/stm.rst
> similarity index 100%
> rename from Documentation/trace/stm.rst
> rename to Documentation/trace/coresight/stm.rst
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 296de2b51c83..f903160b507c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1608,8 +1608,7 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	drivers/hwtracing/coresight/*
> -F:	Documentation/trace/coresight.rst
> -F:	Documentation/trace/coresight-cpu-debug.rst
> +F:	Documentation/trace/coresight/*
>  F:	Documentation/devicetree/bindings/arm/coresight.txt
>  F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
>  F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
