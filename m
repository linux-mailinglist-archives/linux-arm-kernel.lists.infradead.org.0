Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4181BB08E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 23:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dMZzzh5sDGADIZPC4ewNMv5XUgUc4qgYcIJ7XfU0n8=; b=QVOCPh8h/XFi69
	KV2lRuHXTewLAq3kyOpfhUN3h5KPxhueEJ//rGtzMt6aOiv15m8t5xPXMJsxu2MgfDy+BXA+GtD9x
	Uf4CRVc1PUZHKUvcLob/DzS/md9e+acPQcvChTmm5po4s+MduB3CglxygUUwoJ1faQBuSa5vX1lsO
	AeV6GqRNNbLpNqoG6vdup5gK2O0XDaKDJUWmEf4wNITJKujmtgkauAMLxqBNVaimku4GF16EE1fqJ
	a38AocQedG6hZ8317RirpVc2z+2w5CxUvSpdCoy/4deen5OdTkyQhaui1OnSOzy7FRfgqVNhHwksN
	UzBTQp1hBgAIOEhAbeYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBMq-00087n-Pw; Mon, 27 Apr 2020 21:32:44 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBMW-00084u-33; Mon, 27 Apr 2020 21:32:25 +0000
Received: by mail-ot1-f66.google.com with SMTP id i27so28961465ota.7;
 Mon, 27 Apr 2020 14:32:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9Lh+W+OrenE6K2KqGrfInjEdQRXHsGOZ4lqRiJD6MSc=;
 b=avUx1PS4nb8n71MFYFGZoc7K//L3GeKERFL3BnwMDqwm/WekojBaCIkP/+G5FFo2tR
 xmpewBPmRgKjg9JXHMaL+SCeM6jLPfXFo9C09Fs71zATDK+JAsnWQgEoZqL2WazlgaSh
 2UECDswGBbTNAr+aPZGT2xmlIRy0M0otrlJc17U9VQKsGxEo3Vc/nq5PU3MmRGlDkDsZ
 KI48aO9DGN9ugEOcgYEZQ9pjKM5fBRIRREmw1QiN0QYH5Ik+T54n77qzZ/lsLxnxOKGE
 qvry1pv2mM5bbzQeIMANjuS41N0pfVGa0c1cLZdeSRL+JAb4FEtVzietx9lrwLHx30FO
 G/bw==
X-Gm-Message-State: AGi0Puay9rMv7Gh2L66QkX4lP2wH0+AaznwhF/iO1vMU3umCaNMaQ8b0
 7UanHKviWiBkC2plSm5/tw==
X-Google-Smtp-Source: APiQypIC4V0z/17lmRjDdI8o+qgwAzOCFqathXFshoqhtN6/h6jNp7YOpy+L5UvfgaRJ8EfmPt4ziQ==
X-Received: by 2002:a9d:7304:: with SMTP id e4mr10136654otk.243.1588023143159; 
 Mon, 27 Apr 2020 14:32:23 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s73sm4337780oih.14.2020.04.27.14.32.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 14:32:22 -0700 (PDT)
Received: (nullmailer pid 31871 invoked by uid 1000);
 Mon, 27 Apr 2020 21:32:21 -0000
Date: Mon, 27 Apr 2020 16:32:21 -0500
From: Rob Herring <robh@kernel.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: actions: Document Caninos
 Loucos Labrador
Message-ID: <20200427213221.GA31480@bogus>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
 <20200426165835.105970-1-matheus@castello.eng.br>
 <20200426165835.105970-3-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426165835.105970-3-matheus@castello.eng.br>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_143224_131228_A4F46D36 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Matheus Castello <matheus@castello.eng.br>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, afaerber@suse.de, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 26 Apr 2020 13:58:34 -0300, Matheus Castello wrote:
> Update the documentation to add the Caninos Loucos Labrador. Labrador
> project consists of a computer on module based on the Actions Semi S500
> processor and the Labrador base board.
> 
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/arm/actions.yaml:  while scanning for the next token
found character that cannot start any token
  in "<unicode string>", line 24, column 1
Documentation/devicetree/bindings/Makefile:11: recipe for target 'Documentation/devicetree/bindings/arm/actions.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/arm/actions.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
warning: no schema found in file: Documentation/devicetree/bindings/arm/actions.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/actions.yaml: ignoring, error parsing file
warning: no schema found in file: Documentation/devicetree/bindings/arm/actions.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/actions.yaml: ignoring, error parsing file
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1277145

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
