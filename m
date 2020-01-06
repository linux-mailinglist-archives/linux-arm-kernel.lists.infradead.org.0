Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7534713131E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7dDjFF8Jh/6WwyEgu8Fnvia1NQPzwDz5J/ApCQWv1c=; b=naeajso8em5rnZ
	SnhvnFJ9un7xtPE+R6wLRAloKrSxcFjNjblbW2VFNhnFHEvsyGzbQRwH3/c7gN0ob6S8F4DrbC2HQ
	/e+0JYY8YU38T0jfStn1varOZfs5aRm2Hs2A6FwheLH6ShpzS0yWBHZxziEybdOLl3FNqxM9MmkXT
	WoewbM9QkisLQM67i1pc4l/cejVcnBI6YnIUAtokDxe7Z5lGZWtzVdBRNMH1EGC8ExlGW3YGkZU3Z
	RZ3uHU9fSR6QSyvJw76/qEGHjZ9/PuOsY4jjIBIVaGLbPcCbmHKGB6EN9/u8hnNwnLm9SdxAS1sys
	3+HjfLLmh1ego7JZR/BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSdV-0001Ax-Fz; Mon, 06 Jan 2020 13:41:37 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSZt-0005iY-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:38:01 +0000
Received: by mail-ed1-f66.google.com with SMTP id j17so47415337edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:37:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nTRmM4JajO9uUHX21IbuaGFMr+hIBoIOQlYQd1Eaoq0=;
 b=K1BZoEy/yZQ5TeYJCKz/96uEvkiUgveXa4SLKvG14tqXHqVrMuh1Rux8lvOJTevD3R
 TqJ0atN/0M49G5R0mGh1yVg1cZsbhAb8GJvQoxlVClOB+4AGYyYi8bRdPkw6L1q4bh/y
 F53ilOyftHGd221yx+5K7qudagEYzeReLB4TZTVHKTr1Er7BRwCt/u2Et8VaftXK4Zcy
 /Hg+XAPVfbC9I6iV6K2nyw+xs4mR4oKuQqdlSoOKh51loP8fgQIhdPm8NjM931YUKG2V
 IIgWUwJD45DkK6s4+DNzflnrgrbK8iwXMw7gGSvkAMwY2mCqz5+xcWdys6GpRkCkRUk5
 2Dtg==
X-Gm-Message-State: APjAAAWDb7NWf/s7UPJdic/ZCOKzm8UvNu+bkwOpNQEN/AfFO9KB9UPq
 WdO49/cX90NxuZ9tAJWoMEk/FYLg6bE=
X-Google-Smtp-Source: APXvYqzFXaNEGVWV38AkegEBQ+mKOt5McefAIWxg/OKYOgqNEPdzWtM0d4MNMyw/tnrOxCE1PPRxow==
X-Received: by 2002:a50:b905:: with SMTP id m5mr105371930ede.154.1578317871319; 
 Mon, 06 Jan 2020 05:37:51 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id q4sm6068570edb.27.2020.01.06.05.37.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 05:37:51 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id c127so11981099wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:37:50 -0800 (PST)
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr34993499wmg.110.1578317870539; 
 Mon, 06 Jan 2020 05:37:50 -0800 (PST)
MIME-Version: 1.0
References: <20200106003849.16666-1-andre.przywara@arm.com>
 <20200106085613.mxe33t7eklj3aeld@gilmour.lan>
In-Reply-To: <20200106085613.mxe33t7eklj3aeld@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 6 Jan 2020 21:37:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v65=iJzPJneUF=e9Xsqj_ufhuZtr5javN5YNKtaApGq2zA@mail.gmail.com>
Message-ID: <CAGb2v65=iJzPJneUF=e9Xsqj_ufhuZtr5javN5YNKtaApGq2zA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
To: Maxime Ripard <mripard@kernel.org>, Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_053753_904943_635AC3EA 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 4:56 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Jan 06, 2020 at 12:38:49AM +0000, Andre Przywara wrote:
> > The Allwinner R40 SoC contains four SPI controllers, using the newer
> > sun6i design (but at the legacy addresses).
> > The controller seems to be fully compatible to the A64 one, so no driver
> > changes are necessary.
> > The first three controllers can be used on two sets of pins, but SPI3 is
> > only routed to one set on Port A.
> > Only the pin groups for SPI0 on PortC and SPI1 on PortI are added here,
> > because those seem to be the only one exposed on the Bananapi boards.
> >
> > Tested by connecting a SPI flash to a Bananapi M2 Berry SPI0 and SPI1
> > header pins.
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>
> Applied, thanks!
> Maxime

Looks like this patch doesn't build. The SPI device nodes reference
a non-existent DMA node.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
