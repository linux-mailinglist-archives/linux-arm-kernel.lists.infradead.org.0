Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9B66580A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 15:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BeOTysP4aSiKg3cvrxvN/ZFE3oxypVb9FBmvY0ires=; b=FC1p81wKQWCi/A
	R8ajUKYgKRy4gvq8hQENExz5ouWOYJi+XPSlya1E0Q+sanauFUcPs0Dl+8MgQeWYnQmbt5FJ91Wwq
	T6HRL0HzLyJd5DEElycp+lBEyV79QXKCKM9ZuNrtRWKcoW7n3ul6+fWrYL7wCQLp27U3xrnPK1F7N
	PS4RC7+lsDAtZNQfD2W34n2xakv7FIAukKnKUOVJMeOa+a2t6MAKE7uL6vZvwj6M6IaQvSQqUEJsd
	Zj4pmulD5brliCXHiHcglgNHIEOYfS7J/w5piGu2mAUqP0DqYwe2PURZ9bw629WPvCHFzeqvrILk/
	a9gE/d0carE5cEQNRAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlZNm-00005T-3f; Thu, 11 Jul 2019 13:45:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlZNO-0008Vw-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 13:44:47 +0000
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
 [209.85.161.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B45582171F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 13:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562852684;
 bh=N++HA0Suxx9LUIKShRqQi/IZ1Ui2WkJNndBcpnjBMgQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wm3vRlDRGdEMSG3YtunRhi4IwGasCq6s62I9XVvLUlflydXVQb4uCmAgGGwUAIUTO
 MRtqyRKB01l40QErOdJ6ZbMzyh4eFCISYn5EpeNl60+hwRuAIbKG6Rd/y+J+7MnblI
 tbYQ8LE1IDxamvLGwLvxw9xlEzxS+HX8LUFIAe80=
Received: by mail-yw1-f47.google.com with SMTP id l124so3600926ywd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 06:44:44 -0700 (PDT)
X-Gm-Message-State: APjAAAU6qTsVM62nUUvZGfIjxnlM/KrW3w+up4VqmPk1soFlKMrrgxGy
 4FrYkCtglLGc8mMTlL9ZYaltKGER7S4g6bSIkg==
X-Google-Smtp-Source: APXvYqxXUf3DmAR2oJ8qhbFdfBnqovYOtOVQp9haN7U8g9xuxsnLzHC/CIkpCDNwFGMb0ePtFNApL5FEFuQ81Vj3Beg=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr2268749qth.136.1562852683872; 
 Thu, 11 Jul 2019 06:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190710141611.21159-1-andrew@aj.id.au>
 <20190710141611.21159-2-andrew@aj.id.au>
 <CAL_JsqKrYcUbn_02z9GQO6U4rz7k=p3kB7_G0tKmv25MMZZNQg@mail.gmail.com>
 <3b0788cf-eee4-48b2-901d-d2ab6716ab1b@www.fastmail.com>
In-Reply-To: <3b0788cf-eee4-48b2-901d-d2ab6716ab1b@www.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 11 Jul 2019 07:44:31 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+mAd=US3cbNQexFGrLxhkSyqi2XyGetyHrZV6QMd69EA@mail.gmail.com>
Message-ID: <CAL_Jsq+mAd=US3cbNQexFGrLxhkSyqi2XyGetyHrZV6QMd69EA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_064446_668165_0777D9FC 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 6:56 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 11 Jul 2019, at 01:20, Rob Herring wrote:
> > On Wed, Jul 10, 2019 at 8:16 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > data bus if only a single slot is enabled.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  .../bindings/mmc/sdhci-of-aspeed.yaml         | 91 +++++++++++++++++++
> >
> > aspeed,sdhci.yaml
>
> Ack. Previously I had separate documents for different compatibles, wasn't sure
> how to tackle name one document covering multiple compatibles.
>
> >
> > >  1 file changed, 91 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml b/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
> > > new file mode 100644
> > > index 000000000000..e98a2ac4d46d
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
> > > @@ -0,0 +1,91 @@
> > > +# SPDX-License-Identifier: GPL-2.0-or-later
> >
> > The preferred license is (GPL-2.0 OR BSD-2-Clause) if that is okay with you.
>
> I should poke people internally again, I had asked, just haven't got a clear
> answer. What was the justification for the preference (just so I can pass that
> on)?

To use schema in non-GPL projects. *BSD, Zephyr, etc.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
