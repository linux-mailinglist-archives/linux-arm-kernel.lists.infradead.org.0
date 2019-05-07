Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A88016875
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dt5SVAGwYU00onQ5iiL42s38ND1mR6W3bok5i4BOCp4=; b=rkcnsT6iDCOkh/
	YCKMIx/ZL7O3vpQooLFtlygU/AZ9J6M649Q0vA0sI4kZu7g+l/l/qtr4/UNVcWbw7bs/v55p6I8km
	ha5GtyIjWfABmn4W7inI3anJ9cF5u+oCWFBNCe65T3KwW6+XQyeFPECWxMv1Ei8aNOr0vmTXEzjls
	PV25DKX/znCzifZDLgMxqbOePOv2MvTkKB9MuP9sRhy1ReCL5EpScfZUzpon/O4i7nQ1ElCcEoacN
	+04XcCbCDWvIua4eNZpZb1sR/q+9Fzlvv5onXf49MH5ShKbNucTbHGLxeY2aHOfR4owdE42Ey6lby
	U6GynTVcDzMABicVt2JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Nz-0006b4-9W; Tue, 07 May 2019 16:56:11 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Nt-0006ad-2T
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 16:56:06 +0000
Received: by mail-oi1-f195.google.com with SMTP id l203so12936212oia.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 09:56:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GHBrVv53KHjD9Lzdqkki/7g03N+HBCIm+A+C+qlOgKo=;
 b=TWW81WUhoikhyGwN6CCr9xWkNjaGqii+QPjmXXNXLdo3xC0GlhF/HVDQD5w9Ewakv5
 g6siJqg7JFd7DUoLYCqxkODcLl3BYwOIs9xcpbdxNPljvNxrFzQNTL4Lej+Ru/Q6Ikyj
 PjJq6P5o1Wt1z/xFTrPfLl78LHopIe1Oa+c8hrZyqrwolrcRkuaGOQeIyCGx1PWO5YiV
 iApLRJPA9r7ZSvjhEfV/pLlY29MAAUxa9UgpfoSiEMhRSobo+6WI8YmZ1R2UExZ1K+2o
 ic+uYMrDUliru5VbnyajekfCAlRhewt8AXWTrANz8MK9bo/Y4zl2E0p7KVFr0P/oO/97
 lWtQ==
X-Gm-Message-State: APjAAAXX/dqgBDTI57/zOvVLsyn9OacG0TqzLoFLOJO3uRIg4BF3idV7
 0BrVDp+6rTtYqdcW8OPXMg==
X-Google-Smtp-Source: APXvYqziy0dt5yKxPRpC/WI0aEFVwLEYWl2rCLc0y89G5wpDrqyJ0QCVbRi5gzlBoihgjYMXAFGgkQ==
X-Received: by 2002:aca:db45:: with SMTP id s66mr824655oig.59.1557248162731;
 Tue, 07 May 2019 09:56:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n3sm5590234oia.46.2019.05.07.09.56.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 09:56:01 -0700 (PDT)
Date: Tue, 7 May 2019 11:56:01 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 10/14] dt-bindings: dma: imx-sdma: add i.mx6ul/6sx
 compatible name
Message-ID: <20190507165601.GA17194@bogus>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-11-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557249513-4903-11-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095605_110206_C3BEE386 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 09:16:38 +0000, Robin Gong wrote:
> Add i.mx6ul and i.mx6sx compatible name.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
