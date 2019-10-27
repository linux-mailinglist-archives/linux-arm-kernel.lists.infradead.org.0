Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7AEE6716
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 22:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKSd7t6M3lNIvaADhMkTydVq9hvmRi0UmYfxFjlgzZ4=; b=O6IQdJ/q7FxhYX
	Gz3z/w3Yv/Ftw5MAeZFvcReHjVQTf/tKo0+UMEHmb9acQ5CEEblvf0yBEFNchUe83Y4fPgfSqwHoC
	NSpIjDs/89SuFS8uu2GxbLUHqkOukWQzsJvjs/aGd8nl9VcXzfjG7rUCYPPs+pNNU9tUtyJC50OHG
	aPEgEiWbZHOAgZylrSrGJe3PIAcI0D/qbfpMGbh3jpVfTlkHovkw5StbVraQRgr03beECBUkCz6Dt
	QBbWla4aSKGrJ//r8YMTLytPAfuhcQuEiuzExakc/e67naS8kHYiNBSV1CvXCpeQLiaT9quetm6BA
	PIS/ZSbFDl80QzQev6Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOpv5-0000Nl-Kr; Sun, 27 Oct 2019 21:17:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOpuw-0000Mz-4e
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 21:17:43 +0000
Received: by mail-oi1-f194.google.com with SMTP id j7so4769955oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 14:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/iAJCHmYnu3MN/tSfMGe/nzIlm9sUPVCioEd8t0MfbY=;
 b=nBNiaFF6Sk7VjLs6Z+opQqmQbnA+DlJv0hd7auwnQ2awKGUCs1CR7ZMFOhTqeYD3VA
 TzFddhVFcW4HWGJWs0Pjbgvf1X6e/POyww5iSLBeMq+qxGKXlzxx/s24UGGwxCM/lTqo
 0phGAuj/u0izBWM0j/EIFnN/QCUgw9qrmDn1Nfui2O9DcVcC5tw9D5hIz+j4CPd8Vhpd
 Hg+EJL7wGAT6/4XGnaKzQzyW6JZeW0eaKKDsRdZbT/ymd5A19XdUiOL43YJLURmT573X
 /LV9fBEwcwpOGRcAzcEAhwrw129kGMdn9gUuKkAxGnbCOgXWrKdG9U44lWZ9RUCbB1Tf
 q+JQ==
X-Gm-Message-State: APjAAAXCzajAlap7swTl8b3+8IpHlYu+hV3/DCyZRSgvCSEwrxt7A/Cs
 o9zQknklcA6Q31C8h4VRvg==
X-Google-Smtp-Source: APXvYqycENxBcO37SRF80CuuH2sAsSU8zEeqdg41f6o3Mskd1ZymMfnokYbEy29NcBFqqvPqzaY4dQ==
X-Received: by 2002:a54:4484:: with SMTP id v4mr7404163oiv.49.1572211058758;
 Sun, 27 Oct 2019 14:17:38 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g3sm2960776otg.56.2019.10.27.14.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 14:17:37 -0700 (PDT)
Date: Sun, 27 Oct 2019 16:17:37 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible
 (w/ A31 fallback)
Message-ID: <20191027211737.GA30896@bogus>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175625.8011-3-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_141742_182469_B46F752A 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 michael@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 23:26:20 +0530, Jagan Teki wrote:
> The MIPI DSI PHY controller on Allwinner A64 is similar
> on the one on A31.
> 
> Add A64 compatible and append A31 compatible as fallback.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
