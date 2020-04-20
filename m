Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D551B00DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 06:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYmQyxgFClqc5rttro0crfM63pv1Kfs++D2MNd1aE2Q=; b=KqEhLdDqGekIWg
	L/4rcXO+2mQCWgVrxTOYahzMfjX5aC1LDEgLJBSZsKSc1WNCfBjk7ajJln3Mg9Z5Jkzs70Ymufy5r
	chQj2VAFamYtV/D6mAcpul1yDbW7Qsbw4L44uKDTrsGFcSB/xPx08imiBB38Qbg3zb3ZPKX52lzm/
	el1+1KEiQyuHsJ5BOgMMo/I3bT8NTy+OzujkGB46ZptXNcmXcEPkKfxxn8Z+YNdeYP8G3tPa4v9of
	ZEFZajQppNqP4LntObYdrWK5t4mR36Y19Rjcd8baJBNxwjOciGResZxZ0y7zlgooPJdTXe/3VGWfy
	Wnb9IYtN32eICAsVtKvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQOWa-0005d4-2z; Mon, 20 Apr 2020 04:59:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQOWR-0005c8-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 04:59:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id p25so4367842pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 21:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wAPlRWgezwhMIxEulFfKKHAsUfPFwC0PHoMBzV+JlwI=;
 b=qvZErNLWFA0MXJfaPogJoSFPlbsjkzOdKBcpC+dBEjVp/ttD4NrntsY2Bh67whd53Q
 QZVuESc+tpPhztFQacvq89rHOoUZSP8b1y5dCfp5JqE434zmbJCRbGxtHxZ28xxGbWtA
 vPkwmKU/ojlORtYLz+CKQnJig9d0kdFkA+Km2qnqKuQ13aCGl/RkE4pozk+zWwYAxvI9
 8TwwzxNZM6RzxBjEsHU/oIB6Oi463KgbGsMKGk0ieiuh1h9trvYo+i7SjLVBSs6snd12
 LMy5FfgTyuwkgO8iZz5T0d2TGNAQ/oTBnf08bsEmP8yrfqBxK9GRLJ83MGNVkaeDhmbE
 ApwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wAPlRWgezwhMIxEulFfKKHAsUfPFwC0PHoMBzV+JlwI=;
 b=Pv3D6WNSBlJ1sbG7wMWDV5aFAWSuXcZdSO49lemRNMX2lr9jXOmppvYjvsteFVfggw
 CCVDnD+pb9BG+3zJ5Sisp7A8gip/Pr9AAuiAin7Fay4lFUcr7V96ZLPnRwivmO3VzQsU
 AUKdiCP+8xvk7w987EBDEzWeYCVc3Avbwcp9NBDceIem5JQkUq5Mf8zCS01dvGzjNFK6
 bVpXcHgKbpeUHhFLGQezIj3U/70UKJw3yoB0+Oy7vgjQ2gGCutK6ZpK++pSfD5u3/S/b
 BV944vit2kWj4XY9JfEiVz1wUT0FuJNjhEWL5qGYIArH9ypkjQhpyHcXevDSRiwxi1Au
 VJNQ==
X-Gm-Message-State: AGi0Pua8BWyXmMev8HB7VUadirPm0ncM76sNmowtYt7PKNtuq4/SaoV2
 C+xRkEMP9Ff9HbgOcik6pLQbjg==
X-Google-Smtp-Source: APiQypI+Xh29Tan/fCXAwKqqgM92mQvjPxDij3ZhoXScf9xhZvC1wYM79H9afYGS/FHuHt2MKQ2cug==
X-Received: by 2002:a63:1562:: with SMTP id 34mr14547089pgv.150.1587358744684; 
 Sun, 19 Apr 2020 21:59:04 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id fy21sm12601107pjb.25.2020.04.19.21.59.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 21:59:03 -0700 (PDT)
Date: Sun, 19 Apr 2020 21:59:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/2] remoteproc: Use a local copy for the name field
Message-ID: <20200420045927.GA1516868@builder.lan>
References: <20200417002036.24359-1-s-anna@ti.com>
 <20200417002036.24359-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417002036.24359-3-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_215908_493473_0C0AA890 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 16 Apr 17:20 PDT 2020, Suman Anna wrote:

> The current name field used in the remoteproc structure is simply
> a pointer to a name field supplied during the rproc_alloc() call.
> The pointer passed in by remoteproc drivers during registration is
> typically a dev_name pointer, but it is possible that the pointer
> will no longer remain valid if the devices themselves were created
> at runtime like in the case of of_platform_populate(), and were
> deleted upon any failures within the respective remoteproc driver
> probe function.
> 
> So, allocate and maintain a local copy for this name field to
> keep it agnostic of the logic used in the remoteproc drivers.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> v1:
>  - Patch baselined on top of Mathieu's rproc_alloc() refactor
>    series, and so addresses Bjorn's simplified cleanup comments
>  - Switch to {kstrdup/kfree}_const variants
> v0: https://patchwork.kernel.org/patch/11456385/
> 
>  drivers/remoteproc/remoteproc_core.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index e38f627059ac..3cebface3f26 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1984,6 +1984,7 @@ static void rproc_type_release(struct device *dev)
>  
>  	kfree(rproc->firmware);
>  	kfree(rproc->ops);
> +	kfree_const(rproc->name);
>  	kfree(rproc);
>  }
>  
> @@ -2069,7 +2070,6 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	if (!rproc)
>  		return NULL;
>  
> -	rproc->name = name;
>  	rproc->priv = &rproc[1];
>  	rproc->auto_boot = true;
>  	rproc->elf_class = ELFCLASS32;
> @@ -2081,6 +2081,10 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	rproc->dev.driver_data = rproc;
>  	idr_init(&rproc->notifyids);
>  
> +	rproc->name = kstrdup_const(name, GFP_KERNEL);
> +	if (!rproc->name)
> +		goto put_device;
> +
>  	if (rproc_alloc_firmware(rproc, name, firmware))
>  		goto put_device;
>  
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
