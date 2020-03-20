Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12DC18DB35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 23:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qs6qF4QJSwgIQHXJZpUGNEbRiGNtoetMY4kTuxkEQmY=; b=lLxM9vbcVWmDMM
	pUGMAa+9Wd0u2PbhypU9ALvuhFZ8OqKm37lUh6CPOyh3+SUVeERUNLiQ3Lr0GJZwungah6qjnb4jX
	FKKOQ2zc19Jyaifw0e2QSeKg5tFiTCtLvRuIBBGbcMuhQt4/GmyDIToKHZOZ6N79MU7NZQYX6evut
	7YDJMIZJMSbxCr0gsBGK468cTPqSSc/hviZkPMDQYHFSu//GqQ+VsH3WGoGtalc6M9ApzR7YgDpn/
	X0w3rMVEbuJyITzCdFEjbIv9DhcjwejDi2nV4UpZ6p70iDGXMb6O9nf5l9x/7+b25C1++/gVWYx80
	rJ3notmS0NBDgsXudEJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFQEs-00071O-2D; Fri, 20 Mar 2020 22:35:38 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFQEi-000716-EU
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 22:35:29 +0000
Received: by mail-io1-f68.google.com with SMTP id n21so7634271ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 15:35:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LRGI96tcI4ghnjFtC4NBoCbXfwi3WMWoeeiOveVxAlo=;
 b=GH2O8BCX99tdJAyFu9aFETbgz4HZdnOZw5wyYWBiOEtIJg74Osgug+xYIw4vp0+HQo
 D/kM234Mbtf9TSqwbIszcU4MW6iaZIGng9iftpZJw6eXGUIeDuk5jZNUO4kp8yF10U1i
 E6+Lur8dCkoiemA6Wn0GWQpYymGAy+NedlHUnt8ad8GFILBrn+oyKxCYdfr5Qr3EDRae
 INPRlaf60CM5k7ugCBOkscn9hreZsRkW3PyCNoCBOu35K10Bxmnutw2i0y70pTbV7i/a
 AozxhPIxBh6mPK0Vy+xQ2WzqNnSE8dqDkFmGhpiSGcYsDKayhXkqlQJlUlRp6DPZyYGR
 +Fjg==
X-Gm-Message-State: ANhLgQ0lAmwVZGAJQFezwLRzWavZeTzIjKQojR3xBpb18UXij6n5bqrq
 SzjbKODKFir/YCrOSwjSDQ==
X-Google-Smtp-Source: ADFU+vstZqfejwgfrWB4ZuxMmHA68v/Z1RwURf4BOfv0nPRoPofxGNKzQ2XmCiQNzs3JDFNcY9p6zg==
X-Received: by 2002:a05:6638:59b:: with SMTP id
 a27mr10099268jar.25.1584743727296; 
 Fri, 20 Mar 2020 15:35:27 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id f12sm2082920iog.46.2020.03.20.15.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 15:35:26 -0700 (PDT)
Received: (nullmailer pid 21977 invoked by uid 1000);
 Fri, 20 Mar 2020 22:35:24 -0000
Date: Fri, 20 Mar 2020 16:35:24 -0600
From: Rob Herring <robh@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: fsl: add nxp based toradex
 colibri bindings
Message-ID: <20200320223524.GA21944@bogus>
References: <20200316143345.30823-1-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316143345.30823-1-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_153528_487699_73665794 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Robert Jones <rjones@gateworks.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Andreas Kemnade <andreas@kemnade.info>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 16:33:44 +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Document Colibri iMX6S/DL V1.1x re-design devicetree binding.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
