Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CE304F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziGazBzSttV85XQTsenOJ3lNB2hnx9JH8ky+kllg4pw=; b=dgSV1clNKAZ8DN
	ZZ1LKQ6861ju9c/ccFaH+Q2KyKmqQNeGovrL6+FCdNKVJebu8vK/yWnjsgJMEY7XsdBEETkHzVCwA
	AFJVG8ex366IEOhOyqgfg/k6Z2MGM5DS6vrz54RUS3CBj5N1zG8Zj7s38QfP56633VME/LWfr0GRK
	hefmjLDFwUS0bka55aSI6CkdIjM9Jb9OdKAmKdJwkDoA7MvyELMwlbvGH2sg1wKCko/nvvDS0zEv+
	G/Yk8EQuzUDGVG8LH63T3K11aaa0T0RbLmR/2jhg+xv9CcvsJqWeWnO3wIUdXuhqZXpFuVEyR4deB
	COTOWn1/xq5cHl+jdQIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTsv-0004ux-NS; Thu, 30 May 2019 22:50:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTsm-0004uM-7B; Thu, 30 May 2019 22:50:50 +0000
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C0F4262B5;
 Thu, 30 May 2019 22:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559256647;
 bh=hjWqKFlJP4/yUgQMwqUdhZkErpO8lhwWKHylFyTK9uA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1M9ZC5ANvJgXHP4foCQorjUJ/I07kCeNHrXMQm5rWFcbagVU/aeM244UAXe+MxPuK
 fjXDzTxT7RK7oEIZeiMY95zZfE+HiIZ28GB1/Lvg2sqlrwv17x8NjVM18bvSbDV21c
 wSahg+yB57xeRoyJEUxQWmJxsI9JHrbxJUP0+6Mc=
Received: by mail-wm1-f46.google.com with SMTP id f10so4890007wmb.1;
 Thu, 30 May 2019 15:50:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUgJpciWBFjG5dZtbHQGGSJ4eJA8qbKQWqH1jIb6ueQzbizdF+J
 vcmiOlctbRn2ici9QJElJg82AwIjGPR/OnZW7Cc=
X-Google-Smtp-Source: APXvYqzcn6C73pVcqdKVZsxUqEXkCfOCjxE1QAYlQcPsoykEW/jt3tkTj4k3F9uoyu3sRjkb0vm04eM9ByDOVS/ZKbI=
X-Received: by 2002:a1c:c2d5:: with SMTP id s204mr3672258wmf.174.1559256645963; 
 Thu, 30 May 2019 15:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-2-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1558946326-13630-2-git-send-email-neal.liu@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 30 May 2019 15:50:35 -0700
X-Gmail-Original-Message-ID: <CAGp9LzpkhDhSHL=go3fvzn2Oh8DrsW8F=1YKP4ne9TDvWQVq6Q@mail.gmail.com>
Message-ID: <CAGp9LzpkhDhSHL=go3fvzn2Oh8DrsW8F=1YKP4ne9TDvWQVq6Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] soc: mediatek: add SMC fid table for SIP interface
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_155048_294024_66C7E8FE 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neal,

On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
>
> 1. Add a header file to provide SIP interface to ARM Trusted
> Firmware(ATF)
> 2. Add hwrng SMC fid
>
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  include/linux/soc/mediatek/mtk_sip_svc.h |   51 ++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
>
> diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
> new file mode 100644
> index 0000000..f65d403
> --- /dev/null
> +++ b/include/linux/soc/mediatek/mtk_sip_svc.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +#ifndef _MTK_SECURE_API_H_
> +#define _MTK_SECURE_API_H_
> +
> +#include <linux/kernel.h>
> +
> +/* Error Code */
> +#define SIP_SVC_E_SUCCESS                      0
> +#define SIP_SVC_E_NOT_SUPPORTED                        -1
> +#define SIP_SVC_E_INVALID_PARAMS               -2
> +#define SIP_SVC_E_INVALID_RANGE                        -3
> +#define SIP_SVC_E_PERMISSION_DENY              -4
> +
> +#ifdef CONFIG_ARM64
> +#define MTK_SIP_SMC_AARCH_BIT                  0x40000000

#define MTK_SIP_SMC_AARCH_BIT                  BIT(30)

> +#else
> +#define MTK_SIP_SMC_AARCH_BIT                  0x00000000

#define MTK_SIP_SMC_AARCH_BIT                  0

> +#endif
> +
> +/*******************************************************************************
> + * Defines for Mediatek runtime services func ids
> + ******************************************************************************/

It would be good if remove the trivial and below all unused comments.

> +
> +/* Debug feature and ATF related SMC call */
> +
> +/* CPU operations related SMC call */
> +
> +/* SPM related SMC call */
> +
> +/* Low power related SMC call */
> +
> +/* AMMS related SMC call */
> +
> +/* Security related SMC call */
> +/* HWRNG */
> +#define MTK_SIP_KERNEL_GET_RND \
> +       (0x82000206 | MTK_SIP_SMC_AARCH_BIT)
> +
> +/* Storage Encryption related SMC call */
> +
> +/* Platform related SMC call */
> +
> +/* Pheripheral related SMC call */
> +
> +/* MM related SMC call */
> +
> +#endif /* _MTK_SECURE_API_H_ */
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
