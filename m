Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091A5371EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INlOP3pmDj3intu35lKv1pGB8HvlX9WD47qZg5dpFjY=; b=CbpirMMk5ED/6S
	LADNyl5ksMF4zFICc8cMsGc8hWCN2+nXmoHh/nPpcS6Xp2LMcxAyt0mOCrPzFBWwTIpv2FT/orxA8
	Baj7tfvZ1+Ju7MaS0YfZD7Zotzoef/1+V6z546yc2Cl6dszfji3uoX+f1GvHn//t9MiqU4QVMT9n2
	cC4lT4J+PyvSCqTr4NLVYtCJD9UP2ddfjYWvYSTG25uzGFsIelQHeabP9h0L7muCQ7XApj58dPgDp
	10JDZnVweqbkA9YmFMjjRTRLbAVmppNGbs+kY0w/P15+GtycSJrk1pu7O4qvvDXwTSZCr0TE4CujA
	hydcE5Jt4C0ro+oq9p0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpsN-0005UE-8L; Thu, 06 Jun 2019 10:44:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpsE-0005TO-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:44:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id 81so8654pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 03:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GSJo9IMv9gNBngh7iG/dodIkmKcAwY+qD8UVgFHR5HI=;
 b=UihqCisDvQpU4p88L6rnPwlLl/oaCJ1ad5ChxX5+BeopXPN6GJj3htO+cwXt4olo+p
 bl6e1V6EzsM/KoI5WSaZOoMawRUtIW4QfnlcKn+/u5UmhfEBhAE0TCIQGGDBLvbc5Hup
 2S8rGjuyWp1A8Hpn4eHdPRVMZkkVk/gU9Rn/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GSJo9IMv9gNBngh7iG/dodIkmKcAwY+qD8UVgFHR5HI=;
 b=CNeMgoH+9tvmluTHmHXdEFHWKB5a0z95rFUG2sdJvwIMFExMWCp7as08lPEPar4QcD
 8Uf1Q4ywSp28gAli/tibVNWGDu4F1KKK3RdnW8i45kfon/P+MXRCZHVa6aSG4lXPfqk0
 RiyIAyEyfDgs8ZQeJDnqlRjOGfY5x5j+duiPhPlEuF4vrNBey83AZWeGYLYTh24lWw3V
 9O5UlFFp9172sWTUTPtGNh/mRHFhp0zENYLB+VDiu8oCS1kLKpjVdA2cpMenHuu3Bd1S
 V8pWQ7PfBfL+YDL/DTfw2RHUq5uiZx7cG1mhPTT6cwUi4vF5SwH3MeSnPuVVqiExmjU4
 B12A==
X-Gm-Message-State: APjAAAWbXW3CkpLsiy/fBS1Yj/p6flGkZJUcPul28CmPS1nqkXAn9roN
 xW21MOpsZupQRFYN9n+Dg8nSvw==
X-Google-Smtp-Source: APXvYqyC2EShry/xqv2AFA+5lH0s/qEqyw0J1fU5EVCUzAlnaMzmemtc6sRvmqyvy2y/MRGIQ7XMpA==
X-Received: by 2002:a17:90a:898e:: with SMTP id
 v14mr24367786pjn.119.1559817834476; 
 Thu, 06 Jun 2019 03:43:54 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id d9sm1497896pgl.20.2019.06.06.03.43.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 03:43:53 -0700 (PDT)
