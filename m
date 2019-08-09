Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B389B88387
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 21:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1f6cNR+cM7kbB4+L4sssI1ZJgo+XLasaAMHfieHpKU=; b=Rrk91nOdaxaxIe
	/ob/3XL32HASz6OPTqEhSRVgoWG92Gi0KWCuSPl00Zq/biq2imYTvmY9cAuen1NUNJS7ptB/8wHZU
	ypFexBCuQMKx/3JxjF8bvMWBnv/Osh7hfv3uUQg+sml0U5GbZ8gJ1DDSo49S25w6Es9HKmbv53q3M
	5H5WmdlVLrsr+0bqkVa/pInYcaVBZXQJr+SnzdAoF/H0hkb2nBZ4KO1rzHErXXsyUFPoPTbqojIln
	cHvrtIJlXARMGbkHxJwdFsG5yp1Vl+Ixv7OGic0RK19l4ySGjSK61LUNzlBsMj0qV7nY8FvoQmiM/
	GoqwmYo2S+aCcaQ4+Yjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwAzE-0004Dg-AS; Fri, 09 Aug 2019 19:55:40 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwAz2-00047K-Fv; Fri, 09 Aug 2019 19:55:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id j11so36663634otp.10;
 Fri, 09 Aug 2019 12:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f5RgM5PeUcKR496STO6AkWGhAtd5KnNhCs3hLEyVgLQ=;
 b=rjZGNhdd53P41uJeFy3L2aPLCgR6nvP9AnIBelUUQRi55U2lWW6Xgm1msUkSq6KmrM
 TIadEb+dQfS0abbyV8Qec3FB+S8dJpxcVosOMAkKXgUO7Ke4VPogM8mO5XNNEd3wyLoc
 7eok6qlXt++ohA0BtGignLByuihuqYPGgO48DOvafX01tQr3h9Rlrs07oYSjjEviq89y
 +5MA9Ym7HnBdec4ZdTwhWmi9sResZd/J+17sqhHN5ejPv9J0AU/eu8CW/LwWhzC+aDm0
 axod406VA2x7QEKiWJ1hi3oGKqtHfvY8lsv5TR3ByYgSsxNEWeGEqnhET9S1qrovVPzd
 rUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f5RgM5PeUcKR496STO6AkWGhAtd5KnNhCs3hLEyVgLQ=;
 b=LT9iVoAICd4H5ptoM0ecUVZIOvbaK4zUXzJGaw2o9KLrtP1CJ7dBkPTTPXN9Zwk1IR
 GSM4lYGUUbe+1VSFgPOa0ICOpXPMytUmFsbq8gOhxGWNv32oy+gNEZaMWd3M/uOop0Sg
 E/QzI+vG07g1iLG1UfBsyJHJWrFlyCkFPT2B3sknlu7V8sfOEd6cB1vyRFSmZbSf9l4x
 jbnFfQVa4rgmm/S3R8JrlOKRm1B/kJTpsqK6teKZAxnTCGzmjuFgP5kO4ZbV4g+EsUiU
 kN7/6tThBkp4HPfElaokwzp1z7cDI3MHSbnAoN1FCGeNdowaA1OkpeuIWixcs/pGoDan
 UTFw==
X-Gm-Message-State: APjAAAU0shpEeN4MrPNsX1mFUB2l7ZwGWtsxY9nT3H51+K4hiW1A52PH
 2lKgIJFCekvRwWnQZOOAK/cJPQmguzl6RfMFJSw=
X-Google-Smtp-Source: APXvYqz2iUAE9lCz16hjXHExEjubfeLPLLx1yZx3utlS02+GZFq4P0Z52FDXChVD4BmHWDdSnjhIg33whcusluo+pCI=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr7646834oib.15.1565380526824; 
 Fri, 09 Aug 2019 12:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085139.21438-1-narmstrong@baylibre.com>
 <20190808085139.21438-8-narmstrong@baylibre.com>
 <CAFBinCBnVdTxWgqmnrPo-5uZ5gxy7p68w0PUa=_42fYxhVrDXQ@mail.gmail.com>
 <2e6ade0e-175c-e77c-e767-28f4bbfbe575@baylibre.com>
In-Reply-To: <2e6ade0e-175c-e77c-e767-28f4bbfbe575@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 9 Aug 2019 21:55:16 +0200
Message-ID: <CAFBinCC7UGG014D6xt97SZ-WjR=rTLvag7F+DXG6byxaOEFHJg@mail.gmail.com>
Subject: Re: [PATCH 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert
 to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_125528_556072_18B03FF1 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, kishon@ti.com,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 9:00 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 08/08/2019 21:50, Martin Blumenstingl wrote:
> > On Thu, Aug 8, 2019 at 10:54 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> Now that we have the DT validation in place, let's convert the device tree
> >> bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.
> >>
> >> While the original phy bindings specifies phy-supply as required,
> >> the examples and implementations makes it optional, thus phy-supply
> >> is not present in the properties and required lists.
> > nit-pick: the original bindings didn't mention the phy-supply property at all
> > I'm not sure if you have to re-send it, maybe this can be fixed up
> > while applying?
>
> It didn't, but the phy.txt made it mandatory, but was optional in all examples
> and implementation, thus rob asked me to precise it in the commit log.
sorry, I missed that
my Reviewed-by still stands - thanks for pointing it out (again)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
