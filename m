Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5481E5416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qHszVtss61NkETiCrm5VpTNhsIVO3V2hxqzmS79X/g=; b=XFPUr+Wg3vOd3b
	gp/6h39CvGom1r4Hw7wNzPf6ZxKwHO/yORO8broou1PW9eM3x6s5xdctR7y1Oic73oMDf7DmOid5G
	XsJO0lmMPn7YoEHFshVU01gXDZOJ1GOvRE0ejp+PQ8y7ieRWEiGMWJvMb1gyAK+ISdVF+UbOBIlYn
	WNKuxFt8xgZsSCQoQ3ZUhusV5ACh8IRVMVmveCyOLBQlOkNFWJVKsSU2Qn1+uRix+9jQQxPWR94jY
	fECHEnGJR/suktPZ2iBT2sU9fuDPNVNHiS68efyohI/7xAhPYbFD+mzvBsEmEfm8pKZsiogOeFNRw
	/IGvcmmeRotCUq+bYBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8U2-00033n-OH; Thu, 28 May 2020 02:41:26 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8Tq-00032z-5Q
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:41:19 +0000
Received: by mail-io1-f68.google.com with SMTP id k18so28450762ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:41:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aJSvdBSUP8hCC8+rgsz4EB7YLn+fmauMUvtrBMNRvO0=;
 b=FfzTz66W5IfOPQiVWMOD5g4cGnTaSWZZTctTx8mnKof0xtfL9OWOS5lPLHEvkPRcA7
 NDBHmA/zFw2WLpW++xlDmU5AcEr2vImsJM2Vzmuy+iiQchfriJkOPJsDOTKgT5no5Qjw
 uFD4DSQFirmktlptkiYeh9bO+nFC1+EDykx28Gx20a5NDpHiyL4JwsAJil3ZAsQL7JEn
 yRDrb/VWiia+OZ1DZCtRbdBcEdLCS4HpXj+HwMtwFgc+IFR7GYPJoNih0tatHF3hp/s+
 S4pEvH+ZoNx6dRTMDJ3udsoevzgQQkPeGuMnpOeu4XWWmbpfrTDZ3QvEPrcxSwUO0b82
 /6Aw==
X-Gm-Message-State: AOAM5332C9Q9GwlH6+YEW7toFx8WzsXjrQjxO6wwb9dKVquRd3VLiUf+
 Ed8cGppXPnlrMa848e5k2g==
X-Google-Smtp-Source: ABdhPJwSqz8Y/sFww2/trT6sggJFiwuWfVKWn54mRv6JFqUdmLygooXIQDu0sxeliOzsjWUfS6ELdw==
X-Received: by 2002:a5d:9e51:: with SMTP id i17mr691242ioi.8.1590633672645;
 Wed, 27 May 2020 19:41:12 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id u2sm1917979ion.50.2020.05.27.19.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:41:12 -0700 (PDT)
Received: (nullmailer pid 3259982 invoked by uid 1000);
 Thu, 28 May 2020 02:41:10 -0000
Date: Wed, 27 May 2020 20:41:10 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: panel: Add binding for Xingbangda
 XBD599 panel
Message-ID: <20200528024110.GA3259935@bogus>
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-3-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513212451.1919013-3-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_194117_637046_8CFEE6B1 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, Martijn Braam <martijn@brixit.nl>,
 Samuel Holland <samuel@sholland.org>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Bhushan Shah <bshah@kde.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Rob Herring <robh+dt@kernel.org>, linux-sunxi@googlegroups.com,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 devicetree@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 23:24:48 +0200, Ondrej Jirman wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> 
> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel. It is based on
> Sitronix ST7703 LCD controller.
> 
> Add its device tree binding.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../display/panel/sitronix,st7703.yaml        | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
