Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BF9BE88A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvUC26FBXi/ANvriK+mMjrjGUsBFDXsVXOtn0ERYVBY=; b=Mp5q8Hzu7G6Gqz
	D92cH80gln//CZmmRnKgwVkm5VDwhRP+Nbhbiw+yiuswWMydrqUz7MLY313ZZKZTyYOb3WDmRMFOL
	WDWQPohm4TIA0FQxnMj5StVn0y5/n1haPTN7kI8VJRjIws69OywHxM9xdRBdzFhEJaBdvI4cMnOeb
	mpXLc3Bw6wubYPodwICuU/eV9MI6h/aRPgK6k27SklhgG65XC0IcOc9ag6lnHjkh48M+PkUMgBFWV
	gvR+IHdyvomZ/nTDvZ2ThkdCy7PAyuY2gMKc0tMibxROzV+yZoUA3hpxZVWUunDV0Ws2Fp8k8T26z
	2fJuNOcwYm66TLj6NTtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGBu-0002D7-7O; Wed, 25 Sep 2019 22:55:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGBf-00023o-Ey
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:55:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id o10so195135pgs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9WC9auWepUy78cUJN0aqVvX0lDk3WeTONEi6+SRxepQ=;
 b=eoqlvEqQxVKWBUggvKjRbdxmqgttREvbLfuo9DiOOEnl2OUh0wUEp4SrUi0xIDRbOq
 V5BovfMxNoOTiYrIiSiauLlB8IUPau86O8w5VEXiD89gUa97Tl/hmc9Ekwgnhc3cmDDX
 RCVE98WWlxe5UCCRhwuKjewoproUEVcDDZn2Z7ovjumQvyzfAfFDXT0nM1ZkInMVe72B
 VkR1u6V510QP34t6MdbbFP0KMeIrp3VIPtM8KvFxMpohWWNV9dUR5mYxWZojPXbGw88e
 zSx8oPFkeq8P3EH3hQMKVB8CgNQS3nCZvaVsFjl/GjssU+6pbt/DNxOPMyLicl236ns9
 g9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9WC9auWepUy78cUJN0aqVvX0lDk3WeTONEi6+SRxepQ=;
 b=SbhXxTYOqMvPomOGb01IhFkPbPLtrMxgzPKZyHE6m0mALOeUHW7hTltKxxFhhhApjm
 GEbG2rAF4vjNjNRo7MHwbSyyNrjyP+8cd/QpmkAwP4w99mZtwKuoMTR+rz91l3BCT65W
 KxSzZWDJo8otj3JL1qOxMW3fhgL0Y1imcfyH4twUpMUwcenv+oHEYZkL2GxSkyYpX2DZ
 6gPVOTWgRhYDlTkIpu0PBk0ioKNcyjWPiSUgPb8CFi5V8lKE3pIvirXX7HeLeMReAv+E
 cqOnvodOKJS4wJ2Zmxa42zuw1cJDBiuzkyxAg9CNee85csy3rMwE79G7vUqsocRjjc3w
 2dAQ==
X-Gm-Message-State: APjAAAXFuvzphzJvo66tK/Ldz7wIa0J2GaWdJu6Al5K1miN5VYyK8IiT
 Ykzd11B+uGBinplkVm/mh9CEyw==
X-Google-Smtp-Source: APXvYqyHy++T2AILkhhlqZKUmq7GMsbUVh3oS83mlr5NVQ7OOev5eiPms6EaAI0vnUK3PPzAG6b4fg==
X-Received: by 2002:a17:90a:244f:: with SMTP id
 h73mr59911pje.137.1569452106814; 
 Wed, 25 Sep 2019 15:55:06 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y15sm62024pfp.111.2019.09.25.15.55.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 15:55:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: reset: add bindings for the Meson-A1
 SoC Reset Controller
In-Reply-To: <1569227661-4261-3-git-send-email-xingyu.chen@amlogic.com>
References: <1569227661-4261-1-git-send-email-xingyu.chen@amlogic.com>
 <1569227661-4261-3-git-send-email-xingyu.chen@amlogic.com>
Date: Wed, 25 Sep 2019 15:55:05 -0700
Message-ID: <7htv90rnp2.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155507_509587_ECE44831 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Xingyu Chen <xingyu.chen@amlogic.com> writes:

> Add DT bindings for the Meson-A1 SoC Reset Controller include file,
> and also slightly update documentation.
>
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>

The order here doesn't look right.  As the sender, your sign-off should
be last.  Is Jianxin the author or are you?  If Jianxin, there should be
a "From:" line at the beginning of the changelog to indicate authorship
that's different from the sender.

> ---
>  .../bindings/reset/amlogic,meson-reset.yaml        |  1 +
>  include/dt-bindings/reset/amlogic,meson-a1-reset.h | 59 ++++++++++++++++++++++
>  2 files changed, 60 insertions(+)
>  create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-reset.h
>
> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> index 00917d8..b3f57d8 100644
> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> @@ -16,6 +16,7 @@ properties:
>        - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
>        - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
>        - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
> +      - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
>  
>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/reset/amlogic,meson-a1-reset.h b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
> new file mode 100644
> index 00000000..8d76a47
> --- /dev/null
> +++ b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> + *
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Xingyu Chen <xingyu.chen@amlogic.com>
> + *
> + */
> +
> +#ifndef _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
> +#define _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
> +
> +/* RESET0 */
> +#define RESET_AM2AXI_VAD		1

minor nit: can you use comments/whitespace here to indicate holes?
Please see the other amlogic files in this dir for examples.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
