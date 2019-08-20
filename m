Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5885F956D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 07:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZypA3owp79LBQBM7S6lddQ7OErpyzblFEGKE4hdtHbQ=; b=Y/yelKuWAnSmP+
	b1mI8lbFuzwojl43rGmCVfynznJdCPyf3zdHLYhFV3Y2ycN8qENkJAbwiKazPFy+Bx4QgA9scLHHQ
	cPW3GJRFc238yj36mhJ6Wo9aKDl40/wE1VlQUMHEzcBJpGituYwNLr9Xy6ir7nSRs1CCJR9nQZqrq
	3Dz3LDUoXeyDYAHDqy+/8sBte88gb34lOvccN3V/Tba6NpU+SBYGGfnUZ7d0uFWIPzsXIDqKtoEVA
	LX8Q9erTy92YaejjkRWuHAOVtum6wEdZipaq4EqVXs4slb6VJpjVd9LbbSg98uKupfYrEZjBvbtFM
	xzHBqbbdMa0yh2Old2Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzwyD-0003m5-Pk; Tue, 20 Aug 2019 05:46:13 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzwxs-0003ka-Nn; Tue, 20 Aug 2019 05:45:54 +0000
Received: by mail-oi1-x242.google.com with SMTP id y8so3197662oih.10;
 Mon, 19 Aug 2019 22:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SUi6S9fkx8K9UBpuxHy4pZiVt9/OmtTgDbX0hbV2Tuo=;
 b=hFOjmkcH7RFWvN6+QDT1OwUVPXgsmELeE2XT9k9xYzkiyXBmxBbESdtvvm9LgrZ9E9
 S4A6/V7J07psnKpkeCI/1UCuxG4lmicIgPVJbHhdlyFZZG6iH2J2YBWjr+rpBaAccHNc
 ZL0q1xqEC7QL3wUi/3LXIHIU4kcxU7DCrpwXdGmVUkplrPVhQNrHgU8UT5Y2nnoeGIsM
 86/UYCHqz/0WUtEczq/ovBvKAlygBGLDj56jw4fZvXkt+YnGBcXhc5lwRptgJjQ/mcDo
 qn1Oa4RleIRleeFlBKsnxOImKyRBYSCzImcFVAwLWWMTsVZvvjLtTO9zEKa4+LR8UIxX
 hnaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SUi6S9fkx8K9UBpuxHy4pZiVt9/OmtTgDbX0hbV2Tuo=;
 b=Wxbk0d+8zkSjsOx85Y6GlkLcnK8DRmNhjGGNIIM8Z/6IT1BJ3qdnlxLztxoyEbxuw9
 AABVnWYIurDdgTypgIV8FqeqMV4hLRd5kGc720u4hXkN4zudo1zbunoT2N59WvmUOOHY
 HlxD/534lzhdZ+aV+t+5ynlWuzpB6bSX8AoProrKVoJXe87diLq8FXgXLz64XUn1/bbW
 846Yb5aMbV+JXh+UmdblhfTS4/3yOKLpeScLjze1KhJIxNhvunGGI4VdYaOBgUDeMD6f
 10UxRnmCyZlqydwzLzJtMm7bgqE7Bah2dZIWJLGNnbzKw+uamHdXm13fv8ZKxuHgwo2q
 31qA==
X-Gm-Message-State: APjAAAUaLKwnVeaUvqVTXrv5+i2iH3HQoU9KZz4WEgAImjTTFwWkgXG2
 jbz4NPJI5iYTFTNsgwazQp6u1f0H1l6ZZEuNJ/c=
X-Google-Smtp-Source: APXvYqyuvbOSADoY+T3Wj5DBVQGWO+FqdTmBktSIDhEpkdufHlmxqDGHR+EwA5PnNUMSeosRa7BAeu1nbdPDZOECelY=
X-Received: by 2002:a05:6808:8e2:: with SMTP id
 d2mr16569844oic.47.1566279951111; 
 Mon, 19 Aug 2019 22:45:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-3-narmstrong@baylibre.com>
 <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
 <7h1rxgvgyj.fsf@baylibre.com>
In-Reply-To: <7h1rxgvgyj.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 07:45:39 +0200
Message-ID: <CAFBinCCubjTCvzFWA-JJeGPJ_29O5az3=-99G3dvcnBNZGt+gw@mail.gmail.com>
Subject: Re: [RFC 02/11] dt-bindings: power: amlogic,
 meson-gx-pwrc: Add SM1 bindings
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_224552_802364_542BB4B7 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Tue, Aug 20, 2019 at 2:06 AM Kevin Hilman <khilman@baylibre.com> wrote:
[...]
> >> +ao_sysctrl: sys-ctrl@0 {
> >> +       compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
> >> +       reg =  <0x0 0x0 0x0 0x100>;
> >> +
> >> +       pwrc: power-controller {
> >> +               compatible = "amlogic,meson-sm1-pwrc";
> >> +               #power-domain-cells = <1>;
> >> +               amlogic,hhi-sysctrl = <&hhi>;
> >> +       };
> >> +};
> >
> > I'm not sure that we want to mix HHI and AO power domains in one driver again
>
> We're not mixing here. These are all EE domains.  They just have some
> control registers in the AO memory region.
looking at patch 04/11 I see what you mean
(I'm describing it in my own words to make sure I got it right)
we are controlling the EE power domains with this binding.
each power domain has 1 bit in the HHI registers and 2 more bits
("sleep" and "isolation") in the AO region

then it makes sense to describe this together

> > back in March I asked a few questions about modelling the power
> > domains and Kevin explained that we can implement them hierarchical:
> > [0]
> > unfortunately I didn't have the time to work on this - however, now
> > that we implement a new driver: should we follow this hierarchical
> > approach?
>
> The more I look at this, I don't think we have a commpelling need to
> model them hierarchically.  The main reason being is that of the 3
> top-level domains I listed[0], we can only managing the EE domains in the
> kernel.  It doesn't make sense to model/manage AO domains because, well,
> they are always-on (AO).  The CPU domains are managed my the PSCI
> firmware, and we don't/won't have any control over that.
agreed, this is the same for the 32-bit SoCs except that we manage the
CPU domains in arch/arm/mach-meson/platsmp.c instead of PSCI firmware
(no problem here, I'm just mentioning it to get a complete picture)

> For that reason, I think it makes the most sense to have a generic
> driver that handles all the EE domains.
>
> IMO, the SM1 driver that Neil wrote in patch 4 of this series is 80%
> there.  If we generalize that little more, it can be quite easily used
> for all the EE domains.
with your description above I agree.

for the 32-bit SoCs it would be beneficial if the register layout in
the bindings was swapped:
- have the power controller as child of HHI
- pass the AO syscon

my main points for this are:
- it seems that for some power domains there are no AO register bits,
for example the Ethernet Memory PD (GXBB datasheet [0] section 18.3 on
page 48 and Meson8b datasheet [1] section 5.4 on page 17)
- less confusion: if it's a power domain controller for the EE region
then it should be located there, even if it has additional bits
elsewhere
- (weakest argument though) on the 32-bit SoCs we currently don't have
a "big AO syscon" (and I don't see that we actually need it), but we
do have a "amlogic,meson8b-pmu", "syscon" binding which covers
AO_RTI_GEN_PWR_SLEEP0 (I should probably extend it so it covers
AO_RTI_GEN_PWR_ISO0 as well, that just extra 4 bytes)

What do you think?


Martin


[0] https://dn.odroid.com/S905/DataSheet/S905_Public_Datasheet_V1.1.4.pdf
[1] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
