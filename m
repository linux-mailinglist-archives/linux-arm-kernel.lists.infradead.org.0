Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D558B277F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 23:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xA9Gxl2egl2G6Zxaio3ihFtBHdoT4L5UjkLww+8Nbck=; b=qPsXlPmhUIT2T1
	gr3B46x8c9ZMZN0LBurrZIA2z32XdXtxvV9KFmygIqyr3sNvZ9DpwTsqyfbMYKtPr4sJusvOx2ZNj
	r4mgXum8hXOvJsko1//vJfGNTpFNU8jlhyhHONMvPQYfe2X9vbcJ8Xb0PQJC4uGCNvcEze71pc/ZV
	elxBKtXtph1Wx2g4YrHkgn3rAOP99sh3oKPDqMGzBkqkNqwQY7nJX32KutjYjt730/ALB1UT8AhML
	fyIeuOE7bqR8xTkn+R5tWQuzwRNaYrdhz9F70xveSK/94zhXuSl7oR6dJX+3glfHfeTcjXpamOdcJ
	AyQsyh7DxcLH0SzIlraw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8tRP-0003vu-CL; Fri, 13 Sep 2019 21:49:19 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8tR8-0003ta-W1; Fri, 13 Sep 2019 21:49:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id v16so3854655oiv.13;
 Fri, 13 Sep 2019 14:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=3ui0eUxYUk9AGgzSlQ7m/osQuaMVwY1YZdYH8n3luq8=;
 b=uHO7GQ1MG/zPDY7icUNPEvfYMzn0ELZTLwVkJRQhLgTZns9U8gX1a/EHVeb4Cw7OWQ
 LxxNF3gg107XFV3e0wZYh63dJiVT/VfyvayqYT1SvYG/aELKcK73SL0WECRYqBXX29u3
 U3tJGzpVIjfZF5bTZjxM8SRWqa6k4ox9GEpaKjklSG6Z3iJUK7qbvPtxF5ypmR1iQGAC
 1h4htdB2MCpQmJkV0WM0jptHm30MtZf5OoOSlpjjpAG516/a7aU9IsJXyj0IuzM/aujG
 QSAyB1aofHZ8PT4BxJ0Dw5zXUMFVX9rbSR2dpnguVDegWiEoziI50hivqFrw9jadO0x8
 YRxQ==
X-Gm-Message-State: APjAAAVCuu8athWBVbLQaBqXoPrD/j52LEFHsqlzsgtHHtnAIX1xWnLy
 xApdedrYLxuo0AaIubASQg==
X-Google-Smtp-Source: APXvYqwrX78qL+fphXmP83YaXehBjj7lGvQnlNkImVCOv6wfycHSII+8QXVN1ACQV9qwo7LJNutSCA==
X-Received: by 2002:aca:f3d4:: with SMTP id r203mr5157914oih.164.1568411340561; 
 Fri, 13 Sep 2019 14:49:00 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d17sm10106995otl.25.2019.09.13.14.48.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 14:49:00 -0700 (PDT)
Message-ID: <5d7c0ecc.1c69fb81.2f580.64bb@mx.google.com>
Date: Fri, 13 Sep 2019 16:48:59 -0500
From: Rob Herring <robh@kernel.org>
To: frederic.chen@mediatek.com
Subject: Re: [RFC PATCH V3 1/5] dt-bindings: mt8183: Added DIP dt-bindings
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-2-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909192244.9367-2-frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_144903_034396_EC6F9B45 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 Allan.Yang@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, hans.verkuil@cisco.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 holmes.chiou@mediatek.com, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 03:22:40 +0800, <frederic.chen@mediatek.com> wrote:
> From: Frederic Chen <frederic.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Digital Image
> Processing (DIP) unit of camera ISP system on Mediatek's SoCs.
> 
> It depends on the SCP and MDP 3 patch as following:
> 
> 1. dt-bindings: Add a binding for Mediatek SCP
>    https://patchwork.kernel.org/patch/11027247/
> 2. dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
>    https://patchwork.kernel.org/patch/10945603/
> 
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-dip.txt    | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
