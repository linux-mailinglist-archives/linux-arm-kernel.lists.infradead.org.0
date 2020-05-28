Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EE21E5410
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz77UrmBAdc6tvr33tXf74RBRQh12ZuDG2TOJi+a8Fg=; b=IZXLfbYXw/LrnH
	8M4c+JO5F/cwz+emvrjY75Ixsh7EQSwcOV5+O8EvFAOWOct6P1inEQmeJuQ1uQVQoVwwbEPxPOHN3
	Yw/S2ofhXnegmdjqZdkRzmmGd2O7FX5w/I04oEcvFgUrSwiFMlgdB3NLPGj4e0QXwPIG26OW0Fgnb
	3OX/OB5lFp4gDbGogfWwiUVFAnfGxmDuXv+Hbi5mYDNjR2xjOtYGsuTClz3QL7ERUqc1vzx4YfGVu
	xfqO4oUf5zAxvybj/fNzIcphh6ORZeX3N+RXkeC2ENLyBXe1ulSDk49nq+ucDwXLk58eUpJc5ZrPs
	wUhO9wYWDr2+zaTtwfgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8TH-0002m0-Ld; Thu, 28 May 2020 02:40:39 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8TA-0002lJ-AB
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:40:33 +0000
Received: by mail-io1-f66.google.com with SMTP id q8so26981395iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:40:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jAgEV3lXpdTMtJoytrXIsuXAMfljBJ1pwoL+aiV7YTw=;
 b=fvlywxsIcNupcKXw/UqdJXFqBW+E07ws9lnj+AwAIMbK2zAUQAAi2T3ypA77wXrdqs
 ZvKdjcu5TIGXNaomdHNLLZ1ifTiJBhzOiNm8bbThQBQQ/awQokshW2TJxSghEgfxjyf3
 CczYCSdhHH3qczB0+mz78ApMs/+KbXK81mTRrWF8lC3RRFk4ip40Bjbaeyb7veFbl+cV
 Z2yir/pzg0yb8a0E62Prx3zFmMW+3p8Xm3/GzrPg5eRaoioaIVsAxsyf15O1UyJn/EMP
 7aMPLilil56mqxkrZDw5iFzjuO8oQE+b+axGE+3Ghijf+ongiofbQcH5CcadCQOzUw46
 0Sdw==
X-Gm-Message-State: AOAM5326n+DrIxtYqYuqzDKe1HQTIxQRHD4WN0XBkF5MXWmbearWrO8X
 f06t+35wL90kz2Ksqurmag==
X-Google-Smtp-Source: ABdhPJzXkkAhZmxetk8xI59P5Da6u7sTn24AZmqsb6MTJ1H3YqrbiXlZdcB6G5fnNZIqM3YLj2VqEw==
X-Received: by 2002:a6b:fa0b:: with SMTP id p11mr689360ioh.147.1590633631449; 
 Wed, 27 May 2020 19:40:31 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s66sm1938432ilb.25.2020.05.27.19.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:40:30 -0700 (PDT)
Received: (nullmailer pid 3259005 invoked by uid 1000);
 Thu, 28 May 2020 02:40:29 -0000
Date: Wed, 27 May 2020 20:40:29 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: vendor-prefixes: Add Xingbangda
Message-ID: <20200528024029.GA3258957@bogus>
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513212451.1919013-2-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_194032_356084_BB69BA5C 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Martijn Braam <martijn@brixit.nl>, Samuel Holland <samuel@sholland.org>,
 David Airlie <airlied@linux.ie>, Linus Walleij <linus.walleij@linaro.org>,
 Bhushan Shah <bshah@kde.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Luca Weiss <luca@z3ntu.xyz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 23:24:47 +0200, Ondrej Jirman wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> 
> Shenzhen Xingbangda Display Technology Co., Ltd is a company which
> produces LCD modules. It supplies the LCD panels for the PinePhone.
> 
> Add the vendor prefix of it.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
