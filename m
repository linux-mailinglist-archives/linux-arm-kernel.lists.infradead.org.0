Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DCF1A4D7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 04:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WotpbORakUauSco4/PMhkBjE/doGCqH3cHa+XLZajjo=; b=k7N753idNyc3M6
	5nP1F6ZjJSfJgoLD2b0QUZJklc99OtdVudinKT0B7Zu4oqkIeNFyD5bqeV6gK5FQTJMxafrQ8VaS8
	Ag6/h6goGG225l9Oo06Y0jzB2UPMqT10i6N9EpdvnSvhr5LOxGfe5mEgGx5Cx0uiyznrSSi7cvafS
	AJTxRKsAtCpHdA0tS/i8sqLEDAFRx0fPf49bAERICHx2+GlwZW2f04+jMPoTs/E3zlY2df9oxLdfl
	3ZNVaVGgQx0o0/k6ka8OT2ZnRMWYFKEBFXw41a9dbdMrefQ3/7gdrQlKsUJvpgYK3ub7SdFdgPGQY
	m56+5K32C2uAQ10sw7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN5qm-0005Gr-K4; Sat, 11 Apr 2020 02:26:28 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN5qe-0005Fw-Dq
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 02:26:22 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o1so553350pjs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 19:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9QWTHRRLu2SNoXMVr8er30dtVtDUkqmUu8dqdXp0zBo=;
 b=gwGyNDkE+v0753EJpooO71QpVYwsLyrGTVnJYTW7Yzj6M0xU/QZj76chLAuTLZWSAG
 9lHH/MJUJLj4kFuBpNvzcZQPf1j9fZu7O9hvQENB7QVNK+S/54ggxGTxL1m6I0ymfRWV
 rkO3WVrqJECAUj5XBVaZWIG3U2bVUfy0yY0NskrWVbSysKwt+Dp3bPHtrllJ3u2ZurMS
 D4XSSm4pjVrZ8kVJNSQeFuijeEjqdnYSePe1hz44i2MzsEbSyi1fTzVdIgOkKodgYmFB
 5Q6p6aABytM5dpS+g2IPPItTlH0qU5SRAFRvv5uh5UNah6tRqWX/igx5ZsvwukX5xUX/
 IvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9QWTHRRLu2SNoXMVr8er30dtVtDUkqmUu8dqdXp0zBo=;
 b=is6tXVRCDY+u/ex04aYakTf7tTQHiF9GCv1rV1DHvo8a05uSqxoZWLKR1QtH8fODkf
 f3DlLrx6nOZJZxXXW7lDaF8Q+QROBF+FNUCP1bQjnRXysaFy9G9Lb+kagLQ2ciYOE1/c
 3g4jsBkdxoBKLv+2tT+/N5UgTDaL5dZTyXhbJBclzmkAifRND22oXdRugR0e1ljZmtVe
 3NmL1TglzvN8fEiqnkQ1MOigBVmQ5P5zLD4iCNUX1DnUIRJusIPUwzS0x5N0NxvG3ns9
 dXymRYiPXPEZdC29HdaWGJWnddKI1NgCsCiBrkRoa0J2G1eeITc2bHZa8y14lDvgWQKz
 80pw==
X-Gm-Message-State: AGi0PuaqQcTFn53fzc8wH+1Cn2LNbw1GmgP+wFV2STBdK8NDw0w4prqf
 hrA5bfpHYvZZGT/Rxa3Nbck+wA==
X-Google-Smtp-Source: APiQypIAUsk9JXZ4eZ7z5c+24lbiiLbP6zb1dK3BsKgHpLxi25S9VapHngUiDqP0Qg9FgGN/gX1gkg==
X-Received: by 2002:a17:90a:de0e:: with SMTP id
 m14mr8702041pjv.54.1586571977804; 
 Fri, 10 Apr 2020 19:26:17 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id g14sm2895868pjd.15.2020.04.10.19.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 19:26:17 -0700 (PDT)
Date: Fri, 10 Apr 2020 19:26:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 2/2] remoteproc: core: Prevent sleep when rproc crashes
Message-ID: <20200411022627.GA826227@builder.lan>
References: <1586384305-7825-1-git-send-email-sidgup@codeaurora.org>
 <1586384305-7825-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586384305-7825-3-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_192620_513053_C31DD494 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 15:18 PDT 2020, Siddharth Gupta wrote:

> Remoteproc recovery should be fast and any delay will have an impact on the
> user-experience. Add a wakeup source to remoteproc which ensures that the
> system does not go into idle state while a remoteproc is recovering, thus
> prevent any delays that might occur during system resume.
> 

This is better, but I think it can be reworded further to show that it's
not a matter of making it "fast", it's a matter of preventing suspend
from interrupting the recovery of a remoteproc.

> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c   | 1 +
>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 7a63efb..6bb2c7d 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -401,6 +401,7 @@ static int adsp_probe(struct platform_device *pdev)
>  
>  	adsp = (struct qcom_adsp *)rproc->priv;
>  	adsp->dev = &pdev->dev;
> +	device_wakeup_enable(adsp->dev);

Move this 5 lines down and give it an empty line before and after.

>  	adsp->rproc = rproc;
>  	adsp->pas_id = desc->pas_id;
>  	adsp->has_aggre2_clk = desc->has_aggre2_clk;
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 9f99fe2..19a360d 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1729,6 +1729,8 @@ static void rproc_crash_handler_work(struct work_struct *work)
>  
>  	if (!rproc->recovery_disabled)
>  		rproc_trigger_recovery(rproc);
> +
> +	pm_relax(rproc->dev.parent);
>  }
>  
>  /**
> @@ -2273,6 +2275,8 @@ void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
>  		return;
>  	}
>  

	/* Prevent suspend while the remoteproc is being recovered */


PS. This patch is unrelated to patch 1/2, so please resubmit it
separately.

Regards,
Bjorn

> +	pm_stay_awake(rproc->dev.parent);
> +
>  	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
>  		rproc->name, rproc_crash_to_string(type));
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
