Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3781420A8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1eghma0BEtiNHcDg8/vSd4ZOMvFOj+0gT2gToPxpBs=; b=jNpG6t+qs9Xr+L
	WDmFgD0gRacZZxMtjZtmbqJsfpCz/roXlktL3D5WgeEqaw499yne+YKnXuNPhb2c4j9h12lCluIN1
	wGPV2SHdfR/3Xs+raQRjKiRxk94NNKYpJT7D/miv+HtMNkP6TNhgksDGDx2Hj8F1VIgHc4YL7VYSj
	zx7bDG867ivCFeFM7xk3fglAN8cMiIkrY8uTIvcdCW0SEJRTduIT33kPrOE51LDA2mm2cryKq7Rbj
	dXg5UefgQrqF8jiQl5F49S0oRadhaXONKnERU8yWVVs7DUbBpIH7ZLVP3KQfFgSMZqMJgI5jjQyKo
	gjv0/HTIQKYoQntiYMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHst-00011B-Ql; Thu, 16 May 2019 15:01:27 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHrk-0000xK-8e
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:00:18 +0000
Received: by mail-yw1-xc42.google.com with SMTP id t5so1459057ywf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6nxZ6Pq48P2GshEBx+DxaJRDwT3+u0tHYTOJEexMrug=;
 b=Nzv/YMV/GxXD2dUCPmRiPrRPctb+70fUvEsrm3gvh1k8FX4mU9Bp6hNaGe4UErNMnx
 aTb+3VsSGvsiyxPlXeGd7UipxJ7UOHZ0LcWjxG5pWEn70sfGLIKPVdmddKaQv5aEN/gV
 ZKA9e21wHKwwElmOZlkUNCfbm5bPWQNt30UYar4SwMsdJMZWH18cC3FEuus+5PLEVYno
 i+tGqeYYlh2fAMCn7tgL+YyZc8k9c1vNFHp5MKtyud9oOV+nlaEnc7kJL/k/BBSeFe/C
 CBl9gvANlreOySMzaYYTviZi8V4R4D383VdavcWKdpxNUjDQDs6G6m4PHK21iauoFYB7
 IbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6nxZ6Pq48P2GshEBx+DxaJRDwT3+u0tHYTOJEexMrug=;
 b=fVZ3hRsdCruERSfNOaDSA6nBin5W+2rcy4YLQGXSzgVApz8yvGz9Lya4TFG7ik/EVX
 FJ29lmnNENzXGWcz8oE4hk8sbIN8Y0Hn40gFAlEap3azTAD87nQd7iPvz949Sg5Sp68H
 Uid3VHNFYUMToX+nwH2ku7wTcRk5amwDamib6B403CrESLqO13Zg9ayha8XLv/svhsvU
 Ztq80OxXTxzwIZ5p8UvoE2vJq+4XNI4eZ8KmtAr/YBrLGrI6mE8vzqTQ5a+CmZ19n8c8
 uBGgFtfkkCWTkf6dhqrHlPshJcu0dqQCKzdDpeZGqxdltDhdkmtO0fQnbxQA7dRDxikX
 hvXQ==
X-Gm-Message-State: APjAAAWzXTiXfDHJ3Pye4UiEwXcjZLp0qNZp8MtIPtEDMk8EgIPID3AU
 3mtJThC+pIUMMQaB/tB78Fg08A==
X-Google-Smtp-Source: APXvYqwmW32X6QssU5CywmFCCXeQlN6JbwbBc3dqSP0KNb1qL58BZNVZIsgoykWbndquJJLWGDLyjg==
X-Received: by 2002:a81:4f8c:: with SMTP id
 d134mr26005945ywb.387.1558018814963; 
 Thu, 16 May 2019 08:00:14 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id m3sm1891302ywf.39.2019.05.16.08.00.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 08:00:13 -0700 (PDT)
Date: Thu, 16 May 2019 23:00:05 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH V2 6/6] perf tools: Properly set the value of 'old' and
 'head' in snapshot mode
