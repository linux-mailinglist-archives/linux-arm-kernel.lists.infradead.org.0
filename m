Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E76C637C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fOCWe9b9OUoe7XhahB9qQMYNjn6fZ8X7xrL5mkfrnk=; b=L0Z8a1i/sLB68w
	uJmO6kJXlrVeIHHHdVVEkwgVHMVwFeKuEGEj5a0sQ42zxZKLWhE7suw3pdudbTYZFVKwyMVekGPGr
	KYewiK/uDYtXoIeKRCsKG88A3sXSGOEOb8MwnAlJyx3nCij4KKRV1lDqFXJuoWBJBEc9pQFj2urTA
	DJ98BM92M1QXEl160F3osGxVZem0K8yQAOhDvnUOcakVwr31T2BJvIS+F5FlncyGrakOCI5oMhox8
	K01fDs2SJ+0qGhQhhQlT1PQn8hTCgKM7oAZKcHANgLjsoPHbDNbutsD0Tcg0ExkTvpFmt/B9t7V0O
	fhOsOftZFN+QT5QFhWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkr0C-0002z7-Rs; Tue, 09 Jul 2019 14:21:52 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqzq-0002qU-CP; Tue, 09 Jul 2019 14:21:31 +0000
Received: by mail-io1-f68.google.com with SMTP id j5so24151634ioj.8;
 Tue, 09 Jul 2019 07:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f+ADFttYA/V+/O077+27AshpU1PxQ349Mul0CkZ+ZM8=;
 b=IHldoA8w1bGwzMO19rtLUrKoC3Z3wNHUWC0pFBmBlfH3XwapHZF6lUdvHvtQBjkGzZ
 gvezmapb6RU3LmW1nVxXzH2t0k0GXLshkgmIMHd+zxvcd8FEdchBWKgfcf2xBreyN8sL
 jqYXRhayIpN65UEhF08eLRGar0bMjZ3E39LbP4OI5GI1i9NVGIbabGpG41NeYo1FfYsA
 xrtW4UwuNfyP2+3GrRw95M0U0Mxm9h+pOZs1Li1lY8HMMtUhEZ7yLuAmM4j25E5boz+A
 3t4HwYE5k7OamNmyxivbG3XtFhnsUQoQoOb5c3aO1zAAMoOLS2Bli1maMCieutNfgHHm
 nYhA==
X-Gm-Message-State: APjAAAXQ+2hnyjOJRf008wzr+F+jkz2OJuneZjqMtxsuELv1VASP7KGU
 QaBG1YXuWhEorWuSGm3bgA==
X-Google-Smtp-Source: APXvYqzbsid7dTL3N+pWXFiO0kKMIqliSgYTpkA/OGN2Sn45du3OpebITY3EKGINiVg4qHcN9Zad3Q==
X-Received: by 2002:a6b:fd10:: with SMTP id c16mr24143731ioi.217.1562682089211; 
 Tue, 09 Jul 2019 07:21:29 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v3sm11643441iom.53.2019.07.09.07.21.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:21:28 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:21:27 -0600
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 2/5] dt-bindings: usb: mtu3: support force_vbus mode
Message-ID: <20190709142127.GA11737@bogus>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
 <65f025186332b2b44f7b27f58af893217df1adb5.1560246390.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65f025186332b2b44f7b27f58af893217df1adb5.1560246390.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_072130_562218_50371573 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Jumin Li <jumin.li@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 13:55:18 +0800, Chunfeng Yun wrote:
> Add a new property to indicate that the controller doesn't support Vbus
> detection due to non-exist Vbus PIN, and the driver should set force_vbus
> state for device mode
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtu3.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
