Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0381C1F60
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 23:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xexONLERDVHqBpkIdmPb7qqrp76EyZbBDH16FcFT1D8=; b=nbDAEs78wWB63f
	6+q+lWzJSYgeWQhKHIKfXJxacqS6pB2SWVW0corpEtvXSwjBKkRnZWGz39rAzJA2uV992xeWkl4YP
	GaUEQnt6toRj+hSDYzn1Qh99vLxNJF02Gfjyi6t5ACgOH49P0rkMXav5DSmz1CIMsUJKBFWGbyaDh
	s61/swRNF1VmHXB2WhksYLxr5Mi9iVL0hny8Rdv7z59DzTP2rVekXc7d5IK3mZdi+W+ZYtNLT65X6
	3EPdj2iizfr0RddRW2p0HQah1zRMwtQwOHHpNOU/v8EJsFp7I9AIa7xAyaWj+0UW0rZNqrSyLbFYf
	TRsxU57yXBo/58SlwNLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcxV-0001VW-9W; Fri, 01 May 2020 21:12:33 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcxO-0001UV-Nf
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 21:12:28 +0000
Received: by mail-oo1-f68.google.com with SMTP id 190so995249ooa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 14:12:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=neD/3SOtF63yPlH47C0TH4isewUnsErPWNSdocH1b/Y=;
 b=JZ/zyePET2KuWfBDBIW5fJwmnspVANbm4SCLG8xI1ybcs3I3sfrzM4ZDd30jLE4sIy
 d2i/hb0oDequ6zJ13jOy92G25hcQWmDGPcXOBsjhaDXfR8skSTV4ojuqfcCYO07h3o44
 +r78Aqf9tluo3Ij04NNyDNpgGmzrppg32EYSDoo/EOmhYZr3czaWPSgBZRtYKkluPQ7k
 tXYNdihB1Q7NeDQDHOyJEFCjpICWfVdiAprjvruGAAPz7Hn910tuE7ypmlUqBtqrjgQL
 kcySRBh+f2s9Wq9CHapArBzd/DV+KVb2h6xqtzSAN+ANSv3SSLS2+Z9WJOzd1H4Z4dz+
 JR5w==
X-Gm-Message-State: AGi0PuZdrNxaHrI0XjaG97VXdb8FEcN8edL4w/0IEMZrZ7+vnD/w/W2p
 eG7BrhMEfR0MeKWd/DWLXQ==
X-Google-Smtp-Source: APiQypKGhKxUyl+qsvUosFPfbz8Np364y+bmPabAQjUDSrdYJ8AgozNEzaWPIVO80Fd7yqrgs2bFCw==
X-Received: by 2002:a4a:e60d:: with SMTP id f13mr5467792oot.6.1588367545541;
 Fri, 01 May 2020 14:12:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm1118263otn.32.2020.05.01.14.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 14:12:24 -0700 (PDT)
Received: (nullmailer pid 3449 invoked by uid 1000);
 Fri, 01 May 2020 21:12:24 -0000
Date: Fri, 1 May 2020 16:12:24 -0500
From: Rob Herring <robh@kernel.org>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH v3 4/6] dt-bindings: net: sun7i-gmac: Add syscon support
Message-ID: <20200501211224.GA2673@bogus>
References: <20200430115702.5768-1-plaes@plaes.org>
 <20200430115702.5768-5-plaes@plaes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430115702.5768-5-plaes@plaes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_141226_769242_F731DFAA 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Priit Laes <plaes@plaes.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 14:57:00 +0300, Priit Laes wrote:
> Now that driver supports syscon-based regmap access, document also the
> devicetree binding.
> 
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  .../bindings/net/allwinner,sun7i-a20-gmac.yaml    | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.example.dt.yaml: ethernet@1c50000: clock-names: ['stmmaceth'] is too short
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.example.dt.yaml: ethernet@1c50000: clocks: [[4294967295, 49]] is too short

See https://patchwork.ozlabs.org/patch/1280292

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
