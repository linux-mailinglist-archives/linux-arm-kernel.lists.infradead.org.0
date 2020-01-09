Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BED31362A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+sk5qtg3kJyLraTmx7U4fdM3mfBGx+5xxZ2FwtDrhk=; b=IclvTqJI36cnjK
	d+nd/rgpP+lpEdaSaRVU+FliPyhhrodDiBvs0JQ+fAjdbp1nT+e4GQ9bCEkQ1ocPNEk4Dr+1j0QJ7
	cHhXoLNRebHgeV4nepi9JVbDdfYAzOtGyhA0KcjPU1Lfsp5C6hxslOSTOAqaQ2K0ZHndWzBHMo3DD
	DNhIZWaw02pYx44tTH7ZXQDGl/W9MWWJSUrTaATA7M0ob3vAesnjI8SmCf7wiX+wQOgw1tl7HidRv
	rrr2mSyP+I+yZ1v20MR5DyceiWs2OK5ntSo5u5hpSe4Qp0itUKLJ932ZT1SPAvEnEKvkUXxXlltZi
	ZVtOsp+v1e+SyUXjbkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfRz-0001jr-4y; Thu, 09 Jan 2020 21:34:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfRr-0001jY-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 21:34:36 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9BA82077C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  9 Jan 2020 21:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578605674;
 bh=yn8sZNTzca5AhB7S6VZtExiIG/wWNPNaKx+okU9FHHo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=l1s44wy6UQynSATYWDgO5lND21qsYB27at/WiYGXThb9dukwcZWPlnPwqmyf1t1T3
 E3YqBNzDLgwtmj9PFMKzD2g6ret177fA/5yfx6jk12MyVu5e9bIrdpD7lJJgJxtmRj
 gxj0vOhLoR4+pnt933b303hp2OWtYntBh3Xl3BSU=
Received: by mail-qv1-f52.google.com with SMTP id p2so3625914qvo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 13:34:34 -0800 (PST)
X-Gm-Message-State: APjAAAWPN6L23iDwgGjgfrQ8dAKj9pVrCk0h2T2zj3qC5zZvjnlzJXxJ
 BlRIdtzAb6KQ0Aff4detflwlc9no09O/u5ss7A==
X-Google-Smtp-Source: APXvYqx43aMDqlaNqB0yVv64A+3XvbHK2prKiNN1FroBxw1xay/yrMm6w+12fNYNnHKqtqhTf/NG9bpdwJoHep0cNuk=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr10492240qvo.20.1578605673756; 
 Thu, 09 Jan 2020 13:34:33 -0800 (PST)
MIME-Version: 1.0
References: <20191108103526.22254-1-christophe.roullier@st.com>
 <20191108103526.22254-2-christophe.roullier@st.com>
 <20191108104231.GE4345@gilmour.lan>
 <f934df21-ac57-50ad-3e7b-b3b337daabe1@st.com>
 <20191115075008.GY4345@gilmour.lan>
 <009e8c0e-6a72-7e14-699e-8a897199ae16@st.com>
In-Reply-To: <009e8c0e-6a72-7e14-699e-8a897199ae16@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 9 Jan 2020 15:34:20 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLQoo0RMtdKgYbWP=wUiO6z2QM7tVzGJv_iMekFKQUDiQ@mail.gmail.com>
Message-ID: <CAL_JsqLQoo0RMtdKgYbWP=wUiO6z2QM7tVzGJv_iMekFKQUDiQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: dwmac: increase 'maxItems' for
 'clocks', 'clock-names' properties
To: Christophe ROULLIER <christophe.roullier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_133435_326457_F7FB5BCF 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 3:07 AM Christophe ROULLIER
<christophe.roullier@st.com> wrote:
>
> On 15/11/2019 08:50, Maxime Ripard wrote:
> > On Fri, Nov 08, 2019 at 01:02:14PM +0000, Christophe ROULLIER wrote:
> >> On 11/8/19 11:42 AM, Maxime Ripard wrote:
> >>> Hi,
> >>>
> >>> On Fri, Nov 08, 2019 at 11:35:25AM +0100, Christophe Roullier wrote:
> >>>> This change is needed for some soc based on snps,dwmac, which have
> >>>> more than 3 clocks.
> >>>>
> >>>> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> >>>> ---
> >>>>    Documentation/devicetree/bindings/net/snps,dwmac.yaml | 8 +++++++-
> >>>>    1 file changed, 7 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> >>>> index 4845e29411e4..376a531062c2 100644
> >>>> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> >>>> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> >>>> @@ -27,6 +27,7 @@ select:
> >>>>              - snps,dwmac-3.710
> >>>>              - snps,dwmac-4.00
> >>>>              - snps,dwmac-4.10a
> >>>> +          - snps,dwmac-4.20a
> >>>>              - snps,dwxgmac
> >>>>              - snps,dwxgmac-2.10
> >>>>
> >>>> @@ -62,6 +63,7 @@ properties:
> >>>>            - snps,dwmac-3.710
> >>>>            - snps,dwmac-4.00
> >>>>            - snps,dwmac-4.10a
> >>>> +        - snps,dwmac-4.20a
> >>>>            - snps,dwxgmac
> >>>>            - snps,dwxgmac-2.10
> >>>>
> >>>> @@ -87,7 +89,8 @@ properties:
> >>>>
> >>>>      clocks:
> >>>>        minItems: 1
> >>>> -    maxItems: 3
> >>>> +    maxItems: 5
> >>>> +    additionalItems: true
> >>> Those additional clocks should be documented
> >>>
> >>> Maxime
> >> Hi Maxime,
> >>
> >> The problem it is specific to our soc, so is it possible to
> >>
> >> propose "optional clock" for 2 extras clocks in snps,dwmac.yaml
> >>
> >> and "official" description in soc yaml file (stm32-dwmac.yaml) ?
> >>
> >>     clocks:
> >>       minItems: 1
> >>       maxItems: 5
> >>       additionalItems: true
> >>       items:
> >>         - description: GMAC main clock
> >>         - description: Peripheral registers interface clock
> >>         - description:
> >>             PTP reference clock. This clock is used for programming the
> >>             Timestamp Addend Register. If not passed then the system
> >>             clock will be used and this is fine on some platforms.
> >>
> >> +      - description: optional clock
> >>
> >> +      - description: optional clock
> > I guess we'd really need to figure out what those clocks are doing,
> > they are probably helpful (and used, under a different name) by
> > others.
> >
> > Hopefully the questions Rob asked will clear that out
>
> Rob, do you have any ideas, suggestions ?

Answer my questions from patch 2:

> What does 'power mode' mean? IIRC, some DW MACs have a clock for WoL
> called LPI or something. Are you sure this is ST specific and not DW
> config or version specific?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
