Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C8E13C6BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErbK1QCEbn8g6/Ru5j2aSkYVcgk1U9f6BljbQc5hgFw=; b=Wfcq6sjWUimvSi
	qw7NYaq80anY2aQOny5bX2TrnbDFe4+6P+YJtRdxSSkQqHyLEhx9nmMlIWVrQrhtS4oWSagMbdpCr
	lh8lcq+3CA+fVWs6jQX3/HiIVOwW0HWG+ma/6gQRxF3L75IpIFjlCtQEkbChSFtrv5FoUIACfrjhn
	50dOnn9GL1WpcRPryFl+nGneEcoPxtklcFL1DwlZlzlCvSWSuj0uO6u+LsmkM1t9c7GeXVBQX9NXp
	SEGzR6yRtL4ZjBVLhx2xUT9/SLdwjpTqueTkvbI7v4DzftGZOAxViGZ7cZp2i49nZcmLO2YkyZ3f5
	4kQV0Jh25+L8B22dhvoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irk6Q-0004Av-Rx; Wed, 15 Jan 2020 14:57:02 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irk6D-00049W-Jp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:56:54 +0000
Received: by mail-oi1-f194.google.com with SMTP id n16so15589506oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:56:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9gnxD+G4FNn+U8wzPNZLFG38GLzn+JUvySqC1BxpFAA=;
 b=gYlHxAvJ1WaQX99Y4PJvhYpoa8FfsVzeLE6Xb+RGXXwYDZ50GNTVPWCLFC66sRTqqr
 bVRRR1depCnII5FkBo6Bk8eu5lf+8TAHvRhODpFmGSzrHe4Gdwek9I/uT6ZMYpoXw1ya
 V3OLdxoo/3ZkNq/qW/S18JU6lGH+Cuk7uyX9UgQAWCyd5h6V5jEkRTTSVzHUhALtF54J
 Uagmr5pxdEWNYjdifI5fjQi87Az8WaIYKlOMkMu1UpMIcSIms0M59RBbhVtfxakVbNPJ
 rRSqf0o4mZ6HeFINXGKWq4y5mvl5S01OgncjtDulzN61Okzs7oyxamcx2cvgfI9XJtnT
 iPWQ==
X-Gm-Message-State: APjAAAVqBJBrjx4l6gXoRfuouryRQhxQnVAQk5WbD1bIjCswa/6OHF4m
 KIWvbVfwXNSnBmPjbmBv5TXW1bI=
X-Google-Smtp-Source: APXvYqxahidKY5uPySbt6WXe/S0K6vDCHzN8zDDOc4DEbU6nokdVSDoPpH3cLa0ULVPNTtid5IgulA==
X-Received: by 2002:aca:3857:: with SMTP id f84mr100858oia.150.1579100207637; 
 Wed, 15 Jan 2020 06:56:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 6sm5697290oil.43.2020.01.15.06.56.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 06:56:46 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22040c
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 08:56:45 -0600
Date: Wed, 15 Jan 2020 08:56:45 -0600
From: Rob Herring <robh@kernel.org>
To: Ludovic Barre <ludovic.barre@st.com>
Subject: Re: [PATCH 5/9] dt-bindings: mmc: mmci: add delay block base
 register for sdmmc
Message-ID: <20200115145645.GA599@bogus>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-6-ludovic.barre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110134823.14882-6-ludovic.barre@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_065649_652295_978F5E6A 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:48:19PM +0100, Ludovic Barre wrote:
> To support the sdr104 mode, the sdmmc variant has a
> hardware delay block to manage the clock phase when sampling
> data received by the card.
> 
> This patch adds a second base register (optional) for
> sdmmc delay block.
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmci.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mmci.txt b/Documentation/devicetree/bindings/mmc/mmci.txt
> index 6d3c626e017d..4ec921e4bf34 100644
> --- a/Documentation/devicetree/bindings/mmc/mmci.txt
> +++ b/Documentation/devicetree/bindings/mmc/mmci.txt
> @@ -28,6 +28,8 @@ specific for ux500 variant:
>  - st,sig-pin-fbclk       : feedback clock signal pin used.
>  
>  specific for sdmmc variant:
> +- reg			 : a second base register may be defined if a delay
> +                           block is present and used for tuning.

Which compatibles have a 2nd reg entry?

>  - st,sig-dir             : signal direction polarity used for cmd, dat0 dat123.
>  - st,neg-edge            : data & command phase relation, generated on
>                             sd clock falling edge.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