Date: Thu, 6 Jun 2019 19:43:47 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek FD driver
Message-ID: <20190606104347.GA107267@chromium.org>
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-7-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423104505.38778-7-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_034358_366353_AB7947A2 
X-CRM114-Status: GOOD (  32.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, shik@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerry,

On Tue, Apr 23, 2019 at 06:45:05PM +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds the driver of Face Detection (FD) unit in
> Mediatek camera system, providing face detection function.
> 
> The mtk-isp directory will contain drivers for multiple IP
> blocks found in Mediatek ISP system. It will include ISP Pass 1
> driver (CAM), sensor interface driver, DIP driver and face
> detection driver.
> 

Thanks for the patch.

First of all a general comment about the design:

My understanding is that this is a relatively straightforward
memory-to-memory device that reads a video frame and detects faces on it.
Such devices should be implemented as normal V4L2 memory-to-memory devices,
with contexts (instances; pipes) represented by v4l2_fh.

Also, please replace the META_OUTPUT queue with proper V4L2 controls, as I
don't think there is anything that we couldn't model using controls here.

The end result should be a V4L2 m2m driver (using the m2m helpers), where
you get a new context (instance; pipe) whenever you open the video node,
similar to codecs, video processors (like MTK MDP) and so on.

Also please see my comments inline.

> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  drivers/media/platform/mtk-isp/Makefile       |   16 +
>  drivers/media/platform/mtk-isp/fd/Makefile    |   25 +
>  .../media/platform/mtk-isp/fd/mtk_fd-dev.c    |  754 +++++++++++
>  .../media/platform/mtk-isp/fd/mtk_fd-dev.h    |  315 +++++
>  drivers/media/platform/mtk-isp/fd/mtk_fd-hw.h |  158 +++
>  .../media/platform/mtk-isp/fd/mtk_fd-smem.c   |  322 +++++
>  .../media/platform/mtk-isp/fd/mtk_fd-smem.h   |   39 +
>  .../media/platform/mtk-isp/fd/mtk_fd-v4l2.c   | 1171 +++++++++++++++++
>  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c |  555 ++++++++

This is a small driver. Please just put all the code in one file. (Except
the smem stuff, which should go away.)

>  9 files changed, 3355 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-dev.c
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-dev.h
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-hw.h
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-smem.c
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-smem.h
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd-v4l2.c
>  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> 
> diff --git a/drivers/media/platform/mtk-isp/Makefile b/drivers/media/platform/mtk-isp/Makefile
> new file mode 100644
> index 000000000000..5e3a9aa7f8b2
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/Makefile
> @@ -0,0 +1,16 @@
> +#
> +# Copyright (C) 2018 MediaTek Inc.
> +#
> +# This program is free software: you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> +# GNU General Public License for more details.
> +#
> +
> +ifeq ($(CONFIG_VIDEO_MEDIATEK_FD_SUPPORT),y)

There is no value in having "SUPPORT" in the Kconfig symbol name. It just
makes it unnecessarily long.

> +obj-y += fd/
> +endif

You can just add this directly in drivers/media/platform/Makefile. No need
for this intermediate file.

Also, the driver should be compilable as a module too.

> diff --git a/drivers/media/platform/mtk-isp/fd/Makefile b/drivers/media/platform/mtk-isp/fd/Makefile
> new file mode 100644
> index 000000000000..f2b64cf53da9
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/Makefile
> @@ -0,0 +1,25 @@
> +#
> +# Copyright (C) 2018 MediaTek Inc.
> +#
> +# This program is free software: you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> +# GNU General Public License for more details.
> +#
> +$(info $(srctree))
> +ccflags-y += -I$(srctree)/drivers/media/platform/mtk-mdp3
> +
> +obj-y += mtk_fd_40.o
> +obj-y += mtk_fd-v4l2.o
> +
> +# To provide alloc context managing memory shared
> +# between CPU and camera coprocessor
> +obj-y += mtk_fd-smem.o
> +
> +# Utilits to provide frame-based streaming model
> +# with v4l2 user interfaces
> +obj-y += mtk_fd-dev.o

This wouldn't work if the driver is compiled as a module.
Please use something like if you have more than 1 object.

	mtk-fd-objs += list of .o objects

	obj-$(CONFIG_VIDEO_MEDIATEK_FD) += mtk-fd.o

Otherwise just use the last line directly.

> diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.c b/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.c
> new file mode 100644
> index 000000000000..207e5d20ad46
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.c
> @@ -0,0 +1,754 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Frederic Chen <frederic.chen@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */

No need for this text if there is SPDX.

[snip]
> diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.h b/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.h
> new file mode 100644
> index 000000000000..c13627f2bac4
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd-dev.h
> @@ -0,0 +1,315 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Frederic Chen <frederic.chen@mediatek.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef _MTK_FD_DEV_H_
> +#define _MTK_FD_DEV_H_
> +
> +#include <linux/types.h>
> +#include <linux/platform_device.h>
> +#include <media/v4l2-device.h>
> +#include <media/videobuf2-v4l2.h>
> +
> +#include "mtk_fd-hw.h"
> +#include "mtk_fd-smem.h"
> +
> +#define MTK_FD_PIPE_ID_STREAM_0				0
> +#define MTK_FD_PIPE_ID_STREAM_1				1
> +#define MTK_FD_PIPE_ID_TOTAL_NUM			2
> +
> +#define MTK_FD_VIDEO_NODE_ID_YUV_OUT			0
> +#define MTK_FD_VIDEO_NODE_ID_CONFIG_OUT			1
> +#define MTK_FD_VIDEO_NODE_ID_OUT_TOTAL_NUM		2
> +#define MTK_FD_VIDEO_NODE_ID_CAPTURE			2
> +#define MTK_FD_VIDEO_NODE_ID_CAPTURE_TOTAL_NUM		1
> +#define MTK_FD_VIDEO_NODE_ID_TOTAL_NUM \
> +	(MTK_FD_VIDEO_NODE_ID_OUT_TOTAL_NUM + \
> +	MTK_FD_VIDEO_NODE_ID_CAPTURE_TOTAL_NUM)
> +
> +#define MTK_FD_VIDEO_NODE_ID_NO_MASTER			-1
> +
> +#define MTK_FD_OUTPUT_MIN_WIDTH				2U
> +#define MTK_FD_OUTPUT_MIN_HEIGHT			2U
> +#define MTK_FD_OUTPUT_MAX_WIDTH				5376U
> +#define MTK_FD_OUTPUT_MAX_HEIGHT			4032U
> +#define MTK_FD_CAPTURE_MIN_WIDTH			2U
> +#define MTK_FD_CAPTURE_MIN_HEIGHT			2U
> +#define MTK_FD_CAPTURE_MAX_WIDTH			5376U
> +#define MTK_FD_CAPTURE_MAX_HEIGHT			4032U
> +
> +#define MTK_FD_PIPE_MEDIA_MODEL_NAME	"MTK-FD-V4L2"
> +#define MTK_FD_PIPE_NAME_STREAM_0	MTK_FD_PIPE_MEDIA_MODEL_NAME
> +#define MTK_FD_PIPE_NAME_STREAM_1	"MTK-FD-V4L2-STREAM-1"
> +
> +#define MTK_FD_DEV_META_BUF_DEFAULT_SIZE		(1110 * 1024)
> +
> +/*
> + * Supported format and the information used for
> + * size calculation
> + */
> +struct mtk_fd_dev_meta_format {
> +	u32 dataformat;
> +	u32 max_buffer_size;
> +	u8 flags;
> +};
> +
> +/* MDP part private format definitation */
> +struct mtk_fd_dev_mdp_format {
> +	u32 pixelformat;
> +	u32 mdp_color;
> +	u32 colorspace;
> +	u8 depth[VIDEO_MAX_PLANES];
> +	u8 row_depth[VIDEO_MAX_PLANES];
> +	u8 num_planes;
> +	u8 walign;
> +	u8 halign;
> +	u8 salign;
> +	u32 flags;
> +};
> +
> +struct mtk_fd_dev_format {
> +	union {
> +		struct mtk_fd_dev_meta_format meta;
> +		struct mtk_fd_dev_mdp_format img;
> +	} fmt;
> +};

This looks like a copy/paste from the DIP driver. Please merge the 3
structures above into 1 as suggested in review of that driver.

[snip]
> diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd-hw.h b/drivers/media/platform/mtk-isp/fd/mtk_fd-hw.h
> new file mode 100644
> index 000000000000..40e09d66c479
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd-hw.h
> @@ -0,0 +1,158 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + * Copyright (C) 2015 MediaTek Inc.
> + *
> + * This program is free software: you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __MTK_FD_HW_H__
> +#define __MTK_FD_HW_H__
> +
> +#include <linux/io.h>
> +#define SIG_ERESTARTSYS 512
> +
> +#define FD_WR32(v, a) \
> +do { \
> +	__raw_writel((v), (void __force __iomem *)((a))); \
> +	mb(); /* ensure written */ \
> +} while (0)
> +
> +#define FD_RD32(addr) ioread32((void *)addr)
> +
> +#define FD_INT_EN		0x15c
> +#define FD_INT			0x168
> +#define FD_RESULT		0x178
> +#define FD_IRQ_MASK		0x001
> +
> +#define RS_BUF_SIZE_MAX		2288788
> +#define VA_OFFSET		0xffff000000000000
> +
> +#define MTK_FD_MAX_NO		1024
> +#define MAX_FACE_SEL_NUM	(MTK_FD_MAX_NO + 2)
> +
> +/* The max number of face sizes could be detected, for feature scaling */
> +#define FACE_SIZE_NUM_MAX	14
> +
> +/* FACE_SIZE_NUM_MAX + 1, first scale for input image W/H */
> +#define FD_SCALE_NUM		15
> +
> +/* Number of Learning data sets */
> +#define LEARNDATA_NUM		18
> +
> +#define mtk_fd_us_to_jiffies(us) \
> +	((((unsigned long)(us) / 1000) * HZ + 512) >> 10)
> +

Uhm, looking at the arbitrary numbers involved in this computation I'm
afraid to even ask what this macro is expected to do.

Judging by the name, why not just use usecs_to_jiffies()?

[snip]
> diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd-smem.h b/drivers/media/platform/mtk-isp/fd/mtk_fd-smem.h
> new file mode 100644
> index 000000000000..758a4ab68ec2
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd-smem.h
> @@ -0,0 +1,39 @@
[snip]
> +
> +struct mtk_fd_smem_dev {
> +	struct device dev;
> +	struct sg_table sgt;
> +	struct page **smem_pages;
> +	int num_smem_pages;
> +	phys_addr_t smem_base;
> +	dma_addr_t smem_dma_base;
> +	int smem_size;
> +};
> +
> +phys_addr_t mtk_fd_smem_iova_to_phys(struct mtk_fd_smem_dev *smem_dev,
> +				     dma_addr_t iova);
> +int mtk_fd_smem_alloc_dev_init(struct mtk_fd_smem_dev *smem_dev,
> +			       struct device *default_alloc_dev);
> +void mtk_fd_smem_alloc_dev_release(struct mtk_fd_smem_dev *smem_dev);
> +

Please remove this custom smem thing as we should just use dma_alloc_*()
from the right struct device attached to the right reserved memory pool.

[snip]
> +static int mtk_fd_videoc_enum_fmt(struct file *file, void *fh,
> +				  struct v4l2_fmtdesc *f)

It's "vidioc".

> +{
> +	struct mtk_fd_video_device *node = mtk_fd_file_to_node(file);
> +
> +	if (f->index > node->desc->num_fmts ||
> +	    f->type != node->dev_q.vbq.type)

No need to check the type.

> +		return -EINVAL;
> +
> +	strscpy(f->description, node->desc->description,
> +		sizeof(f->description));
> +
> +	f->pixelformat = node->desc->fmts[f->index].fmt.img.pixelformat;
> +	f->flags = 0;
> +
> +	return 0;
> +}
> +
> +static int mtk_fd_meta_enum_format(struct file *file,
> +				   void *fh, struct v4l2_fmtdesc *f)

Please name the functions consistently. Above it has the vidioc prefix (with
typo) and enum_fmt, but here it doesn't have a prefix and is enum_format.

> +{
> +	struct mtk_fd_video_device *node = mtk_fd_file_to_node(file);
> +
> +	if (f->index > 0 || f->type != node->dev_q.vbq.type)

There is no need to check the type, as the core should already check it for
you.

> +		return -EINVAL;
> +
> +	strscpy(f->description, node->desc->description,
> +		sizeof(f->description));
> +
> +	f->pixelformat = node->vdev_fmt.fmt.meta.dataformat;

Also set flags to 0.

> +
> +	return 0;
> +}
> +
> +static int mtk_fd_videoc_g_meta_fmt(struct file *file,
> +				    void *fh, struct v4l2_format *f)
> +{
> +	struct mtk_fd_video_device *node = mtk_fd_file_to_node(file);

The Linux coding style requires 1 blank line between variable declarations
and code.

> +	*f = node->vdev_fmt;
> +
> +	return 0;
> +}
> +
> +static int
> +mtk_fd_vidioc_subscribe_event(struct v4l2_fh *fh,
> +			      const struct v4l2_event_subscription *sub)
> +{
> +	switch (sub->type) {
> +	case V4L2_EVENT_CTRL:
> +		return v4l2_ctrl_subscribe_event(fh, sub);
> +	default:
> +		return -EINVAL;
> +	}
> +}

This driver doesn't seem to support any controls, so there is no point in
supporting the above event.

[snip]
> +static void mtk_fd_node_to_v4l2(struct mtk_fd_pipe *fd_pipe,
> +				u32 idx,
> +				 struct video_device *vdev,
> +				 struct v4l2_format *f)
> +{
> +	struct mtk_fd_video_device *node = &fd_pipe->nodes[idx];
> +
> +	vdev->ioctl_ops = node->desc->ops;
> +	vdev->device_caps = V4L2_CAP_STREAMING | node->desc->cap;
> +	f->type = node->desc->buf_type;
> +	mtk_fd_pipe_load_default_fmt(fd_pipe, node, f);
> +}

This function is only called once, is very short and has a very misleading
name (this kind of name is used for functions that convert things).
Just move the code back to the caller.

> +
> +int mtk_fd_dev_media_register(struct device *dev,
> +			      struct media_device *media_dev,
> +			      const char *model)
> +{
> +	int ret = 0;
> +
> +	media_dev->dev = dev;
> +	dev_dbg(dev, "setup media_dev.dev: %p\n",
> +		media_dev->dev);

I don't think these logs every second line are useful even for debugging.
Please remove.

> +
> +	strlcpy(media_dev->model, model,
> +		sizeof(media_dev->model));

No need to pass model here as an argument. Just write the string here
directly.

> +	dev_dbg(dev, "setup media_dev.model: %s\n",
> +		media_dev->model);
> +
> +	snprintf(media_dev->bus_info, sizeof(media_dev->bus_info),
> +		 "platform:%s", dev_name(dev));
> +	dev_dbg(dev, "setup media_dev.bus_info: %s\n",
> +		media_dev->bus_info);
> +
> +	media_dev->hw_revision = 0;
> +	dev_dbg(dev, "setup media_dev.hw_revision: %d\n",
> +		media_dev->hw_revision);

No need to explicitly initialize to 0.

> +
> +	media_dev->ops = &mtk_fd_media_req_ops;
> +
> +	dev_dbg(dev, "media_device_init: media_dev:%p\n",
> +		media_dev);
> +	media_device_init(media_dev);
> +
> +	pr_debug("Register media device: %s, %p",
> +		 media_dev->model,
> +		media_dev);
> +
> +	ret = media_device_register(media_dev);
> +
> +	if (ret) {
> +		dev_err(dev, "failed to register media device (%d)\n", ret);
> +		goto fail_media_dev;
> +	}
> +	return 0;
> +
> +fail_media_dev:
> +	media_device_unregister(media_dev);

We jump here even if media_device_register() failed. Unregistering something
that wasn't registered doesn't sound like a good idea.

> +	media_device_cleanup(media_dev);
> +
> +	return ret;
> +}

There isn't much happening in this function. Perhaps just move the code back
to the caller?

> +
> +int mtk_fd_dev_v4l2_register(struct device *dev,
> +			     struct media_device *media_dev,
> +			     struct v4l2_device *v4l2_dev)
> +{
> +	int ret = 0;

Add a blank line between variable declarations and code.

> +	/* Set up v4l2 device */
> +	v4l2_dev->mdev = media_dev;
> +	dev_dbg(dev, "setup v4l2_dev->mdev: %p",
> +		v4l2_dev->mdev);

Please clean up such debugging messages, it makes it much harder to review
the code.

> +	v4l2_dev->ctrl_handler = NULL;

No need for explicit NULL assignments, as the structure was zero-filled
already.

> +	dev_dbg(dev, "setup v4l2_dev->ctrl_handler: %p",
> +		v4l2_dev->ctrl_handler);
> +
> +	pr_debug("Register v4l2 device: %p",
> +		 v4l2_dev);

dev_dbg()? But I would still just remove it.

> +
> +	ret = v4l2_device_register(dev, v4l2_dev);
> +
> +	if (ret) {
> +		dev_err(dev, "failed to register V4L2 device (%d)\n", ret);
> +		goto fail_v4l2_dev;
> +	}
> +
> +	return 0;
> +
> +fail_v4l2_dev:
> +	media_device_unregister(media_dev);
> +	media_device_cleanup(media_dev);
> +
> +	return ret;
> +}
> +

There isn't much happening in this function. Perhaps just move the code back
to the caller?

> +int mtk_fd_pipe_v4l2_register(struct mtk_fd_pipe *fd_pipe,
> +			      struct media_device *media_dev,
> +			      struct v4l2_device *v4l2_dev)
> +{
> +	int i, ret;
> +
> +	/* Initialize miscellaneous variables */
> +	fd_pipe->streaming = 0;
> +
> +	/* Initialize subdev media entity */
> +	fd_pipe->subdev_pads = kcalloc(fd_pipe->num_nodes,
> +				       sizeof(*fd_pipe->subdev_pads),
> +					GFP_KERNEL);
> +	if (!fd_pipe->subdev_pads) {
> +		ret = -ENOMEM;
> +		goto fail_subdev_pads;

There isn't anything to clean up at this point, so just return.

> +	}
> +
> +	ret = media_entity_pads_init(&fd_pipe->subdev.entity,
> +				     fd_pipe->num_nodes,
> +				     fd_pipe->subdev_pads);
> +	if (ret) {
> +		dev_err(&fd_pipe->fd_dev->pdev->dev,
> +			"failed initialize subdev media entity (%d)\n", ret);
> +		goto fail_media_entity;

Please name the labels after the next cleanup step to happen after jumping
to it.

> +	}
> +
> +	/* Initialize subdev */
> +	v4l2_subdev_init(&fd_pipe->subdev, &mtk_fd_subdev_ops);
> +
> +	fd_pipe->subdev.entity.function =
> +		MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
> +
> +	fd_pipe->subdev.entity.ops = &mtk_fd_media_ops;
> +
> +	for (i = 0; i < fd_pipe->num_nodes; i++) {
> +		struct mtk_fd_video_device_desc *desc =
> +			fd_pipe->nodes[i].desc;
> +
> +		fd_pipe->subdev_pads[i].flags =
> +			V4L2_TYPE_IS_OUTPUT(desc->buf_type) ?
> +			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
> +	}
> +
> +	fd_pipe->subdev.flags =
> +		V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
> +	snprintf(fd_pipe->subdev.name, sizeof(fd_pipe->subdev.name),
> +		 "%s", fd_pipe->desc->name);
> +	v4l2_set_subdevdata(&fd_pipe->subdev, fd_pipe);
> +	fd_pipe->subdev.ctrl_handler = NULL;
> +	fd_pipe->subdev.internal_ops = &mtk_fd_subdev_internal_ops;

The above code registers a subdev, so it sounds like it could be a separate
function.

> +
> +	dev_dbg(&fd_pipe->fd_dev->pdev->dev,
> +		"register subdev: %s, ctrl_handler %p\n",
> +		 fd_pipe->subdev.name, fd_pipe->subdev.ctrl_handler);
> +	ret = v4l2_device_register_subdev(&fd_pipe->fd_dev->v4l2_dev,
> +					  &fd_pipe->subdev);
> +	if (ret) {
> +		dev_err(&fd_pipe->fd_dev->pdev->dev,
> +			"failed initialize subdev (%d)\n", ret);
> +		goto fail_subdev;
> +	}
> +
> +	ret = v4l2_device_register_subdev_nodes(&fd_pipe->fd_dev->v4l2_dev);
> +	if (ret) {
> +		dev_err(&fd_pipe->fd_dev->pdev->dev,
> +			"failed to register subdevs (%d)\n", ret);
> +		goto fail_subdevs;
> +	}

This isn't per-pipe, but global for the whole v4l2_device. It should be
called after all subdevs are fully initialized, to expose the device nodes
to the userspace atomically.

> +
> +	/* Create video nodes and links */
> +	for (i = 0; i < fd_pipe->num_nodes; i++) {

Please move the contents of the loop into a separate function that handles
one node.

> +		struct mtk_fd_video_device *node = &fd_pipe->nodes[i];
> +		struct video_device *vdev = &node->vdev;
> +		struct vb2_queue *vbq = &node->dev_q.vbq;
> +		struct mtk_fd_video_device_desc *desc = node->desc;
> +		u32 flags;
> +
> +		/* Initialize miscellaneous variables */
> +		mutex_init(&node->dev_q.lock);

Please just use the video_device lock for vb2 queues too. It simplifies the
overall driver locking and doesn't really have any practical performance
difference.

> +
> +		/* Initialize formats to default values */
> +		mtk_fd_node_to_v4l2(fd_pipe, i, vdev, &node->vdev_fmt);
> +
> +		/* Initialize media entities */
> +		ret = media_entity_pads_init(&vdev->entity, 1, &node->vdev_pad);
> +		if (ret) {
> +			dev_err(&fd_pipe->fd_dev->pdev->dev,

This kind of long chains of pointer dereferences signal a problem in the
design of driver structures and/or function arguments.

I'd suggest passing fd_dev to this function and also storing dev instead of
pdev inside fd_dev.

> +				"failed initialize media entity (%d)\n", ret);
> +			goto fail_vdev_media_entity;
> +		}
> +
> +		node->vdev_pad.flags = V4L2_TYPE_IS_OUTPUT(desc->buf_type) ?
> +			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
> +		vdev->entity.ops = NULL;
> +
> +		/* Initialize vbq */
> +		vbq->type = node->vdev_fmt.type;
> +		vbq->io_modes = VB2_MMAP | VB2_DMABUF;
> +		vbq->ops = &mtk_fd_vb2_ops;
> +		vbq->mem_ops = &vb2_dma_contig_memops;
> +		vbq->supports_requests = true;
> +		vbq->buf_struct_size = sizeof(struct mtk_fd_dev_buffer);
> +		vbq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;

This is a mem2mem device so the timestamps should be copied from OUTPUT to
CAPTURE. Please set the flag appropriately.

> +		vbq->min_buffers_needed = 0;
> +		/* Put the process hub sub device in the vb2 private data*/
> +		vbq->drv_priv = fd_pipe;
> +		vbq->lock = &node->dev_q.lock;
> +		ret = vb2_queue_init(vbq);
> +		if (ret) {
> +			dev_err(&fd_pipe->fd_dev->pdev->dev,
> +				"failed to initialize video queue (%d)\n", ret);
> +			goto fail_vdev;
> +		}
> +
> +		/* Initialize vdev */
> +		snprintf(vdev->name, sizeof(vdev->name), "%s %s",
> +			 fd_pipe->desc->name,
> +			 node->desc->name);
> +		vdev->release = video_device_release_empty;
> +		vdev->fops = &mtk_fd_v4l2_fops;
> +		vdev->lock = &node->dev_q.lock;

Aha, so it's in fact the same lock. Please move it to the "node" struct
then.

> +		vdev->ctrl_handler = NULL;
> +		vdev->v4l2_dev = &fd_pipe->fd_dev->v4l2_dev;
> +		vdev->queue = &node->dev_q.vbq;
> +		vdev->vfl_dir = V4L2_TYPE_IS_OUTPUT(desc->buf_type) ?
> +			VFL_DIR_TX : VFL_DIR_RX;
> +		video_set_drvdata(vdev, fd_pipe);
> +		pr_debug("register vdev: %s\n", vdev->name);

dev_dbg()?

> +		ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
> +		if (ret) {
> +			dev_err(&fd_pipe->fd_dev->pdev->dev,
> +				"failed to register video device (%d)\n", ret);
> +			goto fail_vdev;
> +		}
> +
> +		/* Create link between video node and the subdev pad */
> +		flags = 0;
> +		if (desc->dynamic)
> +			flags |= MEDIA_LNK_FL_DYNAMIC;
> +		if (node->enabled)
> +			flags |= MEDIA_LNK_FL_ENABLED;
> +		if (node->immutable)
> +			flags |= MEDIA_LNK_FL_IMMUTABLE;

Wouldn't all the nodes be always ENABLED and IMMUTABLE and not DYNAMIC for
this driver?

> +
> +		if (V4L2_TYPE_IS_OUTPUT(desc->buf_type))
> +			ret = media_create_pad_link(&vdev->entity, 0,
> +						    &fd_pipe->subdev.entity,
> +						    i, flags);
> +		else
> +			ret = media_create_pad_link(&fd_pipe->subdev.entity,
> +						    i, &vdev->entity, 0,
> +						    flags);
> +

No need for this blank line.

> +		if (ret)
> +			goto fail_link;
> +	}
> +
> +	return 0;
> +
> +	for (; i >= 0; i--) {
> +fail_link:
> +		video_unregister_device(&fd_pipe->nodes[i].vdev);
> +fail_vdev:
> +		vb2_queue_release(&fd_pipe->nodes[i].dev_q.vbq);
> +		media_entity_cleanup(&fd_pipe->nodes[i].vdev.entity);
> +fail_vdev_media_entity:
> +		mutex_destroy(&fd_pipe->nodes[i].dev_q.lock);
> +	}
> +fail_subdevs:
> +	v4l2_device_unregister_subdev(&fd_pipe->subdev);
> +fail_subdev:
> +	media_entity_cleanup(&fd_pipe->subdev.entity);
> +fail_media_entity:
> +	kfree(fd_pipe->subdev_pads);
> +fail_subdev_pads:
> +	v4l2_device_unregister(&fd_pipe->fd_dev->v4l2_dev);

We haven't registered the v4l2_device in this function.

> +	pr_err("fail_v4l2_dev: media_device_unregister and clenaup:%p",
> +	       &fd_pipe->fd_dev->mdev);

Error messages should be printed at the place of the failure.

> +	media_device_unregister(&fd_pipe->fd_dev->mdev);
> +	media_device_cleanup(&fd_pipe->fd_dev->mdev);

We haven't registered or initialized media_device in this function.

> +
> +	return ret;
> +}
> +
> +int mtk_fd_pipe_v4l2_unregister(struct mtk_fd_pipe *fd_pipe)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < fd_pipe->num_nodes; i++) {
> +		video_unregister_device(&fd_pipe->nodes[i].vdev);
> +		vb2_queue_release(&fd_pipe->nodes[i].dev_q.vbq);
> +		media_entity_cleanup(&fd_pipe->nodes[i].vdev.entity);
> +		mutex_destroy(&fd_pipe->nodes[i].dev_q.lock);
> +	}
> +
> +	v4l2_device_unregister_subdev(&fd_pipe->subdev);
> +	media_entity_cleanup(&fd_pipe->subdev.entity);
> +	kfree(fd_pipe->subdev_pads);
> +	v4l2_device_unregister(&fd_pipe->fd_dev->v4l2_dev);
> +	media_device_unregister(&fd_pipe->fd_dev->mdev);
> +	media_device_cleanup(&fd_pipe->fd_dev->mdev);

