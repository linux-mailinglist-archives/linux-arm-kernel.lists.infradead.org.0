Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD1112506D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZk/OaIXxr+5YR1jaKM/hJ0u9b2MJhTJPhQ1dSNg5N8=; b=R/8MoUYmXm4dsB
	0z8CtADxvQ/g6KMzNlITRY9QVTugDjzGHpljofjpUyseDVH0+TfZrZRgCTOmMAJVqYMH/ss5zeOtx
	hsSAgiv+5sNnI+nJEBmJ7I0CXaX5hqSSn3ifujAVlu6FbnFxZojo/6vMcerzYxBgsZjqrPviqC2IT
	DGa7jSXr0tOTXsRgNBUCmYCVASK+aipkn0WYSDGAvNabkFYN4NXJelOkFgQm9Iub3eQsnhMJPUEZq
	Eo4h3oM0ULideI/eZ1oq9VXHW3d6c0Iaj36iNWLkVh0xN/11WjQ2ZTjsKNtLrFASOWlVyyB675e5a
	zRrRtFbQMDvisiemQLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihdqt-0002yM-PL; Wed, 18 Dec 2019 18:15:15 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihdqj-000256-1Z; Wed, 18 Dec 2019 18:15:06 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so3551585oty.6;
 Wed, 18 Dec 2019 10:14:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Joaw7/XAOOveu1GS58tOvSo24yLU2Vq2eez0hj0oxxI=;
 b=tbgEX/xvcJmNoTJ1zvTvUCsgxSvGSvpxaj6cIZRnNABug459DFSDIDAj4Mu6UDtDX3
 7QkQfi8Oq2b36zpG0eiDlareSaWMbiFF1DKqpfx6TXhNzTcgpnaktqDte6SwwTKeULzx
 r9jcujnLuYSDyEMUD1Tt0VEs3BVonZpp8bEr5XC2/9X2xkz/teWxPDZPa1n7ph33ZZco
 cVxa1XYXZGiSCTn2Pv814KKlXNLgqLoicySwkK2rBQJAXjB+ibwjbfWrj5S1AMUvruFH
 FGE0vRJw9DV6DrDRNmRiSqtvn63DQ+RScPH/bXZ7+Dt/yc5yQjkFoHL9IQtDTAQZ039q
 B+nA==
X-Gm-Message-State: APjAAAU1ntn/D6cmVKMKrIuhEt3lzVleaQLWwisdAnvDbYyiFCkU+gQI
 JweyyMKopT5+GunppLvk2g==
X-Google-Smtp-Source: APXvYqyoQd/upD6YD3POKyWidARuJplw8nUXBR63avEydvr3JAGmT9UWeuqxABxXovlfVreAUCvwWA==
X-Received: by 2002:a9d:5e9a:: with SMTP id f26mr3967611otl.307.1576692895673; 
 Wed, 18 Dec 2019 10:14:55 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t196sm802325oie.11.2019.12.18.10.14.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 10:14:55 -0800 (PST)
Date: Wed, 18 Dec 2019 12:14:54 -0600
From: Rob Herring <robh@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Message-ID: <20191218181454.GA15293@bogus>
References: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
 <1576081356-18298-2-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576081356-18298-2-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_101505_100860_2C32A92A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, yong.liang@mediatek.com,
 linux-watchdog@vger.kernel.org, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com, yingjoe.chen@mediatek.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 00:22:35 +0800, Jiaxin Yu wrote:
> From: "yong.liang" <yong.liang@mediatek.com>
> 
> Add #reset-cells property and update example
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> ---
>  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
>  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
>  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
>  3 files changed, 46 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
