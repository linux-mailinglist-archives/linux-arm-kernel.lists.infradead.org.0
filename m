Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C72FA2738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 21:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImbwXHSDVHwxsR2RoDhVmRSNlO+07uZM9C39bYj9inM=; b=nHhRvabTVLpsrZ
	By8lys69yogW3eB1emE5bsNQNtGxoPQsUb3r8WZc52j6vw4bTIrYutq8apeue1TCtnIn8Lun8LPXM
	9SacIhNXaNFIGpLyfF03k5NOl4o8W5wHEyDq2AsNA6+3KyATHxrHGDUDBfeFSp3JBputMLRXFHxGC
	7dhPu/Nt3TLhS8QAUgkz7uRdwPisqNULiKD46TpfQT9fdz+ekDEga/KZtjE+aujdavglWAddaxSYz
	qf8TP6cJ24aRxHZjzJkvZwfjFwbqY9pRob3t83vB+cLjHot/nLT6K+3ajTKCSLoJa0clSrqELIvlD
	ygesefY2A91rCE5f7fCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Q1Q-0008F9-QE; Thu, 29 Aug 2019 19:23:52 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Q1H-0008El-JP; Thu, 29 Aug 2019 19:23:44 +0000
Received: by mail-oi1-f195.google.com with SMTP id v12so3436940oic.12;
 Thu, 29 Aug 2019 12:23:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=awB7Qev2kte00T2ifUulW7uJN/+Y8eVNRqAUedJCoug=;
 b=Q95BaT+1F6/oc84ULn/ESkbKc5+dZ/GvAEVvvtrPQt2mXJ3LGWn72sCR+rBGb1MIMh
 dqhd2WGOgq0FXInu9Y0A6Q2+3PvP6dwOVF5Qwi2wrkBle0ZATVKEw9SJwbhaXercmwkF
 dHZ97wJ9rZIRXcW8x4TOLeBJcO0TLRfQxv1yQhW93D4XZS/uwR7t4SsrVl9LMWr7AIFX
 FhOziv4tMjvfp2tCFn14sNH/gsD8gBXu2sKRsXgTCojTk+DJOf4qfdRjG0t7fmkZiaX/
 r9kd4gLJ/uw6loCROaySjfrH2WUlT+LIyRZt6KDg5JakP4CJiOhiav1u0vaKFD2lCnI8
 /Z2w==
X-Gm-Message-State: APjAAAXL5X/0Ovwj+H99wEeylpNNsb+0Xzn+F3xNsC9HI7BlKqx4+VTe
 +/xXP3OOrye4KiKxirw/3g==
X-Google-Smtp-Source: APXvYqxKBNcCX2Vcs4btyyWNLLy+0CXp/jm5HlmQq9eqINvWH7Jql4eAMiRJysKxAactJJBh/j9HhQ==
X-Received: by 2002:aca:dd8a:: with SMTP id u132mr7196217oig.150.1567106622407; 
 Thu, 29 Aug 2019 12:23:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n17sm1107111otl.21.2019.08.29.12.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 12:23:41 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:23:41 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 01/11] dt-bindings: phy-mtk-tphy: add two optional
 properties for u2phy
Message-ID: <20190829192341.GA26293@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_122343_641256_2FFDC03D 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:00:08PM +0800, Chunfeng Yun wrote:
> Add two optional properties, one for J-K test, another for disconnect
> threshold, both of them can be used to debug disconnection issues.

Testing and debug properties aren't really things that belong in DT.

> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> index a5f7a4f0dbc1..d5b327f85fa2 100644
> --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> @@ -52,6 +52,8 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
>  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
>  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
>  - mediatek,bc12	: bool, enable BC12 of u2phy if support it
> +- mediatek,discth	: u32, the voltage of disconnect threshold
> +- mediatek,intr	: u32, the value of internal R (resistance)

These need units as defined in property-units.txt.

>  
>  Example:
>  
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
