Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623119865C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g7SAvKfNU150dJaRa6wFDgodVEUeAfkR7ue69swR40=; b=T0uGg83sJXSBKD
	t7uY8yyqcghJx957e8SAhFDYOR1Sl42Od/8LGAJMoV5GGuZarO3iKUjHpyXZzBR/KX9GHbc1TuYgV
	AAjawWo4s9xRNdZJfRO4PbIVKA2Qclj1K0s82tZBb3+CS5y+d54xqu2hE46BIommBKsFvPAb3JMf6
	09zTDgyDWmY43t0h8LvhWHBuheWE1mSIJ1ddJa+bWgsqtIdQCKa6bl3M5FjumZm43ssH9nlaREHoH
	voGM88zVwTFl6b0PS/mAS+qE6meo1nqnpRcrXfj8RZ4ISXfyWURVp7oe7QDh65KQjhzULeLJSRa49
	WCCcdjseBWjDeAHVvp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XwS-0006XD-LV; Wed, 21 Aug 2019 21:14:52 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XwI-0006Vb-Bz; Wed, 21 Aug 2019 21:14:43 +0000
Received: by mail-ot1-x341.google.com with SMTP id b1so3450817otp.6;
 Wed, 21 Aug 2019 14:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U/CYOAn9G51LhCL1PhYQHp67jOIFH7vLUlRMO7QJaME=;
 b=SqW7TKKnloEFxez2Iyvmd4w/a7Y1adWbSx7RV30lZ9QtnzxIFk3zddDYToTa9D3rn1
 YHZ7Fb8elG41k+TyBbQzC5uWRRAqsgILS3hVLeUoBKBODAiNYKUg2e1m7EfArGWALEYT
 OcD6LO1lQeVN0mEbUzHVL5czM/P4FtAyA0tLc2nsUh2gn6hLvFEr2atcwT/7fKrzgMOb
 t1dsEoHmzZ3VTlShRNIuYy5nPJjBn+vhxAEXAji8AtjdLQKICBNvQRKdZ2fA47cShxJb
 fKFBmzmirV14n8BFUjYH4PNzXRcnaY3sO9BOzlEBXpP6sMkf8zZ8OYQIatbpBxrpVj47
 IJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U/CYOAn9G51LhCL1PhYQHp67jOIFH7vLUlRMO7QJaME=;
 b=RDyrtS4t6e5nEBuVGhrzdo+svwIzofYCZst3KanyXJMGcNiT7CYBsS0oaz1564zLj/
 gwTCAGhmdr1+wbVp01TJza2OhjCH6+M1dvCCkbYPYWF5mhoxDieEi5dF1aU1g2tcIgqa
 6QElvSj8WmYcLHcvDDiqx8MLmvh3Fxi1honOJt6LGl4juQbTD7LhRx/TVNGVi+gJeFpP
 tmYS3XZ9TWp3agN3oGuxzVqGF0z3Un9m5gcxqjRcenlfoNmiQsdH0oA83xOGCYSR8vw7
 eOYtjmdOdwZ2z2I7/lvkufJ5d7mJlZUi93nO8A3jWwS2jce49HcneFpxteJVhp/f5v31
 BgUA==
X-Gm-Message-State: APjAAAWRVWR1ZPrRoeQGOPgH1RnlYeiO+fIxBwn0vN+NoRiQibKUB7LG
 MoEytiNmASBccPlAxBCPnnaMf1NxPsyTyUNhLNQIhjPP
X-Google-Smtp-Source: APXvYqyxg0+N2/pLhRdumFyevmwn3wQ++3ZOwx454FFxlyPdkbDOBklS4drA2Ee7P2E9hixQzAAgdoM0Yupd614a3TE=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr26763602otq.6.1566422079559; 
 Wed, 21 Aug 2019 14:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-12-narmstrong@baylibre.com>
 <CAFBinCBWFNJNAWdeZ2LfEJA-MVpSf-A5SrLZEx+0z_P+-iBFDg@mail.gmail.com>
 <c2d78c7c-d9a8-e486-d3b1-c1447e24284b@baylibre.com>
In-Reply-To: <c2d78c7c-d9a8-e486-d3b1-c1447e24284b@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 21 Aug 2019 23:14:28 +0200
Message-ID: <CAFBinCA13xJHRmTrOHxSkoy2rMv3=+BBwZsLBmZn=cQ0pyE_Aw@mail.gmail.com>
Subject: Re: [PATCH 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141442_430013_E979A758 
X-CRM114-Status: GOOD (  13.13  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 4:08 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 20/08/2019 22:32, Martin Blumenstingl wrote:
> > On Wed, Aug 14, 2019 at 4:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> This fixes the following DT schemas check errors:
> >> meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas
> >>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> >
> > [...]
> >> -       compatible = "amediatech,x96-max", "amlogic,u200", "amlogic,g12a";
> >> +       compatible = "amediatech,x96-max", "amlogic,g12a";
> > only partially related: I wonder if we should add a s905x2 compatible
> > string here and to the .dts filename (just like we separate the GXL
> > variants s905x, s905d, s905w, ...)
> >
>
> We could, but AFAIK no variants of G12A are planned yet...
we already support two variants: S905X2 and S905D2 (I'm assuming that
these are similar to S905X and S905D meaning both are almost
identical)
but I guess we can stay with what we have until there's a reason to
have separate compatible strings (for example if we discover that
there is a difference that matters - like the OPP table on S922X vs
A311D)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
