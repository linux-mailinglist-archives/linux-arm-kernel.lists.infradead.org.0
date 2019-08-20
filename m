Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF66965E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKzwJxlZeut4YB/e86d5IB+7kOKyh+Gf4bu8kWGDBws=; b=MX3b7DjBemd5iU
	ZXKAkC618Jj5DDOdj6tsMdfUMAsZ3gj7ZYwROvAVvBuQj90pQgeh8oMfbndSEwSZ5ir7sblvYEa2E
	hHYEHqrlgwFU1NMGaw46P5pj8YNw4xtZ5t/YJVP4+du+WogR/6hyCDuUXvjhaQmDesinv5VyVLOuU
	NepzFHbfxdcfo2QqSl52ngHKb+GRvz1Xg5QlcFu4OyKmVFFSNs/7B2GxDE0gZ8wtKY3nHeC6DDQOG
	Gfb06TYMOKzKIq4fi/YpxHalsL4ctZaafuhsvnssU3baYxx/iMLSSNZou3g40OdpmXhuLiJf4aXmY
	LAQCl62zOW49eg8v/BJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06f9-0004Tg-57; Tue, 20 Aug 2019 16:07:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06en-0004Pl-Sp
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:06:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so3502995pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YRs056YLcytSz/lcO+02IvGDxxc6td9XPBdc4gsyYAA=;
 b=IZwsAQPMaGfjir+i5wyMopDfSahsdLLbIG4M5qW3lPXUt8ZvDZ12aXqjHRdxxcJVJo
 3xTqpA4xV5p8ffOQ5vGphhzOyMAFFXXhYAibizmbrSDbNoIKaUHrm1oL6fomE55poTIB
 f9UvaFnq09P/l9L/ekZZE+aUvjkKM/fuN7qkDmwv0hzXvs/PonBQKr/Bqg6fnWKSizOP
 mESE5AH4jEiQn98hxJ8m4eBXwWApQRsTlyQW8NRhWCBcVv1NBZuYrrXJxMUhrLs7C266
 OhlKJrqxjeqLBN8ifArRe1bNaYfywbN23eq/xHnkNeWv2vQ4DsXjtZWp/ppyTLPJ7hLZ
 7YnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YRs056YLcytSz/lcO+02IvGDxxc6td9XPBdc4gsyYAA=;
 b=YP6HNrGyW8kySWINI2EmKUZyhchGiU0hi9GiNorowOPkYwFsvGKBzDsoXQgX5ho/rl
 mRkfuBJvYs5tV63GDpaIFHW4yJU8qEf77PDCwSnN0aV6+Ncbul9GMx7c7Iq3/GErRn9F
 pmkP0pAFnaDoip0ZQc48nk/jSCNCf3figXKXbYfombvhxw23+b/uFOCQX+GZoo4uTX6W
 cz1s0BVakBDGMiTlf0Ibg/xOSUldzxRza2TvCjfZzbP6W1nyqlhOAWdups08JCAKqpjf
 N3Vz3qPGxIqJCJzvItlQ4y6+JaiCMNNQbxln0bbC7PPsXO/5REKrDcXNU1rsBkSB9jMa
 AVqA==
X-Gm-Message-State: APjAAAUKpE1IIq/T3V3+2Du4ZcWiUexRDH1rAC13jPeVAuEBYiz2Dn9c
 hAlgVLWaTVGZ0bCJ+X84qyC8
X-Google-Smtp-Source: APXvYqwHifgRXXVR3SKFbiTSLt/P72Jdqu1N9xCJpAmYOMEfgiMIhGYa3U4Js8e4uNnZMrXcZFrRaA==
X-Received: by 2002:a17:90a:8591:: with SMTP id
 m17mr769569pjn.100.1566317208487; 
 Tue, 20 Aug 2019 09:06:48 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:0:ec1e:e8be:e0af:4cab:a3be])
 by smtp.gmail.com with ESMTPSA id e2sm20786541pff.49.2019.08.20.09.06.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 09:06:47 -0700 (PDT)
Date: Tue, 20 Aug 2019 21:36:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
Message-ID: <20190820160641.GA9262@Mani-XPS-13-9360>
References: <20190517153223.7650-1-robh@kernel.org>
 <20190613224435.GA32572@bogus>
 <20190614170450.GA29654@Mani-XPS-13-9360>
 <5946467c-7674-de2b-a657-627cf3be42df@suse.de>
 <CAL_JsqJoQDkqZO_4XdaQymVW0cJDXVmAPh3uieRkBjoUXeWE1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJoQDkqZO_4XdaQymVW0cJDXVmAPh3uieRkBjoUXeWE1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_090649_978074_680E5B6C 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:33:47PM -0600, Rob Herring wrote:
> On Fri, Jun 14, 2019 at 11:07 AM Andreas F=E4rber <afaerber@suse.de> wrot=
e:
> >
> > Am 14.06.19 um 19:04 schrieb Manivannan Sadhasivam:
> > > On Thu, Jun 13, 2019 at 04:44:35PM -0600, Rob Herring wrote:
> > >> On Fri, May 17, 2019 at 10:32:23AM -0500, Rob Herring wrote:
> > >>> Convert Actions Semi SoC bindings to DT schema format using json-sc=
hema.
> > >>>
> > >>> Cc: "Andreas F=E4rber" <afaerber@suse.de>
> > >>> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > >>> Cc: Mark Rutland <mark.rutland@arm.com>
> > >>> Cc: linux-arm-kernel@lists.infradead.org
> > >>> Cc: devicetree@vger.kernel.org
> > >>> Signed-off-by: Rob Herring <robh@kernel.org>
> > >>> ---
> > >>> v3:
> > >>> - update MAINTAINERS
> > >>>
> > >>>  .../devicetree/bindings/arm/actions.txt       | 56 ---------------=
----
> > >>>  .../devicetree/bindings/arm/actions.yaml      | 38 +++++++++++++
> > >>>  MAINTAINERS                                   |  2 +-
> > >>>  3 files changed, 39 insertions(+), 57 deletions(-)
> > >>>  delete mode 100644 Documentation/devicetree/bindings/arm/actions.t=
xt
> > >>>  create mode 100644 Documentation/devicetree/bindings/arm/actions.y=
aml
> > >>
> > >> Ping. Please apply or modify this how you'd prefer. I'm not going to
> > >> keep respinning this.
> > >>
> > >
> > > Sorry for that Rob.
> >
> > Well, it was simply not clear whether we were supposed to or not. :)
> =

> I thought 'To' you and a single patch should be clear enough.
> =

> > > Andreas, are you going to take this patch? Else I'll pick it up (If y=
ou
> > > want me to do the PR for next cycle)
> >
> > I had checked that all previous changes to the .txt file were by myself,
> > so I would prefer if we not license it under GPLv2-only but under the
> > same dual-license (MIT/GPLv2+) as the DTs. That modification would need
> > Rob's approval then.
> =

> That's fine and dual license is preferred. Can you adjust that when
> applying. Note that the preference for schema is (GPL-2.0 OR
> BSD-2-Clause), but MIT/GPLv2+ is fine by me.

Andreas, are you going to take this patch? Else, we can ask Rob to take
this through his tree as we don't have any queued patches for v5.4 yet.

Thanks,
Mani

> =

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
