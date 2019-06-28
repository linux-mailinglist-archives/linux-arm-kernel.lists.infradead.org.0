Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301E059F49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GA3x6vLcmxHsZcG0ur7sijboq7r5jWm//Bp7yl0hSiY=; b=aZQFOEx94hMH78
	Pa2KRFJLVIgtsfJq4K6gAd+oTEtCEobmrOlOK3Qbn/jRpQLToJ/1kFpIIGpUiNmcVkv8RjuY8T7VP
	yWPbDGKeBv2Cfw8OeNeK/HaMI+EZ0IC5iZd0+spb0RkEys33svVvVyt/ldQt/lxPsFyTHAJyLEhOq
	uoEHaAr0XTbPEYVkm18zY5IOLgG/vLxElgdt+VCJFfxmS3Hd9EzFprDZT3jW1aqdpyjfmxQ4JgMLj
	aijMwSn77LML8L6B4D1qYsdLztI+NFiufUii8IX6spZBSayvPax8UsTI2efDPuT96QTlVofeW06Mc
	7UDUNQjqHFup/ncDI7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt5B-0007kx-RZ; Fri, 28 Jun 2019 15:46:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt51-0007ke-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:46:28 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D86BE205C9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 15:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561736787;
 bh=ogM5DFuL0hpNwB08hnvvzh1goOaGyhrCIOR73aDgEQY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NZ28gVG09tUT0i0jwUS2iQsrBsikCeynWpoIZLEW4lJl2MD/4E9HHsekABXJCrsjB
 QXUjawBUTAMvwJWKMqlRIr2pghSl7b+zwS5Vsb02ZIWINFUlAsGJGN8qOYSUqyUcPh
 81BW7HcKlY3bb2S5ugxN7GVkqN+vr3SaAXIiI928=
Received: by mail-qt1-f182.google.com with SMTP id n11so6788784qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 08:46:26 -0700 (PDT)
X-Gm-Message-State: APjAAAWem+Dg+zZjMOxRQ3wBSCAFtE4uTcxGVLtlxiYctjioYjpIjvBk
 PLH726CxgY034vnb88d7VrYm0fDoXQpteLs4dg==
X-Google-Smtp-Source: APXvYqyYBF/8wndwALugA2vJeelD3HLa6psVbvGS9oxdpy8J0nCqfRMpO4Ufp2igGgyxsfOpTntYKJCwPnhVM1XNc7s=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr8814969qtc.143.1561736786114; 
 Fri, 28 Jun 2019 08:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190628023838.15426-1-andrew@aj.id.au>
 <20190628023838.15426-4-andrew@aj.id.au>
In-Reply-To: <20190628023838.15426-4-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 28 Jun 2019 09:46:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJKF1H6YtFTG-xFhGztdDpMKBihW732Wx6HMUhCw27vNw@mail.gmail.com>
Message-ID: <CAL_JsqJKF1H6YtFTG-xFhGztdDpMKBihW732Wx6HMUhCw27vNw@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: pinctrl: aspeed: Convert AST2500
 bindings to json-schema
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084627_404875_89A68FF0 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Johnny Huang <johnny_huang@aspeedtech.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 8:39 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Convert ASPEED pinctrl bindings to DT schema format using json-schema.
>
> Cc: Johnny Huang <johnny_huang@aspeedtech.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> In v2:
>
> * Enforce function/group names in bindings
> * Move description above properties
> * Simplify specification of compatible
> * Cleanup license specification
>
>  .../pinctrl/aspeed,ast2500-pinctrl.txt        | 119 ----------------
>  .../pinctrl/aspeed,ast2500-pinctrl.yaml       | 134 ++++++++++++++++++
>  2 files changed, 134 insertions(+), 119 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
