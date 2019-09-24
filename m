Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53318BCBA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFuOKGbScM2IUlCJjESVcbLt4YDctgBlo1iB0Jhx6BI=; b=XUNqyj4Z6oVXwW
	o2d+hCqYLJl3dp5gLDPbZDlpfXv9pCOnvx0IPqWsEur27B7QlIhOnFeuHVKqivwtJFEP507YyUCvl
	vd4OE2YLkhb25qybPyvSnJK+b0xtAUxoTuQhFJh+74n7/uQYeh2RFMSE+1c9vM8wQCOioei4AWLvb
	g0nVXQyVKeSjWwLZ/4zAksRB2uujcs5mEgfjaa/EpntGtTkYQBhklTguOJdKOqwRnuqLCd2k347u6
	XVLKDYxyDF4mAs5+IWrddFU5qb13koaQtvkAyBisooAEwHlN3vlwP2k+NS8pDpCjrtspCfwFfV3Y7
	WGOq53g7oAUkkO1yIh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmug-0004As-AL; Tue, 24 Sep 2019 15:39:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmuT-0004AR-UM
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:39:27 +0000
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D8E085550
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 15:39:25 +0000 (UTC)
Received: by mail-qk1-f198.google.com with SMTP id w7so2408908qkf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 08:39:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PTQQeXWO5vPTU6tigUaFPHUuGjp5uZ3Hgvq/mbe0/q8=;
 b=pbn0bbCv3GdvxW26PfCGJpkt9OUwqsuJE35zHcD/e0xQ8LGfm1g6ijb9rmmT5mtRMi
 V63/SeUCgh7mCzOfRvxL4c/dTV4uaJ7ST9UaizXU9jh97pd3zbuIn6cgqPiwlWVQVdAz
 x7gdU6uF4OwbDc9d3MMBt/MAilCLzNxz6R/rgLV997YGnk+Y3+dhwdGR7Xvd1kxKdEn5
 ZEo20AvMOffvbvW5JJvLdS35ThZ5ao7VRerNBym9eutg5dma3fofzCX1tNuLb3Xu7uoj
 wDq4A2R+OvhjsVzprwyDyecDO8oyacp/+BmtsaaIoMQy6XUdl9q09m1lvKCll6ivjPT5
 iBqg==
X-Gm-Message-State: APjAAAWsvPGTvAgPl2FJuyFYdiyyPCUyRaFDMSThG7e0KUy9rtYcZM2s
 U3ntrVHvCqc9Y2rTXaS7de5Rs+FvOT9Bbv+YihyVisOIBweNzxkB3PnfE0Z04jnoe3JqEUu+3xy
 ridm5JNpxYxf3sWbxgtLpjegp/GXUcYzs/yM=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr3465206qtb.7.1569339564618;
 Tue, 24 Sep 2019 08:39:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznlDhsLQpyIFK6nRFjbhudaZrRRV3OOlTnkVZlvYzC4PZu5ddm6L574qRzPyehnZUU6ffx+Q==
X-Received: by 2002:ac8:342a:: with SMTP id u39mr3465181qtb.7.1569339564339;
 Tue, 24 Sep 2019 08:39:24 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id v5sm1448122qtk.66.2019.09.24.08.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 08:39:23 -0700 (PDT)
Date: Tue, 24 Sep 2019 11:39:17 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Heyi Guo <guoheyi@huawei.com>
Subject: Re: [RFC PATCH 01/12] linux-headers: import arm_sdei.h
Message-ID: <20190924113640-mutt-send-email-mst@kernel.org>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <1569338511-3572-2-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569338511-3572-2-git-send-email-guoheyi@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_083926_024745_F27EB5AA 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Cornelia Huck <cohuck@redhat.com>, qemu-devel@nongnu.org,
 Dave Martin <Dave.Martin@arm.com>, qemu-arm@nongnu.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:21:40PM +0800, Heyi Guo wrote:
> Import Linux header file include/uapi/linux/arm_sdei.h from kernel
> v5.3 release.
> 
> This is to prepare for qemu SDEI emulation.
> 
> Signed-off-by: Heyi Guo <guoheyi@huawei.com>
> Cc: Peter Maydell <peter.maydell@linaro.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: "Michael S. Tsirkin" <mst@redhat.com>
> Cc: Cornelia Huck <cohuck@redhat.com>
> Cc: Paolo Bonzini <pbonzini@redhat.com>

Some issues with this.  First linux-headers is for linux as a host.
This is for linux as a guest, so belongs in include/standard-headers.

Second, please add to scripts/update-linux-headers.sh in a 1st patch,
then add the file in the second patch.



