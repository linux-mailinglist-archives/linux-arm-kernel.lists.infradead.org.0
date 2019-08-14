Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C48CEAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIa8BYyD8zl201rQiRnbZSHwnD4mW4gdqs/xjRi5iaU=; b=VytfHYenCbg9o/
	PMcVTDUhDCc7l1Ym6nPr3d/9udswYiiseeQUMCNg26B0omVcyP6R2tUBZVYlM0kAphjo+7kz88erW
	aAVXt95Q7TRgwNk6vvl7pC6WG3ANoGzg5aSARI5mjDXABZEJVVojU+cIkp+J7r7/hkD380tCtoCZy
	svqv2lwOeGROCcOlNQHjlwlDwCfnj1EN74jkHHfeEmrOch/2/Gw826E6zlnAZmmVl1WdEKLIzeybN
	POO2mnb9myCkiXhcJvFGB1gC8KOqISCqqj4RmTNLvU5iFONR0bc6ts7dWm8byo/sHoDYzVZFxBlKO
	pLKxAfpWRHtlOy2CvyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoqr-0001Id-Af; Wed, 14 Aug 2019 08:41:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoqY-0001IF-M8
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:41:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id h28so78682928lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KzpALMQhsAYiuMs6y6iJLV3dLZWeIJlGmnisMykIAis=;
 b=r2pSn+KrIj0p/r1Jh1Qa8oRX30gNZzgGkBpwKkDEJNczG7E+VnEvwitjkTtXDi+iiY
 4quGEaWmppl+rGwEtCxpw/UZ3hBqlm+OVntmnenzCFo/I6+LXJxNE7F5nzZUYPGfUZiM
 xiG/6RYIi+mV1854OvRiWUXHkXNDPIzy+8pHNKtKmSgN6mwGISjCmBFoX1/xBh582HPF
 0rE/0WduaDy2igRu2LN3eXNSIweY7DEhtBe8nqhlALJP8Xv3yu9U1R/0vGBigFAmvlLa
 PAsFJPhwguzevp0v5g/p6gMTOOiq08hxCCU/MhScC+UZSJVOlkN0kzs35xo7Oo+fvBp+
 LgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KzpALMQhsAYiuMs6y6iJLV3dLZWeIJlGmnisMykIAis=;
 b=HPLtCZ7Q89JrF4tQ4EO8gkZcnLeKxHjDTdHEKfrTots+6O8XuvHaJd5tRO425dY3V4
 YRMjYiww0Jm/20L1mU4ODnbbvkyNzynNXnzYrLx981ImgoDBJjym5t+uPyAdKQLsVad2
 LebKfLT3NvHAIe2+17/QKuBGA/8gT3Gs8LLJgUYzGUe1woc1tR0LTDGuKmbrEN7V8+Dn
 7zTCS/HyFzI4C5Z4O4hmGkEXzMJLxb99WRjcYItaUoG3moEMGXLHQ4WiYVm3dKA17sTs
 qSUtPwrjUqGgTeq0Mak51HgHL+o2AMy6ODwtYrQFKCmhq25BpeMNtpDYsO16d68AM+Tq
 oC3Q==
X-Gm-Message-State: APjAAAWyPpVpkSy5i2y9RycFATWFyAkKeJD+97U35fpfgUNbWY2Ynh/+
 kMlz19Y6mVaQxku0hJuXEqoCrXCWlh8QPhxiihl3Kw==
X-Google-Smtp-Source: APXvYqx5nqnXeVYMCMOMXqQ9fV6cH2bSPFPCrhICg/SdR9VyEVww1xueQTgGw2t8u9djOnijC0ljUID4vf6sSeDgNCQ=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr22886155lfq.152.1565772089303; 
 Wed, 14 Aug 2019 01:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
 <20190812101504.GF26727@dell>
In-Reply-To: <20190812101504.GF26727@dell>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 10:41:17 +0200
Message-ID: <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_014130_730508_329A4CF3 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 12:15 PM Lee Jones <lee.jones@linaro.org> wrote:
> On Mon, 05 Aug 2019, Linus Walleij wrote:
>
> > On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > > Guide readers away from using the aspeed,g[45].* compatible patterns.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > Patch applied to the pinctrl tree.
>
> With my Ack?

Sorry no. :( Was I too trigger-happy?

Usually I take Rob's ACK as authoritative for anything under
Documentation/devicetree but if you have concerns about the
patch from an MFD point of view I will revert it pending further
discussion.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
