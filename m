Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCDB2CF89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 21:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxOlRD3w5jU5kXUa/zAwHF9Tzyhcw49mdBKNgj+OOAA=; b=cKuynCdRa+HweB
	4OyPb+LlfL+B1uIf1HUi9BzdG/IJkZ0mh+IyI2O12Nt6G/mQGCVQUXS7NMpAtgoSFRySKotXc+puD
	IlUHzWgMxqRuAL5hyVmoZVjfa92k9WdFsWjcwVCvcGgEP/S3OB/VRxHfonClslwLiEq4IkdUHklnr
	zZr2cfMQgc+9Y37//B4vAReNOVHUxhWLNidTBWygP0v7qbxzo6UWwCEbSZhUKJYjynr+PL32AKOqZ
	iXWAnYlyi9Oyf+5AEleDaTRdPhQxH0v5QwACCbEpPVuFhWSVZD4K8xAjuUArDxdJ3ULShPL608awD
	vXijZz7899bmqiiM4svA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhqX-0006KX-73; Tue, 28 May 2019 19:33:17 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhqP-0006Ju-TJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 19:33:11 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k187so1024892vsk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 12:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a/4WAdDHD7o2J6jLaTa03Ods2jMwUYJoiUyhNBxjWQI=;
 b=dMMWYbArcJceM9L9LmUxOvLkkrX2JOFBhsd3cXHlbV62EkEx3ql6/xwnm6N5ua68wq
 lfkom4j6oFv/YNmvQUm8B1OQGZ2zulvaZOZ4Vb/2f9dLCgPmMB9Ugey3bU87fOc/WHEw
 p7Sw2zAKvnev37PmWp+aAzuUJUkQppWVldppFq2B2zoUI2yWw6WtGdGKVjULC+Dn/H6e
 d3sLokS7BkvYEDy3Hes7bzROVLsETM8bkQAKS2rty6owPH9VPSYb57J7qWuBL1cc+AVg
 V9jyGJ9CiMd+OVDQN8n0mjfPQP1ssYNAAjmKXpcP/+z1XJBMKFdd+vvMGuzqNeTQcjMe
 XoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/4WAdDHD7o2J6jLaTa03Ods2jMwUYJoiUyhNBxjWQI=;
 b=nDBLjuf1VR560U9TGOc0J4BjcaNncZGaLF9uyBBgb0X6Tmw15VlepugKqnK+HsZnwN
 oXe0r8AsQ/IxdgeYcGzazdT0IC18EHvCoBcPHPksU8kTGi+Wn8lNFTh5zG4qVyA4+PZD
 yOgqHSNK/xYwNs+EOV0PJ0Zs29xaoD8uD3nwUCQj29n5uaYlp6Kyfgg4opXmUoTy5Pzy
 hc3u7fduXh1B2Brr5rnTtykvLvpsDZYgP4DsNGs3JTYyMkIgCRxcohW2uZqg2pF661Tn
 SXdpnGaNbuiaarTp+DEeQgyPw+2D6ugvwiNvCjpYx5tkd4X8wD2jP9bGSxJXMbpLwbTw
 d9aA==
X-Gm-Message-State: APjAAAX8lvCda/bEhmhdfPsN0+F0BRjPEueYCaGDyFg3t5OPWGWM86yg
 9Py+6ryVmRwt6NGpC2rFuBSzUbAXbPZMEFt1Z31ZCA==
X-Google-Smtp-Source: APXvYqwd813q3SqUy11sYCOolIowQZSdilqwamuHYez09q5jBp5bAunxVlKM4u8MuI3TDxKOUo/xgfSsPHni9ARExfo=
X-Received: by 2002:a67:f485:: with SMTP id o5mr2970694vsn.165.1559071987467; 
 Tue, 28 May 2019 12:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
 <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
 <20190528172649.6mkdkscnu5d2rybi@flea>
In-Reply-To: <20190528172649.6mkdkscnu5d2rybi@flea>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 May 2019 21:32:31 +0200
Message-ID: <CAPDyKFrTroAOjEyT9GxQALC4UsiDg8739F9Qc216bDC=wgk2mg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_123310_015707_BE627C84 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 19:26, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Ulf,
>
> On Tue, May 28, 2019 at 10:40:16AM +0200, Ulf Hansson wrote:
> > > +patternProperties:
> > > +  "^.*@[0-9]+$":
> > > +    properties:
> > > +      reg:
> > > +        items:
> > > +          - minimum: 0
> > > +            maximum: 7
> > > +            description:
> > > +              Must contain the SDIO function number of the function this
> > > +              subnode describes. A value of 0 denotes the memory SD
> > > +              function, values from 1 to 7 denote the SDIO functions.
> > > +
> > > +      broken-hpi:
> > > +        $ref: /schemas/types.yaml#/definitions/flag
> > > +        description:
> > > +          Use this to indicate that the mmc-card has a broken hpi
> > > +          implementation, and that hpi should not be used.
> > > +
> > > +    required:
> > > +      - reg
> > > +
> >
> > [...]
> >
> > > -Use of Function subnodes
> > > -------------------------
> > > -
> > > -On embedded systems the cards connected to a host may need additional
> > > -properties. These can be specified in subnodes to the host controller node.
> > > -The subnodes are identified by the standard 'reg' property.
> > > -Which information exactly can be specified depends on the bindings for the
> > > -SDIO function driver for the subnode, as specified by the compatible string.
> > > -
> > > -Required host node properties when using function subnodes:
> > > -- #address-cells: should be one. The cell is the slot id.
> > > -- #size-cells: should be zero.
> > > -
> > > -Required function subnode properties:
> > > -- reg: Must contain the SDIO function number of the function this subnode
> > > -       describes. A value of 0 denotes the memory SD function, values from
> > > -       1 to 7 denote the SDIO functions.
> > > -
> > > -Optional function subnode properties:
> > > -- compatible: name of SDIO function following generic names recommended practice
> > > -
> >
> > I think most of the information of how we use sub(child) nodes
> > disappeared in this conversion - or at least gets harder to
> > understand. Could we perhaps keep some of this?
>
> Sure, what would you like to keep in particular?

Most of it, so we can understand what can be described in sub-nodes.

Additionally, we should also include what is stated in
Documentation/devicetree/bindings/mmc/mmc-card.txt, as that also
refers to how subnodes should be used, when it has the "mmc-card"
compatible.

Or maybe we should simply move all things related to subnodes into a
separate .yaml?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
