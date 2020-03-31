Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E292119A15F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuLznsACtIgIrZiTga3hQ10JpwPTJfxQb/eJYYzlAXI=; b=dYQD1ncqpKt+xt
	G20qi/0+hYaIdP61lWLo5A+qfIElO53xeL2eJwyxM+QLV6n5xD4fZ12m+36hERfwSERFAEZaXKrI2
	7yYS/ur7djpXlHs5PuLnGrmVnzbe+PzqNNfRvye0hFBiI++G9gcDllGX51noKG5bmTUSLkjqAs6jf
	6VrOuHk8WTcq0LJ9zy/W94ZIbCAwVPJ5kQ8rbu8+8FI2jOf9k/9ylNtQ9TGABmjMOxzYto8IHx6Ov
	9sG8BFiUZrOILtIMQNnZ2KWnUtRdBBYoxtxgrqVpIBttmGLvYJHEjpfCP3cC3jqA80vwKc/Ta94oR
	xhL2mrVKRJFIYtBwffbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOrJ-0000hn-7C; Tue, 31 Mar 2020 21:55:45 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOr3-0000fU-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 21:55:30 +0000
Received: by mail-io1-f68.google.com with SMTP id h131so23448569iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 14:55:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yCr0rURC7Raa50CQ8IdO6e5tVecgPPHvPYdeIVC6eiE=;
 b=o+3T/O/tu/PUEPN0yRb7hu+z1scA5X0B6Zhojt8zaFRns8jXy/V+xLEul+VV0CrvFu
 xYoKJ9yC9JxD4aAssQAoUEKF0j6eOAO16FiJYV1cxqW0DtBOJ5+928UpyK8/KpC7/zm6
 g49NQ8g4m/Mo6inH8RSQJ2I0PRyG+ZDEPPX0JD9zXo/fOhOM3SAszHXtxZ/Xd4AT++pj
 ak45oelvLt+ppTYTNnKm/GfQV1F9Xak4uHyFDmS8LLFXIdeiAkpX8DllZHv7zUn7mQIU
 x2HE0n0U0DohZJAWyauglDo6Sf8CsKrfDFxQ7tQYHMKBXkSBpdC6pTUGn0+B+ENYT9Jy
 JnVQ==
X-Gm-Message-State: ANhLgQ3UMvrgtWCeWdkeN3UT6V357NwL1GhJpVty4I5pWOd52YnW77Xo
 BmYDQeagAWhlJl0lcMjGqA==
X-Google-Smtp-Source: ADFU+vvwC0cEsQ2oSXhexAgioMtQjUohEsChYpbThieBRSP3Bx530D2FSjD7OC59CJBYMoRtXq4J0A==
X-Received: by 2002:a6b:4905:: with SMTP id u5mr12392280iob.134.1585691728741; 
 Tue, 31 Mar 2020 14:55:28 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l12sm38432ils.55.2020.03.31.14.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:55:28 -0700 (PDT)
Received: (nullmailer pid 8706 invoked by uid 1000);
 Tue, 31 Mar 2020 21:55:25 -0000
Date: Tue, 31 Mar 2020 15:55:25 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2 11/13] dt-bindings: reset: imx8mp: Add ids for
 audiomix reset
Message-ID: <20200331215525.GA8176@bogus>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
 <1585150731-3354-12-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585150731-3354-12-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145529_490674_A5D5B003 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 05:38:49PM +0200, Abel Vesa wrote:
> Add all the reset ids for the audiomix reset.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  include/dt-bindings/reset/imx-audiomix-reset.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 include/dt-bindings/reset/imx-audiomix-reset.h

This goes in the binding patch.

> 
> diff --git a/include/dt-bindings/reset/imx-audiomix-reset.h b/include/dt-bindings/reset/imx-audiomix-reset.h
> new file mode 100644
> index 00000000..571cacf
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx-audiomix-reset.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#ifndef DT_BINDING_RESET_IMX_AUDIOMIX_H
> +#define DT_BINDING_RESET_IMX_AUDIOMIX_H
> +
> +#define IMX_AUDIOMIX_EARC_RESET		0x0
> +#define IMX_AUDIOMIX_EARC_PHY_RESET	0x1
> +
> +#define IMX_AUDIOMIX_RESET_NUM		2
> +
> +#endif
> +
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
