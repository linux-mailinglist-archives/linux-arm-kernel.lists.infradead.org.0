Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D671446EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYBXCdOnUnrPaoFX9Jr2aI8Kt5Cz2guzkZXoCiRt73w=; b=o3mhyxwUP/uOfG
	ry0N5Z5sfkZhDHdFHIyznYGSuckOgOMyRbEqwIFRxNl42A5a/ADmYbD3jq+vmh36QgVyYnpvr3fG7
	Gmly27MmDlpJ5X353TA93KLfbcdwi+IypN43OevyCtk9q75dbjk6gKNojjCr99JUYnJpofFjmAAq7
	FGIlT3+9AVvjDeYUMuDtC5OUQ5gbxl1dp7dQ6LhAqduYuOat2hYuDCNBlyj932vwO2ys9UKwPshfd
	/HBdJviIpgPHs2aXP6gmb1qqlOGrhFllmUB4F2ugPViNWBqb5rm3WgAE993CryioRu5ICVIT2opvd
	6oO01qmOmjJzoLprWsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1gi-0000cH-RM; Tue, 21 Jan 2020 22:07:56 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1gS-0000bm-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:07:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id c77so4163887oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=jrV7x2HT1HzIJs/17V/npvjy8NaCs9LfSMbU1/e5LoE=;
 b=U9GW7VQr5qX4OOBnHxlYXYibJt/WtlzJKPLlawa/xhFxR9fOd77zM/1uod+Nc1yhxH
 kvkXmZs5VYFZ1HMdk5hepAVCp++I1vjRJdkc/1Dw+gy7Jkk9GDh9E1GxFMsPd++Lak1N
 3QCq/wtz1NeulK2naySJ/OPT8k2ldT0jFIkyr2FuDyJnDiOuDL4k9969twu11HOSf+2W
 bgbhR0mAHl7qnlX23pnc2J+Rcf3JRpCGlS2t5ZIHZQGrmh2T7jihd7FxT6jfXsVXAclv
 1atDsf2dbTKsEULYhdSM4Fuya4WLmNJhNu/FHAX2Bbp68+tCnqL+3k+8rc4grmY5VyPf
 GROA==
X-Gm-Message-State: APjAAAXikuzLauyrN/V3cFDix53ULtIFzMGTAM7jFtEWp8GGeCqtiWCL
 6K4s6R+L7+9WZ6dEvv1nzw==
X-Google-Smtp-Source: APXvYqwnNIFZJUWPyA92HwXngPZjGPZuBujZdvC603o0NUcsnM1zSTX/tUl2maBAnH23lN0yUOZkMQ==
X-Received: by 2002:aca:d502:: with SMTP id m2mr4531075oig.41.1579644459940;
 Tue, 21 Jan 2020 14:07:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m68sm12444096oig.50.2020.01.21.14.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:07:39 -0800 (PST)
Received: (nullmailer pid 24002 invoked by uid 1000);
 Tue, 21 Jan 2020 22:07:38 -0000
Date: Tue, 21 Jan 2020 16:07:38 -0600
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: arm-boards: typo fix
Message-ID: <20200121220738.GA23950@bogus>
References: <1578983860-23747-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578983860-23747-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140740_626335_D2AB90DC 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 06:41:49 +0000, Peng Fan wrote:
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Typo fix, "withe" -> "with".
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/arm-boards | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
