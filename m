Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0829615FA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GUoLbLOjcVhRIJS6PWNDXAW3lJ0iGk7BwesEQhIRAY=; b=g0yXEM+qcV1AFF
	CW3Jh9uO43QKdgFDiyINbTpvSbB+404hmBmlR3VGn8ruC0clbK2C4a35mDpC35vgsdv8Q07jknJsM
	T5CC6RkqTvIQPNpyihiI2SzC4Fk7qi+gnxov8RZW75T9IBPShSjQ1c7d0mHt3wYEXSZAayR/GUh0y
	OWrg1Gmh1G0Jo4qYVPrCg3F77DXhmE9Q2Wsr6IR6Q5DqA+ipXSlL7FOLTzx9FaIEzpzPscNbdP8nM
	mIVv1QLQ+LW6366k29oiLSKRj1HSJtxN2NqUQ+0NPwwSCkP5cZSImP+DFkoTawVrwOF6dIKNkD2sn
	Ha6wtswTvgFT/D4qj4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvi2-0000bF-1O; Tue, 07 May 2019 08:44:22 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvhu-0000ai-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:44:15 +0000
Received: by mail-yw1-xc44.google.com with SMTP id q11so12613737ywb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iFm6FDZwvJL+HzN1QdmiyPBYMjzcvnFQoiE4auxzRKE=;
 b=fc46tf0xFi4OiMlpZ0NJxygwAsQMTXMIDZQt94ZV6ND8GTVccVsrHkuxOjEdgkvWsq
 kzxhRM0qCdYvptxLiDh8IoVz5/EjqxNrTow2rAUOa0DgSij5Qt+1M/fedBhjFJ0KCdoA
 PpGPrRmskWjBw2mKzSOn+Jxgr3g8tma7Vk+Wh1lI1l2tVPVI/6Uoxxy7CYhOnJ5wXnB/
 2BCTZ8UYmJssh7/acURudeY6vfo12rrtR2XeZOxhuNZGqsg5FhTg3GYDlKisiURav/1t
 1y4vlAbluGTx4493LOUZAAM0BAA6wqojpLOmEv1gmE0h79cUKbB0EbhoKLVBJIQkJSIw
 dQFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iFm6FDZwvJL+HzN1QdmiyPBYMjzcvnFQoiE4auxzRKE=;
 b=t8cyV1JQs4RwbWYGdOPyprF/WLYx0mkgb4oIHmb2fIRQdklnCw934vDM9LspVaCXlI
 EYnkhjMoJw0KDuEMAFKha1lvRdVcxGXZNMqQQYm1gwUjVhMO8V+k/1ZUyJ94UMr3G8cf
 ZsHIij2spoigwrNVuSwC0yZqTRLI3hqykRrHug3yLI6jKDVAEo2sMM1r/zUkDKPNgnOw
 OPtin90hofPx7drUEosRjm36Y0Pm6KdPu1ydnKFvm9giau7nC6WBCoQI13zAhJv4Azfs
 d8la4ACVkPufkS3i5/Hm9BWNgp2u4P48HUxXhVXaKTdBykbp/CsTDKcQMTtypngtn4jz
 tKiA==
X-Gm-Message-State: APjAAAU8LrCHkUdA2H7EsXSZNPP1JD+kQZhlwDr4XYQgP8DpKFOJRBNl
 9bBxyqiBtIhtAhzQtIJhjUFLWw==
X-Google-Smtp-Source: APXvYqysrVPFAot4v6pAuseL9bvDBO1IBInyUI9EwPNZ77v0bBLxEpuVZyDF7Cm9pQrQTfj4bsYUxg==
X-Received: by 2002:a25:3bc8:: with SMTP id i191mr20329017yba.16.1557218653359; 
 Tue, 07 May 2019 01:44:13 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id b71sm3593063ywb.1.2019.05.07.01.44.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 01:44:12 -0700 (PDT)
Date: Tue, 7 May 2019 16:44:04 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 4/5] perf tools: Properly set the value of 'old' in
 snapshot mode
Message-ID: <20190507084404.GD21730@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-5-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501175052.29667-5-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_014414_573775_38B43EA9 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 11:50:51AM -0600, Mathieu Poirier wrote:
> In snapshot mode the value of the 'old' pointer needs to be adjusted when
> 'head' has wrapped around in order to get the latest information in the
> buffer and be compatible with the generic AUX ring buffer mechanic.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 911426721170..4e73fe1a6978 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -541,11 +541,19 @@ static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
>  				unsigned char *data __maybe_unused,
>  				u64 *head, u64 *old)
>  {
> +	bool wrapped;
> +
>  	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
>  		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
>  
> -	*old = *head;
> -	*head += mm->len;
> +	/*
> +	 * If the last byte in the ring buffer isn't zero, the head has
> +	 * wrapped around.
> +	 */
> +	wrapped = !!(data[mm->len - 1]);

This is confused for me since I can think out two cases might break
this checking.

The first case is the trace data stream might be zero at the end of the
buffer; the second case is that the buffer is not really wrapped around
at this time but the end of buffer contains the stale data by previous
time.

Could you confirm both cases will not happen?

Will do more testing for this patch set.

Thanks,
Leo Yan

> +
> +	if (wrapped)
> +		*old = *head - mm->len;
>  
>  	return 0;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
