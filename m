Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C627F11EADF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 20:03:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmtZsGJGGdRztSLpVKD5JY04BGdizDY43MsKwSjB8pE=; b=SgiC/L++XHtU58
	jVyWp0jr2zxJlgsrNv9AOSkzBHwqPiuJmdXocEK0ZXWntop6S6mFk91Wu+P+lS5aw3j5OXLSVXq7s
	O5gWLSiA23T+Qp4aU1Nf2Gc5XmaqGG+L28+dkmUWwwQjEJjwmVgf0elJ7hRTtpLDUQxmwttuW+4SN
	J+Ntzi8nyv77w1BJmaFsEBb5EOe4ksTRwskhm77nh57Ysw4UfNUaNkXMs04gxA502YS4JcBgqt4NR
	Vo/nTlEjE6xd5K8oAleiOtHKKN7kIwL6WhTBa+BnpEpqiRlrZJmMzaXc4ogGc9Tjp8Yq1PVqUS1Tt
	yXVp1XUXFTnrv3Vco4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifqE7-0000G3-FS; Fri, 13 Dec 2019 19:03:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifqDy-0000FL-CG; Fri, 13 Dec 2019 19:03:40 +0000
Received: by mail-oi1-f194.google.com with SMTP id j22so1637778oij.9;
 Fri, 13 Dec 2019 11:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0jLdwo4Gh3BpcLr+x8Y4V1BSkeVDpmaHMCwdlyDbPHI=;
 b=Dd8iHORFjAjx3msGa/j1vB36qAw5nxUfTewVFqppsFaAGY0fI/2Yr+6P74RXHomCD4
 N5GoGVhyRGCELwOjIDNy3tHMX9StTXBG+CYtyAbEBDEF9iYfVoQQJZ7JP6GWHEgVcWfm
 FcDej7OVsReFt3sgjfB69xxnTybkmWfGndqShM6ottCe2Fz7fm/HddPXy9NqCCOLjuk1
 3fm4iEKyL8/QsUJFzLtlDVGrJmz0AitxdGJhQlC7R/BZarCT8gRqA+vAWtR+2blJNq5D
 j8FLjJaNZM+Keaqw5BKEn6/+7lT+M5WlsBSG+vVZ8K3t61aFz1HpzZTTmijIoSHOjbWC
 IEoA==
X-Gm-Message-State: APjAAAXMYMc1mXf05/IgraVMWB9sTGZp3mUpctq8QVA1EWoU/plI/ZLn
 D7D+wrv3Go735nzrb21chQ==
X-Google-Smtp-Source: APXvYqyDYMLhdnJ4CPCzJjTRPxkIRfS51N1GfBOGJw6/3Te72GU1lQmiGGiO0u/xbrXHuLqsxYwijg==
X-Received: by 2002:aca:3141:: with SMTP id x62mr7090024oix.108.1576263816699; 
 Fri, 13 Dec 2019 11:03:36 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r124sm3612857oie.9.2019.12.13.11.03.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:03:35 -0800 (PST)
Date: Fri, 13 Dec 2019 13:03:35 -0600
From: Rob Herring <robh@kernel.org>
To: min.guo@mediatek.com
Subject: Re: [PATCH v9 1/6] dt-bindings: usb: musb: Add support for MediaTek
 musb controller
Message-ID: <20191213190335.GA16897@bogus>
References: <20191211015446.11477-1-min.guo@mediatek.com>
 <20191211015446.11477-2-min.guo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211015446.11477-2-min.guo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_110338_422243_977F1B7B 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, chunfeng.yun@mediatek.com,
 linux-mediatek@lists.infradead.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 09:54:41AM +0800, min.guo@mediatek.com wrote:
> From: Min Guo <min.guo@mediatek.com>
> 
> This adds support for MediaTek musb controller in
> host, peripheral and otg mode.
> 
> Signed-off-by: Min Guo <min.guo@mediatek.com>
> ---
> changes in v9:
> 1. Add usb-role-switch
> 2. Remove label of usb connector child node
> 3. Change usb connector child node compatible as "gpio-usb-b-connector", "usb-b-connector";
> 
> changes in v8:
> 1. Add reviewed by Rob
> 
> changes in v7:
> 1. Modify compatible as
> - compatible : should be one of:
>                "mediatek,mt2701-musb"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Change usb connector child node compatible as "gpio-usb-b-connector" 
> 
> changes in v6:
> 1. Modify usb connector child node
> 
> changes in v5:
> suggested by Rob:
> 1. Modify compatible as 
> - compatible : should be one of:
>                "mediatek,mt-2701"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Add usb connector child node
> 
> changes in v4:
> suggested by Sergei:
> 1. String alignment
> 
> changes in v3:
> 1. no changes
> 
> changes in v2:
> suggested by Bin:
> 1. Modify DRC to DRD
> suggested by Rob:
> 2. Drop the "<soc-model>-musb" in compatible
> 3. Remove phy-names
> 4. Add space after comma in clock-names
> ---
>  .../devicetree/bindings/usb/mediatek,musb.txt | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
