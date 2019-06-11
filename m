Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4154D3CF68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBg4yA3gBCZ5EOwpVWA0qZWp0lNDtstCJiyd3QbU4SI=; b=qDDyZm2UAekMAy
	XsnCBxSQYwNQy+qNuAFgbTYRLADikiMld8eskSHzl34pjm3pgxeBJwJh1hjQslsazL786gjYbY9nD
	14im3uhVkj6NHFX5i7+N6gZ+hzHbKlMleX1OxjURX6Bpp0GVXEFvgMsupiP5G/9PJ0bbp387ZfZzG
	yjjc8k+ycvmAxtKKsNUD3AG4unN0BYiIIdFeIsIa2mNsUhu8qq6qokBnqz8ANB3xOkQcgPoI+HjwJ
	Jar+oW4v0eox1V1QPu2OdQgX9k2njwUwN8MltY+7nSC0vwjL4JZxOjHMDXJZwBh/uzhCCZCpGRqV1
	16uJg+LFKYf06qIzb63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai75-0003PL-M4; Tue, 11 Jun 2019 14:51:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai6t-0003Oj-C1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:50:52 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB0DA208E3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560264649;
 bh=MpYPAaIV13S2Yylnp2EyZ431PTaW/WjP6IAwHXeD6IY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ReLwKN5pZRc7uGT6tVskU8kc0sdNJCY1Vees7AqtPNFwL1R7wczuGjJknKJazUkuf
 Q+ovaZh+VQPHMBeChWR8c2NtMA4B3UKDWZh7FptmE3s7uAtmdq5INuouQ8bIoKctoc
 pzqV5z9FKyvOPMVFc9Kam+7v1hTM3NHsgDELh6aQ=
Received: by mail-qt1-f173.google.com with SMTP id y57so14873942qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 07:50:49 -0700 (PDT)
X-Gm-Message-State: APjAAAWeAsNpcp//gDOHbHCO9aocB6zC6Lu00gFQ7afrc7nc+xAqTZUr
 8qHZyOXs+wL8Mtce8Jq+OoqhGKgIe8+g08vIBQ==
X-Google-Smtp-Source: APXvYqyJUBDtqhRg65MZJLGpagrESYWGxQEF/Opjh/WxDQ0lr19H2G/og3yzhLmg7b7P0Cv1k8sNGFJrHhVtjcNM90U=
X-Received: by 2002:ac8:2ec3:: with SMTP id i3mr19914156qta.110.1560264648991; 
 Tue, 11 Jun 2019 07:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
 <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
 <20190611090641.byr6mpywkfmbhrbk@flea>
In-Reply-To: <20190611090641.byr6mpywkfmbhrbk@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Jun 2019 08:50:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL3cua3u2gNTzHEdgFU0On5J9ziPZeFNiTpu5HS=SJoDA@mail.gmail.com>
Message-ID: <CAL_JsqL3cua3u2gNTzHEdgFU0On5J9ziPZeFNiTpu5HS=SJoDA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075051_437870_5B8AB558 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 3:06 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Mon, Jun 10, 2019 at 03:34:18PM -0600, Rob Herring wrote:
> > On Wed, Jun 5, 2019 at 6:29 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > +properties:
> > > +  "#address-cells":
> > > +    const: 1
> > > +
> > > +  "#size-cells":
> > > +    const: 0
> >
> > These 2 are covered by i2c-controller.yaml, right?
>
> Indeed, I've removed them.
>
> > > +examples:
> > > +  - |
> > > +    p2wi@1f03400 {
> >
> > i2c@...
> >
> > That should fail on the schema (I need to get the schema checking of
> > examples finished.)
>
> That would be great :) The compilation of the examples alone already
> caught a good number of examples that weren't even compiling.

I'm primarily waiting on a dtc change to be accepted[1]. Feel free to
review/ack.

> Speaking of examples, one thing that would be great too would be to
> allow the usage of our C headers. It's not supported at the moment,
> and this often ends up with an example that is less readable than the
> actual DT.

It should be. You just have to add them. See
Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml for
example.

Maybe the common interrupt and gpio ones should be added by default.

Rob

[1] https://www.spinics.net/lists/devicetree-compiler/msg02709.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
