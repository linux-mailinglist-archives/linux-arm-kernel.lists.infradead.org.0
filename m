Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDEE1B13A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEnXwdKojh1dUkqZhKaVsfaK/w5ihlInXuCY9utebng=; b=mKZEXDT5YVjLaR
	khc/nspbe2Xd7dcE4FvXBeaQu5xr1dJMKpcB6WsTS2GF7pBI4xx9hc2ZHyctsM/EhZATjGWDY2up/
	KPkh78WHnlibyl6BwhipGYWfiPb8ykIU15A6tAmFvWFl8XWJrSE0YicY+OUaOEA8LGa0nlEYdOwUV
	1nyqEOv9onYdBUmNOJRGPcuQyGMvqbyPkvNpX9ZSXCUJ6ebEimjeJTYL+IXnCSc1J00jDS5fLmOP8
	H+5rkTQj60mJ5eXDOgh1SegYMz3i4IqAvxcehuIpVZDveNOd7cEbrNTTToKvgciYOvcqqyeuqw6E7
	J28B93pQNRizvXqDt0vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQae2-0000vY-OG; Mon, 20 Apr 2020 17:55:46 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQada-0000hN-Pw; Mon, 20 Apr 2020 17:55:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id q204so9547072oia.13;
 Mon, 20 Apr 2020 10:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pnrv9lM8OUTY4sC+Y+b2B4Yg/ImImSGXZBXHhlUhbQo=;
 b=WP75g9Mha3y2favfsxXQ4CHTs454ozrIjbtpShvDomw6EObqzktSrblJsWrS4EyRh1
 3Q78pBn3gmkpGKNqZFLTAte7OK5fDYnDbyj+qY8fbSCYxMXzTdPBeraGrvIvwxldB0od
 jTtm27+xDs1oGp2Z6Axqu6B3fCLLenGtez4QHk6q1+NcEwb91k/I22cS3ERsVzgMvL/W
 uMjS4PbuLnXGilwm6O16Q+20J9ufGNo9PBEN3ot/KTszejG3u36n7eGsE3TdFCVujd0g
 q5e4Zfvxg9jf/h690f1gmYy5wFeXU+bjJMc+7AJsDr4RanwJz1QEUJMoGuqAaxRosn1J
 O67Q==
X-Gm-Message-State: AGi0PuYC4CeTK0P88iqZBXliHJkKIvGrTIa2GCjoII5EQdg0z60sXs4V
 30Wp3sRfmViSDrvM4oAVo3MFP0k=
X-Google-Smtp-Source: APiQypKHszk2EWEj6YDqOxTUfHxKYjV5QQAmfU8m5CMhLH5+8GXPeri83oufl4B0ZfG2WOLRfc1+Kw==
X-Received: by 2002:aca:4b10:: with SMTP id y16mr435420oia.23.1587405317335;
 Mon, 20 Apr 2020 10:55:17 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k19sm25202oof.33.2020.04.20.10.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 10:55:16 -0700 (PDT)
Received: (nullmailer pid 29244 invoked by uid 1000);
 Mon, 20 Apr 2020 17:55:15 -0000
Date: Mon, 20 Apr 2020 12:55:15 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: power: meson-ee-pwrc: add support
 for Meson8/8b/8m2
Message-ID: <20200420175515.GA28534@bogus>
References: <20200417190825.1363345-1-martin.blumenstingl@googlemail.com>
 <20200417190825.1363345-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417190825.1363345-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_105518_842086_09180DC1 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 21:08:22 +0200, Martin Blumenstingl wrote:
> The power domains on the 32-bit Meson8/Meson8b/Meson8m2 SoCs are very
> similar to what G12A still uses. The (known) differences are:
> - Meson8 doesn't use any reset lines at all
> - Meson8b and Meson8m2 use the same reset lines, which are different
>   from what the 64-bit SoCs use
> - there is no "vapb" clock on the older SoCs
> - amlogic,ao-sysctrl cannot point to the whole AO sysctrl region but
>   only the power management related registers
> 
> Add a new compatible string and adjust clock and reset line expectations
> for each SoC.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/power/amlogic,meson-ee-pwrc.yaml | 75 ++++++++++++++-----
>  include/dt-bindings/power/meson8-power.h      | 13 ++++
>  2 files changed, 71 insertions(+), 17 deletions(-)
>  create mode 100644 include/dt-bindings/power/meson8-power.h
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.example.dt.yaml: power-controller: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1272441

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
