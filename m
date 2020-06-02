Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233D81EC2E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQlmJTEZ1q1nQzPMcMk4fMKTxFYxoUTU5TE3wCFHl/c=; b=L2Zpw7t+lJ5a/X
	m6iI84rM2tMLgWTletO2LvRhevEuBw8KliQx8KQ9+nceuBF4IWUNE1VtAcABNij05QHZMwT5Bj0Bb
	TAiCWvMLREzkGTRKtBFS3a8aex8JCvhLYV6r1RQ8JlOu43MPEH9gdurqzMLvKGOCmm15DJGYK0jgv
	W0tm4qXTFdsnLC/U9kaQ8KYAxGtLknzuqHn0fgiugHsakIu5NgpRKYh2q/RqdwXYdP1uhKEAg6spv
	6U6S/MsZ2P5247JrXpkCugP1Bl9JBAtkKQb+sJXWnPhV0gphGN02S3kRAVr5Gg5XJsDdmhtWSpX2Q
	F/JRMLzfB+pXG9E4oYRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCjE-0000db-RE; Tue, 02 Jun 2020 19:37:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCj7-0000ck-Sj
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:37:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id b5so2799845pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 12:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bJnC8pb9inJ4WASV7qVCuCabCRcXZDxttLDFcET0dPc=;
 b=Ha/pn0BXsUvRjOzGNc0GJXisWDaYC6hsmIaIt4veiwt/qOBrFIyP91gWdk0MIjL3SP
 CtXg3HDwFvPW9uc6fKiYNh0Rdg8AapVZng26a36EW9Ul23Yk3vMUneyzBf4ON8PFZLOP
 Yni5OWTIjVYNJ55ki+7sCflmTV3aRAX7Okn1Wwj6zv04gZHLuxFaZKb9QIEPfg/R7izY
 v0gGGqsRfp3lhMfXDevaHCmuH/Nu6XiKLLW8HkKoKKGqyqOWF1ZS6dBjcyZbxRRItrSX
 cGa2QzSeSMMclncAx8VzL5FZzWi4q8206AVEcoTiyu4h0vPuwIA97o387htSfu+b20l4
 6u2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bJnC8pb9inJ4WASV7qVCuCabCRcXZDxttLDFcET0dPc=;
 b=DeTqarjpZsEeNcX8K/XR4XYHMTj6B4+F91PKhwKT9B4aqFllSUuduC5NPVvrsaPT5W
 ce39FPRHM686YTzvrkYPd6NW/dAF6vuOq6UU6b5hwbryt406/Gpn44zC3ZlhOCuW9oyb
 //9+XpfSlNWD8TclTPwf4bh1qKyGC8HlpRTJeK/WuhqcSkOX/9P7I9+5nqngveV8TZuu
 qBM42f/kitXbg5ANB0egZynv77bMe0z2cEVtRGI9fS7+o7SnikfURpKyluhRbDMeW0jB
 v4HOhpyzSrw8HRIxAftuMYT42ZvfBsyoRdm3kvWtRSTMrMRQf2JbnRRlsAV/cgIxrtlw
 2juw==
X-Gm-Message-State: AOAM530X+XhMB4FHA2zdpbJo7aJAEE3xJq3D4XPh66uGURfLGbvdrQj3
 CZo668rcOyHWCRW9fHVSjn6hEA==
X-Google-Smtp-Source: ABdhPJy3Abo428EgMH5dNF9Mw8Ft+chYmLJaz1u5kKFL3gpyXhgREJRJ/iH853fmYqj1SDPu5DREaw==
X-Received: by 2002:a63:4f09:: with SMTP id d9mr24769623pgb.10.1591126652763; 
 Tue, 02 Jun 2020 12:37:32 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y9sm3105189pjy.56.2020.06.02.12.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 12:37:32 -0700 (PDT)
Date: Tue, 2 Jun 2020 13:37:30 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 1/4] remoteproc: Introduce rproc_of_parse_firmware()
 helper
Message-ID: <20200602193730.GA29840@xps15>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521001006.2725-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_123733_934209_AECC2148 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 07:10:03PM -0500, Suman Anna wrote:
> Add a new helper function rproc_of_parse_firmware() to the remoteproc
> core that can be used by various remoteproc drivers to look up the
> the "firmware-name" property from a rproc device node. This property
> is already being used by multiple drivers, so this helper can avoid
> repeating equivalent code in remoteproc drivers.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v2: New patch
> 
>  drivers/remoteproc/remoteproc_core.c     | 23 +++++++++++++++++++++++
>  drivers/remoteproc/remoteproc_internal.h |  2 ++
>  2 files changed, 25 insertions(+)
> 

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 9f04c30c4aaf..c458b218d524 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1034,6 +1034,29 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
>  }
>  EXPORT_SYMBOL(rproc_of_resm_mem_entry_init);
>  
> +/**
> + * rproc_of_parse_firmware() - parse and return the firmware-name
> + * @dev: pointer on device struct representing a rproc
> + * @index: index to use for the firmware-name retrieval
> + * @fw_name: pointer to a character string, in which the firmware
> + *           name is returned on success and unmodified otherwise.
> + *
> + * This is an OF helper function that parses a device's DT node for
> + * the "firmware-name" property and returns the firmware name pointer
> + * in @fw_name on success.
> + *
> + * Return: 0 on success, or an appropriate failure.
> + */
> +int rproc_of_parse_firmware(struct device *dev, int index, const char **fw_name)
> +{
> +	int ret;
> +
> +	ret = of_property_read_string_index(dev->of_node, "firmware-name",
> +					    index, fw_name);
> +	return ret ? ret : 0;
> +}
> +EXPORT_SYMBOL(rproc_of_parse_firmware);
> +
>  /*
>   * A lookup table for resource handlers. The indices are defined in
>   * enum fw_resource_type.
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index 4ba7cb59d3e8..e5341e91d2fc 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -28,6 +28,8 @@ struct rproc_debug_trace {
>  void rproc_release(struct kref *kref);
>  irqreturn_t rproc_vq_interrupt(struct rproc *rproc, int vq_id);
>  void rproc_vdev_release(struct kref *ref);
> +int rproc_of_parse_firmware(struct device *dev, int index,
> +			    const char **fw_name);
>  
>  /* from remoteproc_virtio.c */
>  int rproc_add_virtio_dev(struct rproc_vdev *rvdev, int id);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
