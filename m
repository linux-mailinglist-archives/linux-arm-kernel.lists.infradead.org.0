Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7D180818
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RIPQoResRW46Wr+rA2xKtQS2xLKfFbZr4O8Rt4FFRk=; b=WP7baPWt5NxIZP
	taHrJsmvo67VYLSxVjb0uyZS2QsE6g6vsA32Bhqv8PNamnxfZHY1dMp83oZcilExr1+pTTi49xpMo
	aon8YDDIG37DL4HguxEm+M/I29qSRcUTbX30wOF56UM5TwMYKK0sDaGgiFm2D/15H1luHaPpf/Cmi
	OYNUGVOeeuaoT6v/QZQwcrSUHJ3v5855UAy1FF/EbOURykCf36uJPmNRBFdBcQzjxmbEIn7qnZV+v
	QytChh3ejR4i9Uf4HDOFW8lDHZ5W0O54SR6wNE1KYQ6caXScD9ze9G1yffTlmZS2s4Hkc7y3eayyz
	j765xTeZ5XtMPTOVjOFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkaB-00025Y-Jo; Tue, 10 Mar 2020 19:30:27 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkZz-00025C-Jn; Tue, 10 Mar 2020 19:30:16 +0000
Received: by mail-oi1-f196.google.com with SMTP id k21so8221895oij.5;
 Tue, 10 Mar 2020 12:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TXsHaF4fOcNE2W9tq/AYJCOMZXblb3kZRBtXTvgUFHE=;
 b=uACk41qWMK9R/tt0XSygHJGSik4JEAXfw5dSQ7LjgEp9xN84LVWrGv2IWZZaej/DPr
 3IRzzHvvPvLfU+5HfcPrY5VuwEGKNca5HW6/PaoMMdpz4lO7Je80JTFTPL9deNACHUsH
 cMco+VWeOyRLjcwJQmubmFVWZIUPgjE0Nx9Mr5qRwEI5OzNiX6Mo45jtlVdm9JswfiHs
 kxtYXieMO5jxKhqGgTKsHY7v4MEV8aOABElAJU/8L/tRNkYJzuAV6bgiuI2D+3WjI8Ar
 VLks79RrI94ngOD4jsNAAZGo9l3DMXAV3dQQxjJXORVhS8D6MEf19KJ1I10by9S45BLy
 Dz3g==
X-Gm-Message-State: ANhLgQ1Cq6GyQIMgLvFBRqCvyalVPICXbsRX3XaLTrejt2IaMoyv84f0
 5s2vzm3Mqvy3sP8rjurQHg==
X-Google-Smtp-Source: ADFU+vvH5ymQhupC2P3V8EjfdHcq3DaB1uiTisg89ZmGHhSDnz8YXE2Mvbpo0sfVIj9y8PmrOGO7aQ==
X-Received: by 2002:a05:6808:56:: with SMTP id
 v22mr2265636oic.116.1583868614910; 
 Tue, 10 Mar 2020 12:30:14 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w2sm11049466otq.10.2020.03.10.12.30.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:30:13 -0700 (PDT)
Received: (nullmailer pid 18889 invoked by uid 1000);
 Tue, 10 Mar 2020 19:30:13 -0000
Date: Tue, 10 Mar 2020 14:30:13 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: usb: dwc2: add compatible property for
 rk3368 usb
Message-ID: <20200310193013.GA18080@bogus>
References: <20200302115812.7207-1-jbx6244@gmail.com>
 <20200302115812.7207-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302115812.7207-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123015_653573_C81F6ED4 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 12:58:12PM +0100, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3368-geekbox.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> 
> The compatible property for rk3368 dwc2 usb was somehow never added to
> the documention. Fix this error by adding
> 'rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
> to dwc2.yaml.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index e9f4cea21..14aeb67e8 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -45,6 +45,10 @@ properties:
>            - const: rockchip,rk3328-usb
>            - const: rockchip,rk3066-usb
>            - const: snps,dwc2
> +      - items:
> +          - const: rockchip,rk3368-usb

And you can do the same thing with this.

> +          - const: rockchip,rk3066-usb
> +          - const: snps,dwc2
>        - const: lantiq,arx100-usb
>        - const: lantiq,xrx200-usb
>        - items:
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
