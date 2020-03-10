Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6818082C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvWnk+0tFCrb4hyuqUBQ9gse4m2QeNmSImNwWYaN2b4=; b=Bb9AA8VMeJ9aWC
	ct4c3X13lpZb+4K8s2EI8dtZV7GopjvzsBzv9LKd7tS5B3EHr2JZhg+6BnLgHc+mSAH3dn7y5YCPj
	D6BSXbLjezjP4jS7/L8HIjUtE2wyhEGcgBBJPvMsuu62voxUuLxCYDYoniBfGpP8lXOrkZFZKBA7T
	CrXe7TAbV2fR0hmrLlXRD4qsQf10yWBpTfO7hOQjZGV4KzsVtRJN/v097eX/mOlHwaj2YX0t6FQxY
	UaWp/N/koVy7CdP0W7U/jR28yWvgKtFIghGV59D655BnQEEYztcs/JYvAdXmA5N37pec4J8Jf9PlE
	vdytTfwjwyJp+m3DkGSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkcq-0002sG-BN; Tue, 10 Mar 2020 19:33:12 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkcZ-0002rf-EL; Tue, 10 Mar 2020 19:32:56 +0000
Received: by mail-oi1-f195.google.com with SMTP id g6so15162188oiy.1;
 Tue, 10 Mar 2020 12:32:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eIE4b9URO1qb+MxsPOjVs9T43nhsRKMyMwg2+2kf3Bo=;
 b=qO42SZTuO3XScwviWNAJHPwr00/wLe13Sls6tx7jDQS74s7Zfqi8Knk5cK4qNOBx35
 jKTKKPerrc5AmNa5Vd0dSwCWNd93KL1bOAD2dLgesKG+4ieijs+PUOXxL47IMt/njtr4
 ZG9JBSb3H1lu8gBy5zWA2Pjj0vFsX9BwwaaD7Sf83EOz/FjMfXYTOX9ziRD3t20GcTwH
 f3npEOWKSb+659khPEdThOn28mAA2fWaIvAQLMUpYGTf+Um0jCM+H7qFDnL9hmWl7OvK
 wNKTZePxQy9Amuw1OQtIVJCAvuWILX5OomQtvH0RPe6oyhTSlF+Ka0RWSKeRsuMX7ZSx
 YtFg==
X-Gm-Message-State: ANhLgQ2ivDKy5mz5dzGYWwcCZQ7iX47JgQPo/KUayFWD4+B0/5yIkz4l
 nuwcEtooC7LQRoGWDIY3bQ==
X-Google-Smtp-Source: ADFU+vtyF0UxNd2V5SNDAhbqfD+SoLrFN/9/7Iy1fakA8ZwCLf/fMWqKCvI1jf25Ndt1qbrkinmu+A==
X-Received: by 2002:aca:d553:: with SMTP id m80mr1624311oig.30.1583868774574; 
 Tue, 10 Mar 2020 12:32:54 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 96sm16366528otn.29.2020.03.10.12.32.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:32:53 -0700 (PDT)
Received: (nullmailer pid 23387 invoked by uid 1000);
 Tue, 10 Mar 2020 19:32:53 -0000
Date: Tue, 10 Mar 2020 14:32:53 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: snps-dw-apb-uart: add compatible
 property for rk3308 uart
Message-ID: <20200310193253.GA23246@bogus>
References: <20200302133910.10942-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302133910.10942-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_123255_484301_6473B312 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Mar 2020 14:39:10 +0100, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: serial@ff0d0000: compatible:
> ['rockchip,rk3308-uart', 'snps,dw-apb-uart']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dt.yaml: serial@ff0a0000: compatible:
> ['rockchip,rk3308-uart', 'snps,dw-apb-uart']
> is not valid under any of the given schemas
> 
> The compatible property for the Rockchip rk3308 uart was somehow never
> added to the documention. Fix this error by adding 'rockchip,rk3308-uart'
> to snps-dw-apb-uart.yaml.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/serial/
> snps-dw-apb-uart.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
