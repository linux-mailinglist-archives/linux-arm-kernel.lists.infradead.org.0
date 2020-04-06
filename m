Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F519F8CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVYWEa6EUVek9vOTH9Xjz0Z/9SPJR5k/CFiTNcUngUs=; b=XBPXHInVwvMwMN
	K4oEBy9EOL1WaUYdERASRRPZmLJIXfkdavDvoR2FVGMzifi87J3sI0xG9C+2A9rVwBl0RtH5c/1s3
	11ZMZmE6iSfNzZW78/1yvwbOXJk+snCqSb78JAL/XjTD6MPT4HXjptmGzi0XMcVs0Cl7gPw/boXqa
	7PM7GSick0az3GXopv5dwm1c69aksi8kA/ILiJoB0kW8kwl57pNSPz5eNrcnuy66ze+Q/1Qm9qznW
	DOwnrLMv6QBV5ObR+cD/igEt3yKm5XChZ1mWMvEWyTU3/MSXz7t5MThOdh0rS+p9osXnh7DBNuGFB
	NplV447xB6cO0rrGNqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTdh-0004FV-VZ; Mon, 06 Apr 2020 15:26:17 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTdb-0004FC-Ab
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:26:12 +0000
Received: by mail-ot1-x342.google.com with SMTP id g23so15729989otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 08:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mLkFZg4uKjsIykk7BTwvQ1u38EFobfLrFUiH9V7o1sk=;
 b=rM5SW1yckf32vIPkw90xBqCzGHKCy/iHgCoXE6hqaPFebS750iSbilzPRpBtU5Twz1
 b2EPRdimrtONwJqOGXXuG7cCPfzkuJI8GXEitZW1DZvfdhnT+acAbHbzVSl8DwHhX8eb
 SApEs/7LmbMvmXeBcvhGT+g+A9YosMhrHBoZRH4R+i6X4axPNRraO1HMVjVhgvOB0GKH
 WPncSG4ks6mq3alyrF7YtXCdmZfEJzBoLgaNXPzH6SWsiJwYvEENNhoU/8vX/V/x+0az
 qPVZh46IQouMAk0ky8JWRrmDASEJ5HZtxWIWRo/hnssv1o7eOH9jGhV+0d+i44iYN0/t
 8uhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mLkFZg4uKjsIykk7BTwvQ1u38EFobfLrFUiH9V7o1sk=;
 b=ATdBjcYCNm2lbDUnnfE7Aa+QHPo+II3tcbQf1vzzN2stZNo/j8g074Rh23nzuKzneU
 0+SzhbUSXVSIQk9wyF6Pu+APKEOdGaT4W5eVKJvG7P73zWA9nvZ6Gp1fBlQzONQE8Uq4
 0Wsp4BvmuS4+3/pALNinmcfIMa4mo1oUVIGCUNR5E8epW+qlerdaJWUTU94p7SHb/izh
 URkN2YlkzbiJh/VJBalJ2hAcNMDWn4rWVvWtzKggmmTQxOLhT5O2DjivmSMIjFyQsQLr
 Vec+YXQt0C1vATX43PSZ2CrquQ2uQy3Tai0W2Hrv5C4Pm0yumGCImrqagQbNzvu6Co32
 vVgQ==
X-Gm-Message-State: AGi0PuZZr2bxB2BPcLaA//LM27SQ2ssoQxChnz+GSTH4XZSVavTP6oEv
 gzq/YwE4iqHUFukwMtbd16/5Pl3Xkr7CXpkaZnxZSQ==
