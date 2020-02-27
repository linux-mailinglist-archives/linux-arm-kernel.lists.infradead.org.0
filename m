Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583F01710B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 06:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeN+Qk2oM+Syv74aoDMBmtRhsAqLDRXH347o/md5Ag8=; b=equ79tCKZrQCkI
	FIDYxP/CRkZ4DJdzgJJHV44HIq0yQai6jnaPA9IEDdztY/mrZ01U4418A5miiKvlQnxd5r3RINzFe
	eNeZyinxBZlnJw8o765qmuqJ0Uj/vLTq3eOeVQ18ssCkk7o6jRISLWku1uMbSBRX5lmNrd2iJESHC
	wvAu1mqs35UYEFt+NTujVvQsOhKX9O9nWGc7cwZCkZTQKyvmcHHMfxCkqE84EojEWEYGhn6UJbgG9
	VfujBqtD/9eChsFO2lanngAfi9kZ3CkSkgdrxPB4HygNfxkNsckD2FDU9/xxiuM4aJLYIHPTFUaYs
	/55HILP30phOkIEvd0zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7C8m-0003g1-Le; Thu, 27 Feb 2020 05:55:20 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7C8V-0003GW-5C
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 05:55:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id h4so2100244qkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 21:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BT+Y4zDOpTN8aRnsqq1qa2mSs9wu0N9tys2uzX7EM7Q=;
 b=I2KS5PW/7Kw7fTHC3Wxq8Osxk8ug/lmvcU2moEvkCzfofFm2FVnq73DDl0YTEDLd3u
 Q3v+LTl0KnhEidEoGD8Az1KBh2NbkQHyMlUWo/6cNu49XIQ3CYxqXnQVbFsadGjrS6pN
 Z9IgLoO5G01BEyRaeY6NY+Ey62eqAglnXlFMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BT+Y4zDOpTN8aRnsqq1qa2mSs9wu0N9tys2uzX7EM7Q=;
 b=tOqtTJPQKMAV2HsjQIZeB87QHCcsMF0zYZ0BS7i3jXglpbo7//Up84xK4z5+byxNfH
 riluNSzXOUHxn7a9kRrmdmafQX65FvTqrGrwE2JHcO01XRCF9XbwoOHZkrMl/P/NODAq
 1u8HzV9NMkYTrI+vsvy3NCtjiARJypSaYymF90bnvdZ6sgWgQV2yNKISDdsySGIFt8YN
 cJuov6/knC3jBtqGPgwGIBWlhGFq8HPv9DHDgOIMHB+CFtPmGvKSZeTxts2IQ/KLz+Rr
 vuL4x237e8SvmCiThdVW9zeYWvYJ0f2xmK8g1kFir/ZySyoVuXNtbry110RruYDVNjaq
 DHXQ==
X-Gm-Message-State: APjAAAW6ht5XfpJjczn7orkpkNmLrIgKS8oh0Rh6YC7DSdg5WlsgPze1
 rhaUkrbdS4lbIEch2JTejN7z5kWjJObwfXdbbYs=
X-Google-Smtp-Source: APXvYqzT52XJX1ayxGeNKzjAkfyJjllIsA3MS1ZOUJZUZBT6z2y1pnNAw6jRX/tZyQhZlu/wqAmNLrhydyjZY7ZzuqU=
X-Received: by 2002:a37:a493:: with SMTP id n141mr1860258qke.330.1582782900930; 
 Wed, 26 Feb 2020 21:55:00 -0800 (PST)
MIME-Version: 1.0
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-6-rentao.bupt@gmail.com>
 <c1f990ad2fd35deeba9e4e937cb19ee5080ea2a8.camel@kernel.crashing.org>
In-Reply-To: <c1f990ad2fd35deeba9e4e937cb19ee5080ea2a8.camel@kernel.crashing.org>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Feb 2020 05:54:49 +0000
Message-ID: <CACPK8XfALBpAUmvAmBLDGa-oEMaZSqaKsHjs0EEPYP=_riGJVA@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_215503_214563_F885C8A3 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Tao Ren <taoren@fb.com>,
 Tao Ren <rentao.bupt@gmail.com>, Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 04:11, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> >
> > Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-
> > endpoints"
> > properties to describe supported number of vhub ports and endpoints.
> >
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
>
> Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will take this patch through the aspeed tree for 5.7.

Cheers,

Joel


>
> > ---
> >  No change in v2/v3/v4.
> >    - It's given v4 to align with the version of the patch series.
> >
> >  arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi
> > b/arch/arm/boot/dts/aspeed-g5.dtsi
> > index ebec0fa8baa7..f12ec04d3cbc 100644
> > --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> > +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> > @@ -195,6 +195,8 @@
> >                       reg = <0x1e6a0000 0x300>;
> >                       interrupts = <5>;
> >                       clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> > +                     aspeed,vhub-downstream-ports = <5>;
> > +                     aspeed,vhub-generic-endpoints = <15>;
> >                       pinctrl-names = "default";
> >                       pinctrl-0 = <&pinctrl_usb2ad_default>;
> >                       status = "disabled";
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
