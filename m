Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E221BB090
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 23:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JZsiD7eQkxAkSEnyMc80QY1YejWHmrAJB/1xPE4pzA=; b=uGdGF62LWmW1Eu
	3Q6fn7sEq7khp0aM796Mv+eKqaH9e9kQkdeXmsmpHmI64As78pn9ZV2Rt4jff3F36QyN2B6wI2+g9
	QuM7E6c4WJleJVIN4xSTH303bO0Ny/DlYwXOkPZ1V4UPvT+B7YFElmz3eWuW4JdoQYmtilsdj2JwN
	zPSgiXniC9ybahHV55cSvvQIlpkl8AYLI8Sz1wSwNnTbZEBtXVtZP9BKf+CtrPLB6GOk5uDOFBEsx
	xVfpKvTNPh961y6HdWevzCb25bO6ywby+SRtru5sjRybmH5UuVIHW3GKgwIh1GWb4ePwNt3GH0mo9
	6g23mdOQvncLgXBmz4sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBN7-0008Of-19; Mon, 27 Apr 2020 21:33:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBMs-0008Ko-HJ; Mon, 27 Apr 2020 21:32:47 +0000
Received: by mail-ot1-f67.google.com with SMTP id j4so29013298otr.11;
 Mon, 27 Apr 2020 14:32:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VhX0m7XiVUavIDrF8Px+dNHE5Y+gy8GzoSAbvu2Xn34=;
 b=iBnP0ebLIeKHLx8q06MM0FJOLR1bsWI8GlZa+zfcfFouLDeJHC5vx1srZMazcOSYHf
 jfSPnUJ8fboF7L5bKPJpdo7toS2tUIDfI/V7rVeGlYiWDJRIheqi+kmYuBLuf1w4wCJx
 ArI5HapWQE0axt6DfGqQ0f629NK2L4dXxSVSsBnqMjUhf4FvwxPqwSCixcTqmGliShse
 S5zQDBPb1JaHFf+UYW3OpaB2/OMW678pmhhNrDi4NqevqyfEcVGqUTrOxPzNArR3Lr66
 xf+mUOfHPH1+wyJHTGAtGUVcne4NgZHZ/gGbCZFyNBk0/nSFrdoIEoALMFVNYix0Ou6F
 8nNg==
X-Gm-Message-State: AGi0PuZVVrlDEWKHbzyoPzJ2N9fRxYMXGzXqCKPdCqesNhFmQ/ZoG+3s
 zM/ghZDC7lag1zMcC/EQ+eZHo44=
X-Google-Smtp-Source: APiQypKaNxXTFDM9s/8lHp/0DfHRTlPNydLnDnh9/hUQgcEGUw3vp0iDQdHVuaMxyOuo5fm7o/BuuA==
X-Received: by 2002:aca:4f09:: with SMTP id d9mr631326oib.172.1588023164944;
 Mon, 27 Apr 2020 14:32:44 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j70sm90813oib.53.2020.04.27.14.32.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 14:32:44 -0700 (PDT)
Received: (nullmailer pid 32460 invoked by uid 1000);
 Mon, 27 Apr 2020 21:32:42 -0000
Date: Mon, 27 Apr 2020 16:32:42 -0500
From: Rob Herring <robh@kernel.org>
To: EastL <EastL.Lee@mediatek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: dmaengine: Add MediaTek
 Command-Queue DMA controller bindings
Message-ID: <20200427213242.GA32009@bogus>
References: <1587955977-17207-1-git-send-email-EastL.Lee@mediatek.com>
 <1587955977-17207-2-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587955977-17207-2-git-send-email-EastL.Lee@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_143246_576028_0E2D6C77 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 EastL <EastL.Lee@mediatek.com>, dmaengine@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 10:52:56 +0800, EastL wrote:
> Document the devicetree bindings for MediaTek Command-Queue DMA controller
> which could be found on MT6779 SoC or other similar Mediatek SoCs.
> 
> Signed-off-by: EastL <EastL.Lee@mediatek.com>
> ---
>  .../devicetree/bindings/dma/mtk-cqdma.yaml         | 98 ++++++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/mtk-cqdma.example.dt.yaml: dma-controller@10212000: interrupts: [[0, 139, 8], [0, 140, 8], [0, 141, 8]] is too short
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/mtk-cqdma.example.dt.yaml: dma-controller@10212000: reg: [[0, 270606336, 0, 128], [0, 270606464, 0, 128], [0, 270606592, 0, 128]] is too short

See https://patchwork.ozlabs.org/patch/1277292

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
