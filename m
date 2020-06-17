Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E021FD312
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys68oabU2jf33mnuWM5gJUUvOXueQxhd9VSZnH8eWuI=; b=YmLMr6ju3jWWTn
	gxmpsTm8O3lwJ+pAS4fBDiybGi7DltyLnZW3oMtOvvOb08+DKMmQrRPrOeSNhURRr7SrPqRyKRAJ3
	JAZQeke19WUctZ/V+t2tDSRXJwgRMj9lA+95MA8uTG9zL0nHcq73i6tNFCa7mVZHmP6K+TbTEyLY5
	G7aURYs4r6Krr07Z0VEvRCfQ3PUqblw2Ppm16TrVcbJPB/2b7nVLZTOVzNZDws7u9iQGOxDyCTj0l
	l5COFiMsXjd/zEJN30o/FjAvx4fDzOQAJY15jWy4PC8SBbOUbNPwwG3+hxjmEUqGu3EvXjtx7bg6D
	KaEzxx+QPduYWLlPwXMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbSi-0000TR-6g; Wed, 17 Jun 2020 17:02:56 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbSW-0000T2-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:02:45 +0000
Received: by mail-il1-f193.google.com with SMTP id p5so2894993ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:02:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wysgsxusisoXYB/oBjiONlbpR3I9vXszy7LjMADdR3U=;
 b=h5Ip0GkXOlObiNfKdKkBpRcYRs33F1vKXUbkhCCFc8s1X5/HZKRESZtuIR9SXJ9nBc
 j9UuoYqO+Mn98z3ro0CK9yYZotvqCSyMeA/wrUdikzuarZxLKOVWNECmCi2ywq12PgEX
 Y6Jf7M94JFC4Fuxfvx84+SQNJxG9F4VJ3y5b2yQBAQh4Ijsy0cpY3g2tyHslwxLbkX0P
 49jI7QhieDK4K0Emb8hkYWXzKvW/b2h223qFD8yA/YN0JrsHMzitWJV0Nx4ja6HtAfF2
 O/ZD+w58m0em17jMtZ71AmPTi5MDj15nhclyLDiW3nTMYNXYsCuXRvv7PLZMYg+zTx5m
 OXQA==
X-Gm-Message-State: AOAM530hz3gnZPuEUvCRKDLbE4/IeQbxbTKR63mKMjx3vwXs3JuvtC2f
 8ZUeGa88kKrApR7HSYtdqQ==
X-Google-Smtp-Source: ABdhPJxImNwbUj9PpjA2BYws1gMI6MBBgEdSo1Q1xpoTQQD6tQRxzu/PREL+1EnhRRsp/OTR/9u+hw==
X-Received: by 2002:a92:cc0c:: with SMTP id s12mr9709396ilp.192.1592413363578; 
 Wed, 17 Jun 2020 10:02:43 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id f5sm214085iog.49.2020.06.17.10.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:02:42 -0700 (PDT)
Received: (nullmailer pid 2307219 invoked by uid 1000);
 Wed, 17 Jun 2020 17:02:41 -0000
Date: Wed, 17 Jun 2020 11:02:41 -0600
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: Add Sparx5 SDHCI controller
 bindings
Message-ID: <20200617170241.GA2306485@bogus>
References: <20200616140027.4949-1-lars.povlsen@microchip.com>
 <20200616140027.4949-2-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616140027.4949-2-lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_100244_458598_A6E8CF40 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 16:00:25 +0200, Lars Povlsen wrote:
> The Sparx5 SDHCI controller is based on the Designware controller IP.
> 
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../mmc/microchip,dw-sparx5-sdhci.yaml        | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dts:20:18: fatal error: dt-bindings/clock/microchip,sparx5.h: No such file or directory
         #include <dt-bindings/clock/microchip,sparx5.h>
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
scripts/Makefile.lib:315: recipe for target 'Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1347: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1310435

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
