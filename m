Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32700F8345
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 00:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aoJdDipI3vBXX8/NMHzLrDeiN7JxXj5t6JNHOyFCBw=; b=ducGwuF5+31bE2
	tgQ/dTCWw83ho0HHMReUbBgMxahzVhuhEZit2Dojg1VC/yEUduv9TD9SljO7nFOOCe6vBVJ7ifq+h
	QWjJUJItPHmvqmQQ6WzlHd5Iw5/DuA3Uvu8KW5sX47Jtl5sSGQ6pgoPgn5RnC5WgM5OvOmHCll46D
	YaeVxiXfBZDMZUWNfQ3sBbipGdJ1+7QIN5MzUnBlPOQ3hEgJVS6hVCEV2yFOsD3Jg3igOXXKCmI4F
	kUxiy1T7mALJmZhGOwWarugfshXcXIDZC7+Tlijw37e/xPBwDPkPou6+mHVbf2w364IUHH0k0Y8gH
	y1JmZHpjzND+VxeDm9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIpP-00080z-KM; Mon, 11 Nov 2019 23:10:35 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIpH-00080K-W6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 23:10:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so8498604plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 15:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tWeesDpDIKQpiy9KR8LKYyLg9H0SvGAo1V8+RtWjNIQ=;
 b=rWtyLPCIGyCdKarivLzqhQAJ+Hfooyus39lh21jI8xk1IYdM21EMyAhyCiMAj6XU88
 YHLkNv8fVvIZ3efdtCk8MC9ENjAuY75QGb92jJ9eWgZzeVmOmV6etIloPQOvhoKPytwU
 tdOsNkLLNnRJK7Yn8Glfv43FVt5EhmxeNqWuKKWoAjcQdRMMcJbNiRh0EcraR6vw7s+i
 KHwWFP2ROBBWbeDY/9Ub0aQ29J4YyF5s7sjGRMoHM4ItZh5loT9UqfcfTH1o7CLuFfzx
 lTdWaY6ydbeL1yhm2XLyeaVjzDiaoTGPeIDVV/PMsf2zuXu1ITVhz4muProW2lYrqDPq
 L1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tWeesDpDIKQpiy9KR8LKYyLg9H0SvGAo1V8+RtWjNIQ=;
 b=c5B22tee33PayqKIJTxr4A1t53dSgtstmPAX6F5sCzXTLtD3WvmjnSCipnJdRXBKM3
 4nS6Upk/ER0ISqgu/2006idSda2j2bKzkYRGYh6v2GlAG6MwS4GJdvPkHWR53G4DQM1D
 S09RgN1/Y5Jsn8bEBpkNPOGJ3ttw38+coixxginjH2TFHgU3UGwRBzzuxtcg+d5Tj7X1
 TGprB+gjMuWVVshh9cD5gpJ6b1yAOI9c7rUNppPgbizvngrVIQGbDQHy6kVpk5j/kZMl
 yq8Jm5RBw/ayZ1Mr8Iqpza0qIOUPJ4Z7Pm84fVaUn9bjEf7W2BKd671qeKxewTilfTrX
 n+Xg==
X-Gm-Message-State: APjAAAXnUQAGQWAwb+cBik3AUtyOsrvQ70tQfKIJd4qkYFkUN2dIkvOo
 LjDGbie84dNqj9iFo7ccqSDcj2fvsLo=
X-Google-Smtp-Source: APXvYqxVslTCSWygyPseQoAhgUug6WvxHkgXjnEMOZD0F6D5+Rt7ew8BNgRcm46QVtnCEjQ90fs3Mg==
X-Received: by 2002:a17:902:bf4b:: with SMTP id
 u11mr2843807pls.40.1573513826584; 
 Mon, 11 Nov 2019 15:10:26 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q4sm7296199pgp.30.2019.11.11.15.10.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 15:10:25 -0800 (PST)
Date: Mon, 11 Nov 2019 15:10:23 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v20 3/4] rpmsg: add rpmsg support for mt8183 SCP.
Message-ID: <20191111231023.GD3108315@builder>
References: <20191014075812.181942-1-pihsun@chromium.org>
 <20191014075812.181942-4-pihsun@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014075812.181942-4-pihsun@chromium.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_151028_027395_0D4EE1CD 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 14 Oct 00:58 PDT 2019, Pi-Hsun Shih wrote:

> Add a simple rpmsg support for mt8183 SCP, that use IPI / IPC directly.
> 

Hi Pi-Hsun,

Sorry for not reviewing this in a timely manner! This looks good, just
some very minor comments below.

> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
[..]
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index f2e5e70a58f2..7896cefb2dc0 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -15,6 +15,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/remoteproc.h>
>  #include <linux/remoteproc/mtk_scp.h>
> +#include <linux/rpmsg/mtk_rpmsg.h>
>  
>  #include "mtk_common.h"
>  #include "remoteproc_internal.h"
> @@ -407,6 +408,31 @@ static void scp_unmap_memory_region(struct mtk_scp *scp)
>  	of_reserved_mem_device_release(scp->dev);
>  }
>  
> +static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
> +	.send_ipi = scp_ipi_send,
> +	.register_ipi = scp_ipi_register,
> +	.unregister_ipi = scp_ipi_unregister,

These are exported symbols, so unless you see a need to support
alternative implementations in the near future just skip the function
pointers and call them directly.

> +	.ns_ipi_id = SCP_IPI_NS_SERVICE,
> +};
> +
[..]
> diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
[..]
> +static void __ept_release(struct kref *kref)

Please make this __mtk_ept_release() to make it clear that this is
not a framework function.

> +{
> +	struct rpmsg_endpoint *ept = container_of(kref, struct rpmsg_endpoint,
> +						  refcount);
> +	kfree(to_mtk_rpmsg_endpoint(ept));
> +}
> +
> +static void mtk_rpmsg_ipi_handler(void *data, unsigned int len, void *priv)
> +{
> +	struct mtk_rpmsg_endpoint *mept = priv;
> +	struct rpmsg_endpoint *ept = &mept->ept;
> +	int ret;
> +
> +	ret = (*ept->cb)(ept->rpdev, data, len, ept->priv, ept->addr);
> +	if (ret)
> +		dev_warn(&ept->rpdev->dev, "rpmsg handler return error = %d",
> +			 ret);
> +}
> +
> +static struct rpmsg_endpoint *
> +__rpmsg_create_ept(struct mtk_rpmsg_rproc_subdev *mtk_subdev,

__mtk_create_ept()

> +		   struct rpmsg_device *rpdev, rpmsg_rx_cb_t cb, void *priv,
> +		   u32 id)
> +{

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
