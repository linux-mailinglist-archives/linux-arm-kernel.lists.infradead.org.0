Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98C6139D6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clgIjJlgoF3NwUn4PwpXEmqTXVrbL0394SPEbsFqrBI=; b=HrRxukZaWXvpwL
	1iVyp0bcRUgnRSIsyrRUQzI4plspyTBsHVRnaMCZ3kPJr3MYb/3tMee+B+e27cj9r23d31VwLNyKp
	q17ji5TQiD6HAUOisZrufgOdVWC0CTnMTnE8dgSaL8XZMloXRXxEEPfkmsOrVdW8Fo4M3jYbS7ePs
	qxFPd4bMazucE0kkgo6iH9dvA1uyCcGEimS3v0pIrfgrCbuQyG3gUYq8LU3u3xT/pNMo4yy/FN473
	ocdLHvrTarqf4N+QvXmzK1pcxbiZcwfOnsRj0V6rxFOM/h1rv0uwF00jAAZYJtVla/EqRWDk+rkX/
	OEp0SpCSg0DEEXx7J3lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9Gj-0001G9-PA; Mon, 13 Jan 2020 23:37:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Ga-0001Dj-1l
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:37:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id p9so4439345plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 15:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=URU0nYVVIvG9fQe+g2UcCIBs+6Op8N6XSVfeKx2sX+I=;
 b=b/ab/jdXLWIU3ED09YHc4yD7PEZYMen7BL6s7F1/kjYZZ83fH7thRSgRFb4nvmHi9+
 I8uOh4axY1udmFUQ9CRB6Ak22NsM0Q5kOUrMSui9gEu5AZwkkiQGPJxHY4Ek0jT/BU7x
 dN3GGRtSBhufBlwxACNUPr6YqSRNplN/UB1VyIzSrV23VJ/BxtF8x8jOUP/NEUxtfkff
 VucOsF7idPxxRbVhU5/fTAEEDTXLWM6GxHyPAO3/NDMx+eTcgWfIn5rfkPyTksPsZSjP
 e4eZNbaY5gv76V7loiTc0SQ3nvjtNOKckOayZ/Icwb44Nfq+t/qB4ZXVB/jumkX3KfWa
 mBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=URU0nYVVIvG9fQe+g2UcCIBs+6Op8N6XSVfeKx2sX+I=;
 b=BlWRMDUfIWRaC3mTXf/B5DpOewy1t4SYgk3dfx1RRrvFyBcVtxgCXsaIuysyFtMyKK
 4GT6xCqXb1IpDM2aqEMIjYrSdk7z86cdMib+TQzv9jMqLYK5z8CE8hbe/Zwtmot8vGj9
 L7cSp+YFDeXGzFOndIxgeYGbXkeCbEfwaG9Lbjzo6M4L8pVRXGTRqwvd811xypMJ+n7L
 yA9SjppqVX7CB7D0O81QmNfPZ/X6OwlueIKULByn7G8mO1K1nysatGRlPnAXtii/qF0H
 faJl2j3pZ64VLueJvJCFnsnqq88KCkJlwSo2hUm+iOHErOWIjNSuRCmaxCRH7JXur2A7
 +cKw==
X-Gm-Message-State: APjAAAXS1IV9d0XuPi55il92wTh0JCKlZdTj+gXMg+RdhL1nHQwelShO
 7VcpUnukh3GEl8x3Ua9Wu9/9Lw==
X-Google-Smtp-Source: APXvYqzCuoCV4QA2/uQQXAdoLv7iqVZ5/gY2tfSqNNG6zeLXktzaA9OsR+piF0ld/u9H+WkLG6qR5Q==
X-Received: by 2002:a17:902:bf0a:: with SMTP id
 bi10mr17117837plb.324.1578958623194; 
 Mon, 13 Jan 2020 15:37:03 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id q15sm14613132pgi.55.2020.01.13.15.37.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 15:37:02 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v5 1/4] dt-bindings: power: add Amlogic secure power
 domains bindings
In-Reply-To: <1573532930-39505-2-git-send-email-jianxin.pan@amlogic.com>
References: <1573532930-39505-1-git-send-email-jianxin.pan@amlogic.com>
 <1573532930-39505-2-git-send-email-jianxin.pan@amlogic.com>
Date: Mon, 13 Jan 2020 15:37:02 -0800
Message-ID: <7ha76rdj35.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153704_227680_08FCB9E8 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Add the bindings for the Amlogic Secure power domains, controlling the
> secure power domains.
>
> The bindings targets the Amlogic A1 and C1 compatible SoCs, in which the
> power domain registers are in secure world.
>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     | 37 ++++++++++++++++++++++
>  include/dt-bindings/power/meson-a1-power.h         | 32 +++++++++++++++++++
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>  create mode 100644 include/dt-bindings/power/meson-a1-power.h
>
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> new file mode 100644
> index 00000000..2ed269f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +# Copyright (c) 2019 Amlogic, Inc
> +# Author: Jianxin Pan <jianxin.pan@amlogic.com>
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/power/amlogic,meson-sec-pwrc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson Secure Power Domains
> +
> +maintainers:
> +  - Jianxin Pan <jianxin.pan@amlogic.com>
> +
> +description: |+
> +  Meson Secure Power Domains used in A1/C1 SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-a1-pwrc
> +
> +  "#power-domain-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - "#power-domain-cells"
> +
> +examples:
> +  - |
> +    pwrc: power-controller {
> +          compatible = "amlogic,meson-a1-pwrc";
> +          #power-domain-cells = <1>;
> +          secure-monitor = <&sm>;

As requested by Rob, please put this under the secure-monitor node.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
