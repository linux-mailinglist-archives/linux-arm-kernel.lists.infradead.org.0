Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EA9DB562
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yppVXw7dtwInQ3FI1k2cZMyFrz0xmJVkT9BVtWNzzII=; b=T0oelcRe9DKUdo
	LSjkjzeTDNdVavL+uxZrUIYsfh2Cb8YaqW0IWInaao4P6CSI76+pUf/5tV6+z3lgK6CCUgZ4t58p0
	j3UygnGw4Hl8yhu5u8/Cnr/aylWgRIGxWHJfN44I7r4s4g5XRTzBH/6Jp1dIfMFvFVdu1WcGsyEco
	V0xJlARisMLAeF1WGv1geGxo8u+4wpb+M+gLEx4Zf3m2P5JrpPi2u5rf7EA4g1i0VNtxCveNUZVNT
	cafS4GfpnnRsCp+DXa79VmDGsx9RTD8+nG6wWwougxSfESauxOwWDAoYhO7NOwHhq32ypwHk31D11
	gWsV9u/xdZJZ3yRO+6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA6C-0007AW-TP; Thu, 17 Oct 2019 18:02:08 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLA1D-0001NL-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:57:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id r1so1767031pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 10:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CV+kRLoR1meiyrf+iynYFFOG1S0zGKS8gpnt6rsIY7A=;
 b=IY5uWHEiURxMmzWrpoOVU6aBy3Coo+9JB4mSX+nU2b1QJuEcV3zK8dq+Go2wM2smT4
 kN++rlfzW4+7pMs7OUMhWp5WOon+L5NkmPozkcrdHib00r4C0SIm0JP2mjpJnAu2xRRm
 0Kk9WbAZqJDVqgCHzHk037FzgZ7edJJ47aGEKGYIyfPY8Suh9n16hGMF+XG8ew9c2Jpo
 XqCfPTs6tJ0rsFWDnGYH7//61Iu8MmLuPgAftzr4BWOB5SMtYawaBrD5LhmsQXNihNxt
 lBqr6UJi8Vk2MRzA7dma8jv1FkUYBvGEibXfY4OdbtoU1xMQsSaXP7GXZJKZKpQsktjF
 mT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CV+kRLoR1meiyrf+iynYFFOG1S0zGKS8gpnt6rsIY7A=;
 b=F/CQDS6XJJ6kIOKStfHZXMGy5EBLQbjQP+ouTgR+SDc/cQMEmKVv2VoUqbRgizJhMh
 Y/U/nGSFKhOM1SguEp9mB8IO5go+kfqlpdE31kv5Zgyh4fpkALkTJqD53PY+hubKUXMG
 I5fESRb0jv13SM52Lb2DFCKWQFXJ8GsJKck6isoTLejMYiZiOPk7PQ+unoFd4NidoW74
 jEtSZiyjZ1lWP24AR/mPm5LjwCrjBu7yqpMoy9COmXf+6D3Fkg/+0LTw4H4TJS+mMXHD
 EHAOUCNKNWdGQMtDbp6APzuFajOlr+b0Zm86rGPvgXuWRxyf89jL2tNtR6dHMIrqGDzp
 3Gjg==
X-Gm-Message-State: APjAAAU+fVsynsr5i4+u1q83dFRG7dmOTDaZ8GQ1pVWPmFqOcKHHixOt
 e3SzRC+gFjl6kaC4RhKH4p2VBw==
X-Google-Smtp-Source: APXvYqxgud/7Z7xQxOExpPNrp+fBYK+PDvAZ7nvGRfXd+cFljZ/QqQUhHWdRosPfhUtc/oq+Vg9kQA==
X-Received: by 2002:a63:9208:: with SMTP id o8mr5435470pgd.256.1571335018455; 
 Thu, 17 Oct 2019 10:56:58 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t125sm4584578pfc.80.2019.10.17.10.56.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 10:56:57 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:56:55 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 02/11] coresight: etm4x: Fix input validation for sysfs.
Message-ID: <20191017175655.GB17991@xps15>
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015212004.24748-3-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_105659_698046_1A7128C8 
X-CRM114-Status: GOOD (  16.86  )
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
 stable <stable@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:19:55PM +0100, Mike Leach wrote:
> A number of issues are fixed relating to sysfs input validation:-
> 
> 1) bb_ctrl_store() - incorrect compare of bit select field to absolute
> value. Reworked per ETMv4 specification.
> 2) seq_event_store() - incorrect mask value - register has two
> event values.
> 3) cyc_threshold_store() - must mask with max before checking min
> otherwise wrapped values can set illegal value below min.
> 4) res_ctrl_store() - update to mask off all res0 bits.
> 
> Reviewed-by: Leo Yan <leo.yan@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Fixes: a77de2637c9eb ("coresight: etm4x: moving sysFS entries to a dedicated file")
> Cc: stable <stable@vger.kernel.org> # 4.9+
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 21 ++++++++++++-------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index b6984be0c515..cc8156318018 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -652,10 +652,13 @@ static ssize_t cyc_threshold_store(struct device *dev,
>  
>  	if (kstrtoul(buf, 16, &val))
>  		return -EINVAL;
> +
> +	/* mask off max threshold before checking min value */
> +	val &= ETM_CYC_THRESHOLD_MASK;
>  	if (val < drvdata->ccitmin)
>  		return -EINVAL;
>  
> -	config->ccctlr = val & ETM_CYC_THRESHOLD_MASK;
> +	config->ccctlr = val;
>  	return size;
>  }
>  static DEVICE_ATTR_RW(cyc_threshold);
> @@ -686,14 +689,16 @@ static ssize_t bb_ctrl_store(struct device *dev,
>  		return -EINVAL;
>  	if (!drvdata->nr_addr_cmp)
>  		return -EINVAL;
> +
>  	/*
> -	 * Bit[7:0] selects which address range comparator is used for
> -	 * branch broadcast control.
> +	 * Bit[8] controls include(1) / exclude(0), bits[0-7] select
> +	 * individual range comparators. If include then at least 1
> +	 * range must be selected.
>  	 */
> -	if (BMVAL(val, 0, 7) > drvdata->nr_addr_cmp)
> +	if ((val & BIT(8)) && (BMVAL(val, 0, 7) == 0))
>  		return -EINVAL;
>  
> -	config->bb_ctrl = val;
> +	config->bb_ctrl = val & GENMASK(8, 0);
>  	return size;
>  }
>  static DEVICE_ATTR_RW(bb_ctrl);
> @@ -1324,8 +1329,8 @@ static ssize_t seq_event_store(struct device *dev,
>  
>  	spin_lock(&drvdata->spinlock);
>  	idx = config->seq_idx;
> -	/* RST, bits[7:0] */
> -	config->seq_ctrl[idx] = val & 0xFF;
> +	/* Seq control has two masks B[15:8] F[7:0] */
> +	config->seq_ctrl[idx] = val & 0xFFFF;
>  	spin_unlock(&drvdata->spinlock);
>  	return size;
>  }
> @@ -1580,7 +1585,7 @@ static ssize_t res_ctrl_store(struct device *dev,
>  	if (idx % 2 != 0)
>  		/* PAIRINV, bit[21] */
>  		val &= ~BIT(21);
> -	config->res_ctrl[idx] = val;
> +	config->res_ctrl[idx] = val & GENMASK(21, 0);
>  	spin_unlock(&drvdata->spinlock);
>  	return size;

This one too, no need to send again.

>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
