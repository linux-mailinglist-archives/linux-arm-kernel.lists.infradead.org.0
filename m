Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24C81AA171
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmBqgTTDZ+E0jeMdozThIkvi4XFQ8JURJ6VqRFQnK7g=; b=q7rnqICWzMyKsV
	0ymngj25c36dsSBd1xWdpdVr/TxH/ZnV1ZEhgetift/oHd7JStdfszXYBxx1oToSSBZ2ZLnBQoYB0
	nXb6OromdXXyehXRkUllow6cWoF5BFHkl/TMfXAdRI3g7zRDIvI2aYMtT+OxTFDFCz8M44vLZqcy4
	rDfJmwbFg902IZPXA5cbMS0p8pHfOfzITZp9WW6C63+KZQqKhyZum3NTSOhhvbgQ+YS7ijLBopOrk
	+PbfcOQd148flqKZQR5UQhgJDUoq56AiWRv5pj9wLaa3k8d6NxEKDqqatB83fuB9J540z3ILeYgyg
	+ej0+Uobe+8vmoW5qlcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhQq-0002Rc-FW; Wed, 15 Apr 2020 12:46:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhQc-0002PF-Bg
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:46:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id x18so14689804wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 05:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=HL4CMR1gS/nWPdlxWM3XgPiFWUO4q+XXr+2sGU/Jcy0=;
 b=EcI1XYssAQQBvpE6ce+63x1UL40ahrxAaNgwhpoxxoPh4+b1K5dk52zgKooeKHAwba
 qUOz99SOkEPtOGU1NG1N6yxN4bOV75qHpx9CgDO4VGhe5ThFmWERoUq0cOH7U7qu7R/C
 Q0VnNHzqw3XzPnGt8mjG5OWl+yCm0GTBxQtWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=HL4CMR1gS/nWPdlxWM3XgPiFWUO4q+XXr+2sGU/Jcy0=;
 b=FEtQ8gUbB8x9DAD8BjPywLbnyVOMJxelwkck4BIU+/ltbcXvRg7u+EvoBpcDHC71E4
 d70VsPhObvMQMUsDAgZRxTj53sgMfcyVFI9NEmm3WUL74Jnye4j3gSwt2Oip+xzmQh3M
 EKNwpdIkmssvwk5mnk/FOj/nSa9XSbHVH/kzRj/9W3kI9Z4tNNP5ZhiHmgQRqC40MIsY
 uoDyHzUovKL0Uu+F5Jv08ZBP6qoq4CpgXPKL9XHcZUfv3Ln9xMSWGsTU29Ua3n7PraGk
 Agskdr0kzKb10rXlV5N33HxJBqU7haiptYWK7/5hTOh1UB/b5hYTN1IhL70BrwCmn/SW
 x10A==
X-Gm-Message-State: AGi0PubrWLyT03eLFLCFpwx408PXD3xNU6DXGOXwnlZpv5bFcJhfVt8Q
 6v8PObpX0AsViK4C6htz0jvSIA==
X-Google-Smtp-Source: APiQypKV70qPHujs63QOoEQqPabK+YMwDDUBWb3RGBt2OldSHbduIv5lkfbp46jW19E2GgiMgeWn8w==
X-Received: by 2002:adf:a509:: with SMTP id i9mr9354350wrb.20.1586954763462;
 Wed, 15 Apr 2020 05:46:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l5sm23334725wrm.66.2020.04.15.05.46.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 05:46:02 -0700 (PDT)
Date: Wed, 15 Apr 2020 14:46:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200415124600.GD3456981@phenom.ffwll.local>
Mail-Followup-To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Maxime Ripard <maxime@cerno.tech>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, openpvrsgx-devgroup@letux.org,
 letux-kernel@openphoenux.org, kernel@pyra-handheld.com,
 linux-mips@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054606_398256_74AE817F 
