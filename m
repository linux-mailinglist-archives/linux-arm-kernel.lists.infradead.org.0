Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE26B2215
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSHGB25vBSpAE9D27EUpfp0XCPnID+6WTI2WHlrIXWk=; b=Zqhl6wJ+RFc4Wn
	Y+ny5N6sH4fLiCSVS3HwmWjiN0+SciqdhC9hV2LBxIFAiVsYw3fbd1hJ0TtYjMcDfGgI1uomfE1da
	+65c7annC9PjAlgtINlf1G2q33oZ1tGbgBdfq4BWmqWL8MjulGXUsQbxnCxbuBPKdUJ/VU2Ixj2Ad
	3NSlwPfR8/4ZHtkJqe7ZSSg6tlPCucuutVo0ibdA4EptnCjCIAHPxXNFZU76hBYGBbkbcMa+FN1pd
	6cWO4+whtQnVTqlIMmbLR1lfyWIakmZWMK6//AmCstQzSIjc8QqWOchXFfCORy4wJ+mOBA0VQnVhW
	flW5hYHU5m8hSc5z37yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mhq-0003Jd-Rm; Fri, 13 Sep 2019 14:37:51 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgG-0002Mb-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:14 +0000
Received: by mail-ot1-f67.google.com with SMTP id h17so25849801otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=Udp1qs2PnQd+suer1OhTIlkS/OekkcPK9CiDkJDjShA=;
 b=nrDwNEj6M3INklBqHpQxKeuk0MT8wNKO28JJdxCb94PCZvkTaj2HpRvmZUUIXPEcuf
 nHzns/lK4iNiZCOIiqd5zZ6MaRKlA+rJ8mWSytJX7XsJamvLLkO+V0mRY8H0DUV36KPI
 FvclwHMMDO/eARjKmyIkty778MSsoZEj4EW+/Z3IUBWo1hwmpGFQxMVpoKSxOtWpNbGn
 mGil40rKhM6mhEFsFrKOlVRXnnn/sriuXG0feX8dyJoPB9pII7VOUuptSEylGhwJmNnX
 voRiutpXXgkL6qror6lb7gT6L1+hjK1vI5z4/Wl6NbtDLgvOGVvoPEKTumI9wJNYy9ko
 LDBg==
X-Gm-Message-State: APjAAAWBqHPm8wgZacpzGiS6AdjYvIRRj0YEZ7KxUOaVD+khu5kO/9cb
 oSIN5xDKZ2L/VoJYT4yxmA==
X-Google-Smtp-Source: APXvYqycFKRr57mlzxEV5y+yWerE/UvbEc15wS4dWm6MgJQ1ln7TuCcpwqsSqLk1VgSzUI9biggE8Q==
X-Received: by 2002:a9d:5f9a:: with SMTP id g26mr9285769oti.27.1568385371763; 
 Fri, 13 Sep 2019 07:36:11 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j3sm1115259oih.52.2019.09.13.07.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:10 -0700 (PDT)
Message-ID: <5d7ba95a.1c69fb81.bfd81.77ba@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:10 +0100
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
References: <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-4-l.luba@partner.samsung.com>
 <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
 <52963d0d-cf48-7085-5581-a94c6e15e0bd@partner.samsung.com>
 <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
X-Mutt-References: <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073613_043258_98714FF4 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?utf-8?Q?Bart=C5=82omiej_=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 01:50:26PM +0200, Krzysztof Kozlowski wrote:
> On Fri, 6 Sep 2019 at 13:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >
> > Hi Krzysztof,
> >
> > On 9/6/19 12:56 PM, Krzysztof Kozlowski wrote:
> > > On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> > >>
> > >> Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
> > >> Minor fixes in the old documentation.
> > >>
> > >> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> > >> ---
> > >>   .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
> > >>   1 file changed, 27 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> > >> index 3b2485b84b3f..de0905239767 100644
> > >> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
> > >> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> > >> @@ -40,10 +40,34 @@ Child nodes:
> > >>     a given speed-bin. Please see Documentation/devicetree/
> > >>     bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
> > >>
> > >> +Samsung K3QF2F20DB LPDDR3 memory
> > >> +------------------------------------------------------------
> > >> +
> > >> +This binding uses the LPDDR3 binding (described above)
> > >> +
> > >> +Required properties:
> > >> +- compatible:  Should be:
> > >> +               "samsung,K3QF2F20DB"
> > >> +               followed by "jedec,lpddr3"
> > >> +- density  : <u32> representing density in Mb (Mega bits)
> > >> +- io-width : <u32> representing bus width. Possible value 32
> > >> +- #address-cells: Must be set to 1
> > >> +- #size-cells: Must be set to 0
> > >
> > > If you decided to repeat all properties again, then it deserves its
> > > own bindings file. However I though about simpler solution - just
> > > document compatible. Exactly the same as AT24 or AT25 EEPROM bindings.
> > > There is not much benefit from copying all these properties.
> > OK, I see. I will add only 'compatible' and skip the rest then.
> > So the lpddr3.txt file will get this addition:
> >
> > +Samsung K3QF2F20DB LPDDR3 memory
> > +------------------------------------------------------------
> > +
> > +This binding uses the LPDDR3 binding (described above)
> > +
> > +Required properties:
> > +- compatible:  Should be:
> > +               "samsung,K3QF2F20DB"
> > +               followed by "jedec,lpddr3"
> > +
> > +Optional properties:
> > +
> > +The optional properties are the same as in the LPDDR3 generic bindings and
> > +values should be taken from the data-sheet. Detailed bindings are described
> > +above.
> > +
> > +Child nodes:
> > +
> > +Detailed bindings are described in LPDDR3 generic bindings described above.
> > +
> >
> > Is it OK?
> 
> To me it is still a lot of text just for one compatible and I can
> image more of such entries for other memories... However I do not mind
> and anyway, YAML will simplify it. If you're in doubt, wait for Rob's
> reply as this is his part.

We can't have multiple (top-level) schema in one file, so better to add 
in where the existing compatible strings are.

Rob


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
