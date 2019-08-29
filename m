Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264D8A27C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XA0XOfWd6rKH/AH7kPRQiQi0EjfzxrP0yPheHqJjW30=; b=gz25xZRP1Lu51c
	bs4YGpsCLThKe0KpVlEA5tg4Z27P6uc0EshXrhdb8XHYpiHiZWy9Z9x+V/Byoj4a4hMLnPYJiaWcs
	oqewvSoobCoKYl68jHLqdGFHGK2n54FB2oLXe/BlqpeJMLDyAV3jgjYOnA+TDKFLQPbmXmyqOG/8Y
	D3uo2BiTFX2k+dBdQ/yMGDJbz0JThyE5NtjPQc5r+OY2Vb/Jis/Be96BRVd4sQEy/7BSpz30Mjta8
	WhzauzUxDNnQIG2hknG9s/sfAmkC7NKbRMX3EMP+D5fqswmcravT2y6SjNNjpF7P6I6/jxRnVe3jG
	CVoxsIrYtTjO2M9zJlvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3QqX-00089y-6O; Thu, 29 Aug 2019 20:16:41 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QqL-000896-TN; Thu, 29 Aug 2019 20:16:32 +0000
Received: by mail-oi1-f195.google.com with SMTP id h4so173798oih.8;
 Thu, 29 Aug 2019 13:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r0elfNE0RyTt9GAHlyWPO1II9ncvkXZ597Rk7e3riyo=;
 b=fBE1CWwHLc0r1ZPZcujqM/pdZq2mSX01jpAOCOsZB5gEOBim5U0i2FwlyBexsVkGbb
 uiSfWsHhkgiOBSNeEs7uzUZRuo6TwL2cWR/TKM5NzuodA9ge1dKzTf2Qs3te3GrucgQQ
 PeXZCz2QJQxbHa/4OkJfHgC6nZ7v63p+AnJaXA20Pqh4VFEeECqZ/w6T6ngthVJwoNVE
 R51gScvGkxo2O4tEwCW9+ZIxC6+uVHkyHx3j03FnMQlbW/yia7PwZ26XxmalVZTNYGMi
 u8BFBEdRSkwEcTMhhAXNoJqSfEDuHVO+g6Hksr28vC7DXDxriM/n4QSUkSKrAUzC4v3O
 RD9w==
X-Gm-Message-State: APjAAAVlt2bDCHErWo6LX39oby/m/zygHzK84Mqc8QynDQVVMdM7/tcu
 PWxWsYXv7xy6k79aTngSNTdzP08=
X-Google-Smtp-Source: APXvYqwLRsexffOxgvvJuaoaSbPvixtSE9lU61VmCdvYBdklRZADSzWrV5Y8s+8RQCvzu3wPGHEP4g==
X-Received: by 2002:aca:911:: with SMTP id 17mr7698213oij.166.1567109788775;
 Thu, 29 Aug 2019 13:16:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q85sm983117oic.52.2019.08.29.13.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:16:28 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:16:27 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 05/11] dt-bindings: phy-mtk-tphy: add the properties
 about address mapping
Message-ID: <20190829201627.GA24612@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <8ce6da3118b80556f9576c5ac331312be07d8e29.1566542697.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ce6da3118b80556f9576c5ac331312be07d8e29.1566542697.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_131629_950449_6A09E1F9 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 15:00:12 +0800, Chunfeng Yun wrote:
> Add three required properties about the address mapping, including
> '#address-cells', '#size-cells' and 'ranges'
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