Please make this consistent with the registration functions. For each
registration function there should be a matching unregister function that
cleans up only whatever was registered in that function.

> +
> +	return 0;
> +}
> +
> +void mtk_fd_v4l2_buffer_done(struct vb2_buffer *vb,
> +			     enum vb2_buffer_state state)
> +{
> +	struct mtk_fd_pipe *fd_pipe;
> +	struct mtk_fd_video_device *node;
> +
> +	fd_pipe = vb2_get_drv_priv(vb->vb2_queue);
> +	node = mtk_fd_vbq_to_node(vb->vb2_queue);
> +	dev_dbg(&fd_pipe->fd_dev->pdev->dev,
> +		"%s:%s: return buf, idx(%d), state(%d)\n",
> +		fd_pipe->desc->name, node->desc->name,
> +		vb->index, state);
> +	vb2_buffer_done(vb, state);
> +}

No need for this function. Just call vb2_buffer_done() directly from the
caller. (I already mentioned this in MTK DIP driver review. Please
coordinate with other driver owners and make sure that similar comments are
addressed in all drivers...)

> +
> +/********************************************
> + * MTK FD V4L2 Settings *
> + ********************************************/
> +
> +static const struct v4l2_ioctl_ops mtk_fd_v4l2_video_out_ioctl_ops = {
> +	.vidioc_querycap = mtk_fd_videoc_querycap,
> +	.vidioc_enum_framesizes = mtk_fd_videoc_enum_framesizes,
> +	.vidioc_enum_fmt_vid_cap_mplane = mtk_fd_videoc_enum_fmt,
> +	.vidioc_g_fmt_vid_cap_mplane = mtk_fd_videoc_g_fmt,
> +	.vidioc_s_fmt_vid_cap_mplane = mtk_fd_videoc_s_fmt,
> +	.vidioc_try_fmt_vid_cap_mplane = mtk_fd_videoc_try_fmt,

No need for *cap* ops if this is only for an OUTPUT device.

> +	.vidioc_enum_fmt_vid_out_mplane = mtk_fd_videoc_enum_fmt,
> +	.vidioc_g_fmt_vid_out_mplane = mtk_fd_videoc_g_fmt,
> +	.vidioc_s_fmt_vid_out_mplane = mtk_fd_videoc_s_fmt,
> +	.vidioc_try_fmt_vid_out_mplane = mtk_fd_videoc_try_fmt,
> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> +	.vidioc_querybuf = vb2_ioctl_querybuf,
> +	.vidioc_qbuf = vb2_ioctl_qbuf,
> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> +	.vidioc_streamon = vb2_ioctl_streamon,
> +	.vidioc_streamoff = vb2_ioctl_streamoff,
> +	.vidioc_expbuf = vb2_ioctl_expbuf,
> +	.vidioc_subscribe_event = mtk_fd_vidioc_subscribe_event,
> +	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
> +
> +};
> +
> +static const struct v4l2_ioctl_ops mtk_fd_v4l2_video_cap_ioctl_ops = {
> +	.vidioc_querycap = mtk_fd_videoc_querycap,
> +	.vidioc_enum_framesizes = mtk_fd_videoc_enum_framesizes,
> +	.vidioc_enum_fmt_vid_cap_mplane = mtk_fd_videoc_enum_fmt,
> +	.vidioc_g_fmt_vid_cap_mplane = mtk_fd_videoc_g_fmt,
> +	.vidioc_s_fmt_vid_cap_mplane = mtk_fd_videoc_s_fmt,
> +	.vidioc_try_fmt_vid_cap_mplane = mtk_fd_videoc_try_fmt,
> +	.vidioc_enum_fmt_vid_out_mplane = mtk_fd_videoc_enum_fmt,
> +	.vidioc_g_fmt_vid_out_mplane = mtk_fd_videoc_g_fmt,
> +	.vidioc_s_fmt_vid_out_mplane = mtk_fd_videoc_s_fmt,
> +	.vidioc_try_fmt_vid_out_mplane = mtk_fd_videoc_try_fmt,
> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> +	.vidioc_querybuf = vb2_ioctl_querybuf,
> +	.vidioc_qbuf = vb2_ioctl_qbuf,
> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> +	.vidioc_streamon = vb2_ioctl_streamon,
> +	.vidioc_streamoff = vb2_ioctl_streamoff,
> +	.vidioc_expbuf = vb2_ioctl_expbuf,
> +	.vidioc_subscribe_event = mtk_fd_vidioc_subscribe_event,
> +	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
> +
> +};

