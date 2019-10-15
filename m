Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52341D8396
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwRmNedgYXiqTMzUKEcRTAOWtqQYB5k5hHlGtiRjB/M=; b=bEbxpz7Bd2laAH
	woqFrcvjAVo+3D7lqqyFTxGZSWvxOoYB1bkZt/IAjRmxQ9JDD0IXW/rA4yFg8Ci7mui5bt/eO91Ub
	guGGBZtysLEQXaPmY2xXWSdRlYcqOLu4fLvNP7pCqAMKcsNMyUUaZeqGbWfEjqwPlRBqfCHerms6B
	E/IqC2IJaCwP0ar6E9/1XunaMpJLoQtbOIUOFQrQX7g/+hXaVr7hFax4af+/xxubEeF+UpNrJmu0H
	T6cAanubtbu1GNQv1J/PS7COYxVoADV/4HmzAsC1Xlgf0GlaP7pyvc8RkDqXAXAK5Am2nF5EwEOUz
	7Bs7urdHHCcWZetKEmYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVEy-0001pN-RE; Tue, 15 Oct 2019 22:24:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVEn-0001p4-Ql
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:24:19 +0000
Received: by mail-oi1-f194.google.com with SMTP id i16so18316714oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nK0aavkV2vBesQcv0AgqoDNcvg469f2OzuJk5GeXGKE=;
 b=L4XPT4iJcSyvoATRli0f+QjwVVj3cg+DNpYijLGD12iDSWlSMG4pLcURdbwab0IMB1
 WKe/K38llJRrCqqX1eb1XHAVGY8QewAWpL4c9u0ZhkLHp72g3o0LfeBj4eaAUtPzg/qJ
 uyRe5ST2LPg7NWPKFlsPz9k1XXykRoPrk/vqbS1y4i7h9DdCzMZSozUIbsJQnDg+gxEd
 p9803zj0LWiqGQsWobIqG2j4g8dxtzVjBd8KFdOLbf2efPY/QTekfSj66D4J6ZmvZn/c
 0iTu9x6EojkZ2PFKgr25oumq+3ys+IAV3khIlG0v3c0RL741RU4G7ZZCBbsJgJyj69l7
 Uyuw==
X-Gm-Message-State: APjAAAUYQCiznxdocv/21JYDeiNeAURZ+09bNprRrgyFTE56itMwCKJt
 synWKcrlmo/osRF2OPe2yA==
X-Google-Smtp-Source: APXvYqw2zlzetx+asQEISLHCoq9N6nsXVVk1APE2KhuoS0Weh/DxpADYhOg0xmTVQQw+4Z3eMZTbng==
X-Received: by 2002:aca:3b84:: with SMTP id i126mr785946oia.28.1571178256967; 
 Tue, 15 Oct 2019 15:24:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m20sm6622503oih.43.2019.10.15.15.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:24:16 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:24:15 -0500
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 1/7] dt-bindings: pinctrl: aspeed-g6: Rework SD3 function
 and groups
Message-ID: <20191015222415.GA10977@bogus>
References: <20191008044153.12734-1-andrew@aj.id.au>
 <20191008044153.12734-2-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008044153.12734-2-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_152417_867040_2FB48769 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  8 Oct 2019 15:11:47 +1030, Andrew Jeffery wrote:
> Rename SD3 functions and groups to EMMC to better reflect their intended
> use before the binding escapes too far into the wild. Also clean up the
> SD3 pin groups to eliminate some silliness that slipped through the
> cracks (SD3DAT[4-7]) by unifying them into three new groups: EMMCG1,
> EMMCG4 and EMMCG8 for 1, 4 and 8-bit data buses respectively.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> Unfortunately reflowing the list creates a lot of noise in this change. As
> mentioned the SD3DAT[4-7] groups are renamed, as is the SD3 function. There
> should be no functional changes beyond that.
> 
>  .../pinctrl/aspeed,ast2600-pinctrl.yaml       | 86 +++++++++----------
>  1 file changed, 42 insertions(+), 44 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
