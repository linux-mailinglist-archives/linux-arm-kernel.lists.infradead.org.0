Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4051ABEDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKKHHD6ZFfOg0QC16n7IE1T0ogu7toAWqSP+uuzG5PA=; b=apr+ZbpS0/pMi7
	bEz9+5dsVGevs0FIuFfO8n2+5wki2QZPWTOwwGnB2qnc3dNxQiETmtNBrKC0v2Yza9KQY8PqoneHa
	JD84UnQFBsQyciRh+9QCuS9TM9tQp5Zk8jXwel8kDT376ci6f2y2VkoeiPM7XH0r/KJF87ZTDzaAm
	rvY1H25NVd4V7oFYOFHcyaVHyJrCDt4NFliKUrSsRYB2JHuW0yUQ/B41+uKYTauKfUBi0PguIAW4A
	6Pqca/b/f1Ybl1GWOAoLkfQfEIjiC3Ev9JTCueAflxiJU7kCI1hoLN06LgcuK6prMs7oUvn8tQxXN
	3a9ocMwpTw9dRZYjONag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2Pv-0000gs-Qz; Thu, 16 Apr 2020 11:10:47 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2Po-0000gM-2I
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:10:41 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MLQgv-1jhX2N2MCJ-00IXwf for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 13:10:36 +0200
Received: by mail-qt1-f181.google.com with SMTP id b10so15954575qtt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:10:36 -0700 (PDT)
X-Gm-Message-State: AGi0PuYlpcvKvqydsffezeBzPxOOOQ+EFsnqZdk0U68itRm+88n+lyQm
 LXxwfOkSK+v1aAukwktI9gsdtIiHhxGbTAiEXEk=
X-Google-Smtp-Source: APiQypKTnCrAJKWmvxQPPtXXxzoAVa6UTCMFQ9ATB3ibHu7YaQVTiYtm10ABd1Vj8N7EIF+bQAx1sinndyRxZBuK7IM=
X-Received: by 2002:ac8:296f:: with SMTP id z44mr23735521qtz.18.1587035435488; 
 Thu, 16 Apr 2020 04:10:35 -0700 (PDT)
MIME-Version: 1.0
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-12-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1586937773-5836-12-git-send-email-abel.vesa@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 13:10:19 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0fDJQvGLEtG0fxLkG08Fh9V7LEMPsx4AaS+2Ldo_xWxw@mail.gmail.com>
Message-ID: <CAK8P3a0fDJQvGLEtG0fxLkG08Fh9V7LEMPsx4AaS+2Ldo_xWxw@mail.gmail.com>
Subject: Re: [PATCH v3 11/13] dt-bindings: reset: imx8mp: Add ids for audiomix
 reset
To: Abel Vesa <abel.vesa@nxp.com>
X-Provags-ID: V03:K1:60/tgC1tAfheOsTFP4mnLtiNeiTqALmvRmSMbDp+nvV8xl+sF3A
 M80m/swMQd3toPYCrpm4RQV0sjSXJTQiFHwEuTlW1K/srjkbEEJTdn5VYOX/ZmwIyMhMcvg
 RRh/p9E2121xKD8rAeAF37HVG2RzUWRYl/+aWUOHXKPYmlO7e2jDTS2PsGZ4/Ylt08XbakD
 NtZQf5uIa+eOBXeTWCU8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O2sXIoPi0LY=:UQ2eWTDJNV3QIKV3j+FYsZ
 BTWXA/ptRHzVCIvmbrOMaSPSodjXjZmgW1//uiZPOHM9pLwbrbeJ3QwSayPtLcScfNRrsbg4P
 qMAuUUjwrdC494j+fooiiRn4fAzn9umnCRopY57yQftFcrCgNclar+EZHnQvcE1+Otn6Xigoc
 /1LsHRELL0Uj2oH38zEgdjoA3vR78I7Crj66bKB/UyRb+tw+Y6bL6J7WQRVhSTg7M5flIEzkp
 nH2Nqc2yrNbWq/IXxxskC3aFnsVqW5dSoBKABzUomNuHS7Hrez1q6qW2TWFsy+Noz6YW50QGU
 p/ohPpxv33/Hnd1VFcrZ/2+pxiTIPWCguSXGhTIlQOIkITMC2k8o+gvOXQ1cXmFuRSOg51wDL
 xeeO4RxMueDh6FQgl+7isbP+eSu5xQfltCcr/QAhgoIbq2VMpXIPhzArG2n5tkYh9cmy1+W0B
 B5IaP6iSwsY575UbdtR+wPZ31KXNTruJdtzIziI2dehHhrBSv1IzZqsc++6PfsVWh7YSjLW5D
 Tlak4V84hZ9QJfxbq0U1tXqYZBRG4D9pBGkTpOvf2fadm1Yrap5/bJSMB8aDqteKxIVeuguAp
 /1zbOEsG3xkK0AqA1y7vj/gmJDN6yUU6j9b9726z+CnnSDEpm5FHuN7tVnllaY/X97S6XzXuK
 BygzXD1ORXbdGHJVklebziFLLUKsoF0iBQVba6Qbc+DBXPZU7PxIfdrS6mfl+RsPTDTaBZ0Y5
 UOmeHiQbQQzC6F99WOgjSkKKgHI/1bVRFJiv+frm31bhk/fGvO45he3UtEw3aQl4XjKEVyF7n
 FkuEB+ItClvZZUQ5wPdvKMk4SgQbJ8+5GPS/bShucukkdo8+iI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_041040_399448_9A111F34 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: DTML <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 10:04 AM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Add all the reset ids for the audiomix reset.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  include/dt-bindings/reset/imx-audiomix-reset.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 include/dt-bindings/reset/imx-audiomix-reset.h
>
> diff --git a/include/dt-bindings/reset/imx-audiomix-reset.h b/include/dt-bindings/reset/imx-audiomix-reset.h
> new file mode 100644
> index 00000000..67392c3
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx-audiomix-reset.h
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#ifndef DT_BINDING_RESET_IMX_AUDIOMIX_H
> +#define DT_BINDING_RESET_IMX_AUDIOMIX_H
> +
> +#define IMX_AUDIOMIX_EARC_RESET                0x0
> +#define IMX_AUDIOMIX_EARC_PHY_RESET    0x1
> +
> +#define IMX_AUDIOMIX_RESET_NUM         2
> +

This list doesn't seem necessary, as the number you pass ends up
simply being the bit index in a single register.

In a case like this you should better not have macros at all, those
are only needed when there is no easy way to the numbers in
the DT into something the driver can make sense of.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
