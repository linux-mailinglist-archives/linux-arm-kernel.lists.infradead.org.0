Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE731271CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZXPF3P3+cbDRxQumHf8gyWYcJM2uQ4Bewt8MkeRsZ0=; b=uG3a48TZN9H+KJ
	qA7PpHYkXjPPlLDzVk/LvPl/gdloXZksT3BrXVdO5AnH+22utr5IWjqlxaFvXRVVgjugrpwoBC6LJ
	Pp7+lsYn/PTompbP0FIMaVhtEwOW6UGSupHghJ+tK4VnsAh6HapODMKLk4wOzBohnLq3uWnpgJupt
	wHiLyo1/8eZ2gjz+t5U9V+hgRSHv36/J1qUIevxaZEavXyNFwS3r6s/kPL56y8w7GgWvVLwYyJU3K
	kjQTS6BTLpYaTJ0BbayI+QHEmRlRZdo05iYZCHsShOhWxoC9lmsA3OBIwYb+X+v6PfKjHQpcoqlN1
	5y4ObVES5vVXNgBiAOhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5WW-0003RR-VK; Thu, 19 Dec 2019 23:48:04 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5WJ-0003Pv-Bm; Thu, 19 Dec 2019 23:47:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id d7so4979766otf.5;
 Thu, 19 Dec 2019 15:47:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=18UcAb5rbPMss22Ho10Y3g3P3ch3yNs8mlHDvPuR4oU=;
 b=cEJa1eiLvsxnAEg5bONEEGdg4AR9RP88VoJKfyuihztOVbx3HJmwj0AjZ5KOFk+FNv
 Cr2Zutj76zuAnBZA1/Mt6ra9lwIHfalT7Rffd//GFzg/k6PyKrw7uWRL/kM4WBQRqUYV
 uCQqUd2SwOgYSFADncAJE0mddwo4u1kMZQph1RpG7E2qeRoh0YGRs2LtXmI/BIzDjhQt
 MHtcbSBH54CtYF+6seSqzjJPulbdIHarD4zyt2V0O5WkbE2CoXkV79VeBeYeeVJ6AyQL
 FqFG11OAzV721W9tmnJFYD8qu/l+0/BMDzm3E7EKwrZ9aoCbeUAucz4UN8O5/bA6RObR
 jNzQ==
X-Gm-Message-State: APjAAAUQ1vp3Rqv5HZ165HQHfkA3Z/JMCDt+b904LeYmt/lOU9JDuW7M
 kZemIPmivGDots8ri07MTPs5h4s=
X-Google-Smtp-Source: APXvYqwn2zt/hEoslzgFitK7qNptvvyashP6FwXW1JD5npPwJGdehqnhGdzJkgQ1XfMc2/ZX5+wl9Q==
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr11137126otp.265.1576799270756; 
 Thu, 19 Dec 2019 15:47:50 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id n22sm2712400otj.36.2019.12.19.15.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:47:50 -0800 (PST)
Date: Thu, 19 Dec 2019 17:47:47 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 01/12] dt-bindings: display: rockchip-lvds: Declare PX30
 compatible
Message-ID: <20191219234747.GA30229@bogus>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213181051.25983-2-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154751_399740_2BD52BD8 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 19:10:40 +0100, Miquel Raynal wrote:
> Document the PX30 LVDS compatible.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
