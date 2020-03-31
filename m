Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6533199F93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LCZC2j29y0BfGSOFcJtW8sSAZjZJr2SeaYUPtsig2s=; b=gizaUAqU0AGf4l
	XNENd0xMgPr5+cw/jXgc6E0teAf3Vilw3HadbR4VzcXz/8Z0MB/5fsquDJpsIN47XhUX+L+sVHX0/
	jNYPradjGVy4UqIWgwA+CSn9j3UH1o+eyxL7Fe31JnNAfXuKxmf79yofX7Drm5ndJRPrftNF7Lbza
	T3cAIyf0BMQ6lvuciKsNniiFysqSo7YzSMhCtkLkysX8SAI1mF7s+y222R/T4dOD+uG/VEy6DluiE
	JnA+FgnHxSnCckTjie+kKUV3mVWpcZwmD2bY3tQnZNxCaJJJvpGCguSorMCjm5C7oG+3cGwMEnJn3
	CpwMTEq0I2nGIgjEiQIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJN2E-0000nP-W7; Tue, 31 Mar 2020 19:58:55 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJN1x-0000WW-Oo; Tue, 31 Mar 2020 19:58:39 +0000
Received: by mail-il1-f195.google.com with SMTP id g15so20699451ilj.10;
 Tue, 31 Mar 2020 12:58:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nqeAJUtOtJijTj0sgAPusrPwg7HunH4vQhom+AKuF6M=;
 b=pBjnAK7AuPAxo8dVelRSwww1HcWlIm+7xh1+EVLc5Le3+GXOWHjiYovo7DQDQI0Fvf
 O3f180nWM9moqwM3zF2Y+gC0sk0cOTUrLX+cEFlZUdkSxOMWw4qlVs+mBT9PjbUHxPwf
 Hh2OEauW5YLyk6aeGKIphqEqv4ykKYgweHidyTUeQegC/F1BAGsNJELgaEnb/ajX86Mv
 18+5J12/xy6Al2gzTeX3/OF04eCVgz+vrYeLIXOhb/rX4ky5gMQPpYjAUoE4DZpAkfkD
 WjxCGhiIpapsgJrW+pW1PmAhX562BYvlfWGETmbiJYrNlf/vofsjFcKougKLRR3bGIaB
 wYjw==
X-Gm-Message-State: ANhLgQ0wQgkWTMCoRkgq4rHkpzziPEZ0X1L4EGlbmblXV1l9ItnPcnYS
 atAituwBteIDa6xQfWDCTQ==
X-Google-Smtp-Source: ADFU+vvScuJWyJByk9tGznU4ABrVRM+QGd4p+cYDLCyHzSV2GjkxegyexD9XgClwA0WcmvmzB/uk2g==
X-Received: by 2002:a92:8659:: with SMTP id g86mr18829453ild.267.1585684715873; 
 Tue, 31 Mar 2020 12:58:35 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l25sm6209580ild.61.2020.03.31.12.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:58:35 -0700 (PDT)
Received: (nullmailer pid 1867 invoked by uid 1000);
 Tue, 31 Mar 2020 19:58:33 -0000
Date: Tue, 31 Mar 2020 13:58:33 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 12/13] dt-bindings: usb: dwc3: remove amlogic compatible
 entries
Message-ID: <20200331195833.GA1800@bogus>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-13-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324102030.31000-13-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_125837_807230_1057B095 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 martin.blumenstingl@googlemail.com, khilman@baylibre.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 11:20:29 +0100, Neil Armstrong wrote:
> There is now a dedicated driver for these SoCs making the old compatible
> obsolete.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc3.txt | 2 --
>  1 file changed, 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
