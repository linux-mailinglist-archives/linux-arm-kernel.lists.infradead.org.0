Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0330E79D1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 01:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysX3/MoPdAwTluLJ0Cygi6r+7x0yzZJwW4BXu7L9OsA=; b=MIn2bXVFIM4o/p
	M7MjTzyUaxK0Kj/Hvy2MbAw4omlJoH1qGqlH4TOCTG/6lpYGWIoTNQFCLq9jMc/tiqEnpKmKJ51Mz
	QChijZLYoO93z01QW0DvpWkEprLcd3S5YpTEtynahshSLGBHQ7Gtd1pA7R63AeuNbhPmT+4Kf4ZmZ
	e4kQMXNPsPD3EMYM/IUZq/T2km5autXDG97iNw/hiAGC2bGJaw0mRvvjZsoJfVVlIxcUqfwmCAsf0
	YowC2a+uu9FNxRG1or9DER+ZG7uI4yOgujZQEm+YYOHqpGrrkoltWHPAS5YvGuhJvDryPOjXY6WZh
	mIo4mQem/oxXogXthAxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFTb-0001mA-L7; Mon, 29 Jul 2019 23:54:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFTO-0001lX-VB
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 23:54:36 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75D6C217D6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 23:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564444474;
 bh=7M7iM5NZ1SgdUOG+BMFQMLBU2J1/FLifWH7WWo4vukw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wIDAiVgh8oFtCAHjZALXvXLlF06U5PG+b+RlokjKcUA+9gTiIQfq+hQf4JLn3jQqv
 5FCecCmkCjAKo3SLAn3us51NrlQf/6cZWaRJrH30n0bTmbsUgHMHgFxjBmnZ421Lz1
 XLXZCIiUws+DJYgL8XSsNCIr34nlTVVrVgiufrKM=
Received: by mail-qt1-f176.google.com with SMTP id z4so61339523qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:54:34 -0700 (PDT)
X-Gm-Message-State: APjAAAVCQwV8ajwSeDfolAlnXgZx+qYjmmv4k2JvAIXt5CWsJw6Px+XN
 NuJZj3WHg47bqbESx/Nz4UjaegSVATuGCMadXw==
X-Google-Smtp-Source: APXvYqyvVVqVtiLHXCcmAnRN5s1dQ0v6PPdL5zspMJDODprjdlHMPqDWq1VLjpfR7WA8o08e4xLxr0pSQlrAw0k6B0M=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr79236510qtf.110.1564444473606; 
 Mon, 29 Jul 2019 16:54:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190722150414.9F97668B20@verein.lst.de>
 <20190725151829.DC20968B02@verein.lst.de>
 <20190726163601.o32bxqew5xavjgyi@flea> <20190729142258.GB7946@lst.de>
In-Reply-To: <20190729142258.GB7946@lst.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 17:54:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKAU3WG3L=KP8A8u4vW=q_BQWPN-m_c+ADOwTioJ2-cmg@mail.gmail.com>
Message-ID: <CAL_JsqKAU3WG3L=KP8A8u4vW=q_BQWPN-m_c+ADOwTioJ2-cmg@mail.gmail.com>
Subject: Re: [PATCH v3 6a/7] dt-bindings: Add ANX6345 DP/eDP transmitter
 binding
To: Torsten Duwe <duwe@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_165435_034202_24BD0E14 
X-CRM114-Status: GOOD (  19.28  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 8:23 AM Torsten Duwe <duwe@lst.de> wrote:
>
> On Fri, Jul 26, 2019 at 06:36:01PM +0200, Maxime Ripard wrote:
> > > +
> > > +  dvdd12-supply:
> > > +    maxItems: 1
> > > +    description: Regulator for 1.2V digital core power.
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +
> > > +  dvdd25-supply:
> > > +    maxItems: 1
> > > +    description: Regulator for 2.5V digital core power.
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> >
> > There's no need to specify the type here, all the properties ending in
> > -supply are already checked for that type
>
> Ok, thanks for the hint.
>
> > > +  ports:
> > > +    type: object
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +    description: |
> > > +      Video port 0 for LVTTL input,
> > > +      Video port 1 for eDP output (panel or connector)
> > > +      using the DT bindings defined in
> > > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> >
> > You should probably describe the port@0 and port@1 nodes here as
> > well. It would allow you to express that the port 0 is mandatory and
> > the port 1 optional, which got dropped in the conversion.
>
> I would have liked to, but have not discovered yet a comprehensive source
> of information about recommended syntax and semantics of the YAML schemes.

The language is json-schema.

> Is there some central reference for these types of issues? I mean not the
> "here is a git repo with the meta-schemes" but sort of a cookbook?

Documentation/devicetree/writing-schema.md (soon .rst) and
Documentation/devicetree/bindings/example-schema.yaml attempt to do
this. Any feedback on them would be helpful.

For this case specifically, we do need to define a common graph
schema, but haven't yet. You can assume we do and only really need to
capture what Maxime said above.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
