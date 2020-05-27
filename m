Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9441E4E37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfYxCGTuFeM0GudgRZw0caQ4nqGAnGEPdX47IFXGpgg=; b=HwO0YWlqqLB8DN
	3YOzFL9Ek9selI3DrGourrFv+hmdOGiyal+84uEqPflFzioEVhk/FLmJ+FijSjmNvQCIQO3ecf/GL
	gbFF6WOJOLn2hg7FoyMv16QMxYpS7G4fwGW0nh1Fyu6YcXFb+rAFo4U9H1CgcwEssy7D9zDWFT93S
	5JZixZ5P+3/q7hZDf1XT+kmfzNVyvdN553XAb5E7gOzdydNwoR2ulMKyIXaQwoyl6l6WcYJnFNLOY
	tE5HO4SDDs1dpb7d1exPGFtnCoT17DP7MYtCA1sglqR4kLs5Mu0WB5k9BXzESHksoeZXfpmuic2m+
	ml2ASa24DZYm8k3AXSoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1o2-0007D4-Cl; Wed, 27 May 2020 19:33:38 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1ns-0007CU-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:33:30 +0000
Received: by mail-io1-f65.google.com with SMTP id h10so27397013iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 12:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W3JSjQKNUTVDwq2jZfNyE8OlRvobHjfbDFjoKiJceQk=;
 b=lgQPaeQN3WRBJCyXuXcWt7QFE7/AXm8jnvj2SHD8ViEDjZj9MatMJLh4/5Zs1VDkgy
 cMIia2ULuQ6NXHGz7ZNsYvGWBUhfNmfTbLMDYgawH7krL+A5uklZpMMxzaJEgQm62Nd1
 AmwPlx10vKlrHjZsLfZoyWlC4hrEF0bS3eg5XXOkYGf68Eu+F/zAcqGfzSDgiyb5BfJD
 j+b3tATgb5y2f/UPZzOKfjTrfxHhWWWi156jf7kvz+uzI3Z5GauxCILp+s7yhezf/krR
 ynP34bwmGX6u8nYhaUKrab65Ph8g7u/iQfV/JVjLrpDhbGwU3lNseI5pHfGiDjQtWh7G
 jKwA==
X-Gm-Message-State: AOAM533AjJ9mXpQ1U4LcBJw2rSK+lwvGMoBxqIms4x8Xub9NY9UqUcmq
 8IFE382WlU5W5G++Q+eYfw==
X-Google-Smtp-Source: ABdhPJxRWfw0O6HofA51rJdaC3d5All8AHRJ9jL/XoXkz1mv9qFlW+eJj6Id/+SWWdbo4NPhKdWj2w==
X-Received: by 2002:a02:4d:: with SMTP id 74mr7144801jaa.141.1590608007841;
 Wed, 27 May 2020 12:33:27 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id t17sm2037371ilm.7.2020.05.27.12.33.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 12:33:27 -0700 (PDT)
Received: (nullmailer pid 2604073 invoked by uid 1000);
 Wed, 27 May 2020 19:33:26 -0000
Date: Wed, 27 May 2020 13:33:26 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH] dt-bindings: watchdog: Convert UniPhier watchdog timer
 to json-schema
Message-ID: <20200527193326.GA2604024@bogus>
References: <1589348545-22244-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589348545-22244-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_123329_000006_D00F4697 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 14:42:25 +0900, Kunihiko Hayashi wrote:
> Convert UniPhier watchdog timer binding to DT schema format.
> 
> Cc: Keiji Hayashibara <hayashibara.keiji@socionext.com>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/watchdog/socionext,uniphier-wdt.yaml  | 36 ++++++++++++++++++++++
>  .../devicetree/bindings/watchdog/uniphier-wdt.txt  | 20 ------------
>  2 files changed, 36 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/socionext,uniphier-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/uniphier-wdt.txt
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
