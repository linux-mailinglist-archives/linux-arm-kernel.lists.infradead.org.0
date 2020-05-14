Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE411D309A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2FTWRH9Htla/rtWG0HP+QNYdBP5jBaw3uBE9n8FlLM=; b=MbxAEnSk3SwXSU
	Z8x+D9TawrnvGdafp83TsSrVYbbGoZXEfw6hMwRKI/ELjJil3YXw7p+4vWuq1LpMgzNBBt/tjxIwN
	Z2tVzlT2H4vuCcyklGhF3g6e0EDqQeb8TVa2VqMUs+buYe2ao5AHxwKICyiWYjgzjfnYDz1ks4fm/
	uQNBVQtTCKclqR/AxP+b3hv7bCGRdM4xjqnR5bOJxO5uJozVz2NwfK3Z+ogmYKUa6w9o/yrVpV8+r
	yRMV9dr1TrIQk3+xK5GWiMdLTUaUllSh8pBW7XX21iXQ0dmXLRX2PP8lCRZcJ+80Vncvm1hfXGopC
	VnP0/B8fS/NCTjoxMRXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDWt-0007AC-Aj; Thu, 14 May 2020 13:04:03 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDWj-00079Z-Qu
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:03:55 +0000
Received: by mail-oo1-f65.google.com with SMTP id z6so699255ooz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 06:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BQlGy1003OHhQDoA039YQUlM3pD9hZvmAohGgf3kvn4=;
 b=kXMUxZE/HZYAQq/tXsOl/eF1zlBPAYMr37vUCS9c5R3ogZHEhJsRDavY/h09AOxtVH
 awQFeKClPLOjbi6TSXJnzBPqf2n7hEDEsRYxjVRUXq2a2Hrbe/nerqLW3UUGm/9vPG1c
 aS5+KrbHudtNZNBMImKHfT9S/wxBDn2TSRgbfp+ngfzFPH9o7Ec0noMciu61TLbTDf4v
 6r5LL4GRsfUi2m0QPBoO38eoyt+JHZCpoiS3gT+5+jIVhhs/QZcNRUlltIWirG8xDtf/
 s2xsXNFnHHNH2Fmifn8+K+3PP6jm9krFQTvskjOe/c3Q3WJOnaM8vi7XwAgkYkuYzp9d
 s1mw==
X-Gm-Message-State: AOAM531VdGQZcuKRDMWoSwkm3kelhi+ikP6aesfSkRMd0lWoTXjWhEfS
 znwbr28wGhAIUyjUVyrb8w==
X-Google-Smtp-Source: ABdhPJxYFBjlqFYAj1GqfM1gMHAmeTVKS1xzDLOHNBWjxWUb+onZgcIBtfAiY2GmmiFtwefYIt7M5A==
X-Received: by 2002:a4a:1a42:: with SMTP id 63mr1040493oof.16.1589461432786;
 Thu, 14 May 2020 06:03:52 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q68sm755657ooa.29.2020.05.14.06.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 06:03:52 -0700 (PDT)
Received: (nullmailer pid 18205 invoked by uid 1000);
 Thu, 14 May 2020 13:03:51 -0000
Date: Thu, 14 May 2020 08:03:51 -0500
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
Message-ID: <20200514130351.GA17797@bogus>
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-2-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513133122.25121-2-lars.povlsen@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_060353_864592_433FD37E 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, SoC Team <soc@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 15:31:20 +0200, Lars Povlsen wrote:
> The Sparx5 SDHCI controller is based on the Designware controller IP.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../mmc/microchip,dw-sparx5-sdhci.yaml        | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dts:20:18: fatal error: dt-bindings/clock/microchip,sparx5.h: No such file or directory
         #include <dt-bindings/clock/microchip,sparx5.h>
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1289290

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
