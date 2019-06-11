Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4634183F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04d69uj7QewuPmwhO31ED+KZqN88qNMbzIGV32lNKHs=; b=YhpnvIW99OTyqR
	MlRnuayr/9PrSgRfPTZf5UMS3jx/ETDQ4i62geWmhFxBofyJy4DywZbPih6BkPYEN3D8o7IgkbjNb
	zrXtHzAmIVsZ4KFSrfYyyiGRlN9erIwJRBMpSNnY6JdlKFXTjsufYwcnPnwuWmSTQyuC7e9ucDgZx
	Fp/RcfrdRoNlVw7EcN22TJDA1eQaBEf2Sfrt7ve4q1nvW4lGg2cnhj6UF6rMd7zd20AnC7SlbgcMk
	jL6pa62iv4QgEr80syz/yjpCJuuI/nM1EsSkw9wYvMIkKTXoxWp+nTNk6AXQWc2cL9L/5EVEpequm
	SVax0FcyFEMMS7/5/9cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapMQ-0003yX-Qg; Tue, 11 Jun 2019 22:35:22 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapMH-0003xT-1K
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:35:14 +0000
Received: by mail-io1-f66.google.com with SMTP id e5so11326154iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NCgQwxsu0f3r4btRqej5pZhVli0wu2GBc0gKWgavRis=;
 b=AHXhFIPfJq34w6bKxeRA/I8LQY1u2o8PVCW3gU4wc5+qXngIC1F1LBMQQZ9oSjzj4L
 ayUiLdHcyYwKxgBk7AF52+KiI0HMR62pAjf69yZ1v23qosNkMxlf9j+AaJ96SAbtRn7U
 RPKB78YKW48BY70hf63jujTXaDoHRb6F07S/BtR24HHHhMiOvgDM5pE45n/FNmrrKGWE
 MCa2VR+FoI5IrmTeNx2hBIrsC+TI3uMFC+LiSS873L8JGviTryywJ77PwuC4ZlAYfmmH
 7LXB2WC1Uw+6cHat5clq8DCPGVGk6FFZCgyXWuNZSGdU+9E/OCu6lRPVnjPSIMuufux4
 vUYw==
X-Gm-Message-State: APjAAAXT0rOskyaduop3VPEvopPNmH1n+Xc6SyM0yW+a9SxLLb6upvhZ
 YmtzsMlq5jxQjubEkkBjEg==
X-Google-Smtp-Source: APXvYqyldbzjVVfHCAHQd21SudrsdTqB9IH5YfFTe83h4l7n3V0qepl2ZRh+aD/yH4IiOo6MWE21IQ==
X-Received: by 2002:a05:6602:2256:: with SMTP id
 o22mr19307948ioo.95.1560292511617; 
 Tue, 11 Jun 2019 15:35:11 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id q142sm1884761itb.17.2019.06.11.15.35.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:35:10 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:35:07 -0600
From: Rob Herring <robh@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 10/15] dma: imx-sdma: add i.mx6ul/6sx compatible name
Message-ID: <20190611223507.GA25722@bogus>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-11-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610081753.11422-11-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_153513_085796_D7189019 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 will.deacon@arm.com, linux-imx@nxp.com, linux-spi@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 16:17:48 +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> Add i.mx6ul and i.mx6sx compatible name in binding doc.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
