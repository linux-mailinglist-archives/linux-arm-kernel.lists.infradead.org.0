Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B101FBF2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY1m8mqbeKzhmJ7ZgpTdasu7VX/VEHm423YqQezQ9Nc=; b=aTbquLAX23ZTs4
	c/sX2Y9k1/dYlK8vr7m2nhNHL7c+qTBh6KXPaici5PMlGl/IHKBv34drIluK1Jgbyj/eXj5MnpM1s
	gM4mNB/rUQ4nfBZBLHLn4XndVqg4oNdRz4lUYzgYCdNf9haqPaOTqroyPT1WF/XuHI6pHNMmUllke
	raY1HZ+MD4DgtRE7c6Tjz4v/35Vw/ia+IVc/Nlz6HSv+8ouNXQgmtSTZhP3YxU9UOr5RV3UUu7Bsy
	6zqxU5AdbVcD2mxaLFMKvX+889IDyaVcnxvjfk1rPyl0OXFJrhpZQmX38HR/qyLNzHJLDp40PUUYr
	jtPypjdXdFNyDaUP74Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlHVA-0000lA-LT; Tue, 16 Jun 2020 19:44:08 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHV4-0000kz-Fw
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jun 2020 19:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zIL4eU6bKlVvHYK6dYNYTdrk92ieRX/yNsDj/8IRgfQ=; b=nyL++U3I/zqE6mM/ERYRQVagFS
 wxSL05iUyqJui+/rcZNLWbAse6Pht19vm6Deqyp89zWx6losT3dC6ykvN74B1Hlu2jJ5zdz9V1EAw
 dm98TqH9emN3mGvVgyv+Pe/tehXohe7MZakrCuEGn+AnCX+B41hmAHWDOFj/oVlWnsgRAw0WHqE2R
 8P8eBC38OxPUUyyOcLwnmNs/WvxeoLFAcpX8MX8Vt/U17Ix263qmY8UKkqcRHpOEIsNP8V1qce5vA
 Igr4tuT49Jo2lbAKfKiwxPN0RfZIwoiZKOGTKtXXFIUdHlp12TXB7VFfZXxlS3PC184l1XYNBkbjJ
 iGuzLuVw==;
Received: from [179.162.131.195] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHV2-0005Uk-Rn; Tue, 16 Jun 2020 19:44:01 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 01A7440AFD; Tue, 16 Jun 2020 16:43:55 -0300 (-03)
Date: Tue, 16 Jun 2020 16:43:55 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5] perf: cs-etm: Allow no CoreSight sink to be specified
 on command line
Message-ID: <20200616194355.GA31667@kernel.org>
References: <20200616164041.15373-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616164041.15373-1-mike.leach@linaro.org>
X-Url: http://acmel.wordpress.com
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com, peterz@infradead.org,
 coresight@lists.linaro.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Jun 16, 2020 at 05:40:41PM +0100, Mike Leach escreveu:
> Adjust the handling of the session sink selection to allow no sink to
> be selected on the command line. This then forwards the sink selection to
> the CoreSight infrastructure which will attempt to select a sink based
> on the default sink select priorities.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Tested-by: Leo Yan <leo.yan@linaro.org>

Thanks, applied.

- Arnaldo
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index cea5e33d61d2..cad7bf783413 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -243,10 +243,10 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
>  	}
>  
>  	/*
> -	 * No sink was provided on the command line - for _now_ treat
> -	 * this as an error.
> +	 * No sink was provided on the command line - allow the CoreSight
> +	 * system to look for a default
>  	 */
> -	return ret;
> +	return 0;
>  }
>  
>  static int cs_etm_recording_options(struct auxtrace_record *itr,
> -- 
> 2.17.1
> 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
