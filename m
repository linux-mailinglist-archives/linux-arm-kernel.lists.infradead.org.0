Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AE29F4F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjLpVu3me5/3TIFAZLCFrK6YrigmZAw4mNkZihOxb+8=; b=ohpRvQ4GNOrxGk
	KvdkjkRVMHnq0Bsq9uaRnXqRUFNmguZsaU6Sf45XfH9lH9ZgtbYXAW4YFsCGjaTZHDvPrxVhxC75n
	mqZDGs2pi7CE1s2JFV9wMocNLRYKacaCDEF6WGbp5C3IjX2gahcw4YLqHtjh9YKAsTujsDSlI5hot
	6BX0X2I5hrhbDrJOkGTooK6CsGwj1vaTrlT0AqujCKHEDr1oQMgGpy049fHdFBtL/HApBTDpoK56w
	HAOC9CglmN1F3Il6+IZ58M22Cp+bCZi6N6P6ysXq65T/XuRHkSrAQ4ie8f0XTn3GjbKZQ4KCs8XDW
	J+Dd3IrX2SEjgiGddBjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2isp-0000Is-Vi; Tue, 27 Aug 2019 21:20:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2isZ-0000I2-FE; Tue, 27 Aug 2019 21:19:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id w4so582205ote.11;
 Tue, 27 Aug 2019 14:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cgYmTClrC/asl3eR4xct5fw+wHifMzNWe21TIUQLX/s=;
 b=fPm/hV4QKJeCA+j5g3rsjtP+azHB2zk6ntrj6l42vnXDPvSw5O92sHbgitSFwflbUL
 m9UTet+JaUBIERtI7Kk8KIITgjMa5OR4KVwUZ2DCOadIm0gYaREA+QlQZQLI/U1Dfec+
 YVlh5AS0iutk7nU/yNOmzUUcSl7YRmgSLhbecVQPF2In2aJL1NGonYhsbhKw3tfqkS1L
 fKvwQn+zISyavxmXb2+7LBWu2vDAZ8FEFcC5VeUThlM4Nroz0dDjFb3l4mIYfH+ErOG2
 5A5B/DNvueCA+b7LJ3QVAtlfgg3EDfAxtTHTr9w+Wlb2JDc5Dlz4wXt4InnyEmfVXNty
 8v4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cgYmTClrC/asl3eR4xct5fw+wHifMzNWe21TIUQLX/s=;
 b=ld8zBXM+wE7MBdThi3RCXYJLcePHHUdYABie4x85MB4KMDEEcQrYOwpiE2bMxCG34N
 HfOSJyfa8AdjRxXD4TAu6unhVA6FmcSNVXkWQC2ZhldXq98//9WqIfHXT6Lcyavd5fVc
 LoTxOD6hraB71a8/jHewxA6YRbnGOdIZwMga5VhrRkbYc4T5x0X3AEtLAgYcd/dRApR7
 RFs1AID+UpCpZDJOV3/JMwM+hgAicl64iEF6rx7zM55+sgpgA55ExpVk32otkjr/lRaD
 +/J9Lz1HSyiKpdHYPG8RIyeXF6iVezMrt3EJZ8DBFM6dWUhkvU+7hxARXJlpaTgSh5cY
 qu5A==
X-Gm-Message-State: APjAAAUDMcD4CMoGd/YfJn1eJ1yo+6gCxLfPLB7iPGnqAN0a7gYskw+x
 74B8P7r+JpfvmRzOI3kh8CTbxFh96n/y92ixGG4=
X-Google-Smtp-Source: APXvYqwwRRQN8HPUGgQVIpMqj1N2WMUBTzJ9Fh3YyiZAGgwoTYmJ49wk8Lo3LwUim1tFvC30tR6g38IAynQdpxOBCYk=
X-Received: by 2002:a9d:5c0f:: with SMTP id o15mr594707otk.81.1566940787892;
 Tue, 27 Aug 2019 14:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190824184912.795-1-linux.amoon@gmail.com>
 <CAFBinCCkEE8==-Sqqj_=Ofnx7_H-970dETwEmEPohs74806ZMw@mail.gmail.com>
 <CANAwSgTsua_x6fi7NzC2XjcV19OJcN3NhOT_niKXN4RR4X+qVQ@mail.gmail.com>
In-Reply-To: <CANAwSgTsua_x6fi7NzC2XjcV19OJcN3NhOT_niKXN4RR4X+qVQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 27 Aug 2019 23:19:36 +0200
Message-ID: <CAFBinCB45YkbgbRNx8aE+yrT7scT6BYZy1h9JozBxsoC6MZGSQ@mail.gmail.com>
Subject: Re: [PATCHv4 0/3] Odroid c2 usb fixs
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_141951_515175_1A30C051 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 6:38 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Martin,
>
> On Sun, 25 Aug 2019 at 02:48, Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> >
> > Hi Anand,
> >
> > thank you for the patches
> >
> > On Sat, Aug 24, 2019 at 8:49 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > [...]
> > > Anand Moon (3):
> > >   arm64: dts: meson: odroid-c2: p5v0 is the main 5V power input
> > >   arm64: dts: meson: odroid-c2: Add missing linking regulator to usb bus
> > >   arm64: dts: meson: odroid-c2: Disable usb_otg bus to avoid power
> > >     failed warning
> > this whole series is:
> > Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> Thanks, I have some more patch in line for this board.
great, any improvement counts (especially since most boards are
derived from Amlogic reference designs, so it's likely that more than
just the Odroid-C2 will benefit from your patches) :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
