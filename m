Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB5091CF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 08:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbTCgBSD9vVdDmbXQaO1huyRo6TaZXw54tJ72uwMDFA=; b=pa58z4T7ZRfovP
	GPdSjv+T9xP1e60zOBoQxNyO1tmXl6baX+OwiQgoJ0/8hO+n4iGPm/AZwlmwqOvOIrU104rU9YqRK
	86x+yqxdAqaWk5sI10B2ylJpT4FJwzfiwYR+cW2XwB/tLKZmwdeAJ1xAZDhrRTj71Eo0/A3RTDMWa
	i0HuXmljPC8dtCHaOcZRPNXeJ+78RUM1a3t4GddTFVdOTbvNWVoZ+6zKS7iXqlp+/UAQbOw3eoFWS
	s2SeRi//t32vAObx7rZKQ2L5mEtMNn5FxQlUdBGPPef6Bi0EEHvQefByMKL2vJYrep3SYoLnLVIul
	a/duiEmV4EoDel8p/gSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzb0i-0005iS-0C; Mon, 19 Aug 2019 06:19:20 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzb0V-0005hi-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 06:19:10 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x7J6IaxE021752
 for <linux-arm-kernel@lists.infradead.org>; Mon, 19 Aug 2019 15:18:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x7J6IaxE021752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566195518;
 bh=mdvVTv3n82OSRycPvJ85qAq0gYB/fIX4CdCh4wVf4wU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rSaAmIjq8KG4CgYyvN/UX6du1p5ilEe2XX8HMnwZoeg9eRnW4SdbyzJxuUT+Pvs8V
 yaMLw8D7ez21zBbv+l9KBZm9MoIq76CdhaOvv/mYYVVhC0WiiaeNgvY6gSIK/6Dww3
 aKbBcyWbCFM6xjZzefHgSN38Lh3B3PrRtg8USUuQqDpRvVqOLbFfpPe1KLez/Yw6K+
 2ePm2oMZAMpxjzmm2i/IA0+Vnrp++xFjT2DUUplLaLTqXx69lJFKlh9K45Sm3OKTZr
 7rueqbTlIcUkCTH51/BBTyhVRFeaUj26atmsMEfbXKic3KSmCPS+GfuZCpdFQxXA/N
 qBgaIDkz1UKww==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id c7so451145vse.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 23:18:36 -0700 (PDT)
X-Gm-Message-State: APjAAAWxz5d41PTwv+EzQStli8KVlqWwxh/5/TqHkcqn3ueNXLkQW+G1
 V3kC0BJgPQ5Q9ZTAQJLXJcW9GeP68g15n9Sgs7E=
X-Google-Smtp-Source: APXvYqypMbATPlyP1E6U0jX2apM4bwEbu+0F1IzcNo8Wg2XfSUc01fPlXGWMcGBZSfT+K7IwPTyid93NELceB+uKN0s=
X-Received: by 2002:a05:6102:20c3:: with SMTP id
 i3mr13217030vsr.155.1566195515660; 
 Sun, 18 Aug 2019 23:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190621112306.17769-1-yamada.masahiro@socionext.com>
 <0e357fa8-3241-4ce4-fae7-d0ad36fb14c6@kernel.org>
In-Reply-To: <0e357fa8-3241-4ce4-fae7-d0ad36fb14c6@kernel.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 19 Aug 2019 15:17:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNASrdNwFEEFoy8mH4CnWHN5d8qCw_LeU1St0x1oa9jRNFQ@mail.gmail.com>
Message-ID: <CAK7LNASrdNwFEEFoy8mH4CnWHN5d8qCw_LeU1St0x1oa9jRNFQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: socfpga: update to new Denali NAND binding
To: Dinh Nguyen <dinguyen@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_231907_550805_B1815027 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:39 AM Dinh Nguyen <dinguyen@kernel.org> wrote:
>
>
>
> On 6/21/19 6:23 AM, Masahiro Yamada wrote:
> > With commit d8e8fd0ebf8b ("mtd: rawnand: denali: decouple controller
> > and NAND chips"), the Denali NAND controller driver migrated to the
> > new controller/chip representation.
> >
> > Update DT for it.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> >  arch/arm/boot/dts/socfpga.dtsi                |  2 +-
> >  arch/arm/boot/dts/socfpga_arria10.dtsi        |  2 +-
> >  .../boot/dts/socfpga_arria10_socdk_nand.dts   | 20 ++++++++++++-------
> >  3 files changed, 15 insertions(+), 9 deletions(-)
> >
>
> Applied! Thanks!
>
> Dinh


You did not send this to upstream for v5.3-rc1.

Which version is this aiming for?





-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
