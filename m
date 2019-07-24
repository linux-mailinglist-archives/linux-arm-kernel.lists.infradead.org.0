Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38F73016
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DYzT0UtG6Ohc60azMy4tUR72+wuGU2y7Jq+cRqPtdI=; b=S2EncZUhtP34h4
	GEgscfy9Fkao0s6Pr4QHMpb4hEMRSeWv7G92NvMCyKbmFMvnZkzFzkJWkbFqyN+NuBaFFCGY2L9dS
	0Mq/JAInxg0JLRq281IHfv991X9mKTi6B+vXvU/Z4CtO6jqQz0m5zMrnpLwOc2eUVoxucHt8j4mr9
	MlzZr47kBNBNZSdqeKVu+MdCCHfG8FbvpBFuR68BO0xOCi/GNMmYuHOXKtO0C0d4sd6rf1+VROktc
	oxlTuU8O+dY2zSbrcG82ggh/YEN9+VvAOORtrMdZYba75FFbU/VGwaTVX2a7CT6wOT04Hd7n5Nb9P
	kvNWVb+cuqMXQnjzCq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHVK-0003x3-8C; Wed, 24 Jul 2019 13:40:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHV7-0003rd-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:40:15 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDDB622AED
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563975612;
 bh=bhFiWmjAtAurAZfHqqApK5Lonkxgn8fire9Ml19llMA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CHap5r7dpNOxuCl6EvTqQ05n4KT/zogXFk2iFmrGi/sJ97PCi/c3T8RKQMarkAdcE
 2LXGc53Yg2DBDAZRbw0Ozej+4wt3Pc+QO0ArUObG8C4b15cECjDy0LP5QwA106kK+n
 fkXz5fZn4uCQM1SQQsIZ8KwrAluv4shYRwzRs3XA=
Received: by mail-qt1-f179.google.com with SMTP id d23so45520114qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:40:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWEACCMI0cm3O4zNu+uBM5CVMWCwpB7bMK40xylVPnyB4BGbPgu
 5yg80oIcVIz57ldUWKYRjXDAmfuElo1Vc2aYZQ==
X-Google-Smtp-Source: APXvYqz8sLIH6MUVejBtheayK4y6FI9z7gtA6QpNEl7sUb8Pwb3fG+kRlf3uBz6GM3u3CxWrCbXWR7M2XCCDu0l0MGk=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr58656327qtc.300.1563975612019; 
 Wed, 24 Jul 2019 06:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-4-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 24 Jul 2019 07:40:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLEb3QSLAhm9BsFa+A_Jmgr4gDtV2nUCKkgwwQaMLBk9g@mail.gmail.com>
Message-ID: <CAL_JsqLEb3QSLAhm9BsFa+A_Jmgr4gDtV2nUCKkgwwQaMLBk9g@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_064013_803201_3E1C54DD 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 2:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Guide readers away from using the aspeed,g[45].* compatible patterns.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  Documentation/devicetree/bindings/mfd/aspeed-scu.txt         | 2 --
>  Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt   | 2 --
>  .../devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml  | 5 +----
>  .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml  | 4 +---
>  4 files changed, 2 insertions(+), 11 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
