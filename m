Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5171A1839
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 00:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vikIUr2xaoNdBJHm87IelPB1QCfJfTrNZmj40sqQV5I=; b=Pn4fIFVQvMuTFm
	kMOgmEjY5dU3bn10mPczTJnaQ5ikDtAi6gCvExd79XbzvCSsztR2CYzQ0bOgxKS8cnAFp/uKPf3eF
	9iCb1r/oYoNOM/oEb/e42zLez4Q7oT8+Fm8Pa5FXJhHK2ghuaAXSY4uqHgL8B5O3wfhsGySN8UuYW
	Y2Rclz4xFjJrg2hB7ATD0Nyprscn8WiEICUhZnNShBBzU7qPxru8KxcNpNjo7vLtQ+w8hqk4WGOlR
	IHDf9t4ZNmpjtuXZQZT5AcyNYYiaUmF4o9EXbFKaAXa4xLHaSrBI3N5XgWU8+8Zmgwolq37QD5a+w
	MX7liUV2Sje0zD7YXMog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLwjY-0005fL-NT; Tue, 07 Apr 2020 22:30:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLwjE-0005Ts-H6
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 22:29:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id c5so2398105pgi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 15:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/5Dlo9c6NkrNlKhGxo4WiMmRax8P6tj8YZhOaAlFBfg=;
 b=nI+28tmDYxfUXfht9m038gFrt7Recb9Ozlvc4UQxEyYgc+WlN6FE3ncBzInK0cMsj7
 y6a/Kuv1KV1lcnKjVKDGdW3KbWuhTVQdBSBvzjXT6vPIeqdwNiFn4YENmwLcFq8Y44xj
 YD262bhCXpaI5QIN2ofdWk/08Vwbn9w1s5BSA3VVn3imBJ14PW4djp9KiRr8M5GyWp8c
 RuQOKb+DCPoPS9TETWvkGfDF+qAWuR6h7hWZ63vvq3WAFCwOdF1jknf+ivEB3L1ghqyF
 RyDLDhe4hYKQ2LEDMwgXJQOdlA9MTwFwa5XRe75Kr1dUkD63YxfE0sIK/7aIRtmwJSkS
 b5rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/5Dlo9c6NkrNlKhGxo4WiMmRax8P6tj8YZhOaAlFBfg=;
 b=RHxniMpAoNLfRIoBpSxPq12HHTRLJUMuwuMMybxGYv5kM2qL76fMbSV2K5NRhcmpqw
 vDBst9wl5KoaxxosrAorCVn0K1TiMs+Go7rrlmGo7hSRkIK5941Q+HgdWPJ9MC4sdP4c
 LW8s4GkNUJpYi1VBHlagf2F7smhPe0NGgqS1R/p2IpGzoz9CFAPJmIETjGi0++UJuHIb
 TYZk/b4CPDMOPzknt6Xuk9H3uwov2dMeh3c3AroY1VChqceyt7QH/g8eZmS/rgwKwVRo
 LFr603e1r5/8Fu9S2WgAjrj3Ebv+9s9KdAX+onvZKpM6G8nfep8sIq4RoHFU0EqgvjzJ
 OVTQ==
X-Gm-Message-State: AGi0PuYCYEqP0JFu7gzUoDaUXdwEoy4Val1dnkYKKf9Ekx5ZYiWmUxxj
 IUV30ajq52nz7RysDdvw+1Qjvg==
X-Google-Smtp-Source: APiQypJz2ExCAgyCPPwVRM5J8c8RKa6kKi9IhliwMD/WX4yhCs1nX97X4GqALHk0m2lsH8vN6KHeAg==
X-Received: by 2002:a63:31c2:: with SMTP id x185mr4178337pgx.380.1586298592970; 
 Tue, 07 Apr 2020 15:29:52 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 3sm11016636pfd.140.2020.04.07.15.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 15:29:52 -0700 (PDT)
Date: Tue, 7 Apr 2020 15:29:58 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 2/2] remoteproc: core: Prevent sleep when rproc crashes
Message-ID: <20200407222958.GL20625@builder.lan>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_152957_090862_BC52A3A4 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 19 Feb 18:11 PST 2020, Siddharth Gupta wrote:

> Remoteproc recovery should be fast and any delay will have an impact on the
> user-experience. Use power management APIs (pm_stay_awake and pm_relax) to
> ensure that the system does not go to sleep.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 5ab65a4..52e318c 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1712,6 +1712,8 @@ static void rproc_crash_handler_work(struct work_struct *work)
>  
>  	if (!rproc->recovery_disabled)
>  		rproc_trigger_recovery(rproc);
> +
> +	pm_relax(&rproc->dev);
>  }
>  
>  /**
> @@ -2242,6 +2244,8 @@ void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
>  		return;
>  	}
>  
> +	pm_stay_awake(&rproc->dev);

Following Mathieu's question I was expecting you to do this on
rproc->dev.parent.

But looking at the implementation of pm_stay_awake(), it ends up being a
nop if dev->power.wakeup isn't specified. This in turn seems to come
from device_wakeup_enable(), which will bail if dev->power.can_wakeup is
not set. But I don't see where this would be set for either the platform
driver or the remoteproc's struct device - and neither one of them have
a "wakeup" attribute in sysfs.

Is there some additional plumbing needed for this?

Regards,
Bjorn

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
