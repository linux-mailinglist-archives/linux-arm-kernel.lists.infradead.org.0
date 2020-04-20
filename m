Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B441B0255
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QXAav2IOlOLrCJjwJbO+LJyNNilBgCTyqtUvHlkIB8=; b=Lv3FSWWx54Ejky
	NFSt9e0FV/y5LQlRSqfkEywOzpXvZ1GlqxsJEwZSKKtyRE1j1YvYFh4d0Pa8H0qpcnKI5BbGDvmBa
	uRtbezXNYBiKEZvuQesKY14+LFtow6+lmqIICPbMPxx+jeWQcE3vwx+sXEhsBFda2bjcukUUkzeXL
	4tYQCnnlUxaxUZpN3OfSwsOppIlhTqPROd02t0uCIQb+UR7SaV6J+U9ZjI2jvnRMR3wPqNHG/wUoB
	mknUqKSw1r12JrHc5sLI0y5dt2wNL5vHtl51ZnIPk3eLLcnIKUtVA7jGOEAKrPEuo6yDlE14iJX6h
	q57Z2pKt1MPWgWrqHlEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQXz-0002DL-KE; Mon, 20 Apr 2020 07:08:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQXm-0002CA-Cs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:08:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id q18so1067132pgm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZFTvUBniMnOgkrRExu5askOEdn96R/KVp3qePoAVn6U=;
 b=QKp98wB9GMSRtHLO5NspGdujoHvPoUeArRvvkQZr2iHLy5rnm4LVW8/987njYm9uhj
 JdeZIF+IFQadILVdklQ34vEfxMxFRlZ+xsueOVmhrbOoFfl4h/38xxUBEMNv15CQ/lfc
 0YcmiWPgfXx0hNh9lK6Xf/9jEaz3MNFxbRJaKE4g5CElwqlIlKTpG7FLmGbnX9y9HYGK
 Q47tO0EXlEHxfHI5DISKBTyaVg7E8FZK8+JSMcmyB6aRIKDVxCUHGGeZovcZXj42zfPD
 XcYHL/f1TZJLkNYj23KrDftSqzJLxjinXHWmiOqKjrQP6cYEzifWlPyeJCpmqu6as7Ek
 GSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZFTvUBniMnOgkrRExu5askOEdn96R/KVp3qePoAVn6U=;
 b=UaaGQqbVXM8khR+L/unWl/Y4QYVHirrDHi7hIPAqeWeWQ5ij4aZgA78YrpUv1Ztawo
 1JNUqwBlK85PqVMknUSV+Gq83NJ873gu4nuCtXpYJAFJz8EmS0kHEThE9JYimCamIqxi
 r3HwzUJ9prYMP6Ks7WbXVu4BIo8qEPtRGM4XYIOxRCNnnRE4MGHkb3KXxMRNWHDcN92A
 8dAvWtHLsuUfvQFSfRCObsuVksswwwCONTAQ32b8zmXxut4OgtsxFshldQYrMkYAQ0T5
 AZfNvHsDY0+d6GKvhY5H3Po70rtfUH6z5AH0rgCegk/lj1B/lvQFnbVphBuVdKaoYCiF
 /msg==
X-Gm-Message-State: AGi0PuZNAma06HkTXJ7tjzsroGpkNYgDgccGpFlEqEtD0cCfQhScoRI/
 gYjVQdc98/8zo4B3Y1BZPzU/sg==
X-Google-Smtp-Source: APiQypJb89c9hh/371YTa+qpdFRvONkeP4flf7SsLuGDCOwnaS/cwCoXUnWr/fgyMSNCByoC6M5H4w==
X-Received: by 2002:a05:6a00:a:: with SMTP id
 h10mr9544646pfk.160.1587366517818; 
 Mon, 20 Apr 2020 00:08:37 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x185sm166115pfx.155.2020.04.20.00.08.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:08:37 -0700 (PDT)
Date: Mon, 20 Apr 2020 00:09:00 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 3/6] remoteproc: sysmon: Inform current rproc about
 all active rprocs
Message-ID: <20200420070900.GF1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-4-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-4-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_000838_443386_9784A0F7 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 agross@kernel.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 16:36 PDT 2020, Siddharth Gupta wrote:

> Clients/services running on a remoteproc that booted up might need to be
> aware of the state of already running remoteprocs. When a remoteproc boots
> up (fresh or after recovery) it is not aware of the remoteprocs that booted
> before it, i.e., the system state is incomplete. So to keep track of it we
> send sysmon on behalf of all 'ONLINE' remoteprocs.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/remoteproc/qcom_sysmon.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
> index 851664e..8d8996d 100644
> --- a/drivers/remoteproc/qcom_sysmon.c
> +++ b/drivers/remoteproc/qcom_sysmon.c
> @@ -453,10 +453,20 @@ static int sysmon_prepare(struct rproc_subdev *subdev)
>  	return 0;
>  }
>  
> +/**
> + * sysmon_start() - start callback for the sysmon remoteproc subdevice
> + * @subdev:	instance of the sysmon subdevice
> + *
> + * Inform all the listners of sysmon notifications that the rproc associated
> + * to @subdev has booted up. The rproc that booted up also needs to know
> + * which rprocs are already up and running, so send start notifications
> + * on behalf of all the online rprocs.
> + */
>  static int sysmon_start(struct rproc_subdev *subdev)
>  {
>  	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
>  						  subdev);
> +	struct qcom_sysmon *target;
>  	struct sysmon_event event = {
>  		.subsys_name = sysmon->name,
>  		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
> @@ -464,6 +474,21 @@ static int sysmon_start(struct rproc_subdev *subdev)
>  
>  	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
>  
> +	mutex_lock(&sysmon_lock);
> +	list_for_each_entry(target, &sysmon_list, node) {
> +		if (target == sysmon ||
> +		    target->rproc->state != RPROC_RUNNING)
> +			continue;
> +
> +		event.subsys_name = target->name;
> +
> +		if (sysmon->ssctl_version == 2)
> +			ssctl_send_event(sysmon, &event);
> +		else if (sysmon->ept)
> +			sysmon_send_event(sysmon, &event);
> +	}
> +	mutex_unlock(&sysmon_lock);
> +
>  	return 0;
>  }
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
