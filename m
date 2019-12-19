Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7414212689E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kapi+hNhu9+kMN4Qv6CzoEwD66TgXodgEzW8pUELsVU=; b=MZHPtw55y7RNxS
	fGWLPTeawwFCMKGdj5DxK4tVZOraZpbJBzOS2PkYGROyykUcQ8Iw6vkP5pNa+BqfgvmbTD1RBhT6/
	nNl+fJ2uH/DDtNrXGpoERDiwiJhA2tRD1UVa/+dIe+1rPGPj5g0YXp1Xs3s+Poi1X64SY6zLk/GAw
	9CCKr/g1ivux+QHUz52VArLaIjSIf2umsTjynQPkkE9Nu6/eCS/EUUvvzM72IK6FgMZaTCku2iE2b
	Gd3h8uRuHaKOgBwtaCFX6N6qYdFxoSduIBH2EFHk1x0jzr/PosqxW4qGq200MnqRJo6R+fJ7kWr3X
	mOG2donPZfp3PjWQaHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii06x-00021k-OB; Thu, 19 Dec 2019 18:01:19 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii06m-000202-De; Thu, 19 Dec 2019 18:01:11 +0000
Received: by mail-ua1-x943.google.com with SMTP id v18so2273412uaq.7;
 Thu, 19 Dec 2019 10:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QjPQ9I3MaulCTCZ2YdAid7nxSKyySRyNct57kaSUS88=;
 b=dsLosRjyuSjvTAjKSLXV2e4+t0VYWTXQuFL+k20JqPB/UoaAMZPo4h1L8DlmR6qem2
 U3mQKxfqj2KdK8oG/Tg1BGUE/9neDB7zOKyz52MNGgqTkDXz2QLPBzEF2sL2XH2umOMD
 cbqrJweHNN/WfptPBOryXSaBIfTz9J8FkByItcChZ+1hEmzV6B01R+CvA3h2Z8C/3Rfp
 gEWWN5x+KIZwVHQaJ91U6UFmwfN0Bczg8Xk3buYK5KfpaY7gHj42tBzB1jtYrwccxCdY
 zLaqSUPrQMv0T1VKRlxzMiDSZNGOqOKCa1PdLeWoldNU4ZD0ojXcIGhbyHBa96vMtVp1
 ebrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QjPQ9I3MaulCTCZ2YdAid7nxSKyySRyNct57kaSUS88=;
 b=iMcSnmgCzFc3Y7vQaOiK12nQRLBL2fIWvzA03Jp2LlW49OMH9B3UOuYhgG7OCKcF2q
 vC9J+c6SKkdJy3CFLOMLFY4BjgmBA8NcOQnJyr7Fj2ZWMGLev1VgnZHSLdKWQRC5TTNP
 h6fCQn/ZQ1nsFHfSM0HZj4wSMlaPbTJJdYkZfAuFqy3GcM2EVp5sLRsz+4OCj3QLYbqv
 JpTmjz9TazS9E2oS5MR74xSQUjK5IjALO1bDarHEOUvF3teomG7YB0ypFxAaJWAyMyxO
 I0ZLCW1BvfTHfVcRmg2y4i9e1mEace9vanQDjzDGeAwXhCtbgiNxfhrp5JRLF5bXpAAa
 s68g==
X-Gm-Message-State: APjAAAUEKX8OFCR+AwIkC44M75M4DfaHCjX2x6MvMitL42W9wdR51QgA
 Bm4j1p0xPLKfbmwuwTtHhppFv9kx6vXm0pxHNBI=
X-Google-Smtp-Source: APXvYqwNBImtkGHDKyuRda18yw7naA/7n+2veuddJDpT4jKTMKEftJPEz5htPYoBKMPuYkbjM0g7DvUkosrf9MYJ+8I=
X-Received: by 2002:ab0:4966:: with SMTP id a35mr6112212uad.141.1576778466344; 
 Thu, 19 Dec 2019 10:01:06 -0800 (PST)
MIME-Version: 1.0
References: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
 <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Thu, 19 Dec 2019 23:30:30 +0530
Message-ID: <CAGOxZ50RKYAEw=HwYMH=Jm7cagUV12C-fwhauJhJqx6HscAmFA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2 RESEND] soc: mediatek: add header for SiP service
 interface
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_100108_496458_88C20946 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alim.akhtar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, leon.chen@mediatek.com,
 andy.teng@mediatek.com, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 chun-hung.wu@mediatek.com, Kuohong Wang <kuohong.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Pedro Sousa <pedrom.sousa@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On Mon, Dec 16, 2019 at 9:19 AM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Add a header for the SiP service interface in order to access
> the UFSHCI controller for secure command handling in MediaTek Chipsets.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  include/linux/soc/mediatek/mtk_sip_svc.h | 29 ++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
>
> diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
> new file mode 100644
> index 000000000000..97311959d7d7
> --- /dev/null
> +++ b/include/linux/soc/mediatek/mtk_sip_svc.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + */
> +#ifndef __MTK_SIP_SVC_H
> +#define __MTK_SIP_SVC_H
> +
> +/* Error Code */
> +#define SIP_SVC_E_SUCCESS               0
> +#define SIP_SVC_E_NOT_SUPPORTED         -1
> +#define SIP_SVC_E_INVALID_PARAMS        -2
> +#define SIP_SVC_E_INVALID_RANGE         -3
> +#define SIP_SVC_E_PERMISSION_DENIED     -4
> +
> +#ifdef CONFIG_ARM64
> +#define MTK_SIP_SMC_CONVENTION          ARM_SMCCC_SMC_64
> +#else
> +#define MTK_SIP_SMC_CONVENTION          ARM_SMCCC_SMC_32
> +#endif
> +
> +#define MTK_SIP_SMC_CMD(fn_id) \
> +       ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, MTK_SIP_SMC_CONVENTION, \
> +                          ARM_SMCCC_OWNER_SIP, fn_id)
> +
> +/* UFS related SMC call */
> +#define MTK_SIP_UFS_CONTROL \
> +       MTK_SIP_SMC_CMD(0x276)
> +
How about moving UFS specific stuff to MTK UFS driver and include this
header in driver file?
Rest looks fine.
> +#endif
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
