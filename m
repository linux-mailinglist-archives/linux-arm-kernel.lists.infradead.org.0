Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752C1CFC6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogEcnK/V1a5ytZFZJozKofKXsnqMkymBvFeV+IXbf4Y=; b=rZibEIyyh02Yhv
	VXAMD92vRjMB3yi911DsQYgM560QTOiwsWWBZcEaGwhJeRxZFzZIQKlGnuFuBqylRybYt1iH28Muf
	gQ+7OPRkXM0767xDlBayKRH3vep8saqlmhbvc5HMyy5zoO5eFaD+ScDLDXIClo+X10kYcmSibBAgC
	1H2b1AG9Vahn0NwArGfzY5WutllmXFpC0SSPH451Wp41AhWnPbuo2QQvzXPFidQBZZblCUHrHDLtZ
	cMQcP1BetMgWQHy5EPu4dFUgyAtv2PYdv5//2sscNmQ4JX4tyNqMAJeEMWI7L/AsbhcdFCS9qEK3j
	1jJk3gnMqbfqUe6qvwKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqUG-0002Uf-0q; Tue, 08 Oct 2019 14:29:16 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqU6-0002Tq-Lb
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:29:08 +0000
Received: by mail-wm1-f65.google.com with SMTP id y21so3383092wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YE0D8Jghzw7CVdBybcskFRzbxtu5Ddla3G2nKPd70nY=;
 b=pIrJDq3YAhckHcc369I7VRIoIrEk3/39fqij/GOUG2CI8OO3AB7bMTf2/IzEZEIw3C
 H4DTZOfd/d+zchIC3FN94bo1S1JOLmauCpJheesK7yJ5iUvWnOB0yFg5BPldChH5Pqoi
 sujscUhQt1T+bV67P3kMdBeziHWaqe3uMMfsRfElb7lYzWjInLZ92QqM5oUMIEIJNgmH
 qeowD//xOdM+R3cM3HF54BjSkqm9PTVcIOjotPsL7PDs0sBebhsyO5HkmKGdyuMMXv/d
 bioIbGX12+bWNepjT9VySQLwW+Q8znIGMFaNPQptDfXrqj1C/l9y7zeV3laeYS26kUvW
 4YNQ==
X-Gm-Message-State: APjAAAXYVaDsNCmDW789ti75gpmki2I74MaYb+sPGnS6NIIEltfTP8YK
 VzH431BcXqPAIRdVnJIMJTQ=
X-Google-Smtp-Source: APXvYqw13buOvMKCLr9dJbc+42LtMA0u9H09vXHDWUs/lreMeW+bzq3Dl290U336az+CLfiT3ep52A==
X-Received: by 2002:a1c:a6ca:: with SMTP id p193mr3960835wme.103.1570544942984; 
 Tue, 08 Oct 2019 07:29:02 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 143sm4202466wmb.33.2019.10.08.07.29.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 07:29:02 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:29:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
Message-ID: <20191008142900.GA2635@pi3>
References: <20191004151414.8458-1-krzk@kernel.org>
 <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
 <20191008125038.GA2550@pi3>
 <CAL_Jsq+GcsUWN6kjBLkyr1rHGh6_4=w6JL6+k7DBXkBcvHcSBw@mail.gmail.com>
 <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_072906_708703_85ECCA99 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 09:17:16AM -0500, Rob Herring wrote:
> On Tue, Oct 8, 2019 at 9:05 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Oct 8, 2019 at 7:50 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Tue, Oct 08, 2019 at 07:38:14AM -0500, Rob Herring wrote:
> > > > On Fri, Oct 4, 2019 at 10:14 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > >
> > > > > The clkoutN names of clocks must be unique because they represent
> > > > > unique inputs of clock multiplexer.
> > > > >
> > > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/samsung/pmu.yaml | 6 ++++--
> > > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > > index 73b56fc5bf58..d8e03716f5d2 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > > > > @@ -53,8 +53,10 @@ properties:
> > > > >        List of clock names for particular CLKOUT mux inputs
> > > > >      minItems: 1
> > > > >      maxItems: 32
> > > > > -    items:
> > > > > -      pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> > > > > +    allOf:
> > > > > +      - items:
> > > > > +          pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> > > > > +      - uniqueItems: true
> > > >
> > > > You shouldn't need the 'allOf', just add uniqueItems at the same level as items.
> > >
> > > If you mean something like:
> > >   56     uniqueItems: true
> > >   57     items:
> > >   58       pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> > >
> > > Then the dt_binding_check fails:
> > >
> > > dev/linux/Documentation/devicetree/bindings/arm/samsung/pmu.yaml: properties:clock-names:
> > > 'uniqueItems' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties']
> >
> > I can add it.
> >
> > The other option is to fix this in the clock schema. I'm not sure if
> > there's a need for duplicate clock-names. Seems unlikely. I'll test
> > that.
> 
> Actually, clock-names is already set to be unique. Did you see otherwise?

Yeah, I duplicated on purpose "clkout1" and it was not reported as an
error. That's why I added "uniqueItems".

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