> ---
>  linux-headers/linux/arm_sdei.h | 73 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 linux-headers/linux/arm_sdei.h
> 
> diff --git a/linux-headers/linux/arm_sdei.h b/linux-headers/linux/arm_sdei.h
> new file mode 100644
> index 0000000..af0630b
> --- /dev/null
> +++ b/linux-headers/linux/arm_sdei.h
> @@ -0,0 +1,73 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/* Copyright (C) 2017 Arm Ltd. */
> +#ifndef _UAPI_LINUX_ARM_SDEI_H
> +#define _UAPI_LINUX_ARM_SDEI_H
> +
> +#define SDEI_1_0_FN_BASE			0xC4000020
> +#define SDEI_1_0_MASK				0xFFFFFFE0
> +#define SDEI_1_0_FN(n)				(SDEI_1_0_FN_BASE + (n))
> +
> +#define SDEI_1_0_FN_SDEI_VERSION			SDEI_1_0_FN(0x00)
> +#define SDEI_1_0_FN_SDEI_EVENT_REGISTER			SDEI_1_0_FN(0x01)
> +#define SDEI_1_0_FN_SDEI_EVENT_ENABLE			SDEI_1_0_FN(0x02)
> +#define SDEI_1_0_FN_SDEI_EVENT_DISABLE			SDEI_1_0_FN(0x03)
> +#define SDEI_1_0_FN_SDEI_EVENT_CONTEXT			SDEI_1_0_FN(0x04)
> +#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE			SDEI_1_0_FN(0x05)
> +#define SDEI_1_0_FN_SDEI_EVENT_COMPLETE_AND_RESUME	SDEI_1_0_FN(0x06)
> +#define SDEI_1_0_FN_SDEI_EVENT_UNREGISTER		SDEI_1_0_FN(0x07)
> +#define SDEI_1_0_FN_SDEI_EVENT_STATUS			SDEI_1_0_FN(0x08)
> +#define SDEI_1_0_FN_SDEI_EVENT_GET_INFO			SDEI_1_0_FN(0x09)
> +#define SDEI_1_0_FN_SDEI_EVENT_ROUTING_SET		SDEI_1_0_FN(0x0A)
> +#define SDEI_1_0_FN_SDEI_PE_MASK			SDEI_1_0_FN(0x0B)
> +#define SDEI_1_0_FN_SDEI_PE_UNMASK			SDEI_1_0_FN(0x0C)
> +#define SDEI_1_0_FN_SDEI_INTERRUPT_BIND			SDEI_1_0_FN(0x0D)
> +#define SDEI_1_0_FN_SDEI_INTERRUPT_RELEASE		SDEI_1_0_FN(0x0E)
> +#define SDEI_1_0_FN_SDEI_PRIVATE_RESET			SDEI_1_0_FN(0x11)
> +#define SDEI_1_0_FN_SDEI_SHARED_RESET			SDEI_1_0_FN(0x12)
> +
> +#define SDEI_VERSION_MAJOR_SHIFT			48
> +#define SDEI_VERSION_MAJOR_MASK				0x7fff
> +#define SDEI_VERSION_MINOR_SHIFT			32
> +#define SDEI_VERSION_MINOR_MASK				0xffff
> +#define SDEI_VERSION_VENDOR_SHIFT			0
> +#define SDEI_VERSION_VENDOR_MASK			0xffffffff
> +
> +#define SDEI_VERSION_MAJOR(x)	(x>>SDEI_VERSION_MAJOR_SHIFT & SDEI_VERSION_MAJOR_MASK)
> +#define SDEI_VERSION_MINOR(x)	(x>>SDEI_VERSION_MINOR_SHIFT & SDEI_VERSION_MINOR_MASK)
> +#define SDEI_VERSION_VENDOR(x)	(x>>SDEI_VERSION_VENDOR_SHIFT & SDEI_VERSION_VENDOR_MASK)
> +
> +/* SDEI return values */
> +#define SDEI_SUCCESS		0
> +#define SDEI_NOT_SUPPORTED	-1
> +#define SDEI_INVALID_PARAMETERS	-2
> +#define SDEI_DENIED		-3
> +#define SDEI_PENDING		-5
> +#define SDEI_OUT_OF_RESOURCE	-10
> +
> +/* EVENT_REGISTER flags */
> +#define SDEI_EVENT_REGISTER_RM_ANY	0
> +#define SDEI_EVENT_REGISTER_RM_PE	1
> +
> +/* EVENT_STATUS return value bits */
> +#define SDEI_EVENT_STATUS_RUNNING	2
> +#define SDEI_EVENT_STATUS_ENABLED	1
> +#define SDEI_EVENT_STATUS_REGISTERED	0
> +
> +/* EVENT_COMPLETE status values */
> +#define SDEI_EV_HANDLED	0
> +#define SDEI_EV_FAILED	1
> +
> +/* GET_INFO values */
> +#define SDEI_EVENT_INFO_EV_TYPE			0
> +#define SDEI_EVENT_INFO_EV_SIGNALED		1
> +#define SDEI_EVENT_INFO_EV_PRIORITY		2
> +#define SDEI_EVENT_INFO_EV_ROUTING_MODE		3
> +#define SDEI_EVENT_INFO_EV_ROUTING_AFF		4
> +
> +/* and their results */
> +#define SDEI_EVENT_TYPE_PRIVATE			0
> +#define SDEI_EVENT_TYPE_SHARED			1
> +#define SDEI_EVENT_PRIORITY_NORMAL		0
> +#define SDEI_EVENT_PRIORITY_CRITICAL		1
> +
> +#endif /* _UAPI_LINUX_ARM_SDEI_H */
> -- 
> 1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
