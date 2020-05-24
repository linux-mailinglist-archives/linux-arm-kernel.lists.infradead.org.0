Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 390261DFC45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 03:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAwkzSGjukCXZG/T81q1YSpYkMzFjU5XPu/KD4h/+UE=; b=lbKrEC+gCxIJ5L
	brC6OFtqUcLISdGy04tTQAdcpAUffmEFVEOMTP9B5IIhje2gRgaEtYvemFzA3peL5hNoM9pwGwuLw
	HRfethM2pGWCMnXQ/uJ0KGP0aH8ND4zmwwBqJeYq4RCeSGaT0q7BwSoeWJT1xJ2TaWNo6NT91/yRp
	Vg7ZkNifJ5am57kOYY1q1R1D5/wNfgOQ22NCjztfdHZMnWKFxV1V4kkJNFTIw7FlhwwR/HPhcbsOp
	g4ExCY1Kei3zJXEZ1NaiLxUZDXF6ZkI6+tODybvX/MbiCdf4gtvI1c4VM1dGalE9eilVhLSPdaGEc
	lO8vIH7SshWi3XL4ZWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcfes-0003wl-LV; Sun, 24 May 2020 01:42:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcfek-0003wN-9v
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 01:42:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id x13so7030566pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 18:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WOxnSmEbJ8sld8voIH7dFeotuFTK+vKmyxU3MIIUb6w=;
 b=GtZPJ7jMgTd975u9HvJI8Vb4cQ0PF/kILo5F96YhAHphc7CWosNo5glezVlXxhXmfe
 2gU8cK7Y8pxzBSBxL2vGV0mECSCAAp8pkJw0+o85UREcMBs5pU34VmV2PquiuIlMBZVS
 I6mX64GzgFs+eJMW1wOvV1EV776L2G42DYYbsYCNlRri+pFm1GFU598QW95NFZbyWUIv
 mkxS+NW/iDwbC1BzK0EnISSbg2E5G/UhDnndhRbKFe1rh3EbsWJYpuQ85dqvt96abTs7
 h0rIdsreV3awAzUw83FAk+0u4QFJaMqks/RfYUAH6W3qqEF3vq6g7HD6yqmDacd3ngUG
 boqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WOxnSmEbJ8sld8voIH7dFeotuFTK+vKmyxU3MIIUb6w=;
 b=WrfmwM9o7nmxtXr5orH2ABHMOvsoWEy7CYRwyaRHRmuuBcHnd9X1wIfjnf3kk+0QiC
 B0HlxCQlUN7mq+BU1VmfFkfS6q+9OuT1qrydfLVxcFya4uOzebcqa11HGZOMVTvh+72i
 o4k/3RyhbgEg18DjpiN6y/cX/r7qpM0JYn43jjSgEGmE8zuLYscalEVRJeEGML3W2Gsy
 NH2VHlEYYvzaF8HGenjFoKu97DF2aa2deM8Tc7yYYt9wWHyS8dUihafBrlw+xW95k86S
 Mm9s2Iyn2Wiq5BMesWF4wop88iuzD4qdNzxmlKxjnuN6bZei6dEOJDaNvbPpIiku+Dss
 F40A==
X-Gm-Message-State: AOAM532Jdoo/413PJILmgfgdXtXJJ3TVYm01vDOMqo++pa2v0sBXDWVj
 noIUvufbhdCExdn9Rh0IyKE=
X-Google-Smtp-Source: ABdhPJz/r2ARO1+zFfzMU6tmLJif4eacW94VQyHfz5ZBMq8FJBOIwE90YKcA4DCDXFxeOk1t1yVKbQ==
X-Received: by 2002:a62:c5c2:: with SMTP id j185mr3837671pfg.74.1590284544972; 
 Sat, 23 May 2020 18:42:24 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id y18sm9957798pfr.100.2020.05.23.18.42.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 18:42:24 -0700 (PDT)
Date: Sat, 23 May 2020 18:42:20 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v12 09/11] ptp: extend input argument for
 getcrosstimestamp API
Message-ID: <20200524014220.GA335@localhost>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-10-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522083724.38182-10-jianyong.wu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_184226_370689_4232AAA8 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark.Rutland@arm.com, maz@kernel.org, justin.he@arm.com, Wei.Chen@arm.com,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, netdev@vger.kernel.org,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, steven.price@arm.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 04:37:22PM +0800, Jianyong Wu wrote:
> sometimes we may need tell getcrosstimestamp call back how to perform
> itself. Extending input arguments for getcrosstimestamp API to offer more
> exquisite control for the operation.

This text does not offer any justification for the change in API.
 
> diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
> index c602670bbffb..ba765647e54b 100644
> --- a/include/linux/ptp_clock_kernel.h
> +++ b/include/linux/ptp_clock_kernel.h
> @@ -133,7 +133,8 @@ struct ptp_clock_info {
>  	int (*gettimex64)(struct ptp_clock_info *ptp, struct timespec64 *ts,
>  			  struct ptp_system_timestamp *sts);
>  	int (*getcrosststamp)(struct ptp_clock_info *ptp,
> -			      struct system_device_crosststamp *cts);
> +			      struct system_device_crosststamp *cts,
> +			      long *flag);

Well, you ignored the kernel doc completely.  But in any case, I must
NAK this completely opaque and mysterious change.  You want to add a
random pointer to some flag?  I don't think so.

Thanks,
Richard



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