This structure is unused.

> +
> +static const struct v4l2_ioctl_ops mtk_fd_v4l2_meta_out_ioctl_ops = {
> +	.vidioc_querycap = mtk_fd_videoc_querycap,
> +
> +	.vidioc_enum_fmt_meta_cap = mtk_fd_meta_enum_format,
> +	.vidioc_g_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_s_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_try_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +
> +	.vidioc_enum_fmt_meta_out = mtk_fd_meta_enum_format,
> +	.vidioc_g_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_s_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_try_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +
> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> +	.vidioc_querybuf = vb2_ioctl_querybuf,
> +	.vidioc_qbuf = vb2_ioctl_qbuf,
> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> +	.vidioc_streamon = vb2_ioctl_streamon,
> +	.vidioc_streamoff = vb2_ioctl_streamoff,
> +	.vidioc_expbuf = vb2_ioctl_expbuf,
> +};
> +
> +static const struct v4l2_ioctl_ops mtk_fd_v4l2_meta_cap_ioctl_ops = {
> +	.vidioc_querycap = mtk_fd_videoc_querycap,
> +
> +	.vidioc_enum_fmt_meta_cap = mtk_fd_meta_enum_format,
> +	.vidioc_g_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_s_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_try_fmt_meta_cap = mtk_fd_videoc_g_meta_fmt,
> +
> +	.vidioc_enum_fmt_meta_out = mtk_fd_meta_enum_format,
> +	.vidioc_g_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_s_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +	.vidioc_try_fmt_meta_out = mtk_fd_videoc_g_meta_fmt,
> +
> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> +	.vidioc_querybuf = vb2_ioctl_querybuf,
> +	.vidioc_qbuf = vb2_ioctl_qbuf,
> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> +	.vidioc_streamon = vb2_ioctl_streamon,
> +	.vidioc_streamoff = vb2_ioctl_streamoff,
> +	.vidioc_expbuf = vb2_ioctl_expbuf,
> +};

