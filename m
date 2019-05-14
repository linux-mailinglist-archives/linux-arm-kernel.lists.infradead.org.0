Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999711D0AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/a6/VfnSKJaHz5oLW8+aN+t6E1YkxpRTLY3Dn7DL+k=; b=GqmC3AkEGnT+hR
	5vxWS1iiGmlPyG4pAYEhW7fkELegX36VWovtM7adpu2coXbgpV6Us1lRAG8YdBoOA855emrz89qul
	u4T+8WKz15MxU6glCVe1airLL/gRh5dOM6hoZYv+4x8RVmvdt0RfFtmQ072YhOhtlpQ0VmSh3QQxR
	mmuEF07ImfBNK0Bo/dyG3uP0s3c+q08h6g6FVny358U6oNXQU1afe3y5mg8XViPeROcRYKrt0OFeM
	JlKOsLXTo/NTBJUJpXfnMzlJ4cFLFHwadfZEWNZUAAc1RegsQPyTg2XWC8KMUv2b16yoH0YL5sgvz
	633oGHxfQ9sYS3nILalA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQe5l-0001N1-LC; Tue, 14 May 2019 20:32:05 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQe5e-0001Md-Bj; Tue, 14 May 2019 20:31:59 +0000
Received: by mail-oi1-f195.google.com with SMTP id l203so143046oia.3;
 Tue, 14 May 2019 13:31:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YjL/NO0p+mAa79u2Dxd50/GNPObZERJpL2+IFfkzaF8=;
 b=q6nRsP3eqGvd1OmSgwA3rI0786Letl3O6IenINi9csGlGC2EeyBKRnDyyl7fpVjb18
 HXl0cS0EBam+o7MqMR4XLTBOQUmOqwvvSQlZCFDbKwMLdIun4/Kr5sBx5qdXvpu1BSZ7
 jQb3U9oglernQQ6NPawuQQAsqDZHYlQY/pOBy+GzSajT5IB7ctuKyA0CWkcx84AW5ZR3
 FPXqC38cGgSLB1SxUDNegaYcQC7f3F/DvxDvlTgDr1rmFJwp62Qhu9zDclavZamor2LL
 BHbfitNu/BXS22mTe7PxGFuqxzMaYqz+w/2M50hOvDR2nnpDbZM0LsUQuJ0Fm0PkNLMZ
 /2Sg==
X-Gm-Message-State: APjAAAVn7FLfWDxacITDJ2v0qgHPTqR16BJWEwjZmKZw9ISNmYCImu7U
 5UTGpC3e5Ib70tTt3nZ3DA==
X-Google-Smtp-Source: APXvYqw/MbsPeIjo4+IkAQdkLBVa4RuZxpAvyfeJ4IbH7xYxg4CqthUnaxBNffPoyTkXoH2kmFKyxQ==
X-Received: by 2002:aca:5c44:: with SMTP id q65mr4181493oib.16.1557865917510; 
 Tue, 14 May 2019 13:31:57 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v89sm2933228otb.14.2019.05.14.13.31.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:31:56 -0700 (PDT)
Date: Tue, 14 May 2019 15:31:56 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: mediatek: audsys: add support for MT8516
Message-ID: <20190514203156.GA28188@bogus>
References: <20190502121843.14493-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502121843.14493-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_133158_394138_00D2D911 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryder.lee@mediatek.com,
 wenzhen.yu@mediatek.com, sboyd@kernel.org, mturquette@baylibre.com,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  2 May 2019 14:18:42 +0200, Fabien Parent wrote:
> Add AUDSYS device tree bindings documentation for MediaTek MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  .../bindings/arm/mediatek/mediatek,audsys.txt   |  1 +
>  include/dt-bindings/clock/mt8516-clk.h          | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
