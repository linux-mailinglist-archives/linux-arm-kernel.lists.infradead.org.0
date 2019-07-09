Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061C66349D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWx2xp+3d2qL587pf48N4bc1b49nAKyyIPerkhWiTMs=; b=TdBZudgbXnSpN4
	lYHRVcTmldroQG1kQAAFNQZhy3JPt+hlNhv0EoQ7RDYfXaGMCt/ftHLxdbsKy5/j/tOShFUXi6J5V
	Oaw794F2dgtynopt9qtNDyJdbNoC3dZB7ySfM0UlUybaB8dOlJ3E6cvx2+lnJWVw/gUZfyoXcVzFV
	icJ9Tams0+krzP/z3vYL/ovwyfV+97vbvSs3waYq6+YRdSkpcv914S96W8h64U7SiBLP0UYWRGRsK
	GkCMNRQRzHys1HA29foJp2GcU7TUNgMbopPjwCmFjJhitWGdPbf8+oFE8J+0gQwlkpt3b0ptlaUDG
	o5WbiU8Qhtx45GobYVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknne-0001kJ-5V; Tue, 09 Jul 2019 10:56:42 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknnN-0001bc-6N; Tue, 09 Jul 2019 10:56:27 +0000
Received: from [192.168.1.110] ([95.118.92.226]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MNOZO-1i9TFY3wZG-00Opru; Tue, 09 Jul 2019 12:56:11 +0200
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>, hans.verkuil@cisco.com,
 laurent.pinchart+renesas@ideasonboard.com, tfiga@chromium.org,
 matthias.bgg@gmail.com, mchehab@kernel.org
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <eb3bb92d-5d44-0d45-2e90-abcdb96f595d@metux.net>
Date: Tue, 9 Jul 2019 12:56:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
Content-Language: en-US
X-Provags-ID: V03:K1:9oj8UdHJ6t/wVt9wG2RH64WnZHfuyRvuaL96Jz4wR4j6R+hcGHo
 K7u++aSF8H5+LIGL3GOrnpTy5Sbs1XDdM3JmDcbW7W/tYhhk3dcB+f8k9Gmva4P+YtAVbju
 SltL4ckjdz99PBeuTzWE5fVokOF0XBFiBViam5eq1YEwddtEjdFA6Wne1LNOkF5l536Vgk6
 V1bNYNfs5mTbDATvUp/iQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BIsBq3Xtv6U=:RbuUXGVxT51ZgbnCRpe2IO
 NZoqYL5klmbXWLgIEI8OCsjclrzCoKgHwlWO5pS6OT/C31sSfpmYkqIBw6ONMCS/qEv+JtE6R
 nAqnjKVjG+fT5aWvmNnB19X3elUgdm7HInzT7s6jnPnDLWwwsOGfF0nFGUntux7xRKtjXhbsH
 Eiu0cghyxxqmgEZ5LXsim950Ir4KmiS0zzhkJCd9Icc54FlIbRaLRr4VNM3eXMcO0BIv24LI9
 s9KW8YpPm5G3kxH2uwTLODtlYvolXSIGNPlYS8RuUjmfNJFYlW+VE3LRxIzhaAYYb7M/BIqgW
 O7s3I/M4ivy2TWlWmp3pWnjBfnPWRmmbayV+dQnnPMeVVeVrc/huMcEp+NYUMmcC+YjrgkMbb
 LDqHvWp4b9W818rHLpN91umbS4b1wV/32dkUoI0PoUNW1lZdFjbrzrJTQ2JleKLCUXltbNY9K
 fJ1LVsxTpXdx67bEXsC4NK+doMEfzTnYNi2VMLPSHKRrQ4kqWuI1VW7f0C6zidYpIKN0AYq1b
 Dy52APKD0IHgjPKIDt+3noc8zLJQdq64MEs+0KYn44QCv4wNpkIYJG8sbq0OFmcLvZKEh8sP5
 xcKwj1ifsRLjhPdjTEwqKlQLHAGGD++Fhv3yK+Yo5/DgE1cmlbIlprSk8R3Sxp846BkbzJwY2
 isc3a0E7WNbXWHNSScTh8xLuFL3+HzJbXAwZztHm0g94rgGPHHF9tAdnHEzqff90JkAc3UmQP
 zxcGa0mVwdpPnZEkk7JDEyxRxE+BxhybhnXi7fGaU+irDQkXA5a3pX7XEMN53olcDj2+QW4HT
 w5b46acg6W05ERHS72c4/r6RvGok/oaoMe+peTrf4OBEjsSgduu0P8/s/SAnQJQ7woo58KV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_035625_553618_75059814 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, po-yang.huang@mediatek.com, suleiman@chromium.org,
 sj.huang@mediatek.com, jungo.lin@mediatek.com, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.07.19 10:41, Jerry-ch Chen wrote:

Hi,


> diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd.h b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> new file mode 100644
> index 0000000..289999b
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> @@ -0,0 +1,157 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +//
> +// Copyright (c) 2018 MediaTek Inc.
> +
> +#ifndef __MTK_FD_HW_H__
> +#define __MTK_FD_HW_H__
> +
> +#include <linux/io.h>
> +#include <linux/types.h>
> +#include <linux/platform_device.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-device.h>
> +#include <media/videobuf2-v4l2.h>
> +
> +#define MTK_FD_OUTPUT_MIN_WIDTH			26U
> +#define MTK_FD_OUTPUT_MIN_HEIGHT		26U
> +#define MTK_FD_OUTPUT_MAX_WIDTH			640U
> +#define MTK_FD_OUTPUT_MAX_HEIGHT		480U
> +
> +/* Control the user defined image widths and heights
> + * to be scaled and performed face detection in FD HW.
> + * MTK FD support up to 14 user defined image sizes to perform face detection.
> + */
> +#define V4L2_CID_MTK_FD_SCALE_IMG_WIDTH		(V4L2_CID_USER_MTK_FD_BASE + 1)
> +#define V4L2_CID_MTK_FD_SCALE_IMG_HEIGHT	(V4L2_CID_USER_MTK_FD_BASE + 2)

I've got a *really* bad feeling about introducing chip specific
uapi stuff. (by the way: uapi stuff belongs into include/uapi/...)

Maybe you could tell us what that's *really* about, so we can find some
standard / chip-independent api for these things. That's one of the
major point of the kernel: hardware abstraction.

> +#define ENABLE_FD				0x111
> +#define FD_HW_ENABLE				0x4
> +#define FD_INT_EN				0x15c
> +#define FD_INT					0x168
> +#define FD_RESULT				0x178
> +#define FD_IRQ_MASK				0x001
> +
> +#define RS_MAX_BUF_SIZE				2288788
> +#define FD_MAX_SPEEDUP				7
> +#define FD_MAX_POSE_VAL				0xfffffffffffffff
> +#define FD_DEF_POSE_VAL				0x3ff
> +#define MAX_FD_SEL_NUM				1026

If that file is supposed to be included by anything beyond the driver
itself, we need proper prefixing. (same for anything else in here)

> diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> index 3dcfc61..eae876e 100644
> --- a/include/uapi/linux/v4l2-controls.h
> +++ b/include/uapi/linux/v4l2-controls.h
> @@ -192,6 +192,10 @@ enum v4l2_colorfx {
>   * We reserve 16 controls for this driver. */
>  #define V4L2_CID_USER_IMX_BASE			(V4L2_CID_USER_BASE + 0x10b0)
>  
> +/* The base for the mediatek FD driver controls */
> +/* We reserve 16 controls for this driver. */
> +#define V4L2_CID_USER_MTK_FD_BASE		(V4L2_CID_USER_BASE + 0x10d0)

Why only the base, but not the actual IDs in uapi ?


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
