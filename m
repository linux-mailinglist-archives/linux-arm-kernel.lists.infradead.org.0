Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216A51D0A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vclDTiujsF72/cJ91J40E63HHuXJdorSVV+JFQIgI6U=; b=MY8yzTa8Z+6CV/
	0JNgT76w18Rc6OF4HArVvBH54I14pqrO6vtLX8rCRqvcL4Kl6AmoVzEaA9qHWYc2dP4oGXedqq//h
	6PcTTqY/TqJ3lOmuq3SFy7yDNTy7msrFm5qHy3IaC/b9d89p+1vKMx/PSf7wpd9wOpBtarg0SamPb
	1W6oB5DQJQMzibvargsGRK9uCx/iqNm1E3nRu6EYoE42sdULyKjl5I0elsgPlzkbcgdoq3DqUu1RK
	8c1ua+GiyfR0WyHP3EBDu1fzgVu0dMmKErGLlxNxjy1k1y6PXCR3pKwgOhEtMk4c2kAM6DI/snxBa
	UEhUeyw62AwnGbmTk9zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQe59-00013b-EC; Tue, 14 May 2019 20:31:27 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQe51-00013A-Io; Tue, 14 May 2019 20:31:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id w144so103692oie.12;
 Tue, 14 May 2019 13:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uj/aNb3lhudAxuL9yVxzedyisH6/evVA53ck6BzySPY=;
 b=bOYX6jrXFKnuQifelpZ/NlxWNIJxKOc++wzQmV0EYwMfmu1D1r7nAwkFz/6SIiv3Rd
 QiCOnIfiXelQaJ3cEABiBuzrS5wVbsjPKPeD00sHZqUYYXLpbaW4DCYf73M9CctITSU2
 71E69cIde/g6/fZz04CIs5c05ANNf26hsv7ysAp9b1SVGYCtYwpsUT2zbWaB3Ojsn+ie
 GamSTm1VS6g8LWA5jENPWES0goeo17hEImWFXlGc04F2T2TJCfiTwc/WHZU198Duij9J
 MhbJU5kY5gUcm/giDdi+Q57E5ewRvh54+5a8Nl53um71pdlezItsYJ2WCl4MJYLvJQq3
 uhdg==
X-Gm-Message-State: APjAAAWQsojefpbFR5CqrH95grw2Xgu5B97M0bBYE/d6uYqDa6Ii474M
 /Jd8ArfAA5Ng49/9z8sQXw==
X-Google-Smtp-Source: APXvYqzdjUlWTvBq+1madUv/8ZYMJ50qHKkthS9BLDmfCh7nxydKkUzHB56DapylG98G+Oz/KHde/A==
X-Received: by 2002:aca:5041:: with SMTP id e62mr4403410oib.60.1557865878559; 
 Tue, 14 May 2019 13:31:18 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m8sm6538868otl.40.2019.05.14.13.31.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:31:17 -0700 (PDT)
Date: Tue, 14 May 2019 15:31:17 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 2/5] dt-bindings: sound: Add MT8516 AFE PCM bindings
Message-ID: <20190514203117.GA26954@bogus>
References: <20190502121041.8045-1-fparent@baylibre.com>
 <20190502121041.8045-3-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502121041.8045-3-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_133119_621259_80699B87 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, perex@perex.cz,
 Fabien Parent <fparent@baylibre.com>, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, shunli.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 kaichieh.chuang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  2 May 2019 14:10:38 +0200, Fabien Parent wrote:
> Add documentation for the bindings of the MT8516 AFE PCM driver.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  .../bindings/sound/mt8516-afe-pcm.txt         | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
