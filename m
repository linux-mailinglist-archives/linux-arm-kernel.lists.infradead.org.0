Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C520E9D06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkCLd/GgY6/TyRz7xGpW4Ij3NHIAN7Ix0CNcVqsteSc=; b=S8N6zMF/YchFKJ
	d+KScof7Vno0NLKLScWJVm/DIrQjAOTSz+yDH9kPAoSklsWGRsRJd66hbiijHWYkVkaOX3wrmFJrI
	8VM4B2OcMhpubml/SAyhAllxKg5G5qwdSOE9a9t34ICSfrxgZmTQDyIkXCGIxHFCQfRbfl1hi77MZ
	+2uqaR/nAf4xtyB/nuPy4SOXosBL2QOw6QC2/xYRSxsre2R5kjYe+z3wVZxk1feadlxBx92KquwO+
	bsQxDMICp9YwC7ApK7XiZCID+2agfBMli7L9MtMWAiuVvOibB/fP7NFLRCnUojCU41YrDFH1Nqm/I
	nVRh8O/EYYqMIkmkPJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoZk-0002nj-T6; Wed, 30 Oct 2019 14:03:52 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoZc-0002n0-GK
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:03:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id s5so2028802oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AN38U5I1SnZ6V3pOgMZBIelT58p7AWURa3xEDYsxfVA=;
 b=BmEzoAKBZF9HWi1pSq9y1clFaFbfipmvQOXvcxMugKohIeCXAt4vCAKXX9aXDJTzkI
 KcVrCcsMWtp2iBBqQvJLP8UIUQ46rirnrC3RwNfK6N3yxPcJmqoRNlKmZY2igGENbZxn
 kJj63sujBNn8zBewpVH2Dn619W49aUgTHt8ru/61VKc+8xf1nJEbFhGLymp/uqp4t+Qw
 orexLXgrmQSmz8gMAKMGt6N5aRG5LbhbVA2m1+BgtfMolspUAtdhn4zpO5GkY7hrLrxs
 lDqppPaysZqg6SetLpTpx54NCVdTgi2E/LxuJKQnc9MeYncqSULGXMdUnOQJAZQ6u1bN
 4+VA==
X-Gm-Message-State: APjAAAXpTrDN9m53IMnCNjAoEfNub99rece9urkN6Qhdfv14wuWjtLzT
 WzuSLQPOKLai+16aHNILMQ==
X-Google-Smtp-Source: APXvYqzs4gCzKu5UGALSc99D70kO0H/Pi31X2AVwN/sFMphkC6DpupG1IrIm13xoTHG9lPhj3tKQMQ==
X-Received: by 2002:a54:4601:: with SMTP id p1mr9082779oip.113.1572444222698; 
 Wed, 30 Oct 2019 07:03:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o22sm55953otk.47.2019.10.30.07.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:03:41 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:03:40 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: arm: fsl: add nxp based toradex
 apalis/colibri binding docu
Message-ID: <20191030140340.GA3368@bogus>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-2-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-2-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_070344_545376_146B9C2E 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 26 Oct 2019 11:04:00 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Document the following NXP SoC based Toradex Apalis and Colibri module
> and carrier board devicetree bindings already supported:
> - toradex,apalis_imx6q            # Apalis iMX6 Module
> - toradex,apalis_imx6q-eval       # Apalis iMX6 Module on Apalisi
> 				    Evaluation Board
> - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> 
> - toradex,colibri_imx6dl          # Colibri iMX6 Module
> - toradex,colibri_imx6dl-eval-v3  # Colibri iMX6 Module on Colibri
> 				    Evaluation Board V3
> 
> - toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on
> 					    Colibri Evaluation Board
> - toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi /
> 					    Bluetooth Module on Colibri
> 					    Evaluation Board
> 
> - toradex,colibri-imx7s           # Colibri iMX7 Solo Module
> - toradex,colibri-imx7s-eval-v3   # Colibri iMX7 Solo Module on
> 				    Colibri Evaluation Board V3
> 
> - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
> - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC)
> 					    Module
> - toradex,colibri-imx7d-emmc-eval-v3      # Colibri iMX7 Dual 1GB (eMMC)
>                                             Module on Colibri Evaluation
> 					    Board V3
> - toradex,colibri-imx7d-eval-v3           # Colibri iMX7 Dual Module on
> 					    Colibri Evaluation Board V3
> - toradex,vf500-colibri_vf50              # Colibri VF50 Module
> - toradex,vf500-colibri_vf50-on-eval      # Colibri VF50 Module on
> 					    Colibri Evaluation Board
> - toradex,vf610-colibri_vf61              # Colibri VF61 Module
> - toradex,vf610-colibri_vf61-on-eval      # Colibri VF61 Module on
> 					    Colibri Evaluation Board
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v2: New patch.
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
