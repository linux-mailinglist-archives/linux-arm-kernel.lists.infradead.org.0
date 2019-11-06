Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70252F0D91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFylILKrmuOV1udGT6wdKlMJMEVoWMWsuVHVMO8PvwM=; b=RV+yVT4WEUUaNS
	BQIdqgYWE1wuwq/Czbncumwwe/7FlVgJRYUG6YZX/nFIEq9fHrEZE7llHCAI7Kn+9/AYXB93Tp5D8
	r/dteNVfH18a3r8fisUmgSrWDSoUPpQRzolIf6bxROtP9GBLmpLxTliHFWhlewGd9k0FO1myKUsHB
	bA8qUVEAwETb0C0angv6WqVnu6mzwcy044zSmQhXeaWsMZHZbrlY/eJlQ60kLRwiccdaG3yokb6Nn
	mf28E+PlvdYA1IOXqav0UaZwbRvS2ldGzZk7zTSdvcxC3ojhLJCoVOXKF9WIw94Wp3bCHJ3ReuRLL
	LECmFb6XcwGCFVwucLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCb5-0003Zo-Ty; Wed, 06 Nov 2019 04:07:07 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCay-0003Z3-4t
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:07:01 +0000
Received: by mail-oi1-f195.google.com with SMTP id e9so15860462oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:07:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=pbXWYeEjjc1tNeD8Va0Rn7W5q8WImyzirMTHLiEKYGY=;
 b=QB5XC8km2dKf4dAWhWJdJpS8q8hjMdEclZTthTtro4F83uzVY81HkyGiX1m3jagpwc
 7AbJHglvj7XxJ/AG7PPuBHoLcwwLQF9AkP/bSWPA7VQ2Y/Mxr5YOAELTmpM/bDH3x9RY
 9mnDFZ3iWshyQWV9uZFCVq5zn0mLTQzij4fuWSFQJD/S9zO61tsbGjYPAAYC24Wzj5Ir
 BFPYSFEdRnCsWZEE2U2SBHWQkKG0SQaNzk6Gfl6bIDorUpyYBQfeh0LKVtPMMV3B+T6z
 K8XrfEevoHXSXMlq7w3so0n5ZTRCf2oL0grYqavZfmbebLX73hMyfE9JIAIwtHO+DjEB
 2zbA==
X-Gm-Message-State: APjAAAVZFWdWMx5eGeezF7/m+6YRpmii7qPx75rhVvehkxKwJdUZp3j0
 0Bnxn/ewy4j8nox3uffU9w==
X-Google-Smtp-Source: APXvYqwe0beNgeLE8gya+f9XdJ7ynxnQMAtyk6u+v0005b8KLbqtym2m20lGy9EYFxREtXyxePD27Q==
X-Received: by 2002:aca:f18b:: with SMTP id p133mr406122oih.22.1573013219216; 
 Tue, 05 Nov 2019 20:06:59 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k93sm6726958otc.30.2019.11.05.20.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:06:58 -0800 (PST)
Date: Tue, 5 Nov 2019 22:06:57 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH 2/4] dt-bindings: iio: timer: Convert stm32 IIO trigger
 bindings to json-schema
Message-ID: <20191106040657.GA5294@bogus>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-3-benjamin.gaignard@st.com>
 <20191103110841.3ad3ecfb@archlinux>
 <CA+M3ks5sZ6wwV-V+HCLC8OLdeLqrxK0Ga-pXTsdktQErbMOk4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks5sZ6wwV-V+HCLC8OLdeLqrxK0Ga-pXTsdktQErbMOk4g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_200700_189700_8B10446F 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>, linux-iio@vger.kernel.org,
 Hartmut Knaack <knaack.h@gmx.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, u.kleine-koenig@pengutronix.de,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 11:07:16AM +0100, Benjamin Gaignard wrote:
> Le dim. 3 nov. 2019 =E0 12:08, Jonathan Cameron <jic23@kernel.org> a =E9c=
rit :
> >
> > On Thu, 31 Oct 2019 13:30:38 +0100
> > Benjamin Gaignard <benjamin.gaignard@st.com> wrote:
> >
> > > Convert the STM32 IIO trigger binding to DT schema format using json-=
schema
> > >
> > > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> > I'm far from great on these as still haven't taken the time I should to=
 learn
> > the yaml syntax properly.  A few comments inline however based mostly o=
n this
> > doesn't quite look like other ones I've seen recently.
> >
> > Thanks,
> >
> > Jonathan
> >
> > > ---
> > >  .../bindings/iio/timer/st,stm32-timer-trigger.yaml | 44 ++++++++++++=
++++++++++
> > >  .../bindings/iio/timer/stm32-timer-trigger.txt     | 25 ------------
> > >  2 files changed, 44 insertions(+), 25 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/iio/timer/st,st=
m32-timer-trigger.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32=
-timer-trigger.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/timer/st,stm32-tim=
er-trigger.yaml b/Documentation/devicetree/bindings/iio/timer/st,stm32-time=
r-trigger.yaml
> > > new file mode 100644
> > > index 000000000000..1c8c8b55e8cd
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trig=
ger.yaml
> > > @@ -0,0 +1,44 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/timer/st,stm32-timer-trigger.=
yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: STMicroelectronics STM32 Timers IIO timer bindings
> > > +
> > > +maintainers:
> > > +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> > > +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> > > +
> > > +properties:
> > > +  $nodemane:
> >
> > nodename?
> =

> That will be in v2

No, $nodename is correct. The '$' signifies something we generate and =

add in. IOW, not a real property. I guess we could have used 'name' here =

and stuck with traditional OpenFirmware.

> =

> >
> > > +    pattern: "^timer@[0-9]+$"
> > > +    type: object
> > > +
> > > +    description:
> > > +      must be a sub-node of an STM32 Timer device tree node
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        oneOf:
> >
> > enum is I think preferred for these.
> =

> as you like it will be in v2
> =

> >
> > > +          - const: st,stm32-timer-trigger
> > > +          - const: st,stm32h7-timer-trigger
> > > +
> > > +      reg: true
> >
> > Normally some info for what the reg value is..
> I can't put "description" on this field because the syntax doesn't allow =
it.
> I will add a comment in v2 to explain what reg is.

items:
  - maximum: <max timer number>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