Message-ID: <20190516150005.GG12557@leoy-ThinkPad-X240s>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-7-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514194018.23420-7-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080016_666364_6A804837 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 01:40:18PM -0600, Mathieu Poirier wrote:
> This patch adds the necessay intelligence to properly compute the value
> of 'old' and 'head' when operating in snapshot mode.  That way we can get
> the latest information in the AUX buffer and be compatible with the
> generic AUX ring buffer mechanic.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 124 ++++++++++++++++++++++++++++--
>  1 file changed, 119 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 911426721170..3734e3fd18f8 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -31,6 +31,8 @@ struct cs_etm_recording {
>  	struct auxtrace_record	itr;
>  	struct perf_pmu		*cs_etm_pmu;
>  	struct perf_evlist	*evlist;
> +	int			wrapped_cnt;
> +	bool			*wrapped;
>  	bool			snapshot_mode;
>  	size_t			snapshot_size;
>  };
> @@ -536,16 +538,126 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
>  	return 0;
>  }
>  
> -static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> +static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
> +{
> +	bool *wrapped;
> +	int cnt = ptr->wrapped_cnt;
> +
> +	/* Make @ptr->wrapped as big as @idx */
> +	while (cnt <= idx)
> +		cnt++;
> +
> +	/* Free'ed in cs_etm_recording_free() */
> +	wrapped = reallocarray(ptr->wrapped, cnt, sizeof(bool));
> +	if (!wrapped)
> +		return -ENOMEM;
> +
> +	ptr->wrapped_cnt = cnt;
> +	ptr->wrapped = wrapped;
> +
> +	return 0;
> +}
> +
> +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> +				      size_t buffer_size, u64 head)
> +{
> +	u64 i, watermark;
> +	u64 *buf = (u64 *)buffer;
> +	size_t buf_size = buffer_size;
> +
> +	/*
> +	 * We want to look the very last 512 byte (chosen arbitrarily) in
> +	 * the ring buffer.
> +	 */
> +	watermark = buf_size - 512;
> +
> +	/*
> +	 * @head is continuously increasing - if its value is equal or greater
> +	 * than the size of the ring buffer, it has wrapped around.
> +	 */
> +	if (head >= buffer_size)
> +		return true;
> +
> +	/*
> +	 * The value of @head is somewhere within the size of the ring buffer.
> +	 * This can be that there hasn't been enough data to fill the ring
> +	 * buffer yet or the trace time was so long that @head has numerically
> +	 * wrapped around.  To find we need to check if we have data at the very
> +	 * end of the ring buffer.  We can reliably do this because mmap'ed
> +	 * pages are zeroed out and there is a fresh mapping with every new
> +	 * session.
> +	 */
> +
> +	/* @head is less than 512 byte from the end of the ring buffer */
> +	if (head > watermark)
> +		watermark = head;
> +
> +	/*
> +	 * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> +	 */
> +	watermark >>= 3;
> +	buf_size >>= 3;
> +
> +	/*
> +	 * If we find trace data at the end of the ring buffer, @head has
> +	 * been there and has numerically wrapped around at least once.
> +	 */
> +	for (i = watermark; i < buf_size; i++)
> +		if (buf[i])

I think here should be:
                if (buf[i << 3])

Otherwise, this patch looks good to me.

> +			return true;
> +
> +	return false;
> +}
> +
> +static int cs_etm_find_snapshot(struct auxtrace_record *itr,
>  				int idx, struct auxtrace_mmap *mm,
> -				unsigned char *data __maybe_unused,
> +				unsigned char *data,
>  				u64 *head, u64 *old)
>  {
> -	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
> +	int err;
> +	bool wrapped;
> +	struct cs_etm_recording *ptr =
> +			container_of(itr, struct cs_etm_recording, itr);
> +
> +	/*
> +	 * Allocate memory to keep track of wrapping if this is the first
> +	 * time we deal with this *mm.
> +	 */
> +	if (idx >= ptr->wrapped_cnt) {
> +		err = cs_etm_alloc_wrapped_array(ptr, idx);
> +		if (err)
> +			return err;
> +	}
> +
> +	/*
> +	 * Check to see if *head has wrapped around.  If it hasn't only the
> +	 * amount of data between *head and *old is snapshot'ed to avoid
> +	 * bloating the perf.data file with zeros.  But as soon as *head has
> +	 * wrapped around the entire size of the AUX ring buffer it taken.
> +	 */
> +	wrapped = ptr->wrapped[idx];
> +	if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
> +		wrapped = true;
> +		ptr->wrapped[idx] = true;
> +	}
> +
> +	pr_debug3("%s: mmap index %d old head %lx new head %lx size %lx\n",
>  		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
>  
> -	*old = *head;
> -	*head += mm->len;
> +	/* No wrap has occurred, we can just use *head and *old. */
> +	if (!wrapped)
> +		return 0;
> +
> +	/*
> +	 * *head has wrapped around - adjust *head and *old to pickup the
> +	 * entire content of the AUX buffer.
> +	 */
> +	if (*head >= mm->len) {
> +		*old = *head - mm->len;
> +	} else {
> +		*head += mm->len;
> +		*old = *head - mm->len;
> +	}
>  
>  	return 0;
>  }
> @@ -586,6 +698,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
>  {
>  	struct cs_etm_recording *ptr =
>  			container_of(itr, struct cs_etm_recording, itr);
> +
> +	zfree(&ptr->wrapped);
>  	free(ptr);
>  }
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
