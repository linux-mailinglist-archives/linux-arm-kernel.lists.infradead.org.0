Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0792918AED2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7SJHITZPj7D36UWUs5tQ+oCAuw04r39kPNBK52mbF4=; b=KXFikaz5qxJ+uY
	MSwnVK5l6ZFS9VGtVClSiVY8NcNoIq+ri/2ym7PwxH+bjwcMmdoRnp4B+4qDnfgn+0ofSaG9Ffv+h
	nl/DSRccaR6r36TO1rYGtVndh+GjGijHpxTei2Ai677ZsP2v3eeYLPbzxQkY34ufO8j2sc4RMxQfG
	ikp6mZ020IUOCdG2ryxxvdS5O2qxFtvHfVypyHNopDhZ6rWiXpb9rDRQP109ydaR+J9mO9OMOpS4k
	hRTVuSzqh6UJKx6ykehDyaT4TgeJ6YW3nWHMqyIDT2aF5cmlQuncKdXcYZ7w5s3sTWV+b6oXQdZSr
	1V9J7LiYC3WRjAcJM0+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEqxP-0007pq-4D; Thu, 19 Mar 2020 08:55:15 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEqx7-0007pN-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 08:54:58 +0000
Received: by mail-vs1-xe43.google.com with SMTP id i25so1053261vsq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 01:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BZy6E89ucoA1w97qJwvQQ5sgoUaCDGfmKMbJv5XOI10=;
 b=XK/XCnLJJNQVJAFR9LEOpSM1poFBblp65fCGQDIRaF29of9VD4V1LOFmYaU5OEB+jt
 w/+kared86CnwkNFscot3nEdyn0KBKBtEqJA07CHwRa/sLrSLIvW6oKScdiU2o/IUd7Y
 D5g59E+R26xAa2a3oeh0tKhlxgLpRTh/1Gyx/ldySrv8h1VZ4Vq2e94mz5Q3gbe0hwz1
 c/a1ZeuIPtygCbOC11Wu4hzhneZ47WX+/hU076c7+ax4UWRzlcVOaeDO3Yug1e35sOEg
 nD425AlVpFB9bTvkKy3TJ0vAYR0hkHr+psjykByec+XQVmlI+81xcwDMR5Qw/2LqVP+z
 sfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BZy6E89ucoA1w97qJwvQQ5sgoUaCDGfmKMbJv5XOI10=;
 b=bRmtzAuzFpgW+DEROFt/dQMDiEiVuu4WMc7kSKK2mQW242qsLT+53yYwJbCIgI8e5W
 V+3tptxMolVify9uzW1oeSCQ/LXUCqEZKl7suOkww4jB3f7H7bqYHJXlpuxe0y6yE6PS
 /Dma+O/9q+gHvDqZN9/PBGPiXPmX8NMyjtc3iywBMBmHAGbh/gQ+1DfW1LuU8yppIeLN
 N/VouOk2xXp5aAZsqncAag2z4g4DREV7N7RVX2km3spSo+Ycrn2PHCEildgf2vH6+dM0
 3GVquXxlO87jibWOlM4CO6yV8GCAi83gPqwSjy9Et4sOrpqb3UGYOLYLx/Dkz6fF7Try
 2L7Q==
X-Gm-Message-State: ANhLgQ1wG9qlTscaaw249sSaQxf5uSohNe8uHDejI1+ec2kDamXAcOKZ
 aLtvP4ZN5/gMdqpXJlKmXOT3FhYNr7reVWwetYYIOw==
X-Google-Smtp-Source: ADFU+vs2DevNYypMycdkzht98FKAILtKLTB3SxtpJh4gYUWybbe0zhjS9orQtRSVxxWOews2rcT+N7y1BY22d3zG1bU=
X-Received: by 2002:a67:69d5:: with SMTP id e204mr1084947vsc.159.1584608095560; 
 Thu, 19 Mar 2020 01:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <1584606380-9972-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1584606380-9972-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 19 Mar 2020 14:24:44 +0530
Message-ID: <CAHLCerODxv9jAhDPLHSHRVvsmPtBvj2X-CzFcFo1Vc7EZF+9og@mail.gmail.com>
Subject: Re: [PATCH] thermal: imx_sc_thermal: Fix incorrect data type
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_015457_442285_B11BD399 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux PM list <linux-pm@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Linux-imx@nxp.com, kernel@pengutronix.de,
 Zhang Rui <rui.zhang@intel.com>, Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 2:03 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> The temperature value passed from SCU could be negative value,
> the data type should be signed instead of unsigned.
>
> Fixes: ed0843633fee ("thermal: imx_sc: add i.MX system controller thermal support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/imx_sc_thermal.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
> index dbb277a..a8723b1 100644
> --- a/drivers/thermal/imx_sc_thermal.c
> +++ b/drivers/thermal/imx_sc_thermal.c
> @@ -30,8 +30,8 @@ struct req_get_temp {
>  } __packed __aligned(4);
>
>  struct resp_get_temp {
> -       u16 celsius;
> -       u8 tenths;
> +       s16 celsius;
> +       s8 tenths;
>  } __packed __aligned(4);
>
>  struct imx_sc_msg_misc_get_temp {
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