X-CRM114-Status: GOOD (  29.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:41:52PM +0200, H. Nikolaus Schaller wrote:
> Hi Maxime,
> 
> > Am 15.04.2020 um 12:10 schrieb Maxime Ripard <maxime@cerno.tech>:
> > 
> > Hi,
> > 
> > On Wed, Apr 15, 2020 at 10:35:07AM +0200, H. Nikolaus Schaller wrote:
> >> * rebased to v5.7-rc1
> >> * added DTS for for a31, a31s, a83t - by Philipp Rossak <embed3d@gmail.com>
> >> * added DTS for "samsung,s5pv210-sgx540-120" - by Jonathan Bakker <xc-racer2@live.ca>
> >> * bindings.yaml fixes:
> >>  - added a31, a31
> >>  - fixes for omap4470
> >>  - jz4780 contains an sgx540-130 and not -120
> >>  - a83t contains an sgx544-115 and not -116
> >>  - removed "additionalProperties: false" because some SoC may need additional properties
> >> 
> >> PATCH V5 2020-03-29 19:38:32:
> >> * reworked YAML bindings to pass dt_binding_check and be better grouped
> >> * rename all nodes to "gpu: gpu@<address>"
> >> * removed "img,sgx5" from example - suggested by Rob Herring <robh+dt@kernel.org>
> >> 
> >> PATCH V4 2019-12-17 19:02:11:
> >> * MIPS: DTS: jz4780: removed "img,sgx5" from bindings
> >> * YAML bindings: updated according to suggestions by Rob Herring
> >> * MIPS: DTS: jz4780: insert-sorted gpu node by register address - suggested by Paul Cercueil
> >> 
> >> PATCH V3 2019-11-24 12:40:33:
> >> * reworked YAML format with help by Rob Herring
> >> * removed .txt binding document
> >> * change compatible "ti,am335x-sgx" to "ti,am3352-sgx" - suggested by Tony Lindgren
> >> 
> >> PATCH V2 2019-11-07 12:06:17:
> >> * tried to convert bindings to YAML format - suggested by Rob Herring
> >> * added JZ4780 DTS node (proven to load the driver)
> >> * removed timer and img,cores properties until we know we really need them - suggested by Rob Herring
> >> 
> >> PATCH V1 2019-10-18 20:46:35:
> >> 
> >> This patch series defines child nodes for the SGX5xx interface inside
> >> different SoC so that a driver can be found and probed by the
> >> compatible strings and can retrieve information about the SGX revision
> >> that is included in a specific SoC. It also defines the interrupt number
> >> to be used by the SGX driver.
> >> 
> >> There is currently no mainline driver for these GPUs, but a project
> >> [1] is ongoing with the goal to get the open-source part as provided
> >> by TI/IMG and others into drivers/gpu/drm/pvrsgx.
> > 
> > Just a heads up, DRM requires an open-source user-space, so if your
> > plan is to move the open-source kernel driver while using the
> > closed-source library (as that page seem to suggest), that might
> > change a few things.
> 
> The far future goal is to arrive at a completely open implementation,
> but nobody knows how to get there. Therefore we bake smaller bread :)
> 
> step 1: get SoC integration right and stable (this is what this series is for)
> step 2: make the open source kernel driver work with closed-source libs
> step 3: write open-source replacements for user-space

step4: clean up the kernel driver
step5: get the mesa driver and kernel driver reviewed
step6: get it all merged

It's a very long road, but awesome to hear that someone is taking care of
pvrsgx. And I'm totally fine with landing stuff like you propose in step
1. Just not the driver/uapi itself.

Goog luck and have fun!

Cheers, Daniel

> 
> > 
> >> The kernel modules built from this project have successfully
> >> demonstrated to work with the DTS definitions from this patch set on
> >> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
> >> partially work on OMAP3530 and PandaBoard ES but that is likely a
> >> problem in the kernel driver or the (non-free) user-space libraries
> >> and binaries.
> >> 
> >> Wotk for JZ4780 (CI20 board) is in progress and there is potential
> >> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
> >> and CedarView devices.
> > 
> > If it's not been tested on any Allwinner board yet, I'll leave it
> > aside until it's been properly shown to work.
> 
> Phillip has testes something on a83.
> 
> BR and thanks,
> Nikolaus

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
