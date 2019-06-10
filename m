Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DB33BF6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 00:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAKiUERnxdUWevoxXvl1ipQyGVENIrrOnheUShuL7mA=; b=PKBE76fioHVICg
	S+d59+NdqbSJQXt71UYB1ENYyYd9YyMY+qL1tI7xxh2SwtZ+U7MJM0UEW86Br8KyuYpq0j0j4jd0b
	ECcliTKCLnHMPDEGkq4k4vyML0voYdtMLri71wQrhui1p6zwdqEuvspvuyTv+A+BG90OGZf35A9pD
	TrQHSN8szC4Y9gJWVvKAZOAJb5TdurT0DCa6fTwmGUbrKGEPGbAv996lqRSJfeQNrX442Kow4uVsb
	YlWBdpLwPpIOKJpuS5F9K4EZ6LDU+WeVvFK6R+RQPRTSS5rPVE4xvSxTVlvp+kPmcq/iO+ZaMxIyw
	SfvhYJouAMm6hT43UY7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSdB-0004Ww-2q; Mon, 10 Jun 2019 22:19:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haScy-0004WH-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 22:18:58 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D6B52086A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560205133;
 bh=6oBvEStZtvvcSHa/hKbHBQL0XCYfvecAsq+xsL7CezU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UqNct7SoRew3q8kG+U/4wxDUf3Uz0gRRx8FmBm1n9kH1HCOsXzLpgCA20D4rlYmf+
 I3Qiow8v5X9KVOLpqWgBcz1xtieF0Buy2NCXaNN55sKAVvEnqtZ6fULELBAhcWPIIB
 x/BtkjxKca9rqs7nNTp0k1/9NZYR8ymx2jfDEduQ=
Received: by mail-qk1-f180.google.com with SMTP id m14so6417252qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 15:18:53 -0700 (PDT)
X-Gm-Message-State: APjAAAU6GPQDWABnOYfPIU4+W9ty6MUCubspF8gzkHxLsedLFrm/i3zY
 Apjk/hYINDPJihbDgGQgeJtva06ZAog2dAcCpA==
X-Google-Smtp-Source: APXvYqwtK5gRog36IqvDqf3xV/jBsHyNH8quMrwPH46YRXXnXKt7aIIex6QqaZ1QtVf3YGBvRC0HBgMbjAqRP1Qggk4=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr2535263qkl.121.1560205132939; 
 Mon, 10 Jun 2019 15:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com>
 <20190526160600.GA1399@bogus>
 <20190528063401.7uikujzahuq4wlxm@flea>
In-Reply-To: <20190528063401.7uikujzahuq4wlxm@flea>
From: Rob Herring <robh@kernel.org>
Date: Mon, 10 Jun 2019 16:18:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ=5Ahr-h8Z+ORQ4ZJJzW0R8L9TKYOC8ouka57YvNGqFw@mail.gmail.com>
Message-ID: <CAL_JsqJ=5Ahr-h8Z+ORQ4ZJJzW0R8L9TKYOC8ouka57YvNGqFw@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_151856_464100_85470E9E 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:34 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Sun, May 26, 2019 at 11:06:00AM -0500, Rob Herring wrote:
> > On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> > > Add all the missing vendors used in Allwinner DTS.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
> > >  1 file changed, 58 insertions(+)
> > >
> >
> > Applied, thanks.
>
> While the other patches are in your tree now, this one looks missing.

That's what I get for one foot out the door for vacation. Now fixed.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
