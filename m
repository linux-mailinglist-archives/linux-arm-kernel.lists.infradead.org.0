Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B144FC174
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgZHwI6vIOp3Pg39rnDy4gFkvL937fZqQ0tdhCbOV6w=; b=PTNGOj6ILMmNJh
	LA/AHBfeycTb/O1Cr0zsLqaiyU9upsLBl3QdZvGX1K8ylLrh9QBKHyvGYU4PGtQiTgVd9O2Kcjp0L
	eH9RVT39rarMlqhmB0XfnwuackRiRJRthKRwBVP0V9JlbjpUFECGnBZnNNbCQO/xiq1ohjRPzRs5g
	8rrqGFD12K7eolt8+O/GYgLOLfZc1Qt4NlPNgCAwIwBp0zEaq3frhll+gz9ZcD9nwwh7Tuv2qan+n
	s5QQ4mGWioS934EyOPTAO31J5QaE6hajFqynLH/rBM5k+10uAn5ApjF0/oCbUJ684u2+qy31l1Iux
	Q+/tjy5W3XiEPRASngPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAOA-0002wS-R6; Thu, 14 Nov 2019 08:22:02 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVANz-0002vP-S5; Thu, 14 Nov 2019 08:21:53 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VANri8XnO5b4MVANvin0UB; Thu, 14 Nov 2019 09:21:48 +0100
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
Date: Thu, 14 Nov 2019 09:21:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114051242.14651-3-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFzl5hYLISanSAOy5YJH10k6V2JleNvifodOgbTuK7g2UOD60o4XUFaAYIOZAvR1InLiLVdHYCzJ9Z6L6C4CnUomR6mLGajHDaCkCg396LZ1f9r9aQ+G
 gN2iuawntRhSMYngC9fhq8AECGbNTg3V3xInnxIzl684TY5H1o0tGVd26/PLCaKf37Av7VC7bjkT9tsdSXH49eqV9zMWLaumD9vOrLehmSYa6q2rELD35Ohr
 bKxEUaVDQtO9hDAAbwXrR7DiVBDDo+Svsjs1aHgObyJgvDxo8Vx5hqnvP7JSFye3t96/G9ZNbsiQ9lskGUJ2gZiWdAGyFA3v7XXSYTyvODNRvD5yq0Uu4WCL
 00cqCxXWvysVU7BTzFcUcxwKgqZrOEUVnqql4YG0Un+IX9IkdtP/z/ojRRRqQ3ihHxExeNC8OLk9AyvkYAcXefryb2YA2fbIqtHsi0OHkqn4nOYiymNuHYq9
 nC4eSS+K/38be8Su3mgOtYdQuFFnCKgYQOlAc8epdCCRDNaqrKKIHafQc2jEedzhXAw5OULgDoI2+MKnXSu52RCRO+h0aaMkf0SVP0NH8qUPNAM+DTYCqyvZ
 ejppe1um+UzFoGDaIJ2s+t6IGO7JI0EbP9YDvhg/H0xYE1rMBur8sN0W26zN6pVgkd3iC2glZk92UCJD8gYbV2muAxNldIvcoqlxht07xn1q72CJhXSPP+/1
 Bd3SO97hTE65lZzn8Clp7AClF1ITCc8HwVnVmmUp9cHEje9RGLKDwCwqW5bX1lbhbIRAuhYI9SGnDX7nTuVTC3fn2kHIiGr4PTyQg00JqoKj4IPtdvlhfX15
 Gu8UzEiCgEfC2/ey6PHQ+Sx1aYo+uX8fiwpBk2Lj1x4dHanYS3zayIeRUdlcBRYvXqKLnCR3cPXAgbh3TmcXcgee4AEozxdMc9T1ZtVbfForxx6qAfvLrxLP
 lRF/uWKSvM8qLQYIS6Yf5/ATxospbYafk/bdIu5LzLvBuN8qXdd8oimrMY6GmiFjG6VauawshMbMMhZEKvWF7fh0n/Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_002152_066824_4DF91A02 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, eddie.cai.linux@gmail.com, heiko@sntech.de,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com, zyc@rock-chips.com,
 jacob-chen@iotwrt.com, hans.verkuil@cisco.com, zhengsq@rock-chips.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 jeffy.chen@rock-chips.com, robh+dt@kernel.org,
 Jacob Chen <jacob-chen@rock-chips.com>, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 sakari.ailus@linux.intel.com, Jacob Chen <jacob2.chen@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 6:12 AM, Helen Koike wrote:
> From: Jacob Chen <jacob2.chen@rock-chips.com>
> 
> This commit add document for rkisp1 meta buffer format
> 
> Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> [refactored for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

checkpatch gives me:

WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Chen <jacob2.chen@rock-chips.com>'

Looking at this series I see duplicate Signed-off-by entries for Jacob Chen and a total
of three different email addresses:

jacob2.chen@rock-chips.com
jacob-chen@rock-chips.com
cc@rock-chips.com

It's confusing.

Regards,

	Hans

> 
> ---
> 
> Changes in v11: None
> Changes in v10:
> - unsquash
> 
> Changes in v9:
> - squash
> - migrate to staging
> - remove meta-formats.rst update
> 
> Changes in v8:
> - Add SPDX in the header
> - Remove emacs configs
> - Fix doc style
> 
> Changes in v7:
> - s/correspond/corresponding
> - s/use/uses
> - s/docuemnt/document
> 
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
>  2 files changed, 45 insertions(+)
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> new file mode 100644
> index 000000000000..103b5cb79b7c
> --- /dev/null
> +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> @@ -0,0 +1,23 @@
> +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +.. _v4l2-meta-fmt-rkisp1-params:
> +
> +============================
> +V4L2_META_FMT_RK_ISP1_PARAMS
> +============================
> +
> +Rockchip ISP1 Parameters Data
> +
> +Description
> +===========
> +
> +This format describes input parameters for the Rockchip ISP1.
> +
> +It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
> +the ``linux/rkisp1-config.h`` header file.
> +
> +The parameters consist of multiple modules.
> +The module won't be updated if the corresponding bit was not set in module_*_update.
> +
> +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> +   :functions: rkisp1_isp_params_cfg
> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> new file mode 100644
> index 000000000000..4ad303f96421
> --- /dev/null
> +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> @@ -0,0 +1,22 @@
> +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +.. _v4l2-meta-fmt-rkisp1-stat:
> +
> +=============================
> +V4L2_META_FMT_RK_ISP1_STAT_3A
> +=============================
> +
> +
> +Rockchip ISP1 Statistics Data
> +
> +Description
> +===========
> +
> +This format describes image color statistics information generated by the Rockchip
> +ISP1.
> +
> +It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> +the ``linux/rkisp1-config.h`` header file.
> +
> +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> +   :functions: rkisp1_stat_buffer
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
