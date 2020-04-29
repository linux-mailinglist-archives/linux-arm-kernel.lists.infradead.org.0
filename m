Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539701BE9EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErZ6fIjz9NsBWX/a6cNJ3NyZYt5rS+uMIc6Ak1l63aI=; b=V46RHPMiAZ+qv2
	RTP2ATzyqryCHFJKMIoaQe5Rsq6FcWtmOgs1ixN/j7oSZ9KAQv70/EtNdXkvAfwfWhMN8sgb6W+fT
	JoR4Pix7ZdtPWKoc8ZtN4eI63naMebinCumrTmt9o0+zo0ssAdL1ocNtPi6OmegQp3kDz+fTsyjxP
	dzjzSRXhvVWOLZSrudXogIAzqAp67xJffP8y6DnlzHh+Rtt4KOZU81hOLWca63n9ufQDhGOZ3qdtK
	HInje1whyTH4OtMZ6gmFYBRYH8UbFrwetSfYdpyluQYkIQOjITfRav2yADnpw5+9MaU/SUbz7/6Dx
	yAh29wB+wl0+wBtNW9Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuI5-0002AQ-2m; Wed, 29 Apr 2020 21:30:49 +0000
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuHt-00029V-4E; Wed, 29 Apr 2020 21:30:38 +0000
Received: by mail-oo1-f67.google.com with SMTP id h23so772070oos.10;
 Wed, 29 Apr 2020 14:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sNKlT+9/zIdQsL5FmjDdatJ2sdOrBvQb7gIEQfxHgsc=;
 b=o4UuyZ5jtDI8QIyGsoAOPV3MITuXsoJjEE49bIOhctRz8hr15AE/JFJs9g2xHjPFxm
 e97pXaqrOrQ0SIumbvr1dOtMuhfOCRfUualdUj9mKV3z2oiiytM0mxhC8cu3URyeeRot
 9kHcYwcyChQ315uikAOgfQJLsKeulO2Ryx6FecQFyZQ708l+j/4lc0mXOOAHHXKK/aXz
 Cpa5x7UpasF8vfXyS3vkkgxX5fmCMYQHA0ke7Wq9PC8v6pLncSnhauyLJpocmrlwFLqX
 uyBuH/RzEJetJUf0M5basCPnFz3X4KTwI4PMlFKlSfE1p9BLZqzWBnkr6jh0LV1I+6b0
 wnzg==
X-Gm-Message-State: AGi0PuZvkCKMrh0EpOR0OMjuzEwgGfRZI0j2MOYjvjtRI5PNe4Hh2MFX
 4HXTNdguSsifcnc4Urws7Q==
X-Google-Smtp-Source: APiQypK+APtg89af1Xjg8bKvZAVWBN2auKSMy5LvFjCDfw9Xw+dgMjfH9LB7Dui73Y7zFNedvbVvyA==
X-Received: by 2002:a4a:e5c5:: with SMTP id r5mr88626oov.56.1588195836410;
 Wed, 29 Apr 2020 14:30:36 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t13sm684710otr.43.2020.04.29.14.30.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 14:30:35 -0700 (PDT)
Received: (nullmailer pid 31939 invoked by uid 1000);
 Wed, 29 Apr 2020 21:30:34 -0000
Date: Wed, 29 Apr 2020 16:30:34 -0500
From: Rob Herring <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy-mtk-tphy: add the property about
 force_vbus
Message-ID: <20200429213034.GA29572@bogus>
References: <1587100986-3104-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587100986-3104-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_143037_165756_1F39125E 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.Guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 01:23:05PM +0800, Macpaul Lin wrote:
> For some platforms, they don't have vbus pin connection between usb's phy
> and mac. Hence we need to control force_vbus related registers to keep
> hardware works normal.
> This patch add the required bool property force_vbus.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> index dd75b676b71d..6b49b651becc 100644
> --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> @@ -37,6 +37,9 @@ Optional properties (controller (parent) node):
>  		  calibrate
>   - mediatek,src-coef	: coefficient for slew rate calibrate, depends on
>  		  SoC process
> + - force_vbus	: if the platform has no vbus connection between phy and mac,

mediatek,force-vbus

This is board specific? If SoC specific, you should drop and imply this 
from the compatible string.

> +		  (force_vbus mode), then this property should be exist.
> +		  Otherwise not to add this property.
>  
>  Required properties (port (child) node):
>  - reg		: address and length of the register set for the port.
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
