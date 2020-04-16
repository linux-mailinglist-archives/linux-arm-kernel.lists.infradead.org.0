Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D981ABEDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23kdoOyiGrGc5cSAIv7cxqjHpzLgWUl3cmnyGZSEZoo=; b=FZmHHrGy1ocFeL
	3tYsbfmJ4/YsNjQPvqmuvXLm4oVdwukL/184+/gI8fLOEUwj1akr9jQuTPwgiauK8CZYa0cDJgbcL
	7HDNGcir7L6m/7aIHbOW3ClN9Iau6SYY40g6taphfzBGZYfj2sIlzJDPC2yFAyFnqmMDgI/h7jvJo
	Qe7cH50vJ+1EO13xht2Ztxkv4wzkmJep+9iX/hwE1OFCgGhR0kNu310xgQpwCQ8w7udLZTxOTV23W
	myUCUN8NU0WJ/U5m0t74A/GiTMVOV1Rqw/EYJdTHDTaa6siQPJ2XbXUbQdsEwkHfSKRX3AnuftvMx
	h+2jPw6Qb9PVQObkktMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2RK-0001RF-JV; Thu, 16 Apr 2020 11:12:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2RA-0001QV-6W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:12:08 +0000
Received: from mail-qv1-f46.google.com ([209.85.219.46]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MVMJ7-1jrOQo2R0B-00SPrM for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 13:12:01 +0200
Received: by mail-qv1-f46.google.com with SMTP id d6so286341qvy.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:12:01 -0700 (PDT)
X-Gm-Message-State: AGi0PuZtH/EJqaIpU/ZrA5my0YmACTZy55bhM7jlvD2VXUWZTE3xZ7af
 22OJllTjNZdnS1CTqralguoamh+0eWIqBssmJ44=
X-Google-Smtp-Source: APiQypKUBOB6XQd2d+M75WuZ0DqJUTG/HnuwXa8550Av2Y6bO9ZONTvLBnhPRU7U+ROebImWwMBgxhHTnpmmhVTBibs=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr9756889qva.222.1587035520523; 
 Thu, 16 Apr 2020 04:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-3-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1586937773-5836-3-git-send-email-abel.vesa@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 13:11:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1Zd8Pctn9ra9dH7bTUSSMoTOwmDNOc6JwmKQA4fgdpWw@mail.gmail.com>
Message-ID: <CAK8P3a1Zd8Pctn9ra9dH7bTUSSMoTOwmDNOc6JwmKQA4fgdpWw@mail.gmail.com>
Subject: Re: [PATCH v3 02/13] Documentation: mfd: Add DT bindings for i.MX Mix
To: Abel Vesa <abel.vesa@nxp.com>
X-Provags-ID: V03:K1:RmZuv5uzFH+kOUtKnJl7PY7ZQ5SJRW2Wn/rgA0p0GN6NWhlZfc6
 TXph8/XMHQ3vfvPa2e5qgYEQetm1FeYt3xGZx0/3PH6lJScZwzlrT1IYgNOObvRuCEZI6Bc
 aus7GEcqlNGDz/H2WcND3yizY6obzqyr++ao+gYpZsmOqXddE2V/nvNEeGCn96K6k7J1/7W
 vDf3h8UyCz6zx7Pf0kCpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:olT7XPis/mU=:n1+fCS/SdVkJe/88CO6MSP
 kY1/K+4F6RciHHFFV/YzGO67PGUjdJX+a3vo+thrG7H5CeCC7OgUrpCdvuQEWER78VNiEMXRy
 koaJ9bgtnP4DxRbDVM2O0Vnrzbxzu0ZqYYr6cn+oY9wCPj12nDyEMjMKNteisNLFAgJWU5S6N
 jlSM9MrOq57jSsD7ke355ka3AZIcdY56tgcAVByC0/WiMT39YoaH93wc5qOLo2GA3Ylx6gicX
 wzwEetWQ4NnlxaWu/hmG3PpxcDudSOLCUhwZ5vl3c/bVzLPu+u7P9DISz/OPLM0UcCppzQ1SH
 PvH4BrRMYUGWrjg1mIEYr4kPt8IW1Y/TdFHD17/D+Dy9irDCBs2Df2EAJgsaX6oIA4gAZ14H2
 92Qtvma0otwW6a9fajCpKdAHCVLn2/OkST+FYZoPLOrSdSJkqxT4CiaLU7GndVVJ2VjEimlFK
 ErJqknXkMUcPY5xCaRqR3sxOuMewiCi4QiJ0ea9MLA3dyQu4k8XNw58PQlBK7UwkqZhhuPv33
 Gmcton6Q9ScfMG5gdfRbkUpjqysIrjlBP8M2yWqLPBEYO2vye5vLn/x7dq8EKAuB9k13Ndt7D
 HiWCJXkKRq5ys9l/KynnQ8sWcsoz3etj4zTcmMJa895sFi0O0nUU1kChsTka9mjAyVCmodn4n
 1g/FhPL/MnOcpLslBsZ+Pa1l9GL3wthGK4jJITDB6Qgd3G13ldkIq+0qVrrx6rUOtWsPOxRcP
 PM1Oz8GQzV2apbI/hzaZMJcK9++nnhXa+9oPauAUpaFLGmK6FN9ik52AHzL89rFb1wLuTwRIp
 jiwIy3L3o/zHwPlXCTz1R/4B9Pm5SF4yqtvEpbuHfpgiWxK2eM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_041204_543735_C75B61B4 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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

On Wed, Apr 15, 2020 at 10:05 AM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Documnent the i.MX Mix with its devicetree properties.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  .../devicetree/bindings/mfd/fsl,imx-mix.yaml       | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
>
> diff --git a/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml b/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
> new file mode 100644
> index 00000000..8b1870e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/fsl,imx-mix.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX mix
> +
> +description: |
> +  i.MX mix is a conglomerate of different GPRs that are
> +  usually dedicated to one subsystem. These GPRs can be
> +  further split between different types of drivers, once
> +  the MFD populates all the devices based on its devicetree
> +  subnodes.

This does not describe the hardware but the implementation in Linux.
Please rephrase it to not independent of the software that interprets
the DT nodes.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
