Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFB1C5EE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSdQo6osH+siemhaSKffkUpLiOFdQSdQPr3Msy7gsqw=; b=j05GY5AzX7eMv9
	m0N5aDekQCExG69bsOH3F2radPpJMMFnM2XOmnFf6UpBrBmbI02yGGg/Ev76/NbXJKxgYBLzkSXm2
	7+iJ4WkDWP/aPN3QJPZuSJJO2xefxlNygjvNTFQEuP6auiFPtRKeaxoQTXFBjO3amRaonHH7nDVEw
	i966oBKn+bcl5ymvOMbRwDbrcYDLPvhj0ckVqH6Beh30v1GMH5zEqwwnkHyQjbSzlwzVUVyigDoPE
	AZYXKobsSEeD+J4PAuWRv0nsRuzy9R2B3QTUWyNRKYcpYa9OAKhw3hMv7Uek4+Goqiaqa2APgl9m0
	E+HK3RKuN35/SErQ1nhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1QA-0003q7-Ov; Tue, 05 May 2020 17:31:54 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1Pu-0003nL-3P
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:31:40 +0000
Received: by mail-vs1-xe42.google.com with SMTP id e10so1760085vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 10:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EQsoLSVjLAyR/M3Ocg/DHLH6pm0RmX/436FGjF6WTao=;
 b=Ke1ddssfTsxp0iPhblhR8uitz3u+NzVLxty3wGO22LNbm/oHweSwOoglBCDtTP/BIT
 nV1QFq59DQfSmb6KnLtJ20O65z/eG/stUQHHvO8IH4EjGKYIUy9p4mmslme/tNVh5Flm
 6cGsK5McFrzX89tb9oXS6LtVMITgWloKe3SwFt3NmJYkPMWNvHfXt2Ie7uhSd+23n+/8
 ATV6FtzN+kcQJYmd3TQIVidF4Kn9qkk/B5Pp0RJ4v+8tQh2QN5nO4biP92tJ6VPwRAnT
 Gj9H12bpBzqp+B/l/ZfQsusyeGTwkTsHyDvj43JP5reauKAVSHVR8hvyiuB885U4ug4L
 ZUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EQsoLSVjLAyR/M3Ocg/DHLH6pm0RmX/436FGjF6WTao=;
 b=G+tdYqfCgGbltwXxfK5PGePABp7GerPhuEK7yc6Le4uL1KEMfyUm6MJ8Bc03O4k1yA
 NI/ETputf30hVUDMSD4NWNiC4MT+r2x69WeQIUMcSJCwcCeAeb76kE/hweUgYk7ppLeE
 L4rO5J7jFSnF6X40PdthvFgF+xHFQtnooGdcAST28lDn3uHUYVcx2inONjLeWKhJ2bAM
 27rzfdySzi/SDKQ9yvCxOkb7CWsY/csZTOL8pqN825bSFFrnahqjE6U24AfOntsQxToi
 gQW0wlzfTg94hY+h5/t/W85KfhEOJD9Wwz7yrMGz3rr2RN+3W4GvJTTxw9ks5nRfG4xS
 ZedA==
X-Gm-Message-State: AGi0PuaefIt1HGGsCN8YqZchulMFrF0U7XZEIWkUWEBLYmq05iclDNlU
 oJ+ynB5oPwFsu7SdkeCbIUQSo/e/s2LwZO2DEBH16w==
X-Google-Smtp-Source: APiQypKY+Ec0L+QALIPDIkzOQ4WXjg5IcZuMySRts7hkgSJWNuiacaOPr1fNLfnrg/Vc3j1c0VN+v2jbTt5wryigOLM=
X-Received: by 2002:a67:302:: with SMTP id 2mr3875137vsd.165.1588699896206;
 Tue, 05 May 2020 10:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
 <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
 <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 5 May 2020 19:30:59 +0200
Message-ID: <CAPDyKFogZgX05mPgue4UT57cTM-KVPfmoPJPf1BNJurGN+qp-g@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103138_265383_EFF1666D 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Anand Moon <linux.amoon@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 at 18:05, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Tue 05 May 2020 at 10:17, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> > [...]
> >
> >> >> > +
> >> >> > +     return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
> >> >> > +                                        onecell_data);
> >> >>
> >> >> I think registering a provider for a module that does not provide clocks
> >> >> to any other device is a bit overkill.
> >> >>
> >> >> I understand the matter is getting the per-user clk* pointer.
> >> >> Since this is the module registering the clock, you can use clk_hw->clk
> >> >> to get it.
> >> >>
> >> >> Once you have the clk* of the leaf clocks, you don't even need to keep
> >> >> track of the clk_hw* since you are using devm_
> >> >>
> >> >> Afterward, we should propably discuss with Stephen if something should
> >> >> be added in CCF to get a struct clk* from struct clk_hw*.
> >> >>
> >> >
> >> > [...]
> >> >
> >> > Hmm.
> >> >
> >> > I am not sure the above is a good idea, at all. Unless, I am
> >> > misunderstanding your point, which may be the case.
> >> >
> >> > I think above "shortcuts" could lead to abuse of the clock framework
> >> > and its internal data structures. When going forward, this could make
> >> > it unnecessary harder to maintain the clock framework.
> >> >
> >> > I know, it's not my responsibility, but from my experience with MMC
> >> > and SDIO interfaces, is that those have been too easy abuse - since
> >> > most of the data structures and interfaces have been exported. Now,
> >> > it's hard to roll back that, if you see what I mean.
> >>
> >> Indeed, it worth clarifying this first.
> >>
> >> With clk_register deprecated in favor of clk_hw_register, we are likely
> >> to see that case rise elsewhere.
> >>
> >
> > So, according to the separate discussion [1], I think we can let
> > Martin decide what option to implement at this point.
> >
> > 1. Implement the "clk_hw_get_clk()" approach. The preferred option,
> > but requires wider changes of the clock subsystem as well.
> >
> > 2. Keep the existing approach, with devm_clk_get(). I am fine with
> > this as well, we can always switch to 1) later on.
>
> I have a problem with this approach.
> The dt-bindings would include "#clock-cells = <1>" for a device that
> does not actually provide and only needs it has a temporary work around.
> Those bindings are supposed to be stable ...

I agree, the bindings need to be stable.

What is the problem of keeping "#clock-cells = <1>" around, when we
move to a clk_hw_get_clk() approach in the next step?

>
> I have proposed 2 other short term solutions, let's see how it goes

Yes, seems like we need to wait for Stephen's input then.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
