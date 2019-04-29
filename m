Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86052E97E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGt6xZWqALuJOglYEt5NCEHFQx0LSSYHSOscdwOZv00=; b=haFcFkrmZefcto
	xexBnN2v27xpz1u28W/gi7jsw30J6QPQQqfqv7B00COLz/tu9R3sqXbJaINk4rRbraA2AnplARIfU
	2KemM2vLnvvKQCyoo212lnCJ3oy/kSdZ4ro8aa5F4G9BV40PcFMllceiLdqnEI7lszZj+KWGM19Ur
	1F/qlKcYKlGJixWQYxVCCzT4+2XC89q+iqKNf4HpWjyzM1jzMPfOc89Z/Fu45l8Yt03UlBlLmWgsn
	aPZgqvvrrok5bW8NPQhecsNRh0NyIdc/GalFAJvFZr2rCVn7adABoEjcA0vuNPcgIQspGGJMzyjrf
	SYfAt5383PRfb5C/ELpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAOg-0002G9-Hc; Mon, 29 Apr 2019 17:48:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAOY-0002Fd-Sb
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:48:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id b18so432094otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=96Pv4XmpD2oLDllhCoFarHwO67SqW17W7Bz6iMLIAPg=;
 b=SoIcuCpL0LLvYUmNi05Sltfr4oEtSpsAF2WPU4IbmAeQIF1+GcSX82MdaTPUpYRHJM
 vSUpsxUyvTM9QTqa20f6MLrqwhBkV8GO+v7vmTGhq3vX48Ckm+DPwQaGga2IpM4msfKX
 Aube6SANnvwvRhiz2DHxDdGq3Jf1wyZ1o1o8BTTRQH1O/nzMip6LuZmjNLMG1B2bEg8C
 rLHiOYqPMfvYlH29RdiDPEiLclEpEyb9Yb/lfHcUTLA32CnESeoZefpcfQVPACeF+WE9
 LASaB/ceTKlHTxQ4JPQajGUnuDq93LvH3oNrSwc2tGah+4mqIYzI4/HD/vF43t0xUTGS
 z7dw==
X-Gm-Message-State: APjAAAVCFhbI8wxc4Q8/5RIRw3niHxE2fSGrxlm3EOZ1dd1WScxqHmsE
 YcY6ST8C69fMdHk2i25wqVvo59A=
X-Google-Smtp-Source: APXvYqy5RZ6ixsBcrAfarmCt6sR4eTlJQvc1g+ILNKDBjbhglFflOHlsQy2h1OTxaR6NC5Gvde0Lhg==
X-Received: by 2002:a9d:4a9c:: with SMTP id i28mr9855983otf.326.1556560130035; 
 Mon, 29 Apr 2019 10:48:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i17sm13852752otr.36.2019.04.29.10.48.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:48:49 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:48:48 -0500
From: Rob Herring <robh@kernel.org>
To: Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add support for
 imx6ul-pico-nymph
Message-ID: <20190429174848.GA27422@bogus>
References: <20190410010013.17259-1-otavio@ossystems.com.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190410010013.17259-1-otavio@ossystems.com.br>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104850_927502_1D6603B3 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Otavio Salvador <otavio@ossystems.com.br>,
 linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  9 Apr 2019 22:00:12 -0300, Otavio Salvador wrote:
> From: Fabio Estevam <festevam@gmail.com>
> 
> Add support for TechNexion's imx6ul-pico-nymph board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
> ---
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
