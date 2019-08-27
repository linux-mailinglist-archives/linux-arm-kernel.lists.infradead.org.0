Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95219F4F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8X9VYgB1ye7dNVBtAJqQjWfnY17PjP5AgBNhDWxV5I=; b=AgSTYxOAqn18A7
	lrvOhfROcWj49+mZ1+Uj5G8GZ+QB8fpNvdqh+qRP6vH4Pgo4GMyR3uzVNTqG87XJzHZXcETGN3iJ+
	1a2rVAAHhfTp2KP6H+yh6d6t+ZVNT7nO9IvWVM0Z1BuFXwny25Om9/ZGnYZLK+peJW3yb2X+ob7HU
	UB10sNZoXyKTrwoCRdux1bb2qeFfhDrpcR7vobqHtGQEcQQsByDGSMcsOsagCSXCgqOMsb+/i2vbo
	9rHw+59dODRAQAvtWKMkx0t9C3A4Y2HLWuA/9+O0CM1xRrAUcPmERor+phMLDa0RT88aoD1ypPHzB
	7tudg4DHuiv6IwZveEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2irg-0008T0-Rt; Tue, 27 Aug 2019 21:18:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2irM-0008RI-9g; Tue, 27 Aug 2019 21:18:37 +0000
Received: by mail-ot1-x341.google.com with SMTP id e12so580678otp.10;
 Tue, 27 Aug 2019 14:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=79O2d4MxaNzshKkDgbf9PCXtK+1faNjqfacVtcjhXCw=;
 b=WfKFP2Ex7iHPWuOIN+wXVARM//Fw+EtyALZ2RHdD2VFf+u0UdwMzKBy3aPxg/7RPR/
 pYJqOuJj0qomXcd2rN3UpcOUFUw8Te0rvzryveTSoFLLKuz9uBTGHHZeGoXBb1HDcwkh
 P4KNTBURWbvWCfte0L+pEJbEatRgNmt4QzDU9JxVdcIW+lWwlw23gSLvYqoiscpm2ckT
 lsj3Bq39CEouDk2Ngp62twh+Oebm/Ssxc4voexjQq+sn44Nn+bJDjoNsV6Uc0Ij80O04
 D5nyNFuMbQtVPo3CMRAWfJUQc2XEfLcN0T6kVN+E6nNvnGMZkw/b7XXvq+TSsrC+CMJA
 0EdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=79O2d4MxaNzshKkDgbf9PCXtK+1faNjqfacVtcjhXCw=;
 b=GAipWY2hUXa4rHxJZvJBk6xgQKhj41PKVNCZNsRisEXTL5Lfe0vbta18qUitsUtKg9
 cKTlic9UFvXvD9cyiFGY5LLMZ8oMSj+JvN8/ovq45KbDUnvnau121/SIwaqV/jo/WMBt
 NbXXKs5t74/X5mxPL/v8y59JYO4HF6jcHxBmS7dysHkxjGwJJes56VbazRVwXnjCE+TP
 NCqcAKqjSA1iICfZtpnrB2og7tFEC3BXYaCcTBy8qkGoUbKIZxYPfdjP+8AM5dTN/kv4
 xGf+Hf29IJJ8auLTqQ/HBB0721yT51zCUvyIQKrCbgBTPmx5LnnoQRN6gqS+nyYOlgU4
 Eq2A==
X-Gm-Message-State: APjAAAXf1WjzYz2uPAXhHPFFk6edoufBcM+/Np9NP38SxyVsM7RKNF8C
 3CpbiZjBmhZFunSeTcsKMLokUQyJBn62s6gB97w=
X-Google-Smtp-Source: APXvYqwGwnC+flBOhOIUQLHX1WACuwTk+aVA1Xep4g6gD4QcHubhVgX2ByYgZ7v0D2tQL2mAd7UJqcYjnDBDStIY/rY=
X-Received: by 2002:a9d:7b44:: with SMTP id f4mr571632oto.42.1566940713518;
 Tue, 27 Aug 2019 14:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190823081427.17228-1-narmstrong@baylibre.com>
 <20190823081427.17228-3-narmstrong@baylibre.com>
 <CAFBinCBLVDVWPbDZ+_cPTbJNCavvzJH4A6U8D9XWVSR-j3fzFQ@mail.gmail.com>
 <c853d934-113c-2305-f229-1e2c7138fc3f@baylibre.com>
In-Reply-To: <c853d934-113c-2305-f229-1e2c7138fc3f@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 27 Aug 2019 23:18:22 +0200
Message-ID: <CAFBinCBLxW2r-N0z10Z7uUpvdoPikkZ0Lca6J-NctGYXtuxb2Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] amlogic: arm: add Amlogic SM1 based Khadas VIM3
 variant bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_141836_340048_22DA89A3 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 9:42 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> >> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> >> index b48ea1e4913a..2751dd778ce0 100644
> >> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> >> @@ -150,9 +150,10 @@ properties:
> >>            - const: amlogic,s922x
> >>            - const: amlogic,g12b
> >>
> >> -      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
> >> +      - description: Boards with the Amlogic Meson SM1 S905X3/D3/Y3 SoC
> >>          items:
> >>            - enum:
> >>                - seirobotics,sei610
> >> +              - khadas,vim3
>
> Khadas asked me to rename the board to "vim3l", which is the commercial name,
> should I only change the DT name or also the compatible "khadas,vim3l" ?
I vote for being consistent:
- rename the .dts to vim3l
- and change the compatible string

> >>            - const: amlogic,sm1
> > on the GXL we differentiate between S905X and S905D
> > do we need to differentiate S905X3 from S905D3 (for example)?
>
> From a pure SoC die perspective they are the same, exactly like
> the S905X and S905D, only the package changes.
> So only the board DT will determine which eth PHY is used,
> if a DSI panel is connected, a demodulator is connected.. even
> if the underlying package is S905Y3 without any of these pins
> available.
OK, I see - fine for me then
GXL's S905W and/or S805X are the "special cases" then which (AFAIK)
use a different (smaller) package (so it made sense to differentiate
all GXL SoCs)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
