Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DC984C7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhUNM396Fb6zUbU8IIGlZ3QabMefITbcpB1uet9Przk=; b=Z7fN57eg0xJn8G
	LJas6N5A6AbhVACHwxQRxJ/S0dWvMXeJ/umfkCEWQAHC4GiBeuif9kX2TBE+UPsAaozalsaXDU3fc
	bpySR5vIao6/JoNcZn3nrBOcDR/zgpH2AgzQK9aynz7aUz352RC0KjCePN6Q24EDBX39sN7QXXE8b
	CxKYHQv0alzDCQtDeveciW7yrApBXQ8pXA7TPpmMMmJMQxEP4BgjtYY8hmBHE16A7qZV9TS2cwJEk
	e3L1aXjkzFrGUvPfKtJxvjc2CSH1ZyWk60eXvYPpIJc/LnIDmjlb5r5JD+D0f3mRfHPf1KNJvRQdj
	mbk7s5n0cwPj0PG7qvDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLgw-0006xh-Pt; Wed, 07 Aug 2019 13:09:23 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLgj-0006xE-Qk; Wed, 07 Aug 2019 13:09:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 06:09:09 -0700
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="185988522"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 06:09:04 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9F4DC20355; Wed,  7 Aug 2019 16:09:08 +0300 (EEST)
Date: Wed, 7 Aug 2019 16:09:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 02/14] media: doc: add document for rkisp1 meta buffer
 format
Message-ID: <20190807130908.GM21370@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-3-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-3-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_060909_877279_37ED02F3 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Jacob Chen <jacob-chen@rock-chips.com>,
 jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

On Tue, Jul 30, 2019 at 03:42:44PM -0300, Helen Koike wrote:
> From: Jacob Chen <jacob2.chen@rock-chips.com>
> 
> This commit add document for rkisp1 meta buffer format
> 
> Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
> [update for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
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
>  Documentation/media/uapi/v4l/meta-formats.rst |  2 ++
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
>  3 files changed, 47 insertions(+)
>  create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> 
> diff --git a/Documentation/media/uapi/v4l/meta-formats.rst b/Documentation/media/uapi/v4l/meta-formats.rst
> index b10ca9ee3968..5de621fea3cc 100644
> --- a/Documentation/media/uapi/v4l/meta-formats.rst
> +++ b/Documentation/media/uapi/v4l/meta-formats.rst
> @@ -24,3 +24,5 @@ These formats are used for the :ref:`metadata` interface only.
>      pixfmt-meta-uvc
>      pixfmt-meta-vsp1-hgo
>      pixfmt-meta-vsp1-hgt
> +    pixfmt-meta-rkisp1-params
> +    pixfmt-meta-rkisp1-stat
> diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> new file mode 100644
> index 000000000000..103b5cb79b7c
> --- /dev/null
> +++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
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

Do you have an insight on in which order the device executes the processing
steps for the image data? The pipeline may not be entirely linear either
(statistics, for instance). This should be included in the documentation.

> +
> +The parameters consist of multiple modules.
> +The module won't be updated if the corresponding bit was not set in module_*_update.
> +
> +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> +   :functions: rkisp1_isp_params_cfg
> diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> new file mode 100644
> index 000000000000..4ad303f96421
> --- /dev/null
> +++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
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

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
