Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DD016EDA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw7t81s0lMXkqOU0xZ9ZwFGLDRKn5nUdGXvpbcAEBcQ=; b=DGxEuvphZzHJtb
	sFrZQSjjAih+ck9fqTsy8Uym3Occ2c8c1KDR7txYSjSxaedAgMzwe9y17iYdnjtk7GM0hyKhTUJ9g
	vxBPiXWak23bMQdxvkj6keq8MvNO2Qk6kLnYuMqrcCRvch247vi0TLxlp0Nh5wLOKAPpD7Ox2wRGq
	PKCEltIOL1WRjetuwUWDkx+eVc7VvRi1Pr3bNDwboqAkNdYgtnOAYpm8zNLj/DRUV7Iab8Pw8Vfp2
	s0yjozj/O3vFtz4chiSX7l9DYwjy5rStDhcZzIIt0iSfEfyyVl3lwVJcQEjVqskFeHD6xFn16MddR
	qBxba9KJgZwsIGO+J3nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ej7-0001WD-Bu; Tue, 25 Feb 2020 18:14:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eix-0001VM-JW; Tue, 25 Feb 2020 18:14:28 +0000
Received: by mail-ot1-f67.google.com with SMTP id h9so369147otj.11;
 Tue, 25 Feb 2020 10:14:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fzMstvFQHtiY1mtNKEHbS1tBWH2f5ubsJc5MbGcMIgE=;
 b=L5MTXlp6u260dGCseCilZwazhKl54tbGrKSV7IfJ1LK2fgI5whqROJada0EKWKvqov
 urMzQhT/iapmlmdYPubuc5lj/4RcyP3iMpSLhSeGoLOQymNEw/lkCteWmbUwmCVvhoTS
 8SjVDtdMy8pR1AIePVyaR+pKB6+qmtPlTMhy5qnaL0BJUbbTRQSOgZhHucqBRyjwS0WL
 bRyQbUAoWhTrYp54B950V+yqrLH5IaeQ3rbX2R020/QJg1EZ8nL7lr6mcpaBlabF6+E0
 SskKoTxZrsAbG+T+vBlyGe8CdB4gLvCP4zvQ/4xwGexdhVgVFCfqWiJRtEEUEQTqcZ7s
 zJJg==
X-Gm-Message-State: APjAAAWQfnZn+bM4vgeVFb2H7Hulev88fsmY9BG3gEv67FplPwhCRD5v
 b07gUNqMLAxawjpD9LffIw==
X-Google-Smtp-Source: APXvYqyGKyCpS5QVH0RlgQkGwt+azhBTDZOJ39HMNdZPpnFpagNcBAnEczZ6ez53W17xGffq9mb+tQ==
X-Received: by 2002:a05:6830:4c7:: with SMTP id
 s7mr45097888otd.359.1582654463904; 
 Tue, 25 Feb 2020 10:14:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o1sm5881508otl.49.2020.02.25.10.14.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:14:23 -0800 (PST)
Received: (nullmailer pid 32082 invoked by uid 1000);
 Tue, 25 Feb 2020 18:14:22 -0000
Date: Tue, 25 Feb 2020 12:14:22 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 01/89] dt-bindings: i2c: brcmstb: Convert the BRCMSTB
 binding  to a schema
Message-ID: <20200225181422.GA32044@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101427_643307_D01FFE4C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Kamal Dasu <kdasu.kdev@gmail.com>,
 Maxime Ripard <maxime@cerno.tech>, Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 10:06:03 +0100, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
> 
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml | 59 +++++++-
>  Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt       | 26 +---
>  MAINTAINERS                                                 |  2 +-
>  3 files changed, 60 insertions(+), 27 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