Aren't the 2 structures above identical? Should be merged if so.

[snip]
> +int mtk_fd_dev_v4l2_init(struct mtk_fd_dev *fd_dev)
> +{
> +	struct media_device *media_dev;
> +	struct v4l2_device *v4l2_dev;
> +	struct mtk_fd_smem_dev *smem_alloc_dev = &fd_dev->smem_alloc_dev;
> +	int i;
> +	int ret = 0;

Please don't initialize local variables unless that's needed by the logic.
It prevents the compiler from detecting missing assignments.

> +
> +	media_dev = &fd_dev->mdev;
> +	v4l2_dev = &fd_dev->v4l2_dev;

Just pass fd_dev to the functions below. No need to extract only some
fields.

> +
> +	ret = mtk_fd_dev_media_register(&fd_dev->pdev->dev,
> +					media_dev,
> +					 MTK_FD_PIPE_MEDIA_MODEL_NAME);

We should bail out on error.

> +
> +	ret = mtk_fd_dev_v4l2_register(&fd_dev->pdev->dev,
> +				       media_dev,
> +					v4l2_dev);

We should clean up the previous steps and bail out on error.

> +
> +	ret = mtk_fd_smem_alloc_dev_init(smem_alloc_dev, &fd_dev->pdev->dev);

Ditto.

> +
> +	for (i = 0; i < MTK_FD_PIPE_ID_TOTAL_NUM; i++) {
> +		ret = mtk_fd_pipe_init(&fd_dev->fd_pipe[i], fd_dev,
> +				       &pipe_settings[i],
> +					media_dev, v4l2_dev, smem_alloc_dev);
> +		if (ret) {
> +			dev_err(&fd_dev->pdev->dev,
> +				"%s: Pipe id(%d) init failed(%d)\n",
> +				fd_dev->fd_pipe[i].desc->name,
> +				i, ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +void mtk_fd_dev_v4l2_release(struct mtk_fd_dev *fd_dev)
> +{
> +	int i = 0;

No need for initialization.

> +
> +	if (fd_dev)

Why could it ever be NULL?

> +		for (i = 0; i < MTK_FD_PIPE_ID_TOTAL_NUM; i++)
> +			mtk_fd_pipe_release(&fd_dev->fd_pipe[i]);
> +
> +	mtk_fd_smem_alloc_dev_release(&fd_dev->smem_alloc_dev);
> +}
> +

[snip]

> +static int mtk_fd_probe(struct platform_device *pdev)
> +{
> +	struct mtk_fd_dev *fd_dev;
> +	struct mtk_fd_hw *fd_hw;
> +	struct device_node *node;
> +	struct platform_device *larb_pdev;
> +	int irq_num;
> +	int ret;
> +
> +	fd_dev = devm_kzalloc(&pdev->dev, sizeof(*fd_dev), GFP_KERNEL);
> +

nit: No need for this blank line, because the if below is directly related.

> +	if (!fd_dev)
> +		return -ENOMEM;
> +
> +	dev_set_drvdata(&pdev->dev, fd_dev);
> +	fd_hw = &fd_dev->fd_hw;
> +
> +	if (!fd_hw) {

How is this possible for a struct member?

> +		dev_err(&pdev->dev, "Unable to allocate fd_hw\n");
> +		return -ENOMEM;
> +	}
> +
> +	fd_dev->pdev = pdev;
> +
> +	irq_num = irq_of_parse_and_map(pdev->dev.of_node, FD_IRQ_IDX);

We should use platform_get_irq() here instead, because the IRQs were already
parsed for us when the platform core created the platform_device.

> +	ret = request_irq(irq_num, (irq_handler_t)mtk_fd_irq,
> +			  IRQF_TRIGGER_NONE, FD_DRVNAME, fd_hw);

It should be a device name, not driver name. One would normally use
dev_name() here.

Also devm_request_irq() should simplify the cleanup.

> +	if (ret) {
> +		dev_dbg(&pdev->dev, "%s request_irq fail, irq=%d\n",
> +			__func__, irq_num);

This is an error, so dev_err().

> +		return ret;
> +	}
> +	dev_dbg(&pdev->dev, "irq_num=%d\n", irq_num);

That's probably not very useful.

> +
> +	node = of_parse_phandle(pdev->dev.of_node, "mediatek,larb", 0);
> +	if (!node) {
> +		dev_err(&pdev->dev, "no mediatek, larb found");
> +		return -EINVAL;
> +	}
> +	larb_pdev = of_find_device_by_node(node);
> +	if (!larb_pdev) {
> +		dev_err(&pdev->dev, "no mediatek, larb device found");
> +		return -EINVAL;
> +	}
> +	fd_hw->larb_dev = &larb_pdev->dev;
> +

LARBs are handled automatically by the IOMMU driver, no need to do anything
with them explicitly anymore.

> +	node = pdev->dev.of_node;
> +	if (!node) {
> +		dev_err(&pdev->dev, "find fd node failed!!!\n");
> +		return -ENODEV;
> +	}
> +
> +	fd_hw->fd_base = of_iomap(node, 0);

One would normally use platform_get_resource() and devm_ioremap_resource()
here.

> +
> +	if (!fd_hw->fd_base) {
> +		dev_err(&pdev->dev, "unable to map fd node!!!\n");
> +		return -ENODEV;
> +	}
> +
> +	dev_dbg(&pdev->dev, "fd_hw->fd_base: %lx\n",
> +		(unsigned long)fd_hw->fd_base);

Not very useful either.

> +
> +	fd_hw->fd_clk = devm_clk_get(&pdev->dev, "FD_CLK_IMG_FD");

Clock names should be lowercase and name just inputs of the IP block, so
simply "fd", should be enough.

> +	if (IS_ERR(fd_hw->fd_clk)) {
> +		dev_err(&pdev->dev, "cannot get FD_CLK_IMG_FD clock\n");
> +		return PTR_ERR(fd_hw->fd_clk);
> +	}
> +
> +	pm_runtime_enable(&pdev->dev);
> +	atomic_set(&fd_hw->fd_user_cnt, 0);
> +	init_waitqueue_head(&fd_hw->wq);
> +	mutex_init(&fd_hw->fd_hw_lock);
> +	fd_hw->fd_irq_result = 0;
> +
> +	ret = mtk_fd_dev_v4l2_init(fd_dev);
> +	if (ret)
> +		dev_err(&pdev->dev, "v4l2 init failed: %d\n", ret);

We should clean up and return the error code, not 0.

> +
> +	dev_info(&pdev->dev, "Mediatek Camera FD driver probe.\n");
> +
> +	return 0;
> +}
> +
> +static int mtk_fd_remove(struct platform_device *pdev)
> +{
> +	int irq_i4;
> +	struct mtk_fd_dev *fd_dev = dev_get_drvdata(&pdev->dev);
> +
> +	if (fd_dev) {
> +		mtk_fd_dev_v4l2_release(fd_dev);
> +	} else {

This is impossible.

> +		dev_err(&pdev->dev, "Can't find fd driver data\n");
> +		return -EINVAL;
> +	}
> +
> +	mutex_destroy(&fd_dev->fd_hw.fd_hw_lock);
> +	pm_runtime_disable(&pdev->dev);
> +
> +	irq_i4 = platform_get_irq(pdev, 0);
> +	free_irq(irq_i4, NULL);
> +	kfree(fd_dev);

fd_dev was allocated using devm_kzalloc(), no need to free it explicitly.

> +
> +	return 0;
> +}
> +
> +static int mtk_fd_suspend(struct device *dev)
> +{
> +	struct mtk_fd_dev *fd_dev;
> +	int ret;
> +
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	fd_dev = dev_get_drvdata(dev);
> +
> +	if (atomic_read(&fd_dev->fd_hw.fd_user_cnt) > 0) {
> +		ret = pm_runtime_put_sync(fd_dev->fd_hw.larb_dev);
> +		clk_disable_unprepare(fd_dev->fd_hw.fd_clk);
> +		return ret;
> +	}

This isn't going to work, because the hardware may be still processing a
frame at this point. You need a way to ensure that the hardware goes idle
here first and then in resume, you need to make the hardware continue when
it left before suspend.

> +	return 0;
> +}
> +
> +static int mtk_fd_resume(struct device *dev)
> +{
> +	struct mtk_fd_dev *fd_dev;
> +	int ret;
> +
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	fd_dev = dev_get_drvdata(dev);
> +
> +	if (atomic_read(&fd_dev->fd_hw.fd_user_cnt) > 0) {
> +		ret = pm_runtime_get_sync(fd_dev->fd_hw.larb_dev);
> +		if (ret) {
> +			dev_dbg(&fd_dev->pdev->dev, "open larb clk failed\n");
> +			return ret;
> +		}
> +
> +		ret = clk_prepare_enable(fd_dev->fd_hw.fd_clk);
> +		if (ret) {
> +			dev_dbg(&fd_dev->pdev->dev, "open fd clk failed\n");
> +			return ret;
> +		}
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops mtk_fd_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(mtk_fd_suspend, mtk_fd_resume)
> +	SET_RUNTIME_PM_OPS(mtk_fd_suspend, mtk_fd_resume, NULL)
> +};
> +
> +static const struct of_device_id mtk_fd_of_ids[] = {
> +	{ .compatible = "mediatek,mt8183-fd", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, mtk_fd_of_ids);
> +
> +static struct platform_driver mtk_fd_driver = {
> +	.probe   = mtk_fd_probe,
> +	.remove  = mtk_fd_remove,
> +	.driver  = {
> +		.name  = FD_DRVNAME,

Please just set the name explicitly here and remove the macro.

> +		.of_match_table = mtk_fd_of_ids,

Please use of_match_ptr().

> +		.pm = &mtk_fd_pm_ops,
> +	}
> +};
> +module_platform_driver(mtk_fd_driver);
> +
> +MODULE_DESCRIPTION("Mediatek FD driver");
> +MODULE_LICENSE("GPL");

GPL v2

> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
