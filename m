Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5751FD8FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqxVqCi1qhHCj9MKSwcd/WWIujlD/y0KBdw2+gdH87I=; b=SGz8aKyDEf09Y0
	MVyhyQgHIyEt69k8sg2q83i/KRCzIJAZ3ggdlR+3WLKjzqueLAoYu6dtSEJZ+otGUhmzMrY8FX+lG
	2wgjqv6UNoTHRKtxfabT8tQM58wPLnwHZ9jkuPMt4Cu0QWS1gGQu0YxZdSiR5nll2/T6yZiP/t1AT
	azQGMgA29Or2VuS01rg4lGZHqtDupu+/mQKJVkhkDPqUy0o85HjNuRAZLgWrPnuge326okf86BjM5
	e+YMZBj1tRM/mszkC8XrorsA+CF2zgRt/aS6uJfa7zJjFvrU41E11N+tOsH8LAC0sqYFhUSTfj4cw
	vnkDKnbZb3w/lrcqh8zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlggk-0000aD-M7; Wed, 17 Jun 2020 22:37:46 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlggZ-0000ZJ-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:37:36 +0000
Received: by mail-il1-f194.google.com with SMTP id j19so3915803ilk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZpqmM5b2vnIEZM+uoBwaGezs/bIVuA8qCIC5e2tj4Mk=;
 b=dchXcpsAlcAwOUI5gANDRBFZlICA9NvG8A2E9ATMKclgbj2B/YDsgR/gOhe4KojDA/
 ZicTdYRCy1C8WGcNck1Bes5ujC/xO7aA7C7XYFyjOGQDPorlFWzlgZrns7a1Cs5RalFh
 J5ihizZjroILf/d2QSXbjts+Wj7tIggFsnDWeaKNs57o4bt0F4fZ5UOmI/+Dbiv/G9BF
 OM0nfVnQKLC+uTO6dQvZ3H/kLLtk1FyEj5E+fxYuhQvpmw17pIv3cwebBp3byF7nFwTT
 SCyAJXPQTbjWaMGMpEA7F/Lf60nCaIuxlswhJVxjv6A7QOS9clL3CZzvFyfugtEbPJEj
 TbMw==
X-Gm-Message-State: AOAM533AnJjNkDznMK2FDNHqujfKLLeHeoeZKxvd7hD4R0TbihGzFp8X
 3O6id9FAZzUvAYTja/OYFg==
X-Google-Smtp-Source: ABdhPJyAq5HXFt/cfdAiAR+bnOeSiQTllpHYl1CjJVPEXer5Qdf+2qJhDdxmi+THg3z+2BKJ3Mb/mA==
X-Received: by 2002:a92:190:: with SMTP id 138mr1144486ilb.5.1592433454005;
 Wed, 17 Jun 2020 15:37:34 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id t5sm717751iov.53.2020.06.17.15.37.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:37:33 -0700 (PDT)
Received: (nullmailer pid 2965169 invoked by uid 1000);
 Wed, 17 Jun 2020 22:37:32 -0000
Date: Wed, 17 Jun 2020 16:37:32 -0600
From: Rob Herring <robh@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
Message-ID: <20200617223732.GB2953201@bogus>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
 <20200611160817.GA6031@pendragon.ideasonboard.com>
 <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_153735_111963_955DF7BB 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 11:38:07AM +0200, Ricardo Ca=F1uelo wrote:
> Hi Laurent,
> =

> Thanks for reviewing the patch
> =

> On Thu, 2020-06-11 at 19:08 +0300, Laurent Pinchart wrote:
> > Hi Ricardo,
> > =

> > Thank you for the patch.
> > =

> > On Thu, Jun 11, 2020 at 12:23:56PM +0200, Ricardo Ca=F1uelo wrote:
> > > Make the ports node optional, since there are some DTs that don't def=
ine
> > > any ports for ti,tfp410.
> > > =

> > > Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>
> > =

> > Shouldn't we fix those DTs instead ? What's the point of a TFP410
> > without ports in DT ?
> =

> This comes from the discussion in the previous version of this series.
> =

> In the DTs that don't define any ports (it's dove-sbc-a510.dts only, actu=
ally)
> it's not clear how to define the ports (I'm not familiar with this board).
> Initially I defined a set of empty ports just to comply with the binding
> requirements, but Rob suggested that we might as well declare them as opt=
ional,
> since having an empty port definition with no remote endpoints is no bett=
er than
> having no ports at all.

I did? Must have missed some context.

> I understand both opinions but I just don't know which is the best option=
 at
> this point.

Just leave the warning to be fixed.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
