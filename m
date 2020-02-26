Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157201701A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXNW3djKsO1snf47Xu+rbRuzqzASdPAbOXqVOMClwko=; b=V8uZRya3rJcqgZ
	J3S1mYljpBfT2NBav/1f0UjqMxYwbLegXY7iDyJIJbSc9HFDkgJ8u91ruJsAdBjYryYHOv6wPHI0C
	so+sTCDdt62v+eO+2wYuHIGgbCqlOFbr/ScyTyDbB6gDbk7JfANzSe86nNmgu0zE5jV0NO4ItNPxZ
	pjMTCTkSarTqPEetuSw/nE2wUHTdTCSptOX880zWk/uPMcjnnHL16Zz5XQVNzt5xDaBCiCMavS8iI
	t4GeWjArZaRroVDZto91oqoZzcPi49KhRyZ13zwX2lTbZvWGv/pOUGbENijIzZJ5KTFMKmvH+UCwD
	MdUHAIM/FPjdP9/NYw3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6y72-0006LA-Gl; Wed, 26 Feb 2020 14:56:36 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6y6s-0006KB-6n
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 14:56:27 +0000
Received: by mail-ot1-f66.google.com with SMTP id j16so3220549otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 06:56:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4+aLnsPdP1/QbRnyIoXI03Tshsf4suv6arri2MUC+qo=;
 b=iiPULg6eNYvzj0Ub3DtBxcpXLOXYE/ey1ZvKKimm6dihwN/BxW3wgNwpLnqBmlescV
 w4Eo4AYUCqgsEFy4AwKOLb9E1QQ4NNIxvFvx+agEukqc1R/ps3jjx0qPNu7hbjz68BV6
 wdjRaPVtWidyF/v8xgMm+DccudwnNcD9d9d8szMJDE9a1YtLGlGV7Dk6VxmdDXpf/lOJ
 dglWXTmfmfXQGsihTU3CmRfPq0g+cF7ocXnoOapLoVRK70eJ1LPHDj9bqJWCPXTQOTbV
 6TMtxc9QqhphFgRbox9qFWSotVkNOVpPbNTrl0s2XnuISG0B9iUL14S9r5ypwaq0Mctb
 h3lQ==
X-Gm-Message-State: APjAAAXJi7n85zleZHBVJetbCRFXYMvj4VtmNObuH8bikdGu9inNTVI8
 gDEF6SJ9AXPYhkBoXuDfZg==
X-Google-Smtp-Source: APXvYqzrUda0vSZtD9CpveeEfxdVZW6Zdsm+zPooigQG/TE92zsXfEODvCU6ebACAkEHgk7TJbw6sA==
X-Received: by 2002:a05:6830:1047:: with SMTP id
 b7mr3582500otp.77.1582728985048; 
 Wed, 26 Feb 2020 06:56:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w197sm884841oia.12.2020.02.26.06.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 06:56:24 -0800 (PST)
Received: (nullmailer pid 23432 invoked by uid 1000);
 Wed, 26 Feb 2020 14:56:23 -0000
Date: Wed, 26 Feb 2020 08:56:23 -0600
From: Rob Herring <robh@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: Add Guangdong Neweast
 Optoelectronics CO. LTD vendor prefix
Message-ID: <20200226145623.GA22420@bogus>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
 <20200226081011.1347245-4-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226081011.1347245-4-anarsoul@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_065626_241448_2D50EA41 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 Jonas Karlman <jonas@kwiboo.se>, Torsten Duwe <duwe@suse.de>,
 Mark Brown <broonie@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:10:08AM -0800, Vasily Khoruzhick wrote:
> Add vendor prefix for Guangdong Neweast Optoelectronics CO. LTD
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
