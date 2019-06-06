Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E924F37DA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P63YtBcygX+fmLUNNuCYgsDP8UATma4ifW/zI/tZDYw=; b=MUKar1mfezo9xV
	O7FqbEXObyCmgLah8L0YLb9+6l1/kwZPZxKBjFsyxVNCQwMAqImP0vvtj8WX9oZCvdhrE0cKpBFfU
	lKJvvOOW+NrdbVMCj7SvycBK63qryueO+RIQEmUZG1n8hVCVMz3y7olef+p9GGEPSnnM6hzGltt6e
	a3LdWsOJPLsAlzsmFk2eru5/G/9yWF8mYzhfq7wEqj0Z3BD33xtSxlPdfg4AO78O3hA0TrQMMOOry
	6SVsyc/wQNNgYnyt/40tsfpghKvENVkKVdJ1++6OpVyWScHN0b+Ww/sY8d0MrMSef1yN4Ufu5ZfqK
	giIxuiJICeTbWwhBYskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyR3-0006YF-FK; Thu, 06 Jun 2019 19:52:29 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyQv-0006XL-Bc; Thu, 06 Jun 2019 19:52:22 +0000
Received: by mail-oi1-x241.google.com with SMTP id q186so2502753oia.0;
 Thu, 06 Jun 2019 12:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AlGSYF3m5pRxceZLV64eIzJ0xhu9mM8TneWE5MMLmMo=;
 b=lfcvSghZm2oCpWdLgEjYrXEVmh8XE+PsjXfnX3AHi/5voOTkTXZLCTq+seq0WuXEel
 gtGQ11Z1rgR+Mt1F+lcn7IABiI9vZHDD7nU3a/iM3t7PwlXEjvfNN8k3KEdGWjJ5BYj+
 umcRd8UAGrHMIxhJCDMnC/d21mFu5JvnYzfihDu+ibXE6SB1fm6V8AFy2/etSwZeFX5s
 d/M1M2xQrQYxWua9RLY+hs5y2z8gmaM7EMo1FUTViNaC3BmcGNIbRNSyHc1CRuNrZ8NZ
 hugYIf7UcC+Tt6/EuroDU5yesWKZEiTJ+nbfBdiqkgs9ssxc4eaooHZgdb1B837ArR+w
 CF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AlGSYF3m5pRxceZLV64eIzJ0xhu9mM8TneWE5MMLmMo=;
 b=CmBsEIZmwHARuj6VBzo1u9NdoKAZdVPGIEem2EG+czgGljgs5kaQqFbhSW4yxBWYel
 K3Rq+zCVSkNakttFKgZpwg0rywukuxzcZgS425sjrc4j1vOJDlBu/7rybgHAYrAx68r2
 mBCNnOPVA8h9daMA1fsdTFoxLWadu4SntQ9K3Zg//p0e7D0hj+9GPpkX2uXLCBavmhyy
 qXo7xqMUf7v78EUAbNfRHlHECWS8s/IGL8HeKh7b8Av7AZAKY9Ge0McNgy7AONtqgERQ
 O2exvro5kIBlgIDHLd9jMTFOnvvUtu3YLPGOV+v7u580ijuwJHI7vV0+j3tFKtNC1vSP
 EBJA==
X-Gm-Message-State: APjAAAXQMu9MKqMwuj27B1VCu4iD7FGzaZ4tFDPKch8NTQIrRAVhdxpq
 o8UAvEJi18vcFJvOdR4Dt9wfKgK9Pczghl31MzetXg==
X-Google-Smtp-Source: APXvYqzL1PgG0HqdxQzrFaOHvyXNmJ5u5UlGgFrUhioJzm2uaHHH1bWzUlTIRoEmVXlAGFJ1/lpYoiz4ZwltUZn9/8w=
X-Received: by 2002:aca:4403:: with SMTP id r3mr1313417oia.39.1559850740303;
 Thu, 06 Jun 2019 12:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-3-narmstrong@baylibre.com>
 <CAFBinCBTK=6OW4kG=i0KZe-+AzGVXyou9g0frnh9yqLsdmB5+w@mail.gmail.com>
 <b54c7899-95b3-1202-d70b-9b8ee2955164@baylibre.com>
 <CAFBinCB9PZ-mjyjCafK24cH3sN5E1r4vt1z=m+uvkHsmRW2PFQ@mail.gmail.com>
 <bbf3c69f-8695-d665-c7ca-587b7e77eb4f@baylibre.com>
In-Reply-To: <bbf3c69f-8695-d665-c7ca-587b7e77eb4f@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:52:09 +0200
Message-ID: <CAFBinCA5tjZ9hxbbQkHE22BYMqQboE4UQ3Vk=w9-zCeQLn6OOA@mail.gmail.com>
Subject: Re: [PATCH 02/10] arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth
 support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_125221_425177_509F6EEC 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, Christian Hewitt <christianshewitt@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 10:57 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 29/05/2019 20:08, Martin Blumenstingl wrote:
> > On Wed, May 29, 2019 at 12:25 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> On 27/05/2019 20:36, Martin Blumenstingl wrote:
> >>> On Mon, May 27, 2019 at 3:22 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>>>
> >>>> From: Christian Hewitt <christianshewitt@gmail.com>
> >>>>
> >>>> - Remove serial1 alias
> >>>> - Add support for uart_A rts/cts
> >>>> - Add bluetooth uart_A subnode qith shutdown gpio
> >>> I tried this on my own Khadas VIM2:
> >>> Bluetooth: hci0: command 0x1001 tx timeout
> >>> Bluetooth: hci0: BCM: Reading local version info failed (-110)
> >>>
> >>> I'm not sure whether this is specific to my board or what causes this.
> >>
> >> Which kernel version ?
> > 5.2-rc2
> >
> > it's a Khadas VIM2 Basic (thus it has a AP6356S), board revision v1.2
>
> Can you try with :
>
> clocks = <&wifi32k>;
> clock-names = "lpo";
>
> added in the bluetooth node ?
that did it!

I think I also found the explanation why:
on my Khadas VIM2 SD card I don't have linux-firmware installed.
Thus the wifi driver will disable the 32kHz LPO clock again, breaking Bluetooth

are you going to send patches for the existing boards or do you want
someone else to do it?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