X-Google-Smtp-Source: APiQypKLKKYLmPxZPCftzf+0SBlZXHZMIwDor9EtVAxYxuQ+W8VWcYMwc6GcICK2n6IQIOMhasirVAdBnijIMJ7TltU=
X-Received: by 2002:a4a:c595:: with SMTP id x21mr17831239oop.10.1586186770118; 
 Mon, 06 Apr 2020 08:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-3-robert.foss@linaro.org>
 <CAHp75VfFKY6nzb8aEWmop73v2haZ0P5+aTsKDEU8M=uUPn0u3g@mail.gmail.com>
 <CAG3jFyuH5Kad16R7Oit-c_7RasiEfPycOpA68JYLVopbyQ749w@mail.gmail.com>
 <20200406150626.GW3676135@smile.fi.intel.com>
In-Reply-To: <20200406150626.GW3676135@smile.fi.intel.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Mon, 6 Apr 2020 17:25:58 +0200
Message-ID: <CAG3jFyvRD3MTQHKVgnneNutJ_e-eykrZHNF-GBe1F5c1TjYLqg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: ov8856: Add devicetree support
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_082611_394233_5D39E93B 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 17:06, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
> On Mon, Apr 06, 2020 at 03:37:24PM +0200, Robert Foss wrote:
> > On Tue, 31 Mar 2020 at 16:01, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > > On Tue, Mar 31, 2020 at 4:36 PM Robert Foss <robert.foss@linaro.org> wrote:
>
> ...
>
> > > > +       if (ret < 0) {
> > >
> > > Do you need all ' < 0' parts all over the series?
> >
> > Some checks are needed due to ACPI and DT support co-existing.
> > Maybe it would be better to just split the probing into an ACPI path
> > and a DT path.
> >
> > I'll have a look through the series for redundant retval checks.
>
> Drop where it is redundant.
>
> ...
>
> > > > -       ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> > > > -       if (ret)
> > > > -               return ret;
> > >
> > > Where is it gone? Why?
> >
> > It was replaced by a clk_get_rate call, which as Sakari pointed out,
> > isn't correct.
> > I'll rework the clock handling for v4.
>
> If it was in the driver it should stay -- properties is an ABI (between firmware and kernel).

Ack.

>
> > > > +       ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
> > > > +       if (IS_ERR(ov8856->xvclk)) {
> > >
> > > > +               dev_err(dev, "could not get xvclk clock (%ld)\n",
> > > > +                       PTR_ERR(ov8856->xvclk));
> > >
> > > Also you may use %pe here and in similar cases.
> >
> > Weirdly checkpatch complains about this.
> > But it builds and runs cleanly, so I'll add it in v4.
>
> %pe requires pointer, PTR_ERR converts pointer to integer.

Ack.

>
> ...
>
> > > > +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> > > > +                                     ov8856->supplies);
> > > > +       if (ret) {
> > >
> > > > +               dev_warn(dev, "failed to get regulators\n");
> > >
> > > If it's a warning, why we return from here?
> > > Same question to all other places with same issue.
> >
> > The issue I was seeing was the driver having to return a EDEFER here,
> > so this warning sheds some light on which exact component is returning
> > an EDEFER.
> >
> > [   15.962623] ov8856 16-0010: Dropping the link to regulator.29
> > [   15.968464] ov8856 16-0010: failed to get regulators
> > [   15.973493] ov8856 16-0010: failed to get HW configuration: -517
> > [   15.979591] ov8856 16-0010: removing from PM domain titan_top_gdsc
> > [   15.985855] ov8856 16-0010: genpd_remove_device()
> > [   15.990672] i2c 16-0010: Driver ov8856 requests probe deferral
> >
> > Personally I found it helpful to speed up debugging, but I'll happily
> > remove it if you prefer no warning.
>
> My point is that you have it in align:
>  - if it is an error, print as an error and bail out, otherwise
>  - if it is a warning, print it and continue.

I see what you're saying now, let's remove it then :)
I guess in the specific case of EDEFER, it doesn't fit neatly into
either of those categories, in the sense that the way you continue is
to return and then try to probe again later.

There are some other locations where this is handled wrong, I'll align
them properly for v4.

>
> > > > +               return ret;
> > > >         }
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
