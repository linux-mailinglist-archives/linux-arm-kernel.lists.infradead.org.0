Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135C1A27AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIz9sQbAKYFljmqnN0nPPtNfN1+qEs+ANnMaOblz46s=; b=M0njOuGNiNeJeK
	dJVMhD2GpN+J4CC9HmCHgOr0ns3qWWwGwoCXjV8pbsfLLpzTTQEFECEMTdUOwH//b0xnUigL+olLv
	YHKBMoI+ZJYnnXa4IEVSShWB8FUYgTFmdDnDnRzwd47StYqdSdIRytlFw7fcumbjvvMHTbeuXldXK
	Vw7+k9m8X+MYJZsxFbPpybIBS7vYJDPSkJ8SqXxiDnAWIJSc8qQ+NoAEzujAMwOhzkGXD3e25xFqw
	NG1u3PL+pT//Sv8seycD4AB2g3BVlRDTuZVXi6hYoa4qpzS6g1dDhZ/3B7Z1D5ntQBiRpcZeUtVHs
	jrmWhv0jrc21xTHnFyYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3QfU-0004Jt-3w; Thu, 29 Aug 2019 20:05:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QfJ-0003pV-9f; Thu, 29 Aug 2019 20:05:06 +0000
Received: by mail-oi1-f193.google.com with SMTP id h21so3567413oie.7;
 Thu, 29 Aug 2019 13:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=olD2mIH4m+P4tlheGqCEsNMbY7eNHE8lmUC8IgMGIBs=;
 b=hWCzPStS3St9knLRWMSx4isNHAkhF7K+E5NeqW+9oUEibE6q9IoA947G8inNd1Xh6B
 rTG/4smK+tlv9tZAhG290TC+Ypz46pcB8bZplfftvqvD0EL3GzBDPfuy4Nu1fDk8LF/y
 +UiMRC2uzPd+tSqcihXypafz/ftQjS/FWu5geKEKl7D8ApIlKkv4p1K/6Hksxk+05y62
 R9O3pOiqzCqX1Fx5KFn5PsBSKUWzAgLT2OjEmVGk5RPop0o7chuHK7IGXAmJNyitjT2A
 8i8+FANNORWeTwXf7Sy54vdM+lWXApC3rMYTcuWlsx6G3qMosji9tJCF4tf4lpIMYVs+
 mPFw==
X-Gm-Message-State: APjAAAW6NAUtMgraqP7UQLQjuKes2ccp/Cwy0MVmhkbCLKPrR3rfOjbY
 88v0H3Jop8+rGl3Xs2iy6g==
X-Google-Smtp-Source: APXvYqw25K1BL3gwLmn1i6McjlyIKHA3SA6g6v8scCo80RRzPLJIQGfYl6oq/ARM6ji1yUyJh172ig==
X-Received: by 2002:aca:b445:: with SMTP id d66mr7924251oif.7.1567109104134;
 Thu, 29 Aug 2019 13:05:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v1sm1055259ota.60.2019.08.29.13.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:05:03 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:05:03 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 04/11] dt-bindings: phy-mtk-tphy: add a new reference clock
Message-ID: <20190829200503.GA2542@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <f6ee7d33103b43b2f1e1331c23c36057ef20b20d.1566542697.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6ee7d33103b43b2f1e1331c23c36057ef20b20d.1566542697.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_130505_346352_E0FDD18F 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

On Fri, Aug 23, 2019 at 03:00:11PM +0800, Chunfeng Yun wrote:
> Usually the digital and anolog phys use the same reference clock,
> but on some platforms, they are separated, so add another optional
> clock to support it.
> In order to keep the clock names consistent with PHY IP's, use
> the da_ref for anolog phy and ref clock for digital phy.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> index dbc143ed5999..ed9a2641f204 100644
> --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> @@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
>  - clocks	: a list of phandle + clock-specifier pairs, one for each
>  		  entry in clock-names
>  - clock-names	: may contain
> -		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
> -			reference clock for SuperSpeed anolog phy, sometimes is
> +		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
> +			reference clock for SuperSpeed (digital) phy, sometimes is
>  			24M, 25M or 27M, depended on platform.
> +		  "da_ref": the reference clock of anolog phy, used if the clocks
> +			of anolog and digital phys are separated, otherwise uses

s/amolog/analog/

> +			"ref" clock only if need.

needed.

>  
>  - mediatek,eye-src	: u32, the value of slew rate calibrate
>  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
