Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE289DB05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+HbCrpN921pjEVe9eNtzd6i1XxyQvDC5DmCOrylLtA=; b=kqOib5oSxqmc5b
	anRRfEUSX0CKSFMAJ8wqRGTp6eAvkpeXmhguso2MWr0lS4JDp+mMTrI5LJGB9Gaw0Oaw1uGKVXSKU
	xgNIt3nasL4o7UPU9gblKXqS6gfkwDq4OwwjCfrKwTaNNhMtXflqUjU7wIAMXxto6N5hpNALtGf7V
	30Gyxt5zTdqyqApPr7+/SWibk0wjNRUqRHfCTT7WgEtRw/HQWyyK4KZfWHkFQ1ISt7AtEUHwvk1cM
	uVgl61+Ad6a2nhGXFMi1ElMZtMInh8hbHCLlJ+2aQBzVgueY14+lxmLoSyDqJPm4LcDo5e81TX8ux
	QZx0GukowXwVV0Bxz/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QK2-0007mn-5c; Tue, 27 Aug 2019 01:30:58 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QJs-0007m0-86
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:30:49 +0000
Received: by mail-yb1-xb41.google.com with SMTP id a17so5718131ybc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 18:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tnOKZVI2QOtjsx7l6GiMYgVTnUPPJYldd6RePG5ghms=;
 b=vX3rxJJm953Uw6Onz9/pZS2n4ACF3qqSTizq7x04kl2lFxHfNfTJN627+igH9UdpX7
 ARfAlJNXBpkT74h9GXk7w/g0j7vg9mhIc6E6Vopg3H1BMMNM/WzPP2aYXu97V0I66BXQ
 QV+/peRihYrX5YLimVdSBztjFOMnXSS7TtHjmN0ZnBIYl1QTfs1+aE4DlYE6XU2keRqL
 6AaEw1jxtX32qDcEr4s/h3IXvmYag70M4BYKEqXar8hSCueU9WtBT2VCoXAlMPP+deik
 Gww+apYt9+elDrgII9LHzlSTdl+Yq9AH3PtC4GEiubI5lI5fq87uyzz8psu9UYS++wqa
 7wjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tnOKZVI2QOtjsx7l6GiMYgVTnUPPJYldd6RePG5ghms=;
 b=ejEBAjfM7GlWLZCAPXXI76+cPVAE+dXJfVuxZn8ZRN3eyEyD6Ska2p0hcQglMTMPya
 e//2x9JL7GZZJho3RhlNDsZKB0BRtO+sBQRHZpRqjb9JGKDYVOCRghMXeemdcv8dGvuK
 HL7FfvyAvJk2XgWL0//XcJ0i4VjowvYUU+em9W8+5MfiP9yqTBvUGROgLibr5JNQiiPp
 bnODGdLBWU3Bs9RVAH/iEcHiAW+HcvBLQY34fr0HjcMoTnurLMNEYfbHIdQq6GWSkhfl
 y2ZK1Jc3ljQhFv7OqKtrTqiNO37pQjlFqxtnjgh4+UK6pIIm4B3upinwI36zlBL/Eo/C
 pTlw==
X-Gm-Message-State: APjAAAWrmxo8M3cmKc/8kNQRVnNoXJViuAWpW+Lyr5zvystW5eCBh+hy
 f3vqQePq6DLB/9HtJJx7uJ8BKA==
X-Google-Smtp-Source: APXvYqyvwkntuxPSlWKESJ6L4XB+N21yveACkjPf5xkRW4oRIYfpW5Wrgi1POx6hlYp6IxHJLJNeuA==
X-Received: by 2002:a25:aa23:: with SMTP id s32mr14370115ybi.198.1566869446653; 
 Mon, 26 Aug 2019 18:30:46 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id d191sm3600156ywh.12.2019.08.26.18.30.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 18:30:45 -0700 (PDT)
Date: Tue, 27 Aug 2019 09:30:38 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 2/3] coresight: tmc-etr: Decouple buffer sync and
 barrier packet insertion
Message-ID: <20190827013038.GA4596@leoy-ThinkPad-X240s>
References: <20190826194605.3791-1-mathieu.poirier@linaro.org>
 <20190826194605.3791-3-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826194605.3791-3-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_183048_302304_7260BF70 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 yabinc@google.com, linux-kernel@vger.kernel.org, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 01:46:04PM -0600, Mathieu Poirier wrote:
> If less space is available in the perf ring buffer than the ETR buffer,
> barrier packets inserted in the trace stream by tmc_sync_etr_buf() are
> skipped over when the head of the buffer is moved forward, resulting in
> traces that can't be decoded.
> 
> This patch decouples the process of syncing ETR buffers and the addition
> of barrier packets in order to perform the latter once the offset in the
> trace buffer has been properly computed.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  .../hwtracing/coresight/coresight-tmc-etr.c    | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 4f000a03152e..bae47272de98 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -946,10 +946,6 @@ static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
>  	WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);
>  
>  	etr_buf->ops->sync(etr_buf, rrp, rwp);
> -
> -	/* Insert barrier packets at the beginning, if there was an overflow */
> -	if (etr_buf->full)
> -		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
>  }
>  
>  static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
> @@ -1086,6 +1082,13 @@ static void tmc_etr_sync_sysfs_buf(struct tmc_drvdata *drvdata)
>  		drvdata->sysfs_buf = NULL;
>  	} else {
>  		tmc_sync_etr_buf(drvdata);
> +		/*
> +		 * Insert barrier packets at the beginning, if there was
> +		 * an overflow.
> +		 */
> +		if (etr_buf->full)
> +			tmc_etr_buf_insert_barrier_packet(etr_buf,
> +							  etr_buf->offset);
>  	}
>  }
>  
> @@ -1502,11 +1505,16 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  	CS_LOCK(drvdata->base);
>  	spin_unlock_irqrestore(&drvdata->spinlock, flags);
>  
> +	lost = etr_buf->full;

Comparing to the previous version, it drops '|' bitwise operator;
seems to me this is more neat :)

I think Yabin's testing is more convinced, so I skip to test.
FWIW, these three patches look good to me:

Reviewed-by: Leo Yan <leo.yan@linaro.org>

>  	size = etr_buf->len;
>  	if (!etr_perf->snapshot && size > handle->size) {
>  		size = handle->size;
>  		lost = true;
>  	}
> +
> +	/* Insert barrier packets at the beginning, if there was an overflow */
> +	if (lost)
> +		tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
>  	tmc_etr_sync_perf_buffer(etr_perf, size);
>  
>  	/*
> @@ -1517,8 +1525,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  	 */
>  	if (etr_perf->snapshot)
>  		handle->head += size;
> -
> -	lost |= etr_buf->full;
>  out:
>  	/*
>  	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
