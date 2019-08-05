Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708728242F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HURggqqYaPjBUsb7w1eynauq5kni7OPzHUfQhisOmz8=; b=nFnf/19RqP4ul8
	HcZC0Phh15LDWNAg2vOAyXxefC53E2s3D2nFF3Bj8MA+a9rrl+4vSd3eB2Fi7aDh5Fxtwe60k9f5j
	Z1eZ1Q8bCgu8rN9oiIvaylPxBCWwX8IfCpDLBRZqbFlGznfjpGby6RPDag3s9rg8BHSFRTxIXPRte
	SDIUiSOaJqSq4/MKvzsfRLZau31ah4HeWdb27fQArGjTViF/KwsorQUPjie/4G+kv55mxZnZsaQLv
	29sqvogQiQ75kZnBWDlSMp5LQafEixw06ejPu8HrAjixV3Rh5VJGRVP9H1px/qMx6HiI0Z0OlBLf7
	KVC5vOE4Rn7ntREvB5QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huh3I-0006Uj-Mv; Mon, 05 Aug 2019 17:45:44 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huh37-0006TU-N7
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:45:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id az7so36723442plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 10:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=yaMCm60MQbAiEe109hZbk3mz1nB4Kn7VLm+HH7rwTRQ=;
 b=uILuQErqEj6dMFOf5SZh0i/b2tp5bwQfRZyTmmXbXwiJ905gJe7x+Y0F/LzIGf1GOM
 dbAhNp1MwxulQi3XQYrmPEEMHTBx2zFans4TpSdPfRssyPvaP8pThH1p2vRyI+qyq0er
 50z0RKVU3FWTZjDbrgC0275nB2kfXT95xJt6YA5QW/TQxFgtylRV5BLkD1bzZR9WxUjC
 jsXt6K+hAn+ZyM5pE2UZNTsjqbgDaX6+CXW3zdlkIdtZaoJXr2Tr8NzTJnoyvm1PTMG+
 cDsYIcu7PYHwyrBRenExj3UgjXocGhhCbvtc5z2de0yrPpz+BXVe4NgmA3lJMFHkwzCi
 pEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=yaMCm60MQbAiEe109hZbk3mz1nB4Kn7VLm+HH7rwTRQ=;
 b=rxff/DqJjM+cgK6ZDoeourq7BmuT+vO8Qvy5lBZ15O1ViEReeziSv2r9a3LAWjWXJ2
 tqaT/LX4V+CjMgz0NBeuKV2AF90V5R0Ow+ymz7mT4/XeohOl4hgltHeofkc8texDV1pe
 dn3nUcPQd8aYFquHb6cB6Pbv/Xbj5+HzTjTnepyZzbabXlx4zi96vsZy/EUV/vb4Qa4h
 8mz3YJxas7yL5+rnIaNVw4XZd5Zp4OPLCjYazK6Zw6lzmkXh0drXTEQiO7scwhbIfeVk
 LexZzC4k9nLrM0HxaQ/8A3taJtO3J2A7ia7qW8Xpu16SNBENlBPdRTZUvBa+AffwiaDf
 1ODQ==
X-Gm-Message-State: APjAAAURWOy39vjhHLnl1zY4j1rlFaTURQShsrbFbAg+In4zhdZtBLOY
 mjqlsS8SfrMuNEJxGsPe1bwVWg==
X-Google-Smtp-Source: APXvYqyXSBold9rTE84iJAtGLze32KZeXA3Zh9TxcfLV0XfYpUb8i/gYaAVGpQpEYjhS9ow7s7fROw==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr147750614plp.241.1565027127918; 
 Mon, 05 Aug 2019 10:45:27 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s20sm96177226pfe.169.2019.08.05.10.45.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:45:27 -0700 (PDT)
