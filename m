Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F70AE306
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuYkSr8WQzeqmF78O5MW1VXFvHIRMNoPFVSU87hvKM0=; b=Op0WCl8HXoHNuH
	DOlxFVnQcPTlVOlZQlHO8WBgRPNU18pwZgk36ZGC0U0A8SupIrdYonMbM5agaIkTQ47iyRjd5QjN+
	NqXQRMQEjI2+D+cMIjqqF5kFiTTcYpViYzm/Wus0EIJgT62mv+Wy/gNRDXlYTLnFsTEnXxQ/wCPoI
	+U1LSCkbhmckg4qv84MfSpAp3CX+8ILAQ+K3L5axwCrJdZjEP7/J5oz5BqI7Yl7+cRjL3axBa4pCL
	3AwztDHd5yab4YYNoj3o0+plf5xhN9YCpP/uwFv7OaGE9PqP2FJInf2h1JFh78Dve2+lP2voiWrJ2
	oERMODDD5+tlU+DKFbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5i1-00034L-JB; Mon, 29 Apr 2019 12:48:37 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5hu-00033o-FY; Mon, 29 Apr 2019 12:48:31 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so5120162oig.9;
 Mon, 29 Apr 2019 05:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=og27ttBtjgJ9jOWpsX9tE4/VFPoPVEaauxxZKhLh4wA=;
 b=j6wJiQ3rAM4ClVTzfu6I9YaLhthDcB6MRlV/C8t57/CQA+cg2ci6CHoXhvkxr3J4Cz
 flzVc6rJ5RmXIjEwIdQMob/0p/WTGpAESK4l5sAtf1xcof07ZW1xe2aKZPbFGVceyuq6
 KbzwwDsqLex90/86VexG6+OBY4dHhjHdcNLyf7kTGbHm9GuQvSOgxTh4xp4t5pGL1FT3
 EMcv63JXZo+1eM3UAhqIX4Z44yMqjW5fxgNywwBBfBMTgA+AjDseIYz3881scn+Wmtqk
 FL48eamNidT0DC+c1lnzOqmqw/cG+WKnVUVBF5yIBcoyVOALvh6kCJeoEDIy6J1m/A+7
 mskA==
X-Gm-Message-State: APjAAAVCVOsl2hLSqnndD7+XTtnOU/t9IVSP5qaB2tHzm3W2RjsLRAGZ
 i8iQbbpfF4gaS90hUOgW0A==
X-Google-Smtp-Source: APXvYqwKkbM8iUDWYjwi3FrVr9CbooaBbkgXDxXE3TLfLAeQGcrA39ywmAR8rFYO2DOBT72rVzWKCg==
X-Received: by 2002:aca:be89:: with SMTP id
 o131mr15557106oif.138.1556542108407; 
 Mon, 29 Apr 2019 05:48:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c3sm7872781otr.57.2019.04.29.05.48.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 05:48:27 -0700 (PDT)
Date: Mon, 29 Apr 2019 07:48:27 -0500
From: Rob Herring <robh@kernel.org>
To: Long Cheng <long.cheng@mediatek.com>
Subject: Re: [PATCH 3/4] dt-bindings: dma: uart: rename binding
Message-ID: <20190429124827.GA13816@bogus>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-4-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556336193-15198-4-git-send-email-long.cheng@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_054830_522545_E62BD3A1 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sean Wang <sean.wang@kernel.org>,
 Zhenbao Liu <zhenbao.liu@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Long Cheng <long.cheng@mediatek.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 YT Shen <yt.shen@mediatek.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 27 Apr 2019 11:36:32 +0800, Long Cheng wrote:
> The filename matches mtk-uart-apdma.c.
> So using "mtk-uart-apdma.txt" should be better.
> And add some property.
> 
> Signed-off-by: Long Cheng <long.cheng@mediatek.com>
> ---
>  .../devicetree/bindings/dma/8250_mtk_dma.txt       |   33 ------------
>  .../devicetree/bindings/dma/mtk-uart-apdma.txt     |   55 ++++++++++++++++++++
>  2 files changed, 55 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/dma/8250_mtk_dma.txt
>  create mode 100644 Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