Date: Mon, 5 Aug 2019 10:46:59 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien DESSENNE <fabien.dessenne@st.com>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Message-ID: <20190805174659.GA23928@tuxbook-pro>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a057176-81ab-e302-4375-2717ceef6924@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_104533_768309_4D086CA2 
X-CRM114-Status: GOOD (  34.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 05 Aug 01:48 PDT 2019, Fabien DESSENNE wrote:

> =

> On 01/08/2019 9:14 PM, Bjorn Andersson wrote:
> > On Wed 13 Mar 08:50 PDT 2019, Fabien Dessenne wrote:
> >
> >> The current implementation does not allow two different devices to use
> >> a common hwspinlock. This patch set proposes to have, as an option, so=
me
> >> hwspinlocks shared between several users.
> >>
> >> Below is an example that explain the need for this:
> >> 	exti: interrupt-controller@5000d000 {
> >> 		compatible =3D "st,stm32mp1-exti", "syscon";
> >> 		interrupt-controller;
> >> 		#interrupt-cells =3D <2>;
> >> 		reg =3D <0x5000d000 0x400>;
> >> 		hwlocks =3D <&hsem 1>;
> >> 	};
> >> The two drivers (stm32mp1-exti and syscon) refer to the same hwlock.
> >> With the current hwspinlock implementation, only the first driver succ=
eeds
> >> in requesting (hwspin_lock_request_specific) the hwlock. The second re=
quest
> >> fails.
> >>
> >>
> >> The proposed approach does not modify the API, but extends the DT 'hwl=
ocks'
> >> property with a second optional parameter (the first one identifies an
> >> hwlock) that specifies whether an hwlock is requested for exclusive us=
age
> >> (current behavior) or can be shared between several users.
> >> Examples:
> >> 	hwlocks =3D <&hsem 8>;	Ref to hwlock #8 for exclusive usage
> >> 	hwlocks =3D <&hsem 8 0>;	Ref to hwlock #8 for exclusive (0) usage
> >> 	hwlocks =3D <&hsem 8 1>;	Ref to hwlock #8 for shared (1) usage
> >>
> >> As a constraint, the #hwlock-cells value must be 1 or 2.
> >> In the current implementation, this can have theorically any value but:
> >> - all of the exisiting drivers use the same value : 1.
> >> - the framework supports only one value : 1 (see implementation of
> >>    of_hwspin_lock_simple_xlate())
> >> Hence, it shall not be a problem to restrict this value to 1 or 2 since
> >> it won't break any driver.
> >>
> > Hi Fabien,
> >
> > Your series looks good, but it makes me wonder why the hardware locks
> > should be an exclusive resource.
> >
> > How about just making all (specific) locks shared?
> =

> Hi Bjorn,
> =

> Making all locks shared is a possible implementation (my first =

> implementation
> was going this way) but there are some drawbacks we must be aware of:
> =

> A/ This theoretically break the legacy behavior (the legacy works with
> exclusive (UNUSED radix tag) usage). As a consequence, an existing driver
> that is currently failing to request a lock (already claimed by another
> user) would now work fine. Not sure that there are such drivers, so this
> point is probably not a real issue.
> =


Right, it's possible that a previously misconfigured system now
successfully probes more than one device that uses a particular
spinlock. But such system would be suffering from issues related to e.g.
probe ordering.

So I think we should ignore this issue.

> B/ This would introduce some inconsistency between the two 'request' API
> which are hwspin_lock_request() and hwspin_lock_request_specific().
> hwspin_lock_request() looks for an unused lock, so requests for an exclus=
ive
> usage. On the other side, request_specific() would request shared locks.
> Worst the following sequence can transform an exclusive usage into a shar=
ed
> =


There is already an inconsistency in between these; as with above any
system that uses both request() and request_specific() will be suffering
from intermittent failures due to probe ordering.

> one:
>  =A0 -hwspin_lock_request() -> returns Id#0 (exclusive)
>  =A0 -hwspin_lock_request() -> returns Id#1 (exclusive)
>  =A0 -hwspin_lock_request_specific(0) -> returns Id#0 and makes Id#0 shar=
ed
> Honestly I am not sure that this is a real issue, but it's better to have=
 it
> in mind before we take ay decision

The case where I can see a
problem with this would be if the two clients somehow would nest their
locking regions.

But generally I think this could consider this an improvement, because
the request_specific() would now be able to acquire its hwlock, with
some additional contention due to the multiple use.

> I could not find any driver using the hwspin_lock_request() API, we
> may decide to remove (or to make deprecated) this API, having
> everything 'shared without any conditions'.
> =


It would be nice to have an upstream user of this API.

> =

> I can see three options:
> 1- Keep my initial proposition
> 2- Have hwspin_lock_request_specific() using shared locks and
>  =A0=A0 hwspin_lock_request() using unused (so 'initially' exclusive) loc=
ks.
> 3- Have hwspin_lock_request_specific() using shared locks and
>  =A0=A0 remove/make deprecated hwspin_lock_request().
> =

> Just let me know what is your preference.
> =


I think we should start with #2 and would like input from e.g. Suman
regarding #3.

Regards,
Bjorn

> BR
> =

> Fabien
> =

> >
> > Regards,
> > Bjorn
> >
> >> Fabien Dessenne (6):
> >>    dt-bindings: hwlock: add support of shared locks
> >>    hwspinlock: allow sharing of hwspinlocks
> >>    dt-bindings: hwlock: update STM32 #hwlock-cells value
> >>    ARM: dts: stm32: Add hwspinlock node for stm32mp157 SoC
> >>    ARM: dts: stm32: Add hwlock for irqchip on stm32mp157
> >>    ARM: dts: stm32: hwlocks for GPIO for stm32mp157
> >>
> >>   .../devicetree/bindings/hwlock/hwlock.txt          | 27 +++++--
> >>   .../bindings/hwlock/st,stm32-hwspinlock.txt        |  6 +-
> >>   Documentation/hwspinlock.txt                       | 10 ++-
> >>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          |  2 +
> >>   arch/arm/boot/dts/stm32mp157c.dtsi                 | 10 +++
> >>   drivers/hwspinlock/hwspinlock_core.c               | 82 ++++++++++++=
+++++-----
> >>   drivers/hwspinlock/hwspinlock_internal.h           |  2 +
> >>   7 files changed, 108 insertions(+), 31 deletions(-)
> >>
> >> -- =

> >> 2.7.4
> >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
